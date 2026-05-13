<#
.SYNOPSIS
    Collects GitHub telemetry for microsoft/m365-agent-templates and ingests into Kusto.

.DESCRIPTION
    Pulls views, clones, referrers, popular content, and repo stats from GitHub API,
    then ingests into the GitHubTelemetry database on mcscatkustocluster.

.PARAMETER GitHubToken
    GitHub PAT with repo scope (traffic needs push access). Falls back to $env:GITHUB_TOKEN.

.EXAMPLE
    .\ingest-to-kusto.ps1
    .\ingest-to-kusto.ps1 -GitHubToken "ghp_xxxx"
#>

param(
    [string]$GitHubToken = $env:GITHUB_TOKEN
)

$ErrorActionPreference = "Stop"
$Owner = "microsoft"
$Repo  = "m365-agent-templates"
$BaseUrl = "https://api.github.com/repos/$Owner/$Repo"
$ClusterUri = "https://mcscatkustocluster.westus.kusto.windows.net"
$Database = "GitHubTelemetry"
$Today = (Get-Date).ToString("yyyy-MM-dd")

# --- Validate tokens ---
if (-not $GitHubToken) {
    Write-Host "❌ No GitHub token. Set `$env:GITHUB_TOKEN or pass -GitHubToken." -ForegroundColor Red
    exit 1
}

Write-Host "🔑 Getting Kusto access token..." -ForegroundColor Cyan
$kustoToken = (az account get-access-token --resource $ClusterUri --query accessToken -o tsv 2>$null)
if (-not $kustoToken) {
    Write-Host "❌ Failed to get Kusto token. Run 'az login' first." -ForegroundColor Red
    exit 1
}

$ghHeaders = @{
    "Accept"               = "application/vnd.github+json"
    "Authorization"        = "Bearer $GitHubToken"
    "X-GitHub-Api-Version" = "2022-11-28"
}

$kustoHeaders = @{
    "Authorization" = "Bearer $kustoToken"
    "Content-Type"  = "application/json"
}

$mgmtUri = "$ClusterUri/v1/rest/mgmt"

function Invoke-KustoMgmt($cmd) {
    $body = @{ db = $Database; csl = $cmd } | ConvertTo-Json -Depth 10
    Invoke-RestMethod -Uri $mgmtUri -Method Post -Headers $kustoHeaders -Body $body
}

function Invoke-GitHubApi($url) {
    try {
        Invoke-RestMethod -Uri $url -Headers $ghHeaders -ErrorAction Stop
    } catch {
        $status = $_.Exception.Response.StatusCode.value__
        Write-Host "   ❌ GitHub API error ($status) for $url" -ForegroundColor Red
        return $null
    }
}

# --- Collect data ---
Write-Host "`n📊 Collecting GitHub telemetry for $Owner/$Repo..." -ForegroundColor Cyan

# Views
Write-Host "  👁️ Views..." -NoNewline
$views = Invoke-GitHubApi "$BaseUrl/traffic/views"
Write-Host " $($views.count) total ($($views.uniques) unique)"

# Clones
Write-Host "  📋 Clones..." -NoNewline
$clones = Invoke-GitHubApi "$BaseUrl/traffic/clones"
Write-Host " $($clones.count) total ($($clones.uniques) unique)"

# Build clone lookup
$cloneMap = @{}
if ($clones.clones) {
    $clones.clones | ForEach-Object {
        $d = if ($_.timestamp -is [datetime]) { $_.timestamp.ToString("yyyy-MM-dd") } else { $_.timestamp.Substring(0,10) }
        $cloneMap[$d] = $_
    }
}

# Popular content
Write-Host "  🔥 Popular content..." -NoNewline
$popular = Invoke-GitHubApi "$BaseUrl/traffic/popular/paths"
Write-Host " $($popular.Count) paths"

# Referrers
Write-Host "  🔗 Referrers..." -NoNewline
$referrers = Invoke-GitHubApi "$BaseUrl/traffic/popular/referrers"
Write-Host " $($referrers.Count) sources"

# Repo stats
Write-Host "  ⭐ Repo stats..." -NoNewline
$repoInfo = Invoke-GitHubApi $BaseUrl
Write-Host " $($repoInfo.stargazers_count) stars, $($repoInfo.forks_count) forks"

# --- Ingest into Kusto ---
Write-Host "`n🚀 Ingesting into Kusto ($Database)..." -ForegroundColor Cyan

# Traffic daily
$rows = ($views.views | ForEach-Object {
    $d = if ($_.timestamp -is [datetime]) { $_.timestamp.ToString("yyyy-MM-dd") } else { $_.timestamp.Substring(0,10) }
    $c = if ($cloneMap[$d]) { $cloneMap[$d].count } else { 0 }
    $cu = if ($cloneMap[$d]) { $cloneMap[$d].uniques } else { 0 }
    "$Today, $d, $($_.count), $($_.uniques), $c, $cu"
}) -join "`n"
if ($rows) {
    Invoke-KustoMgmt ".ingest inline into table GitHubTrafficDaily <| `n$rows" | Out-Null
    Write-Host "  ✅ GitHubTrafficDaily: $($views.views.Count) rows"
}

