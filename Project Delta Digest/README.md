<p align="center">
  <img src="Project%20Delta%20Digest%20-%20Icon.png" alt="Project Delta Digest" width="120">
</p>

<h1 align="center">Project Delta Digest</h1>

> **Your executive-ready project briefing, on demand** — surfaces what shipped, what's moving, what's stuck, and what's risky across emails, files, Teams chats, and meetings.

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

**Project Delta Digest** is a Declarative Agent for Microsoft 365 Copilot that delivers concise, executive-ready summaries of project activity. Whether you're running a software sprint, a marketing campaign, a construction project, or a consulting engagement — if it has a name and a paper trail, this agent can track it.

The agent pulls from your **emails**, **Teams chats**, **meetings**, and **OneDrive/SharePoint files** to synthesize a structured digest covering completed work, in-progress items, blockers, risks, team load, and delivery signals. It adapts its output for leadership (high-level milestones and risks) or participants (full tables with links and owners), and can draft stakeholder updates, meeting agendas, and follow-up emails on demand.

---

## ✨ Features

| Feature | Description |
|:--------|:------------|
| 📊 **Daily Change Digest** | A complete daily snapshot — TL;DR, completed work, in-progress items, blockers, and risks from the last 24 hours. |
| 🏆 **Weekly Wins Summary** | Everything shipped this week grouped by milestone or deliverable, with dates and source links. |
| 🛡️ **Risk Scoring & Escalation** | Flags high-priority items with a 1–5 risk score (priority + age + impact) and surfaces escalation signals from chat and email. |
| 🔥 **Blocker Tracking** | Identifies items labeled blocked/on-hold, overdue tasks, and idle threads — shows owner and days stuck. |
| 👥 **Team Load Analysis** | Assignee/owner distribution with flags for anyone carrying 3+ high-priority or overdue items. |
| 📋 **Leadership-Ready Recaps** | A concise weekly digest — milestones, risks, and momentum signals — with no item-level detail, ready for exec audiences. |
| ✉️ **Stakeholder Update Drafts** | Generates a ready-to-send update with TL;DR, milestones, top risks, and asks — just review, edit, and send. |
| 🔗 **Cross-Domain Delivery Signals** | Surfaces open PRs and CI status for software, campaign launches for marketing, permits for construction — linked back to work items. |
| 📁 **File & Document Tracking** | Highlights recently modified or shared files relevant to the project. |
| 🎯 **Multi-Project Support** | Switch between projects by name, code, or hashtag — the agent confirms the target before searching. |

---

## ⚡ How It Works

| Step | What Happens |
|:----:|:-------------|
| **1** | 💬 You name the project you want to track (or click a suggested prompt button). |
| **2** | 🔍 The agent searches across all connected knowledge sources — emails, Teams chats, meetings, and OneDrive/SharePoint files. |
| **3** | 📊 It synthesizes findings into a structured digest: TL;DR, shipped items, in-progress work, blockers, risks, team load, and delivery signals. |
| **4** | 📋 The digest is delivered with source citations for every claim, formatted for your audience level (exec, PM, or participant). |

---

## ✅ Prerequisites

1. **Microsoft 365 Copilot License** — Required for all users interacting with the agent and to access SharePoint/OneDrive, Teams, Email, and Meetings knowledge sources
2. **Microsoft 365 E3, E5, or Business Premium** — Base subscription for Microsoft 365 services
3. **Sideloading Enabled in Teams** — A Teams admin must enable **Upload custom apps** in the Teams Admin Center under **Setup Policies > Global**
4. **Microsoft Teams** — Desktop or web client to sideload and access the agent
5. **SharePoint & OneDrive Permissions** — Users need read access to the SharePoint sites and OneDrive content the agent will reference

---

## 🚀 Getting Started

For full setup and deployment instructions, refer to the **Project Delta Digest - Setup Guide.pdf** included in this repository.

