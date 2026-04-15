[← Back to Agent Templates](https://github.com/microsoft/m365-agent-templates#readme)

<h1 align="center">
  <img src="Plan%20My%20Day%20Icon.png" alt="" width="48">&nbsp;&nbsp;Plan My Day Agent
</h1>

> **Your AI-powered morning briefing assistant** — pulls together your calendar, email, Teams, files, and contacts into a single, time‑aware daily briefing so you start every day prepared and focused.

[![Microsoft 365 Copilot](https://img.shields.io/badge/Microsoft_365-Copilot-0078D4?logo=microsoft&logoColor=white)](https://www.microsoft.com/microsoft-365/copilot)
[![Declarative Agent](https://img.shields.io/badge/Agent_Type-Declarative-6264A7?logo=microsoft-teams&logoColor=white)](https://learn.microsoft.com/microsoft-365-copilot/extensibility/overview-declarative-agent)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

---

## 📖 Table of Contents

- [Overview](#-overview)
- [Features](#-features)
- [How It Works](#-how-it-works)
- [Prerequisites](#-prerequisites)
- [Getting Started](#-getting-started)
- [Documents Included](#-documents-included)
- [Setup Guide](#%EF%B8%8F-setup-guide)

---

## 💡 Overview

The **Plan My Day Agent** is a declarative agent for Microsoft 365 Copilot that creates a personalized daily briefing from your work data — calendar, email, Teams messages, files, and contacts — so you can start every day knowing exactly what to focus on. With one simple prompt, users get a structured "digital day folder" that replaces the fragmented morning ritual of scanning multiple tools.

The agent orchestrates data retrieval across Microsoft 365, evaluating what's relevant across today, the next working day, and the days ahead. It synthesizes meetings, priorities, pending decisions, urgent communications, documents awaiting review, and even personal celebrations into a three-depth briefing: a 30-second glance, a 1-minute read, and a deep read — ensuring every user begins the day prepared, aligned, and focused.

---

## ✨ Features

| Feature | Description |
|:--------|:------------|
| 🗓️ **Daily & Time‑Aware Briefings** | Generates forward-looking briefings that adapt to the time of day, weekends, and holidays — automatically shifting to the next working day when it's evening or the weekend |
| 📅 **Calendar & Meeting Intelligence** | Surfaces today's meetings with attendees, join links, attached documents, RSVP status, and flags conflicts or double-bookings |
| ✅ **Task & Priority Management** | Identifies your top 3–5 priorities, pending decisions, and approvals where others are blocked waiting on your input |
| ✉️ **Email & Teams Catch-Up** | Highlights urgent or flagged emails, VIP messages, Teams @mentions, DMs, and important channel activity |
| 📂 **Document Awareness** | Shows recently shared files, documents awaiting approval, and unopened attachments from meeting invites |
| 👥 **People Context** | Surfaces birthdays, anniversaries, out-of-office status, and last-interaction dates for key contacts |
| 📊 **Weekly Planning & Outlook** | Provides a full weekly look-ahead with milestones, meeting load stats, and upcoming deadlines on the first day of the work week |
| 🤝 **Delegation Suggestions** | Recommends meetings and tasks that could be handled by someone else based on your workload |

---

## ⚡ How It Works

| Step | What Happens |
|:----:|:-------------|
| **1** | 💬 User asks the agent to **"Plan my day"** (or clicks a suggested prompt button) |
| **2** | 🔍 Agent retrieves data from **Outlook Calendar, Email, Teams, OneDrive, and SharePoint** across today, the next working day, and the next 3 working days |
| **3** | 🧠 Agent **cross-references and enriches** — flagging meetings with unopened docs, identifying pending decisions, detecting conflicts, and surfacing focus blocks |
| **4** | 📋 A structured **three-depth briefing** is delivered: 30-Second Glance → 1-Minute Read → Deep Read, with urgency tags and direct links to every item |

---

## ✅ Prerequisites

1. **Microsoft 365 Copilot License** — Required for all users interacting with the agent and to access organizational data (email, calendar, Teams, SharePoint, OneDrive)
2. **Microsoft 365 E3, E5, or Business Premium** — Base subscription providing access to Microsoft 365 services
3. **Sideloading Enabled in Teams** *(Option A & C only)* — A Teams admin must enable **Upload custom apps** in the Teams Admin Center under **Setup Policies > Global**
4. **Microsoft Teams** *(Option A & C only)* — Desktop or web client to sideload and access the agent

---

## 🚀 Getting Started

For full setup and deployment instructions, refer to the **Plan My Day Agent - Setup Guide.docx** included in this repository, or see the [Setup Guide](#%EF%B8%8F-setup-guide) section below.

> 💡 **To download:** From the [repository root](https://github.com/microsoft/m365-agent-templates), click the green **Code** button and select **Download ZIP**, then extract the **Plan My Day** folder.

---

## 📦 Documents Included

| Document | Description |
|:---------|:------------|
| [`Plan My Day Agent - Overview Deck.pptx`](Plan%20My%20Day%20Agent%20-%20Overview%20Deck.pptx) | Scenario overview presentation with features, persona examples, user journey, architecture, and demo prompts |
| [`Plan My Day Agent - Setup Guide.docx`](Plan%20My%20Day%20Agent%20-%20Setup%20Guide.docx) | Step-by-step deployment and configuration guide with three setup options |
| [`Plan My Day Agent - Evaluation Test Plan.docx`](Plan%20My%20Day%20Agent%20-%20Evaluation%20Test%20Plan.docx) | Detailed evaluation test plan with 15 test scenarios and pass/fail criteria |
| [`PlanMyDay_v1.0.0.0.zip`](PlanMyDay_v1.0.0.0.zip) | Pre-built declarative agent package ready to sideload into Teams |
| [`Plan My Day Icon.png`](Plan%20My%20Day%20Icon.png) | Agent icon used in Microsoft 365 Copilot and Teams |

> 💡 **To download all files:** From the [repository root](https://github.com/microsoft/m365-agent-templates), click the green **Code** button and select **Download ZIP**, then extract the **Plan My Day** folder.

---

## 🛠️ Setup Guide

This section is generated from the **Plan My Day Agent - Setup Guide.docx** and covers three deployment options — from a quick 5-minute import to a full developer workflow.

### Which Option Should I Choose?

| | Option A — Import Package | Option B — Build from Scratch | Option C — Clone & Deploy (VS Code) |
|---|---|---|---|
| **Best for** | Most users — fastest setup | Users who can't upload files or want to learn how the agent works | Technical users who want full control and version history |
| **Time** | ~5 min | ~15–20 min | ~5–10 min |
| **Requires** | Teams + the `.zip` file | Browser + Agent Builder access | VS Code + Git + Agents Toolkit |
| **Customization** | Post-import editing (repackage zip or edit in Agent Builder) | Full control during build | Full control via code files |
| **Skill Level** | Beginner | Beginner | Intermediate |

---

### 📦 Option A — Import the Agent into Teams

This is the fastest way to get started. You'll upload the pre-built agent package directly into Teams.

> 🔴 **Important:** Do not unzip or rename the `.zip` file. Teams needs the original `.zip` as-is.

**Before You Begin:**
- ☐ Microsoft Teams installed (desktop app or [teams.microsoft.com](https://teams.microsoft.com))
- ☐ Custom app uploading enabled in Teams (see below)
- ☐ `PlanMyDay_v1.0.0.0.zip` file downloaded from this repository

<details>
<summary>🔍 How to Check if Custom App Uploading Is Enabled</summary>

1. Open Teams and click **Apps** in the left sidebar.
2. Click **Manage your apps** at the bottom.
3. Look for an **Upload an app** button.

✅ See the button? You're good to go.
❌ Don't see it? Ask your IT admin to enable **"Upload custom apps"** in the Teams Admin Center under **Setup Policies > Global**.

</details>

**Upload the Agent:**

1. Open **Microsoft Teams** (desktop app or [teams.microsoft.com](https://teams.microsoft.com)).
2. Click **Apps** in the left sidebar.
3. Click **Manage your apps** (bottom of the page).
4. Click **Upload an app** → **Upload a custom app**.
5. Select the `PlanMyDay_v1.0.0.0.zip` file from your computer.
6. Click **Add** when the app details appear.

✅ The agent is now installed!

**Open the Agent:**

| Method | How |
|:-------|:----|
| **Copilot Web** | Go to [m365.cloud.microsoft/chat](https://m365.cloud.microsoft/chat) → click the side-panel icon next to New Chat → select **Plan My Day** |
| **Teams** | Open Teams → click **Copilot** in the sidebar → click the side-panel icon → select **Plan My Day** |
| **@Mention** | In any Copilot chat, type `@Plan My Day` followed by your question |

> 💡 **Pin it!** Right-click Plan My Day in the agent list and select **Pin** to add it to your sidebar for instant access.

<details>
<summary>🔧 Troubleshooting (Option A)</summary>

| Problem | Fix |
|:--------|:----|
| "Upload an app" button missing | Custom app uploading is disabled. Ask your IT admin to enable it. |
| "Parsing has failed" error | The zip file may be corrupted. Re-download the original file and try again. Make sure you didn't extract or modify it. |
| App doesn't appear after upload | Wait 1–2 minutes, then refresh Teams. Check **Manage your apps** to confirm it's listed. |
| Agent not showing in Copilot | It can take a few minutes after upload for the agent to appear in the Copilot agent list. Refresh the page and check again. |

</details>

---

### 🏗️ Option B — Build the Agent Yourself

If you can't upload a zip — or prefer to build it yourself — use Agent Builder in Microsoft 365 Copilot. No coding required.

**Before You Begin:**
- ☐ Access to Agent Builder at [m365.cloud.microsoft/chat](https://m365.cloud.microsoft/chat)

**Open Agent Builder:**

1. Go to [m365.cloud.microsoft/chat](https://m365.cloud.microsoft/chat) and sign in.
2. Click **New agent** in the left pane.
3. Click **Skip to configure** (top right).

**Fill In the Configuration:**

**Name & Description:**

| Field | What to Enter |
|:------|:-------------|
| **Name** | Plan My Day |
| **Description** | Compiles a comprehensive morning briefing using Microsoft 365 data. It balances business priorities with personal wellness, helping everyone start each day informed, prepared, and connected to what matters. |

**Instructions:**

Scroll down to the **Instructions** box and paste the full agent instructions below:

<details>
<summary>📋 Click to expand full agent instructions</summary>

```
# Plan My Day Agent

You are Plan My Day, an exec briefing assistant. Compile a forward-looking daily
briefing from M365 data covering today, the next working day (NWD), and the next
3 working days. Never limit to today alone. Warm, efficient tone — like a chief
of staff. Link every item. Omit empty sections.

Always display the briefing date at the top of every response:
"📅 Briefing for [Day], [Date]"
If after 6 PM → default to tomorrow.
If weekend → brief for Monday.

## Rules
- Use deep reasoning to retrieve content across multiple working days.
- Every item: "What do I do, and why now?" with a direct link.
- Balance business priorities with personal well-being.
- No data = no section.

## Orchestration — Four Phases

### Phase 1 — Context
- Get user's local time, day of week, time zone, nearby holidays.
- Detect work week from locale/calendar. Compute NWD and next 3 working days.
- Set retrieval windows for Today (full detail), NWD (first meeting, prep-required,
  hard deadlines), and Next 3 WD (personal events, approaching deadlines, approvals
  ageing >2 days, external meetings).
- First day of work week: weekly look-ahead, milestones, team OOO.
- Travel within 48 hrs → activate Travel Mode.

### Phase 2 — Retrieve
Fetch all sources in parallel:
- Meetings: all events with title, time, attendees, join link, docs, RSVP status.
- Email: unread + flagged + high-importance; VIP/C-suite; action words.
- Teams: mentions, DMs, followed channels; flag priority notifications.
- OneDrive/SharePoint: shared last 48 hrs, pending approvals, docs in invites.
- People: birthdays, anniversaries, OOO attendees.

### Phase 3 — Enrich
- Prep audit: flag meetings <2 hrs away with unopened docs.
- Decision queue: items where someone waits on user. Longest-wait-first.
- Conflicts: overlaps and double-bookings. Propose decline/shorten/delegate.
- Focus blocks: gaps ≥30 min → suggest focus work.
- Dedup: same topic across email + Teams + calendar → merge.
- Trending: items escalating across days.

### Phase 4 — Score & Assemble
Score on: business impact · people blocked · time sensitivity · strategic alignment.
Classify: ⚡ URGENT · 🔴 CRITICAL DECISION · 🎯 HIGH IMPACT · 📅 UPCOMING · ℹ️ AWARENESS.

## Output — Three Depths

### 30-SEC GLANCE
- 🎯 Top 3–5 priorities: label + action + why now.
- 📊 Stats: meetings today · meetings NWD · focus hrs · decisions pending.
- 👀 NWD preview: first meeting + deadlines.

### 1-MIN READ
- 📅 Schedule: chronological, location, attendees, prep links, conflict flags.
- ✅ Decisions & Approvals: who's blocked, wait time, link.
- 🎂 Personal: celebrations + family events.

### DEEP READ
- ✉️ Urgent emails + Teams needing response.
- 📂 Docs needing review (links).
- 🔔 Awareness: OOO, business context, external factors.
- 💡 3–5 Recommendations: delegate, prep, follow up, recognize.
- 📋 Summary: 3–4 sentences incl. forward look.
- 📅 NWD & Ahead: NWD schedule, overnight/weekend prep, 3-WD deadlines.

## Special Modes
✈️ Travel: time zones, conflicts, pre-departure tasks.
🔴 High-Stakes: extra prep, countdowns.
🚨 Crisis: elevate related, suggest cancellations.
📈 Busy (>6 meetings): aggressive filter, suggest delegation.
```

</details>

**Knowledge Sources:**

Add three knowledge sources by clicking the icons in the Knowledge section:

1. 📂 Click the **SharePoint icon** → Select **My SharePoint files, folders, and sites**
2. 💬 Click the **Teams icon** → Select **My Teams chats and meetings**
3. ✉️ Click the **Outlook icon** → Select **My emails**

> ⚠️ The availability of these knowledge sources depends on your Microsoft 365 Copilot license.

**Starter Prompts:**

| Title | Prompt |
|:------|:-------|
| ☀️ Plan My Day | Plan my day: pull my calendar, emails, Teams messages, SharePoint and OneDrive activity, and any personal events |
| 🎯 Top Priorities | What are my top priorities today? |
| ✅ Pending Decisions | Do I have any pending decisions or approvals? |
| 📅 Weekly Look-Ahead | Give me a weekly look-ahead |
| 🤝 Delegation | What should I delegate today? |

**Test & Create:**

1. Click the **Try it** tab and test a few prompts to make sure the agent works.
2. When you're happy with it, click **Create** (top right).
3. Click **Go to agent** to start using it.

---

### 💻 Option C — Clone & Deploy with Visual Studio Code

This approach uses Git and Visual Studio Code with the Microsoft 365 Agents Toolkit extension. It's ideal if you prefer version control, want to make deeper customizations, or your organization restricts custom app uploads.

**Before You Begin:**
- ☐ [Visual Studio Code](https://code.visualstudio.com/Download) installed
- ☐ [Git](https://git-scm.com/downloads) installed
- ☐ [M365 Agents Toolkit](https://marketplace.visualstudio.com/items?itemName=TeamsDevApp.ms-teams-vscode-extension) VS Code extension installed

<details>
<summary>📥 Step-by-step tool installation</summary>

**Install Visual Studio Code:**
1. Go to [code.visualstudio.com/Download](https://code.visualstudio.com/Download)
2. Download and run the installer for your OS.

**Install Git:**
1. Go to [git-scm.com/downloads](https://git-scm.com/downloads)
2. Download and run the installer (default settings are fine).
3. Verify: open a terminal and run `git --version`.

**Install M365 Agents Toolkit:**
1. Open VS Code → click the **Extensions** icon (or press `Ctrl+Shift+X`).
2. Search for **M365 Agents Toolkit** (published by Microsoft).
3. Click **Install**.

</details>

**Clone the Repository:**

1. Open VS Code.
2. Press `Ctrl+Shift+P` to open the Command Palette.
3. Type **"Git: Clone"** and select it.
4. Paste the repository URL: `https://github.com/microsoft/m365-agent-templates.git`
5. Choose a local folder and click **Select as Repository Destination**.
6. Open the cloned repository when prompted.

**Sign In & Deploy:**

1. Click the **Agents Toolkit** icon in the VS Code sidebar.
2. Under **Accounts**, click **Sign in to Microsoft 365** and authenticate with your work account.
3. In the **Lifecycle** section, click **Provision** to register the agent in your tenant.
4. Once provisioned, click **Share** to grant access to specific colleagues or groups.
5. When ready for everyone, click **Publish to Organization** to submit to your org's app catalog.

> 💡 A Teams admin may need to approve the submission before it becomes available tenant-wide.

<details>
<summary>🔧 Troubleshooting (Option C)</summary>

| Problem | Fix |
|:--------|:----|
| "Git is not recognized" | Restart VS Code or your terminal. Ensure Git was added to your system PATH during installation. |
| Agents Toolkit extension not visible | Verify you installed the correct extension (publisher: Microsoft). Restart VS Code. |
| Sign-in fails or shows "no license" | Verify with your IT admin that your account has a Microsoft 365 Copilot license. |
| Provision fails | Check the Output panel in VS Code (select "Agents Toolkit") for detailed error messages. |
| Agent doesn't appear after publishing | Admin approval may be required. Check with your Teams admin. |

</details>

---

### 🎨 Make It Your Own

| Customization | How |
|:-------------|:----|
| 🎙️ **Change the agent's tone** | Edit the Instructions — adjust wording like "warm, efficient" to match your style |
| 🔇 **Hide output sections** | Remove sections (e.g., Deep Read) from the Instructions text |
| ⭐ **Add a VIP list** | Add names to the Instructions so the agent always surfaces their messages first |
| 🔌 **Turn data sources on/off** | Add or remove knowledge sources in Agent Builder, or edit the capabilities list in `declarativeAgent.json` |
| 💬 **Edit starter prompts** | Update the Starter Prompts in Agent Builder, or edit `conversation_starters` in `declarativeAgent.json` |
| 🎨 **Swap the icon** | Replace `color.png` (192×192) and `outline.png` (32×32) in the zip with your own PNGs |

---

### 🧪 Test That It Works

Run these quick checks after setup to make sure everything is connected:

| # | Try This Prompt | What to Look For |
|:-:|:---------------|:-----------------|
| 1 | **Plan my day** | Pulls data from calendar, email, Teams, files, and people — delivers a structured three-depth briefing |
| 2 | **What are my top priorities today?** | Returns 3–5 prioritized items with urgency tags (⚡🔴🎯) |
| 3 | **Do I have any pending decisions?** | Shows actionable items where others are waiting on your input |
| 4 | **Give me a weekly look-ahead** | Displays upcoming events, milestones, and deadlines for the full week |
| 5 | **What should I delegate today?** | Offers delegation suggestions based on your meeting load and task list |

> ⚠️ If the agent doesn't return data for a specific source (e.g., no Teams messages), that's OK — it only shows sections where data exists.
>
> 📋 For a comprehensive evaluation, see the **Plan My Day Agent - Evaluation Test Plan.docx** included in this repository.