# Popular content
$rows = ($popular | ForEach-Object { "$Today, $($_.path), $($_.count), $($_.uniques)" }) -join "`n"
if ($rows) {
    Invoke-KustoMgmt ".ingest inline into table GitHubPopularContent <| `n$rows" | Out-Null
    Write-Host "  ✅ GitHubPopularContent: $($popular.Count) rows"
}

# Referrers
$rows = ($referrers | ForEach-Object { "$Today, $($_.referrer), $($_.count), $($_.uniques)" }) -join "`n"
if ($rows) {
    Invoke-KustoMgmt ".ingest inline into table GitHubReferrers <| `n$rows" | Out-Null
    Write-Host "  ✅ GitHubReferrers: $($referrers.Count) rows"
}

# Repo stats
$row = "$Today, $($repoInfo.stargazers_count), $($repoInfo.forks_count), $($repoInfo.subscribers_count), $($repoInfo.open_issues_count), $($views.count), $($views.uniques), $($clones.count), $($clones.uniques)"
Invoke-KustoMgmt ".ingest inline into table GitHubRepoStats <| `n$row" | Out-Null
Write-Host "  ✅ GitHubRepoStats: 1 row"

# Release downloads
Write-Host "  📦 Release downloads..." -NoNewline
$releases = Invoke-GitHubApi "$BaseUrl/releases"
$releaseRows = @()
if ($releases) {
    foreach ($rel in $releases) {
        foreach ($asset in $rel.assets) {
            $sizeMB = [math]::Round($asset.size / 1MB, 2)
            $published = if ($rel.published_at -is [datetime]) { $rel.published_at.ToString("yyyy-MM-ddTHH:mm:ss") } else { $rel.published_at.Substring(0,19) }
            $isPre = if ($rel.prerelease) { 1 } else { 0 }
            $assetName = $asset.name -replace ',', ''
            $relName = $rel.name -replace ',', ''
            $releaseRows += "$Today, $($rel.tag_name), $relName, $published, $isPre, $assetName, $($asset.download_count), $sizeMB"
        }
    }
    Write-Host " $($releaseRows.Count) assets across $($releases.Count) releases"
}
if ($releaseRows.Count -gt 0) {
    $rows = $releaseRows -join "`n"
    Invoke-KustoMgmt ".ingest inline into table GitHubReleaseDownloads <| `n$rows" | Out-Null
    Write-Host "  ✅ GitHubReleaseDownloads: $($releaseRows.Count) rows"
}

# --- Also save CSVs for backup ---
$csvDir = Split-Path $MyInvocation.MyCommand.Path
$views.views | ForEach-Object {
    $d = if ($_.timestamp -is [datetime]) { $_.timestamp.ToString("yyyy-MM-dd") } else { $_.timestamp.Substring(0,10) }
    $c = if ($cloneMap[$d]) { $cloneMap[$d].count } else { 0 }
    $cu = if ($cloneMap[$d]) { $cloneMap[$d].uniques } else { 0 }
    [PSCustomObject]@{ collected_date=$Today; date=$d; views=$_.count; unique_visitors=$_.uniques; clones=$c; unique_cloners=$cu }
} | Export-Csv "$csvDir\traffic_daily.csv" -NoTypeInformation

$popular | ForEach-Object {
    [PSCustomObject]@{ collected_date=$Today; path=$_.path; views=$_.count; unique_visitors=$_.uniques }
} | Export-Csv "$csvDir\popular_content.csv" -NoTypeInformation

$referrers | ForEach-Object {
    [PSCustomObject]@{ collected_date=$Today; referrer=$_.referrer; views=$_.count; unique_visitors=$_.uniques }
} | Export-Csv "$csvDir\referrers.csv" -NoTypeInformation

[PSCustomObject]@{
    collected_date=$Today; stars=$repoInfo.stargazers_count; forks=$repoInfo.forks_count
    watchers=$repoInfo.subscribers_count; open_issues=$repoInfo.open_issues_count
    total_views_14d=$views.count; unique_visitors_14d=$views.uniques
    total_clones_14d=$clones.count; unique_cloners_14d=$clones.uniques
} | Export-Csv "$csvDir\repo_stats.csv" -NoTypeInformation

Write-Host "`n🎯 Done! Data is live in Kusto and CSVs updated." -ForegroundColor Green
Write-Host "   Cluster: $ClusterUri" -ForegroundColor DarkGray
Write-Host "   Database: $Database" -ForegroundColor DarkGray
Write-Host "   Tables: GitHubTrafficDaily, GitHubPopularContent, GitHubReferrers, GitHubRepoStats, GitHubReleaseDownloads" -ForegroundColor DarkGray