> 💡 **To download:** From the [repository root](https://github.com/microsoft/m365-agent-templates), click the green **Code** button and select **Download ZIP**, then extract the **Project Delta Digest** folder.

---

## 📦 Documents Included

| Document | Description |
|:---------|:------------|
| `Project Delta Digest - Setup Guide.pdf` | Step-by-step setup and configuration guide covering all deployment options. |
| `Project Delta Digest - Evaluation Test Plan.pdf` | Detailed evaluation test plan with pass/fail criteria for validating the agent. |
| `Project Delta Digest Agent - Overview Deck.pptx` | Scenario overview deck — agent summary, personas, user journey, architecture, and demo prompts. |
| `Project Delta Digest - Icon.png` | The agent's icon image. |
| `Project Delta Digest.zip` | The agent package — upload this directly into Teams (Option B). |

> 💡 **To download all files:** From the [repository root](https://github.com/microsoft/m365-agent-templates), click the green **Code** button and select **Download ZIP**, then extract the **Project Delta Digest** folder.

---

## 🛠️ Setup Guide

This section is generated from the **Project Delta Digest - Setup Guide.pdf** and covers all deployment options.

### Which Option Should I Choose?

| | Option A — Microsoft Marketplace | Option B — Import into Teams | Option C — Build in Agent Builder | Option D — Clone & Deploy (VS Code) |
|---|---|---|---|---|
| **Best for** | Easiest install, ready-to-use, no admin needed | Fastest local install, non-technical users | Full control, no zip needed, no admin permissions | Developers who want source-code control, ALM, CI/CD |
| **Time** | ~10 min | ~5 min | ~15 min | ~20 min |
| **Requires** | M365 work account + Power Platform environment + permission to install marketplace apps | Teams + admin-enabled custom app uploading + agent `.zip` | Agent Builder access via M365 Copilot | VS Code + M365 Agents Toolkit + access to source repo |
| **Customization** | Guided configuration in the Library | Edit JSON, re-zip, re-upload | Full no-code editing | Full source-code editing with Git workflow |
| **Skill Level** | Beginner | Beginner | Beginner / Maker | Pro Code Developer |

---

### 🏪 Option A — Install from the Microsoft Marketplace (Agent Library)

The Agent Library on Microsoft Marketplace offers a curated collection of ready-to-use agent templates you can install directly into your Power Platform environment.

**Before You Begin:**

| ✓ | What You Need | Why |
|---|---|---|
| ☐ | Microsoft 365 work account | Required to sign in to Microsoft Marketplace |
| ☐ | A target Power Platform environment | The marketplace app installs into a specific environment |
| ☐ | Permission to install marketplace apps | System Administrator or System Customizer security role in target environment |
| ☐ | Acceptance of Marketplace terms of service | Required during the "Get it now" flow |

**Install the Agent Library:**

1. Go to the **Agent Library on Microsoft Marketplace** and ensure you're signed in with your Microsoft 365 account.
2. Select **Get it now**.
3. Select **Get it now** to confirm.
4. Select the environment where you will install the solution, review and accept the terms of use and privacy statements, then select **Install**.
5. You'll be redirected to Power Platform Admin Center. If not redirected, navigate to: **Environments → your environment → Dynamics 365 apps → Agent Library**.
6. Once installed, go to **make.powerapps.com** and switch to the environment where you installed the Agent Library.
7. Navigate to **Apps → Agent Library**.
8. Browse the available templates and deploy your first agent.

> 🔴 **Important:** This solution enables code components in your environment. This is a standard Power Platform feature for custom UI experiences and requires no additional licensing beyond your existing entitlements.

**Deploy Project Delta Digest from the Library:**

1. Open the Agent Library app from **make.powerapps.com → Apps → Agent Library**.
2. Browse or search for **Project Delta Digest**.
3. Select the template, then click **Configure** (or Download if no configuration is required).
4. Configure the template — edit instructions, set knowledge sources, connected services, capabilities and starter prompts.
5. Click **Download** and then follow the side-loading instructions.

> 💡 **Tip:** If you don't see the Agent Library or the Get it now button, ask your tenant admin to enable Marketplace apps for your environment.

<details>
<summary>🔧 Troubleshooting</summary>

| Problem | Fix |
|:--------|:----|
| "Get it now" button is greyed out | Sign in with a work or school account that has Marketplace access (personal Microsoft accounts not supported) |
| No environments listed in the install dialog | Confirm you have admin permissions on at least one Power Platform environment |
| Install stuck in "Installing" | Check Power Platform admin center under Resources → Dynamics 365 apps; allow up to 15 minutes |
| "Code components not allowed in this environment" | Have a Power Platform admin enable code components for the target environment |
| Agent Library app doesn't appear in make.powerapps.com → Apps | Confirm install completed and that you're viewing the same environment |
| Project Delta Digest template not visible in the library | Confirm the agent has been published to the Marketplace catalog |

</details>

---

### 📦 Option B — Import the Agent into Teams

This is the fastest way to get started locally. Upload the pre-built agent package directly into Teams.

> 🔴 **Important:** Do not unzip or rename the file. Teams needs the original `.zip` as-is.

**How to Check if Custom App Uploading Is Enabled:**

1. Open Teams and click **Apps** in the left sidebar.
2. Click **Manage your apps** at the bottom.
3. Look for an **Upload an app** button.

See the button? ✅ You're good. Don't see it? Ask your IT admin to enable **Upload custom apps** in the Teams Admin Center under **Teams apps → Setup policies**.

**Upload the Agent:**

1. Open Microsoft Teams (desktop app or teams.microsoft.com).
2. Click **Apps** in the left sidebar.
3. Click **Manage your apps** (bottom of the page).
4. Click **Upload an app → Upload a custom app**.
5. Select the `Project Delta Digest.zip` file from your computer.
6. Click **Add** when the app details appear.

✅ The agent is now installed!

**Open the Agent After Uploading:**

*From Microsoft 365 Copilot (Web):*
1. Go to **m365.cloud.microsoft/chat** in your browser and sign in.
2. Click the side-panel icon next to the New Chat button (top-left area).
3. Browse the agent list and select **Project Delta Digest**.

*From Microsoft Teams:*
1. Open Teams and click the **Copilot** icon in the left sidebar.
2. Click the side-panel icon to browse available agents.
3. Select **Project Delta Digest** from the list.

*Using @Mention (Either App):*
In any Copilot chat window, type **@Project Delta Digest** followed by your question. Select the agent from the dropdown that appears.

**Pin the Agent for Quick Access:**

1. Open the agent list by clicking the side-panel icon next to New Chat.
2. Find **Project Delta Digest** in the list.
3. Right-click (or click the ⋯ menu) on the agent and select **Pin**.

The agent will now appear in your left sidebar for instant access — no searching needed.

<details>
<summary>🔧 Troubleshooting</summary>

| Problem | Fix |
|:--------|:----|
| "Upload an app" button missing | Custom app uploading is disabled. Ask your IT admin to enable it in Teams Admin Center. |
| "Parsing has failed" error | The zip file may be corrupted. Re-download the original file and try again. Make sure you didn't extract or modify it. |
| App doesn't appear after upload | Wait 1–2 minutes, then refresh Teams. Check Manage your apps to confirm it's listed. |
| Agent not showing in Copilot | It can take a few minutes after upload for the agent to appear. Refresh the page and check again. |

</details>

---

### 🔨 Option C — Build the Agent Yourself

If you can't upload a zip — or prefer to build it yourself — use Agent Builder in Microsoft 365 Copilot. No coding required.

**Open Agent Builder:**

1. Go to **m365.cloud.microsoft/chat** and sign in.
2. Click **New agent** in the left pane.
3. Click **Skip to configure** (top right).

**Fill In the Configuration:**

| Field | What to Enter |
|:------|:-------------|
| **Name** | Project Delta Digest |
| **Description** | Delivers a daily digest of shipped work, progress, changes, and risks. |

**Instructions:**

Scroll down to the Instructions box and paste the full agent instructions:

<details>
<summary>📋 Full Agent Instructions (click to expand)</summary>

```
# OBJECTIVE
You are Project Delta Digest and deliver concise, executive-ready summaries of project activity using the knowledge sources already connected to this agent: what shipped, what's moving, what's stuck, what's risky. Works for software, marketing campaigns, construction, consulting engagements, ops initiatives, research programs — any project with a name and a paper trail.

# FIRST MESSAGE RULE (non-negotiable)
**Confirm the project before searching anything.** If the user hasn't named a project, ask:
> "👋 Which project should I track? Share a name, code, hashtag, or keyword and I'll search across my knowledge sources."

1. Query every knowledge source for the project automatically.
2. If **zero** sources returned anything, stop and ask:
   > "I couldn't find **[project]** in my knowledge sources. Could you confirm the exact name, tag, or code — or try an alternate spelling / project alias?"

- If the user names a project up front, proceed directly — no echo-back required. Re-run this gate when the user says "switch project" or names a different one.
- If multiple candidates match, show a short numbered list and let the user pick.

# AUDIENCE TYPES (ask if unclear)
- **leadership / exec** → outcomes, risks, milestones, dollars/dates; skip detail tables.
- **participant** (engineer, marketer, analyst, designer, etc.) → full tables, technical/operational detail, links to items/files/threads.
- **pm** (default: program manager, project manager, or product manager) → balanced.

# STEPS
- **Do not start until a project has been named.**
- For each step below, search using all available knowledge sources (emails, files, chats, and meetings). If a section has no data, say "No updates found" and offer a hint (e.g., "try a wider window").

## 1. TL;DR — biggest progress · biggest risk · biggest blocker.
## 2. 🚢 Shipped / ✅ Done — completed deliverables, milestones, tasks, approvals, sign-offs, release notes.
## 3. 🟡 In Progress — active items, threads, draft docs, work-in-flight. Show owner + last-touched date.
## 4. 🗓️ Planned / Due Soon — upcoming milestones, due tasks, calendar events, deadlines in the next 7 days.
## 5. 🔄 Recent Activity — status changes, modified files, recent posts, edited pages, new comments.
## 6. 🔥 Blockers & Stale — items labeled blocked/on-hold, dependencies waiting on someone, overdue tasks, threads without a reply, items idle >5 days. Show owner + days stuck.
## 7. 👥 Team Load — assignee/owner distribution. Flag anyone with 3+ high-priority or overdue items.
## 8. 🛡️ Risks & Impact — high-priority items; risk score 1–5 (priority + age + impact). Add escalation hints.
## 9. 💬 Discussions & Decisions — chat posts marking decisions, high-volume email threads, meeting outcomes, page updates.
## 10. 📁 Files & Documents — recently modified or shared files.
## 11. 🔗 Delivery Signals — domain-specific signals linked back to work items.
## 12. 📚 Reference — pinned pages, charters, plans, status reports, wiki entries.

# OUTPUT FORMAT
- **Tables**: Item · Status · Owner · Risk · Source.
- **Status**: ✅ Done · 🟡 In Progress · 🟣 In Review · 🔴 Blocked · ⚪ To Do.
- **Priority**: 🚨 High · ⚠️ Medium · 🔵 Low.
- Bullets, never walls of text.
- **Cite every claim** with the source (file name, channel + date, email subject + sender, item ID, page title).
- Use ⚠️ for partial/stale/unverifiable data.

# ACTIONS (require explicit "yes")
Draft any of the following — the user reviews and sends/saves:
- A digest message to post in Teams or chat.
- A follow-up email to an owner or stakeholder.
- A status report for leadership.
- A meeting agenda built from open blockers and decisions needed.

# GUARDRAILS
- **Never produce a digest before a project has been named.**
- Never invent IDs, dates, owners, file names, quotes, dollar amounts, or status. If unknown, say "unknown" or "not found."
```

</details>

**Knowledge Sources:**

Add three knowledge sources by clicking the icons below the search bar:

| # | Source | How to Add |
|---|--------|-----------|
| 1 | 📂 SharePoint & OneDrive Files | Click the SharePoint icon → select **My SharePoint files, folders, and sites** |
| 2 | 💬 Teams Chats & Meetings | Click the Teams icon → select **My Teams chats and meetings** |
| 3 | ✉️ Email | Click the Outlook icon → select **My emails** |

> ⚠️ The availability of these knowledge sources depends on your license. Users with a Microsoft 365 Copilot license get full access to all sources.

**Starter Prompts:**

Add these prompts so users see clickable quick-start buttons:

| Title | Prompt |
|:------|:-------|
| 📊 Daily Change Digest | Give me today's full digest - TL;DR, what is completed, what's in progress, blockers, and risks from the last 24 hours. |
| 🏆 This Week's Wins | Show me everything completed this week, grouped by milestone or deliverable, with dates and links to the source items. |
| 🛡️ Current Risks | Surface high-priority open items, escalations, customer-impact issues, and compliance/budget flags, grouped by workstream. |
| 🔥 Project Blockers | What's blocking the project? List active blockers, who owns them, and how long they've been stuck. |
| 📋 Leadership Weekly Recap | Give me a leadership-ready weekly digest - TL;DR, milestones, key risks, and momentum signals. Skip item-level detail. |
| ✉️ Stakeholder Update | Draft a stakeholder update that I can send to my team. Include TL;DR, milestones, top risks, and asks. |

**Test & Create:**

1. Click the **Try it** tab (top of the page, next to Configure) and test a few prompts.
2. When you're happy with it, click **Create** (top right).
3. Click **Go to agent** to start using it.

---

### 💻 Option D — Clone & Deploy with Visual Studio Code

This path is for developers who want full control — source-code editing, ALM, and CI/CD. You'll clone the agent's source repo and deploy it using the Microsoft 365 Agents Toolkit.

> ⚠️ If you don't have access to the agent's source repository, ask the agent owner for the repo URL or use Option A / B / C instead.

**Install the Microsoft 365 Agents Toolkit:**

1. Open Visual Studio Code.
2. Click the **Extensions** icon in the sidebar (or press Ctrl+Shift+X).
3. Search for **"Microsoft 365 Agents Toolkit"**.
4. Click **Install** on the official Microsoft extension.

**Clone the Repository:**

1. Open a terminal in VS Code (Terminal → New Terminal).
2. Run: `git clone <repository-url-for-Project-Delta-Digest>`
3. Open the cloned folder in VS Code (File → Open Folder).

**Provision and Deploy:**

1. Open the **Agents Toolkit sidebar** (the Microsoft 365 icon).
2. Sign in to your Microsoft 365 account.
3. Click **Provision** to set up the cloud resources.
4. Click **Deploy** to upload the agent.
5. Wait for the success confirmation in the bottom panel.

**Preview the Agent:**

1. In the Agents Toolkit sidebar, click **Preview in Copilot**.
2. The agent opens in M365 Copilot.
3. Try a suggested prompt to confirm everything works.

> 💡 **Tip:** After deploying, you can edit the agent's source files locally, commit your changes to git, and re-deploy with one click. This is the recommended workflow for teams that want versioned, reviewable changes.

<details>
<summary>🔧 Troubleshooting</summary>

| Problem | Fix |
|:--------|:----|
| "Agents Toolkit" extension not found | Make sure you searched for the official Microsoft extension. Sign in to VS Code with the same account you'll use for M365. |
| Provision fails | Check that your account has the right Microsoft 365 / Power Platform licenses and that you're targeting an environment where you have admin rights. |
| Deploy succeeds but agent doesn't show | Wait 1–2 minutes and refresh M365 Copilot. Confirm the agent's manifest deployed under your account. |
| Repo URL doesn't exist | Confirm with the agent owner that the source repo is shared with you, or fall back to Option A / B / C. |

</details>

---

### 🎨 Make It Your Own

| Customization | How |
|:-------------|:----|
| 🎤 Change the agent's tone | Edit the Instructions — adjust wording like "warm, efficient" to match your style |
| 🙈 Hide output sections | Remove sections (e.g., Delivery Signals, Team Load) from the Instructions text |
| ⭐ Add a VIP list | Add names to the Instructions so the agent always surfaces their messages first |
| 🔌 Turn data sources on/off | Add or remove knowledge sources in Agent Builder, or edit the `capabilities` list in the JSON |
| 💬 Edit starter prompts | Update the Starter Prompts in Agent Builder, or edit `conversation_starters` in the JSON |
| 🎨 Swap the icon | Replace `color.png` (192×192) and `outline.png` (32×32) in the zip with your own PNGs |

---

### 🧪 Test That It Works

| # | Try This Prompt | What to Look For |
|:--|:----------------|:-----------------|
| 1 | "Give me today's full digest for [your project] — TL;DR, what is completed, what's in progress, blockers, and risks from the last 24 hours." | A TL;DR with progress, risk, and blocker, followed by sections for Shipped / In Progress / Blockers / Risks. Each item should cite a source. |
| 2 | "Show me everything completed this week for [your project], grouped by milestone or deliverable, with dates and links to the source items." | A list or table grouped by milestone with completion dates and source links. |
| 3 | "Surface high-priority open items, escalations, customer-impact issues, and compliance/budget flags for [your project], grouped by workstream." | A risks view with items grouped by workstream and a 1–5 risk score on the highest-priority entries. |
| 4 | "What's blocking [your project]? List active blockers, who owns them, and how long they've been stuck." | A blockers table with item, owner, and days stuck — only items actually labeled blocked, on-hold, overdue, or idle. |
| 5 | "Draft a stakeholder update for [your project] that I can send to my team. Include TL;DR, milestones, top risks, and asks." | A drafted message (not just a digest) with a TL;DR, milestones, top risks, and explicit asks — ready to review, edit, and send. |

> 📋 For a comprehensive evaluation, see the **Project Delta Digest - Evaluation Test Plan.pdf** included in this repository.
