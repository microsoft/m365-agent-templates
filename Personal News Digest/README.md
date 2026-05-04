<p align="center">
  <img src="Personal%20News%20Digest%20-%20Icon.png" alt="Personal News Digest Agent" width="120">
</p>

<h1 align="center">Personal News Digest Agent</h1>

> **Your 30-second org news briefing** — a declarative agent that filters Outlook, Teams, and SharePoint into a personalized, role- and location-aware digest of what truly matters.

[![Microsoft 365 Copilot](https://img.shields.io/badge/Microsoft_365-Copilot-0078D4?logo=microsoft&logoColor=white)](https://www.microsoft.com/microsoft-365/copilot)
[![Declarative Agent](https://img.shields.io/badge/Agent_Type-Declarative-6264A7?logo=microsoft-teams&logoColor=white)](https://learn.microsoft.com/microsoft-365-copilot/extensibility/overview-declarative-agent)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow?logo=open-source-initiative&logoColor=white)](LICENSE)

---

## 📖 Table of Contents

- [Overview](#-overview)
- [Features](#-features)
- [How It Works](#-how-it-works)
- [Prerequisites](#-prerequisites)
- [Getting Started](#-getting-started)
- [Documents Included](#-documents-included)
- [Setup Guide](#-setup-guide)

---

## 💡 Overview

**Personal News Digest** is a declarative agent for Microsoft 365 Copilot that intelligently filters communications across Outlook, Teams announcement channels, and the SharePoint intranet to surface only **high-impact, organization-wide broadcasts** from the last 15 days. It deliberately excludes peer, manager, and project chatter so employees aren't drowning in noise to find what matters.

The agent grounds itself in your mailbox, Teams chats, SharePoint, and People knowledge to produce a concise, scannable digest — tagged 🔴 **Critical** / 🟡 **Important** / 🟢 **FYI**, with sender, date, and a one-line *"why it matters to me"* — personalized to your role, team, and region. The result: faster strategic alignment, fewer missed mandatory updates, and a clear sense of what to act on next.

---

## ✨ Features

| Feature | Description |
|:--------|:------------|
| 💬 **Conversational Access via M365 Copilot** | Ask in natural language ("Catch me up since I was on PTO") and get a structured digest back in seconds. |
| 📋 **Declarative Agent Grounded in M365 Sources** | Pulls from Outlook (mailbox + newsletters), Teams chats and channels, and SharePoint intranet — no extra connectors required. |
| 🔍 **High-Signal Broadcast Filtering** | Filters to org-wide announcements only, excluding peer/project chatter and external marketing newsletters. |
| 🌍 **Role- & Location-Aware Personalization** | Tailors content using department, role, location, region, and manager chain (via People knowledge). |
| 🏷️ **Priority Tagging** | Every item is tagged 🔴 Critical, 🟡 Important, or 🟢 FYI — plus 🎤 Exec Voice, 🚨 Operational, 📈 Trending, and 🕵️ Updated. |
| 🗞️ **Structured Digest Output** | Consistent ≤350-word format with Executive Summary, From Leadership, Action Required, Operational & Security, and more. |
| ⏱️ **PTO Catch-Up Awareness** | Resolves your out-of-office window from Outlook calendar to deliver a digest scoped to exactly the time you were away. |
| 🚀 **One-Click Starter Prompts** | Ships with curated starter prompts so users can try the most valuable scenarios without typing. |

---

## ⚡ How It Works

| Step | What Happens |
|:----:|:-------------|
| **1** | 💬 **Trigger** — A user asks the agent in Copilot, e.g., *"What are the most important company updates I should know?"* or *"Give me my personalized news digest for the last 2 weeks."* |
| **2** | 🔎 **Scan & Filter** — The agent queries Outlook, Teams announcement channels, and SharePoint intranet inside the resolved time window, filtering out peer, manager, and project conversations. |
| **3** | 🧮 **Score & Tag** — Items are scored by Impact × Audience Reach × Recency × Persona, deduplicated across sources, and tagged 🔴 / 🟡 / 🟢 with special tags for Exec Voice, Operational, Trending, and Updated. |
| **4** | 📰 **Personalized Digest Delivered** — Output is composed into a scannable, role- and location-aware digest with sections like Executive Summary, From Leadership, Action Required, and Key Updates — each bullet attributed to its source with a one-line *"why it matters to me."* |

---

## ✅ Prerequisites

1. **Microsoft 365 Copilot License** — Required for all users interacting with the agent and to access SharePoint, OneDrive, Outlook, and Teams knowledge sources.
2. **Microsoft 365 E3, E5, or Business Premium** — Base subscription for Microsoft 365 services.
3. **Sideloading Enabled in Teams** — A Teams admin must enable **Upload custom apps** in the Teams Admin Center under **Teams apps → Setup policies**.
4. **Microsoft Teams** — Desktop or web client to sideload and access the agent (also accessible via M365 Copilot on the web).
5. **SharePoint, OneDrive & Outlook Permissions** — Users need normal read access to the SharePoint sites, mailbox content, and Teams channels the agent will reference.

---

## 🚀 Getting Started

For full setup and deployment instructions, refer to the **Personal News Digest - Setup Guide.pdf** included in this repository.

> 💡 **To download:** From the [repository root](https://github.com/microsoft/m365-agent-templates), click the green **Code** button and select **Download ZIP**, then extract the **Personal News Digest** folder.

---

## 📦 Documents Included

| Document | Description |
|:---------|:------------|
| `Personal News Digest - Setup Guide.pdf` | Step-by-step setup and configuration guide covering all four deployment options. |
| `Personal News Digest - Evaluation Test Plan.pdf` | Detailed evaluation test plan with pass/fail criteria for validating the agent. |
| `Personal News Digest Agent - Overview Deck.pptx` | Scenario overview deck — agent summary, personas, user journey, architecture, and demo prompts. |
| `Personal News Digest - Icon.png` | The agent's icon image. |
| `Personal News Digest.zip` | The agent package — upload this directly into Teams (Option B). |

> 💡 **To download all files:** From the [repository root](https://github.com/microsoft/m365-agent-templates), click the green **Code** button and select **Download ZIP**, then extract the **Personal News Digest** folder.

---

## 🛠️ Setup Guide

This section is generated from the **Personal News Digest - Setup Guide.pdf** and walks you through every deployment option — from a one-click Marketplace install to a full pro-code workflow in VS Code.

### Which Option Should I Choose?

Pick the path that matches how you want to install and roll out this agent. **Recommended:** start with Option A if the agent is in the Marketplace catalog.

| | Option A — Microsoft Marketplace | Option B — Import into Teams | Option C — Build in Agent Builder | Option D — Clone & Deploy (VS Code) |
|---|---|---|---|---|
| **Best for** | Catalog-driven discovery and org-wide rollout via the Agent Library | Fastest local install, non-technical users | Full control, no zip needed, no admin permissions required | Developers who want source-code control, ALM, CI/CD |
| **Time** | ~10 min | ~5 min | ~15 min | ~20 min |
| **Requires** | M365 work account + Power Platform environment + System Administrator or System Customizer role to install Marketplace apps | Teams + admin-enabled custom app uploading + the agent `.zip` | Agent Builder access via M365 Copilot | VS Code + Node.js v18+ + Git + M365 Agents Toolkit extension |
| **Customization** | Guided configuration in the Library | Edit JSON, re-zip, re-upload | Full no-code editing | Full source-code editing with Git workflow |
| **Skill Level** | Beginner / Admin | Beginner | Beginner / Maker | Pro Code Developer |

---

### 🛒 Option A — Install from the Microsoft Marketplace (Agent Library)

The Agent Library on Microsoft Marketplace offers a curated collection of ready-to-use agent templates you can install directly into your Power Platform environment.

**Before You Begin**

| ✓ | What You Need | Why |
|:---:|:---|:---|
| ☐ | Microsoft 365 work account | Required to sign in to Microsoft Marketplace |
| ☐ | A target Power Platform environment | The Marketplace app installs into a specific environment |
| ☐ | System Administrator or System Customizer role in that environment | Required to install Marketplace apps |
| ☐ | Acceptance of the Marketplace terms of service | Required during the "Get it now" flow |

**How to Install**

1. Go to the **Agent Library on Microsoft Marketplace** and ensure you're signed in with your Microsoft 365 work account.
2. Select **Get it now**, then **Get it now** again to confirm.
3. Select the environment where you'll install the solution, review and accept the terms of use and privacy statements, then select **Install**.
4. You'll be redirected to **Power Platform Admin Center**. To monitor installation: **Environments → your environment → Dynamics 365 apps → Agent Library**.
5. Once installed, go to **make.powerapps.com** and switch to the environment where you installed the Agent Library.
6. Navigate to **Apps → Agent Library**.
7. Browse the available templates and deploy your first agent.

> 🔴 **Important:** This solution enables code components in your environment. This is a standard Power Platform feature for custom UI experiences and requires no additional licensing beyond your existing entitlements.

**Deploy Personal News Digest from the Library**

1. Open the **Agent Library** app from `make.powerapps.com → Apps → Agent Library`.
2. Browse or search for **Personal News Digest**.
3. Select the template, then click **Configure** (or **Download** if no configuration is required).
4. Configure the template — edit instructions, set knowledge sources, connected services, capabilities, and starter prompts.
5. Click **Download** and follow the side-loading instructions.

> 💡 **Tip:** If you don't see the Agent Library or the **Get it now** button, ask your tenant admin to enable Marketplace apps for your environment.

<details>
<summary>🔧 Troubleshooting</summary>

| Problem | Fix |
|---|---|
| **"Get it now" button is greyed out** | Sign in with a work or school account that has Marketplace access (personal Microsoft accounts are not supported). |
| **No environments listed in the install dialog** | Confirm you have admin permissions on at least one Power Platform environment. |
| **Install stuck in "Installing"** | Check Power Platform admin center under **Resources → Dynamics 365 apps**; allow up to 15 minutes. |
| **"Code components not allowed in this environment"** | Have a Power Platform admin enable code components for the target environment. |
| **Agent Library app doesn't appear in `make.powerapps.com → Apps`** | Confirm install completed and that you're viewing the same environment. |
| **Personal News Digest template not visible in the library** | Confirm the agent has been published to the Marketplace catalog. |

</details>

---

### 📦 Option B — Import the Agent into Teams

This is the fastest local install. You'll upload the pre-built agent package directly into Teams.

**Before You Begin**

| ✓ | What You Need | Why |
|:---:|:---|:---|
| ☐ | Microsoft Teams installed | The agent is uploaded through the Teams app |
| ☐ | Custom app uploading enabled | Your admin must turn this on |
| ☐ | `Personal News Digest.zip` | The agent package you'll upload |

**How to Check if Custom App Uploading Is Enabled**

1. Open **Microsoft Teams**.
2. Click **Apps** in the left sidebar.
3. Click **Manage your apps** at the bottom and look for the **Upload an app** button.

See the button? ✅ You're good. Don't see it? Ask your IT admin to enable **Upload custom apps** in the Teams Admin Center under **Teams apps → Setup policies**.

> 🔴 **Important:** Do **not** unzip or rename the file. Teams needs the original `.zip` as-is.

**Upload the Agent**

1. Open **Microsoft Teams**.
2. Click **Apps** in the left sidebar.
3. Click **Manage your apps** at the bottom of the Apps page.
4. Click **Upload an app**.
5. Select **Upload a custom app**.
6. Browse to where you saved `Personal News Digest.zip` → select it → click **Open** → click **Add**.

✅ The agent is now installed!

**Open the Agent After Uploading**

*From Microsoft 365 Copilot (Web)*

1. Go to **m365.cloud.microsoft/chat**.
2. Click the **side-panel icon** (top-right of the chat).
3. Find **Personal News Digest** in the agent list and select it.
4. Click any suggested prompt button to get started.

*From Microsoft Teams*

1. Open **Microsoft Teams**.
2. Click the **Copilot** icon in the left sidebar.
3. Click the **side-panel icon** → select **Personal News Digest**.

*Using @Mention (either app)*

In any Copilot chat window, type **`@Personal News Digest`** followed by your question.

**Pin the Agent for Quick Access**

1. Open the agent list (side-panel).
2. Find **Personal News Digest**.
3. Right-click (or use the **⋯** menu) → **Pin**.

<details>
<summary>🔧 Troubleshooting</summary>

| Problem | Fix |
|---|---|
| **"Upload an app" button missing** | Custom app uploading is disabled — ask your IT admin to enable it. |
| **"Parsing has failed" error** | The zip is corrupted or modified — re-download the original. |
| **App doesn't appear after upload** | Wait 1–2 minutes and refresh. |
| **Agent not showing in M365 Copilot** | Takes a few minutes — refresh the chat panel. |

</details>

---

### 🧱 Option C — Build the Agent Yourself (Agent Builder)

If you can't upload a zip — or prefer to build it yourself — use **Agent Builder** in Microsoft 365 Copilot. No coding required.

**Before You Begin**

| ✓ | What You Need | Why |
|:---:|:---|:---|
| ☐ | Agent Builder access | Available through Microsoft 365 Copilot at `m365.cloud.microsoft/chat` |

**Open Agent Builder**

1. Go to **m365.cloud.microsoft/chat** and sign in.
2. Click **New agent** (top-right of the chat).
3. Click **Skip to configure** to go straight to the configuration form.

**Fill In the Configuration — Name & Description**

| Field | What to Enter |
|---|---|
| **Name** | Personal News Digest |
| **Description** | Delivers a 30-second summary of high-impact organizational news from your Outlook, Teams, and SharePoint. |

**Instructions**

Scroll to the **Instructions** box and paste the full instructions block below.

<details>
<summary>📋 Click to expand the full Instructions text</summary>

```text
# Literal-Execution Header
Interpret these instructions literally. Never infer intent or fill in
missing steps. Never add context, recommendations, or assumptions. Follow
step order exactly. Respond concisely and only in the requested format.

# Purpose
You are the **Personal News Digest Agent** — a concise assistant that scans
Microsoft 365 sources and delivers a crisp, scannable, personalized digest
of high-impact organizational updates. Think: "summary in 30 seconds."

# General Guidelines

## Tone & Style
- **Tone:** professional, neutral, time-respecting. Like a chief-of-staff,
  not a newsletter.
- **Verbosity:** ≤ 350 words. 4–6 sections max. Short single-line bullets.
- Plain English; no speculation or marketing language. Clarity over
  completeness.

## Restrictions
- Never fabricate items, senders, dates, or quotes.
- Always include a source link or sender attribution per bullet (e.g., *—
  HR, Mar 12*).

# Domain Vocabulary
- **Exec Voice** — items from CEO, C-suite, skip-levels, or manager chain
  (via `People` knowledge).
- **Trending** — ≥2 posts/channels/senders converging on the same theme
  within the window.
- **Newsletter** — an internal email digest (corporate comms, HR, IT,
  leadership, division/region roundup). Treat each qualifying item *inside* a
  newsletter as its own candidate; attribute as *— <Newsletter Name>, <date>*.
- **Operational alert** — incident, outage, degraded service, planned
  downtime, or IT/system status notice.
- **Major initiative** — milestone, launch, award, financial result,
  partnership, or strategic program.
- **Topic scope** — a request naming a single topic family (security,
  policy, leadership, operational, action items).
- **Priority tags:** 🔴 **Critical** · 🟡 **Important** · 🟢 **FYI**.
- **Special tags:** 🎤 Exec Voice · 🕵️ Updated · ↩️ Reversed · 📈 Trending
  · 🚨 Operational.
- **Default Timeframes:** 🌙 **Daily** (today) · 🏁 **Weekly** (Mon–Fri) ·
  📆 **Monthly/Quarterly** · 🧭 **Custom**.

# Knowledge & Capabilities
Use only these. Reference by name when describing where an item came from.
- `Outlook` — emails (broadcasts, exec messages, **internal
  newsletters/digests** from corporate comms, HR, IT, leadership, ERGs, and
  team distros); calendar resolves OOO for "since I was on PTO."
- `Teams` — channel posts, broadcasts, leadership messages.
- `SharePoint` — internal news, intranet, policy pages.
- `People` knowledge — resolves manager chain, CEO, C-suite, skip-levels.

Rule: **only call a knowledge source when a step explicitly instructs you
to.**

# Skills

## Skill 1 — Personalize
Tailor every digest to user profile: department, role, title, location,
region, manager chain (drives relevance scoring); language/locale; followed
topics. Missing profile → default to org-wide and disclose.

# Workflow Steps
Run **in order**. Do not skip or reorder.

1. **Scan** — query `Outlook`, `Teams`, `SharePoint` inside the window.
2. **Filter — Include:** org-wide announcements; policy/security/HR updates;
   **operational alerts** (incidents, outages, downtime, IT status); **major
   initiatives** (launches, milestones, financials, partnerships, awards);
   product/platform changes; leadership comms; broadcasts; **internal
   newsletters & recurring digests** from `Outlook` (e.g., corporate comms
   weekly, HR monthly, CEO/leadership newsletters, IT/security bulletins,
   division/region roundups) — extract qualifying items from inside the
   newsletter and attribute to the newsletter name + issue date. **Exclude:**
   items in *Restrictions*; external/marketing newsletters and subscriptions
   from outside the org.
3. **Score** by **Impact** × Audience Reach × Recency × Persona (including
   newsletter items). **Tag priority** — exactly one: 🔴
   (security/compliance/mandatory/exec broadcast/active operational incident),
   🟡 (policy/HR/product affecting role/region, planned downtime), 🟢 (general
   awareness/milestones).
4. **Merge / Deduplicate sources** — combine the same story across `Outlook`
   + `Teams` + `SharePoint` into one bullet. Prefer the original/authoritative
   source; cite the newsletter only when it is the sole source. Drop sub-
   threshold items.
5. **Apply special tags:** 🎤 Exec Voice items go near the top; 🕵️/↩️ only
   when source explicitly differs (add one-line *"What changed"*); 📈 Trending
   when ≥2 sources converge.
6. **Add personal relevance** — append one-line *"Why it matters to me"* (≤
   15 words) per item. Omit if no clear angle.
7. **Compose** — output per *Output Contract*. **Topic-scoped:** when the
   user names a single topic family, return **only** `📅 Window` + matching
   sections. Don't invent sections.

# Output Contract
Return only the digest, in this exact section order. Omit any section with
no content.

**📅 Window:** <resolved time range>

## 🗞 Executive Summary
- Top 4 bullets — the "if you read nothing else."

## 🎤 From Leadership   *(only if Exec Voice items exist)*
- 1–4 bullets, each with 🎤 tag, key quote ≤ 20 words when impactful.

## ⚠️ Action Required   *(only if user must act)*
- 1–N bullets, each with deadline.

## 🚨 Operational & Security   *(only if operational alerts or security incidents exist)*
- 1–N bullets. Each: status (active/resolved/planned) + service + impact + source.

## 🕵️ What's Changed   *(only if Updated/Reversed items exist)*
- 1–N bullets, each with 🕵️ or ↩️ tag and one-line "What changed."

## 📌 Key Updates
- Important FYI items, each with priority tag and "Why it matters to me."

## 📈 Trending at the Company   *(only if signal exists)*
- 2–4 bullets. Each: topic + brief context + signal source.

## 🌍 Region / Org-Specific   *(only if relevant)*
- 1–N bullets.

Constraints: Markdown bullets only; ≤ 350 words; window stated at top;
source per bullet; no fabrications.

# Error Handling
- **No updates** → reply exactly: *"No major corporate updates in this period."*
- **Partial source access** → state which sources were unreachable in a one-line note.
- **Missing profile data** → fall back to org-wide and disclose.
- **No change history** → silently skip `🕵️ What's Changed`.
- **Ambiguous date range** → default to last 30 days and state it.

# Self-Evaluation Checklist
1. Resolved **window** stated at top?
2. Every bullet has **source/sender attribution**?
3. Every Key Update has a **priority tag**? Exec Voice tagged 🎤 and near top?
4. 🕵️/↩️ tags backed by explicit source differences?
5. Topic-scoped requests honored (no extra/invented sections)?
6. ≤ 350 words? Duplicates merged? No fabricated items, senders, dates, or quotes?
```

> 💡 **Tip:** Click inside the Instructions box, press **Ctrl+A**, then paste — the entire block goes in at once.

</details>

**Knowledge Sources**

Scroll to the **Knowledge** section. Add each source by clicking its icon:

- 📂 **SharePoint** — Click the SharePoint icon → select **My SharePoint files, folders, and sites**.
- 💬 **Teams** — Click the Teams icon → select **My Teams chats and meetings**.
- ✉️ **Outlook** — Click the Outlook icon → select **My emails**.

After adding all sources, you should see them listed under the search bar with toggle switches turned on.

> ⚠️ **Note:** Knowledge sources require an active Microsoft 365 Copilot license. **People** data is included automatically when other M365 sources are enabled — no separate selection needed.

**Starter Prompts**

Scroll to the **Starter Prompts** section and add these so users see clickable quick-start buttons:

| Title | Prompt |
|---|---|
| **What Matters Most** | What are the top 5 company-wide announcements from the past week, tagged by Critical, Important, and FYI. Include the sender and date for each announcement. |
| **Make My Life Easier** | Surface recently announced tools, features, apps, or services I could start using to make my work easier — include what it does, who it's for, and how to get started. |
| **Company Initiatives** | Summarize recent company-wide initiatives, strategic programs, partnerships, and launches announced in the past 30 days. Include a brief summary of each and its potential impact on the organization. |
| **Org Announcements** | Show me org-wide announcements from the past 30 days, deduplicated across Outlook + Teams + SharePoint + Newsletters, with a 'why it matters to me' line. |
| **Back To the Office** | I just returned back to the office. Catch me up on critical org news since the start of my time off. |
| **Leadership Updates** | Surface messages and newsletters from the CEO, C-suite, or skip-levels in the past 30 days — include key quotes. |

**Test & Create**

1. Click the **Try it** tab (right side) and try one of the starter prompts.
2. When the agent responds correctly, click **Create**.
3. Click **Go to agent** to start using it.

---

### 💻 Option D — Clone & Deploy with Visual Studio Code

This option is for developers who want full control over the agent source code. You'll clone the agent repository, customize it locally, and deploy it using the Microsoft 365 Agents Toolkit in VS Code.

**Before You Begin**

| ✓ | What You Need | Why |
|:---:|:---|:---|
| ☐ | Visual Studio Code installed | Your code editor for this workflow |
| ☐ | Git installed | Required to clone the agent repository |
| ☐ | Microsoft 365 Agents Toolkit extension | VS Code extension for building and deploying M365 agents |
| ☐ | Node.js (v18 or later) | Required by the toolkit and agent runtime |

**Key Terms**

| Term | What It Means |
|---|---|
| **Clone** | Download a copy of the agent source code to your computer |
| **Repository (Repo)** | The online location where the agent's code is stored |
| **Deploy** | Upload and activate the agent so it's available in M365 Copilot |
| **Sideload** | Install a custom app for testing before publishing broadly |
| **Manifest** | A configuration file that describes the agent's identity and capabilities |

**Install the M365 Agents Toolkit**

1. Open **Visual Studio Code**.
2. Click the **Extensions** icon (or press **Ctrl+Shift+X**).
3. Search for **Microsoft 365 Agents Toolkit**.
4. Click **Install**.

**Clone the Agent Repository**

1. Open the integrated terminal in VS Code (**Ctrl+`**).
2. Run `git clone <repo-url>` using the repository URL for this agent.
3. Open the cloned folder in VS Code via **File → Open Folder**.

> ⚠️ **Note:** Ask your team lead or admin for the repository URL if you don't have it.

**Provision and Deploy**

1. Open the **Agents Toolkit** sidebar.
2. Sign in with your Microsoft 365 account.
3. Click **Provision** and wait for completion.
4. Click **Deploy** and wait for the success message.
5. Confirm the deployment in the **Output** panel.

✅ The agent is now deployed to your M365 environment!

**Preview and Test**

1. In the Agents Toolkit sidebar, click **Preview in Copilot**.
2. The agent opens in M365 Copilot.
3. Try a suggested prompt to verify it works.

<details>
<summary>🔧 Troubleshooting</summary>

| Problem | Fix |
|---|---|
| **Toolkit not showing in sidebar** | Restart VS Code after installing the extension. |
| **Sign-in fails** | Ensure you're using your M365 account (not a personal Microsoft account). |
| **Provision fails** | Check that your M365 Copilot license is active. |
| **Deploy fails** | Verify Node.js v18+ is installed (run `node --version`). |
| **Agent not appearing in Copilot** | Wait 1–2 minutes after deploy, then refresh. |

</details>

---

### 🎨 Make It Your Own

| Customization | How |
|:---|:---|
| **Change tone** | Edit the **Instructions** (Tone & Style section). |
| **Hide output sections** | Remove sections from the **Output Contract** in Instructions. |
| **Add a VIP list** | Add names to Instructions (e.g., under Domain Vocabulary → Exec Voice). |
| **Turn data sources on/off** | Add or remove **knowledge sources** or **capabilities**. |
| **Edit starter prompts** | Update in **Agent Builder** (Option C) or directly in `declarativeAgent_0.json` (Options B/D). |
| **Swap the icon** | Replace `color.png` and `outline.png` in the package. |

> 💡 **By install path:** *Marketplace (A)* → re-run **Configure** in the Agent Library, then Save & Re-deploy. *Zip (B)* → unzip → edit `declarativeAgent_0.json` → re-zip (files at root) → remove old version → re-upload. *Agent Builder (C)* → ⋯ menu → **Edit** → save. *VS Code (D)* → edit JSON/instructions → re-deploy via the toolkit.

> 🔴 **Important (Option B re-zip):** When re-zipping, make sure the files are at the **root** of the zip — not inside a subfolder.

---

### 🧪 Test That It Works

| # | Try This Prompt | What to Look For | Expected Result |
|:---:|:---|:---|:---|
| **1** | *What are the top 5 company-wide announcements from the past week, tagged by Critical, Important, and FYI. Include the sender and date for each announcement.* | Priority tags 🔴/🟡/🟢, source attribution per bullet, stated time window. | Top 5 org-wide announcements from the last 7 days, each tagged with sender and date. |
| **2** | *Surface recently announced tools, features, apps, or services I could start using to make my work easier — include what it does, who it's for, and how to get started.* | Newly announced items with what / who / how-to-start. | Tools/features list with description, audience, and a get-started link. |
| **3** | *Summarize recent company-wide initiatives, strategic programs, partnerships, and launches announced in the past 30 days.* | Brief summary + impact statement per item. | Major initiatives from past 30 days, each with summary and org-impact note. |
| **4** | *I just returned back to the office. Catch me up on critical org news since the start of my time off.* | Window resolves to your OOO range; only critical items returned. | OOO window from Outlook calendar resolves; digest of critical org news for that exact range. |
| **5** | *Are there active incidents or planned outages I should know about?* | Topic-scoped to operational only. | `📅 Window` + `🚨 Operational & Security` only — or the empty-state string if none. |

> ⚠️ **Note:** If the agent doesn't return data for a specific source (e.g., no Teams messages), that's OK — it only shows sections where data exists.

> 📋 For a comprehensive evaluation, see the **Personal News Digest - Evaluation Test Plan.pdf** included in this repository.
