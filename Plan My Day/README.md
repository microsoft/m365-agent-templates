<p align="center">
  <img src="Plan My Day Icon.png" alt="Plan My Day Agent" width="120">
</p>

<h1 align="center">Plan My Day Agent</h1>

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
- [Setup Guide](#️-setup-guide)

---

## 💡 Overview

**Plan My Day** is a **Declarative Agent** for **Microsoft 365 Copilot** that helps employees quickly understand what matters most each day by bringing together meetings, tasks, emails, and documents into a single, time‑aware briefing. With one simple prompt, users start their day prepared, focused, and ready to act — without jumping between tools.

The agent orchestrates data across Microsoft 365 — pulling from Outlook calendar, email, Teams messages, OneDrive/SharePoint files, and people signals — then generates a structured briefing organized into three scannable depths: a **30-Second Glance**, a **1-Minute Read**, and a **Deep Read**. From executive assistants piecing together daily briefings to managers racing between meetings, Plan My Day eliminates the burden of scanning multiple tools every morning.

---

## ✨ Features

| Feature | Description |
|:--------|:------------|
| 🗓️ **Daily & Time-Aware Briefings** | Generates a structured morning briefing that adapts based on time of day, day of week, and nearby holidays |
| 📅 **Calendar & Meeting Intelligence** | Surfaces all meetings with attendees, agendas, join links, prep docs, conflicts, and RSVP status |
| ✅ **Task & Priority Management** | Pulls from Planner/To Do, ranks by urgency, and highlights pending decisions and approvals |
| 📊 **Weekly Planning & Outlook** | Provides a full weekly look-ahead with milestones, team OOO, and approaching deadlines |
| 📄 **Document Awareness** | Flags shared documents, pending reviews, and unopened files attached to upcoming meetings |
| 💬 **Teams & Email Intelligence** | Surfaces unread mentions, DMs, flagged emails, and VIP messages requiring attention |
| 🎂 **People Signals** | Tracks birthdays, anniversaries, and out-of-office status for colleagues and meeting attendees |
| 🤝 **Delegation Recommendations** | Suggests meetings and tasks that could be handled by someone else when your day is overloaded |
| ✈️ **Special Modes** | Activates Travel, High-Stakes, Crisis, and Busy modes based on context for tailored briefings |

---

## ⚡ How It Works

| Step | What Happens |
|:----:|:-------------|
| **1** | 💬 User prompts the agent — *"Plan my day"*, *"What are my top priorities?"*, or clicks a suggested prompt button |
| **2** | 🔍 Agent gathers **context** — local time, day of week, time zone, holidays — and sets retrieval windows spanning today + next working days |
| **3** | 📡 Agent **retrieves** data in parallel from Calendar, Email, Teams, OneDrive/SharePoint, and People signals |
| **4** | 🧠 Agent **enriches** by cross-referencing sources — flagging prep gaps, decision queues, conflicts, focus blocks, and trending items |
| **5** | 📋 Agent **scores and assembles** a structured briefing at three depths: 30-Second Glance → 1-Minute Read → Deep Read |

---

## ✅ Prerequisites

1. **Microsoft 365 Copilot License** — Required for all users interacting with the agent and to access Microsoft 365 data sources
2. **Microsoft 365 E3, E5, or Business Premium** — Base subscription for Microsoft 365 services
3. **Sideloading Enabled in Teams** — A Teams admin must enable **Upload custom apps** in the Teams Admin Center under **Setup Policies > Global** (required for Option A only)
4. **Microsoft Teams** — Desktop or web client to access the agent
5. **SharePoint & OneDrive Permissions** — Users need read access to the content the agent will reference

---

## 🚀 Getting Started

For full setup and deployment instructions, see the **[Setup Guide](#️-setup-guide)** section below, or refer to the **Plan My Day Agent - Setup Guide.docx** included in this repository.

> 💡 **To download:** From the [repository root](https://github.com/microsoft/m365-agent-templates), click the green **Code** button and select **Download ZIP**, then extract the **Plan My Day** folder.

---

## 📦 Documents Included

| Document | Description |
|:---------|:------------|
| [`Plan My Day Agent - Overview Deck.pptx`](Plan%20My%20Day%20Agent%20-%20Overview%20Deck.pptx) | Comprehensive overview deck covering the agent scenario, architecture, personas, and demo prompts |
| [`Plan My Day Agent - Setup Guide.docx`](Plan%20My%20Day%20Agent%20-%20Setup%20Guide.docx) | Step-by-step setup and configuration guide with three deployment options |
| [`Plan My Day Agent - Evaluation Test Plan.docx`](Plan%20My%20Day%20Agent%20-%20Evaluation%20Test%20Plan.docx) | Evaluation test plan with pass/fail criteria and import instructions |
| [`PlanMyDay_v1.0.0.0.zip`](PlanMyDay_v1.0.0.0.zip) | Pre-built agent package ready for sideloading into Teams |

> 💡 **To download all files:** From the [repository root](https://github.com/microsoft/m365-agent-templates), click the green **Code** button and select **Download ZIP**, then extract the **Plan My Day** folder.

---

## 🛠️ Setup Guide

### Which Option Should I Choose?

| | **Option A — Import Package** | **Option B — Build from Scratch** | **Option C — Clone & Deploy (VS Code)** |
|---|---|---|---|
| **Best for** | Most users — fastest setup | Learning how the agent works, or if uploads are restricted | Technical users wanting full control and version history |
| **Time** | ~5 minutes | ~15–20 minutes | ~5–10 minutes |
| **Requires** | Teams + `.zip` file | Browser + Agent Builder access | VS Code + Git + Agents Toolkit |
| **Customization** | Re-zip after editing JSON files | Full control in browser UI | Full control in code |
| **Skill Level** | Beginner | Beginner | Intermediate |

---

### 📦 Option A — Import the Agent into Teams

This is the fastest way to get started. Upload the pre-built agent package directly into Teams.

> 🔴 **Important:** Do not unzip or rename the file. Teams needs the original `.zip` as-is.

**Before You Begin:**
- ☐ Microsoft Teams installed (desktop app or [teams.microsoft.com](https://teams.microsoft.com))
- ☐ Custom app uploading enabled in Teams ([how to check](#how-to-check-if-custom-app-uploading-is-enabled))
- ☐ `PlanMyDay_v1.0.0.0.zip` file downloaded from this repository

#### How to Check if Custom App Uploading Is Enabled

1. Open Teams and click **Apps** in the left sidebar
2. Click **Manage your apps** at the bottom
3. Look for an **Upload an app** button

See the button? ✅ You're good to go. Don't see it? Ask your IT admin to enable "Upload custom apps" for your account.

#### Upload Steps

1. Open **Microsoft Teams** (desktop app or [teams.microsoft.com](https://teams.microsoft.com))
2. Click **Apps** in the left sidebar
3. Click **Manage your apps** (bottom of the page)
4. Click **Upload an app** → **Upload a custom app**
5. Select the `PlanMyDay_v1.0.0.0.zip` file from your computer
6. Click **Add** when the app details appear

✅ The agent is now installed!

#### Open the Agent

Once uploaded, access **Plan My Day** in any of these ways:

| Method | How |
|:-------|:----|
| **Copilot Web** | Go to [m365.cloud.microsoft/chat](https://m365.cloud.microsoft/chat) → click the side-panel icon → select **Plan My Day** |
| **Teams** | Open Teams → click **Copilot** in the sidebar → click the side-panel icon → select **Plan My Day** |
| **@Mention** | In any Copilot chat, type `@Plan My Day` followed by your question |

> 💡 **Pin it:** Right-click the agent in the agent list and select **Pin** to keep it in your sidebar for instant access.

<details>
<summary>🔧 Troubleshooting (Option A)</summary>

| Problem | Fix |
|:--------|:----|
| "Upload an app" button missing | Custom app uploading is disabled. Ask your IT admin to enable it. |
| "Parsing has failed" error | The zip file may be corrupted. Re-download the original file and try again. Do not extract or modify it. |
| App doesn't appear after upload | Wait 1–2 minutes, then refresh Teams. Check **Manage your apps** to confirm it's listed. |
| Agent not showing in Copilot | It can take a few minutes after upload for the agent to appear. Refresh the page and check again. |

</details>

---

### 🏗️ Option B — Build the Agent in Agent Builder

If you can't upload a zip — or prefer to build it yourself — use **Agent Builder** in Microsoft 365 Copilot. No coding required.

**Before You Begin:**
- ☐ Access to Agent Builder at [m365.cloud.microsoft/chat](https://m365.cloud.microsoft/chat)

#### Step 1 — Open Agent Builder

1. Go to [m365.cloud.microsoft/chat](https://m365.cloud.microsoft/chat) and sign in
2. Click **New agent** in the left pane
3. Click **Skip to configure** (top right)

#### Step 2 — Name & Description

| Field | What to Enter |
|:------|:--------------|
| **Name** | Plan My Day |
| **Description** | Compiles a comprehensive morning briefing using Microsoft 365 data. It balances business priorities with personal wellness, helping everyone start each day informed, prepared, and connected to what matters. |

#### Step 3 — Instructions

Scroll down to the **Instructions** box. Copy and paste the full agent instructions below:

<details>
<summary>📋 Click to expand full agent instructions</summary>

```
# Plan My Day Agent

You are Plan My Day, an exec briefing assistant. Compile a forward-looking daily
briefing from M365 data covering today, the next working day (NWD), and the next
3 working days. Never limit to today alone. Warm, efficient tone — like a chief
of staff. Link every item. Omit empty sections.

Always display the briefing date at the top of every response:
"📅 Briefing for [Day], [Date]" (e.g., "📅 Briefing for Tuesday, April 8, 2026")
If after 6 PM → default to tomorrow: "Since it's evening, here's your briefing
for tomorrow, [date]." If weekend → brief for Monday.

## Rules
- Use deep reasoning to retrieve content across multiple working days.
  Today-only = incomplete.
- Every item answer: "What do I do, and why now?" with a direct link.
- Balance business priorities with personal well-being.
- No data = no section.

## Orchestration
Four phases, sequential. Do not skip any.

### Phase 1 — Context
- Get user's local time, day of week, time zone, nearby holidays.
- Detect work week from locale/calendar (Mon–Fri, Sun–Thu, etc.). Compute NWD
  and next 3 working days, skipping weekends + holidays.
- Set retrieval windows — ALL mandatory:
  - Today: full detail, every source.
  - NWD: first meeting, prep-required meetings, hard deadlines. May be 2–3 days
    away on last working day of week.
  - Next 3 working days: personal events (incl. weekends), approaching
    deadlines, approvals ageing >2 days, external meetings.
  - First day of work week: weekly look-ahead, milestones, team OOO.
- Travel within 48 hrs → activate Travel Mode (time zones, transit buffers).
- Gate: Confirm queries span today + NWD + 3 working days before proceeding.

### Phase 2 — Retrieve
Fetch all sources in parallel before analyzing. Capture a direct link for
every item.

- Meetings:
  - Today: Show all events with title, time, attendees, join link, attached
    documents, and RSVP status.
  - NWD: Highlight the first meeting and flag any that require preparation.
  - Next 3 Working Days: Surface external or large meetings (≥10 attendees).
  - Week Start: Full weekly skeleton; flag days with >6 meetings.
  - Include all calendar events for the entire day — morning through evening,
    including personal events.
  - Do not truncate by business hours; team dinners, evening meetings, and
    after-hours events must always appear.
  - Show events regardless of RSVP status.
  - Prioritize signals from the last 24–48 hours; never surface stale emails
    or already-resolved items as urgent.

- Email: Today — unread + flagged + importance: high; prioritize VIP/C-suite,
  action words (approve, review, urgent), messages marked important by sender,
  OOO replies. NWD — threads with NWD deadlines. Next 3 WD — pending replies
  >2 days.

- Teams: Today — mentions, DMs, followed channels; flag 3+ pings + messages
  marked important or urgent. NWD — meetings with open chat questions.
  Next 3 WD — channels with unusual activity.

- OneDrive/SharePoint: Today — shared last 48 hrs, pending approvals, docs in
  today's invites. NWD — unopened docs in NWD invites. Next 3 WD — approaching
  review deadlines.

- People: Today — birthdays, anniversaries, OOO attendees. NWD + 3 WD —
  celebrations incl. intervening weekends. First day of week — team OOO.

### Phase 3 — Enrich
Cross-reference across sources and time:
- Prep audit: Flag meetings <2 hrs away with unopened docs. Nudge NWD prep.
- Decision queue: Items where someone waits on the user. Longest-wait-first.
- Conflicts: Overlaps and double-bookings today + NWD. Propose
  decline/shorten/delegate.
- Focus blocks: Gaps ≥30 min → suggest focus work. If today is full, find
  time on NWD.
- Dedup: Same topic across email + Teams + calendar → merge, link all.
- Trending: Items escalating across days (3+ new replies, approval pending
  4+ days).
- People context: VIP last-interaction date, unanswered threads >24 hrs.

### Phase 4 — Score & Assemble
Score on: business impact · people blocked · time sensitivity · strategic
alignment.
Classify: ⚡ URGENT · 🔴 CRITICAL DECISION · 🎯 HIGH IMPACT · 📅 UPCOMING ·
ℹ️ AWARENESS.
Filter out: FYI-only, declined optionals, low-priority edits, social chatter,
auto-notifications.
Escalate: 3+ mentions, >3 days pending, conflicting invites, VIP unread >24 hrs.
Last working day of week → add "weekend bridge" note for the first day back.

## Output — Three Depths

### 30-SEC GLANCE
- 🎯 Top 3–5 priorities: label + action + why now.
- 📊 Stats: meetings today · meetings NWD · focus hrs · decisions pending ·
  celebrations (3 WD).
- 👀 NWD preview: first meeting + deadlines.

### 1-MIN READ
- 📅 Schedule: chronological, location, attendees, prep links, conflict flags,
  focus blocks.
- ✅ Decisions & Approvals: who's blocked, wait time, link. Longest-wait-first.
- 🎂 Personal: celebrations + family events (incl. weekends).

### DEEP READ
- ✉️ Urgent emails + Teams needing response.
- 📂 Docs needing review (links).
- 🔔 Awareness: OOO, business context, external factors.
- 💡 3–5 Recommendations: delegate, prep, follow up, recognize.
- 📋 Summary: 3–4 sentences incl. forward look.
- 📅 NWD & Ahead: NWD schedule, overnight/weekend prep, 3-WD deadlines.

## Personalization
Track VIPs and delegation prefs. Flag work-personal conflicts.
Birthdays/anniversaries: remind at 1 week, 3 days, day-of.

## Special Modes
✈️ Travel: time zones, conflicts, pre-departure tasks.
🔴 High-Stakes: extra prep, countdowns.
🚨 Crisis: elevate related, suggest cancellations.
📈 Busy (>6 meetings): aggressive filter, suggest delegation.
```

</details>

#### Step 4 — Knowledge Sources

Scroll down to the **Knowledge** section and add three sources:

| # | Icon | Source | What It Adds |
|:-:|:-----|:-------|:-------------|
| 1 | 📂 SharePoint | **My SharePoint files, folders, and sites** | OneDrive and SharePoint content |
| 2 | 💬 Teams | **My Teams chats and meetings** | Teams messages and calendar meetings |
| 3 | ✉️ Outlook | **My emails** | Outlook inbox |

> ⚠️ The availability of these knowledge sources depends on your license. Users with a Microsoft 365 Copilot license get full access to all sources.

#### Step 5 — Starter Prompts

Add these five starter prompts so users see clickable quick-start buttons:

| Title | Prompt |
|:------|:-------|
| ☀️ Plan My Day | Plan my day: pull my calendar, emails, Teams messages, SharePoint and OneDrive activity, and any personal events |
| 🎯 Top Priorities | What are my top priorities today? |
| ✅ Pending Decisions | Do I have any pending decisions or approvals? |
| 📅 Weekly Look-Ahead | Give me a weekly look-ahead |
| 🤝 Delegation | What should I delegate today? |

#### Step 6 — Test & Create

1. Click the **Try it** tab (top of the page) and test a few prompts
2. When you're happy with it, click **Create** (top right)
3. Click **Go to agent** to start using it

---

### 💻 Option C — Clone & Deploy with Visual Studio Code

This approach uses Git and VS Code with the **Microsoft 365 Agents Toolkit** extension. Ideal for version control, deeper customizations, or organizations that restrict custom app uploads.

**Before You Begin:**
- ☐ [Visual Studio Code](https://code.visualstudio.com/Download) installed
- ☐ [Git](https://git-scm.com/downloads) installed
- ☐ [M365 Agents Toolkit](https://learn.microsoft.com/microsoftteams/platform/toolkit/install-teams-toolkit) VS Code extension installed

#### Step 1 — Clone the Repository

**From VS Code (recommended):**
1. Press `Ctrl+Shift+P` → type **"Git: Clone"** → select it
2. Paste: `https://github.com/microsoft/m365-agent-templates.git`
3. Choose a local folder and click **Select as Repository Destination**
4. When prompted, click **Open**

**From the command line:**
```bash
git clone https://github.com/microsoft/m365-agent-templates.git
cd m365-agent-templates/Plan\ My\ Day
code .
```

#### Step 2 — Explore the Project

The key file is `appPackage/declarativeAgent.json` — this defines the agent's instructions, knowledge sources, and capabilities.

| Folder | Contents |
|:-------|:---------|
| `appPackage/` | Agent configuration (manifest.json, declarativeAgent.json) |
| `env/` | Environment configuration |
| `m365agents.yml` | Agents Toolkit project file |

#### Step 3 — Sign In

1. Click the **Agents Toolkit** icon in the VS Code left sidebar
2. Under **Accounts**, click **Sign in to Microsoft 365**
3. Sign in with your work or school account

#### Step 4 — Provision

1. In the Agents Toolkit sidebar, expand **Lifecycle**
2. Click **Provision**
3. Wait for the confirmation message in the VS Code output panel

> 💡 Provisioning only needs to be done once (or again if you change the app manifest).

#### Step 5 — Share or Publish

| Action | How |
|:-------|:----|
| **Share with colleagues** | Lifecycle → **Share** → enter names or groups → click Share |
| **Publish to organization** | Lifecycle → **Publish to Organization** → a Teams admin may need to approve |

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
|:--------------|:----|
| Change the agent's tone | Edit the **Instructions** — adjust wording like "warm, efficient" to match your style |
| Hide output sections | Remove sections (e.g., Deep Read) from the Instructions text |
| Add a VIP list | Add names to the Instructions so the agent always surfaces their messages first |
| Turn data sources on/off | Add or remove knowledge sources in Agent Builder, or edit the capabilities list in `declarativeAgent.json` |
| Edit starter prompts | Update the **Starter Prompts** in Agent Builder, or edit `conversation_starters` in `declarativeAgent.json` |
| Swap the icon | Replace `color.png` (192×192) and `outline.png` (32×32) in the zip with your own PNGs |

---

### 🧪 Test That It Works

Run through these quick checks after setup to make sure everything is connected:

| # | Try This Prompt | What to Look For |
|:-:|:----------------|:-----------------|
| 1 | *Plan my day* | Pulls data from calendar, email, Teams, files, and people |
| 2 | *What are my top priorities today?* | Returns 3–5 prioritized items with urgency tags |
| 3 | *Do I have any pending decisions?* | Shows actionable items waiting on you |
| 4 | *Give me a weekly look-ahead* | Displays upcoming events and deadlines |
| 5 | *What should I delegate today?* | Offers delegation suggestions based on your workload |

> ⚠️ If the agent doesn't return data for a specific source (e.g., no Teams messages), that's OK — it only shows sections where data exists.

For a deeper test, refer to the **[Plan My Day Agent - Evaluation Test Plan.docx](Plan%20My%20Day%20Agent%20-%20Evaluation%20Test%20Plan.docx)** included in this repository.
