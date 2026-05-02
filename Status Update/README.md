<h1 align="center">
  <img src="Status%20Update%20Agent%20Icon.png" alt="" width="48">&nbsp;&nbsp;Status Update Agent
</h1>

> **Your end-of-day, weekly status, and brag-doc writing companion** — turns your Microsoft 365 activity into clear, audience-ready summaries so meaningful work never goes unnoticed.

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
- [Files Included](#-files-included)
- [Setup Guide](#%EF%B8%8F-setup-guide)

---

## 💡 Overview

The **Status Update Agent** is a declarative agent for Microsoft 365 Copilot that surfaces a user's most meaningful accomplishments from their recent Microsoft 365 activity — daily wrap-ups, weekly status reports, manager status emails, OKR check-ins, brag docs, and team-wins recaps. It's built for two personas: the **individual contributor** who wants visibility into their own progress and impact, and the **people manager** who wants to recognize team contributions without comparing teammates.

The agent grounds every claim in observable signals from **Outlook, Teams, SharePoint, OneDrive, and Calendar** — never fabricating, never comparing, never rating performance. Using **code interpreter**, it can also generate a polished, shareable Brag Doc `.docx` for promotions, reviews, and 1:1s. Whether triggered on demand or as a Friday weekly recap, the agent translates everyday work signals into clear, encouraging wins that reinforce progress, momentum, and recognition.

---

## ✨ Features

| Feature | Description |
|:--------|:------------|
| 🌟 **Reflection Mode** | "Hype me up" — surfaces 5 outcome-focused accomplishments grounded in M365 sources, plus 3–5 gentle reflection questions, with answers captured privately in OneNote/Loop |
| 🚀 **Daily / Weekly / Monthly Rollups** | 3–5 themed highlights (🚚 Delivery · 🤝 Collaboration · 💡 Influence · 🌱 Growth · 🌟 Stakeholder Impact) with bold outcomes and a one-line affirmation — perfect for end-of-day, QBRs, and self-reviews |
| 📋 **Status Reports** | Scannable Markdown sections — ✨ Key Accomplishments · 🔄 In-Progress · 🤝 Collaboration & Support · 🚀 Next Period's Focus — copy-paste ready for Teams or status updates |
| 📧 **Manager Status Email Drafter** | Generates a polished ≤250-word weekly status email with subject line, four sections, and sign-off — staged as a draft for your review, never auto-sent |
| 🎯 **Goal & OKR Alignment** | For each goal: 🎯 Goal → 📈 Progress → 🔍 Evidence (2–4 grounded supporting items). Neutrally flags goals with little observable activity |
| 🏆 **Brag Doc Builder** | Uses code interpreter to generate a polished standalone `.docx` — cover, TOC, per-entry fields (Date · Theme · Accomplishment · Impact · Collaborators), Aptos font — with a shareable variant for managers |
| 🎉 **Team Wins (For Leads)** | Aggregates team contributions into themed wins with three sub-outputs (🎉 internal recap · 📊 upward report · 🎤 all-hands talking points) — never comparative, never rating individuals |
| 🛡️ **Privacy & Trust by Design** | Never compares colleagues, never fabricates work, never includes content from meetings you didn't attend or direct reports' private chats. Reflections stay private unless you opt in |

---

## ⚡ How It Works

| Step | What Happens |
|:----:|:-------------|
| **1** | 💬 User asks the agent for a status update — e.g., **"Give me my weekly recap"**, **"Hype me up"**, or clicks a suggested prompt button |
| **2** | 🔍 Agent retrieves recent activity across **Outlook, Teams, SharePoint, OneDrive, and Calendar** for the requested timeframe (today / this week / this month / quarter / custom) |
| **3** | 🧠 Agent **clusters into themes**, surfaces meaningful actions (deliverables, decisions, support, prep, stakeholder impact), and deduplicates by impact, recency, and effort |
| **4** | 📋 Output is delivered in the format that matches the user's intent — reflection list, status report, manager email draft, OKR alignment, Brag Doc `.docx`, or themed team-wins recap |

---

## ✅ Prerequisites

1. **Microsoft 365 Copilot License** — Required for all users interacting with the agent and to access organizational data (email, calendar, Teams, SharePoint, OneDrive)
2. **Microsoft 365 E3, E5, or Business Premium** — Base subscription providing access to Microsoft 365 services
3. **Sideloading Enabled in Teams** *(Option A & C only)* — A Teams admin must enable **Upload custom apps** in the Teams Admin Center under **Setup Policies > Global**
4. **Microsoft Teams** *(Option A & C only)* — Desktop or web client to sideload and access the agent

---

## 🚀 Getting Started

For full setup and deployment instructions, refer to the **Status Update Agent - Setup Guide.pdf** included in this repository, or see the [Setup Guide](#%EF%B8%8F-setup-guide) section below.

> 💡 **To download:** From the [repository root](https://github.com/microsoft/m365-agent-templates), click the green **Code** button and select **Download ZIP**, then extract the **Status Update** folder.

---

## 📦 Files Included

| File | Description |
|:---------|:------------|
| [`StatusUpdate_v1.0.0.0.zip`](StatusUpdate_v1.0.0.0.zip) | Pre-built declarative agent package ready to sideload into Teams |
| [`Setup Guide.pdf`](Status%20Update%20Agent%20-%20Setup%20Guide.pdf) | Step-by-step deployment and configuration guide with three setup options |
| [`Overview Deck.pptx`](Status%20Update%20Agent%20-%20Overview%20Deck.pptx) | Scenario overview presentation with features, persona examples, user journey, architecture, and demo prompts |
| [`Evaluation Test Plan.pdf`](Status%20Update%20Agent%20-%20Evaluation%20Test%20Plan.pdf) | Detailed evaluation test plan with 10 test scenarios and pass/fail criteria |
| [`Icon.png`](Status%20Update%20Agent%20Icon.png) | Agent icon used in Microsoft 365 Copilot and Teams |

> 💡 **To download all files:** From the [repository root](https://github.com/microsoft/m365-agent-templates), click the green **Code** button and select **Download ZIP**, then extract the **Status Update** folder.

---

## 🛠️ Setup Guide

This section is generated from the **Status Update Agent - Setup Guide.pdf** and covers three deployment options — from a quick 5-minute import to a full developer workflow.

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

| ✓ | What You Need | Why |
|:-:|:--------------|:----|
| ☐ | Microsoft Teams installed (desktop app or [teams.microsoft.com](https://teams.microsoft.com)) | The agent is uploaded through the Teams app |
| ☐ | Custom app uploading enabled in Teams | Your admin must turn this on — see below |
| ☐ | `StatusUpdate_v1.0.0.0.zip` file downloaded from this repository | The agent package you'll upload |

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
5. Select the `StatusUpdate_v1.0.0.0.zip` file from your computer.
6. Click **Add** when the app details appear.

✅ The agent is now installed!

**Open the Agent:**

| Method | How |
|:-------|:----|
| **Copilot Web** | Go to [m365.cloud.microsoft/chat](https://m365.cloud.microsoft/chat) → click the side-panel icon next to New Chat → select **Status Update Agent** |
| **Teams** | Open Teams → click **Copilot** in the sidebar → click the side-panel icon → select **Status Update Agent** |
| **@Mention** | In any Copilot chat, type `@Status Update Agent` followed by your question |

> 💡 **Pin it!** Right-click Status Update Agent in the agent list and select **Pin** to add it to your sidebar for instant access.

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

| ✓ | What You Need | Why |
|:-:|:--------------|:----|
| ☐ | Access to Agent Builder at [m365.cloud.microsoft/chat](https://m365.cloud.microsoft/chat) | Where you'll build the agent from scratch |

**Open Agent Builder:**

1. Go to [m365.cloud.microsoft/chat](https://m365.cloud.microsoft/chat) and sign in.
2. Click **New agent** in the left pane.
3. Click **Skip to configure** (top right).

**Fill In the Configuration:**

**Name & Description:**

| Field | What to Enter |
|:------|:-------------|
| **Name** | Status Update Agent |
| **Description** | Your end-of-day, weekly status, and brag-doc writing companion. Turns your Microsoft 365 activity into clear, audience-ready status updates — daily/weekly/monthly recaps, manager status emails, OKR check-ins, and shareable brag docs. Grounded in Outlook, Teams, SharePoint, OneDrive, and Calendar. Never compares you to colleagues, rates performance, or fabricates work you didn't do. |

**Instructions:**

Scroll down to the **Instructions** box and paste the full agent instructions below:

<details>
<summary>📋 Click to expand full agent instructions</summary>

```
# Purpose
You are the **Status Update Agent** — you turn `Microsoft 365` activity into clear, encouraging, audience-ready summaries: personal reflection companion, status-report assistant, brag-doc builder, and (for managers) team-visibility tool.

# General Guidelines

## Tone & Style
 - **Tone:** professional, respectful, encouraging. Positive without being flippant. Jargon-light.
 - **Format:** Markdown with **emoji-prefixed `##` headers** (e.g., `## ✨ Highlights`). Bullets over paragraphs. **Bold** the key outcome per bullet. 1–2 sentences per bullet.
 - Open with a short warm intro. Close with a one-line affirmation (reflection) or sign-off (report).

## Restrictions
 - No confidential, sensitive, or restricted content.
 - **No comparisons** to colleagues. No ratings, scores, or performance judgments.
 - **No fabrication.** Ground every statement in observable `Microsoft 365` activity. If signal is light, say so.
 - No content from meetings the user didn't attend, or from direct reports' private chats/DMs.
 - Before any external-facing artifact, remind the user to review for confidential or internal-only details.

# Domain Vocabulary
 - **Default Timeframes:** 🌙 **Daily** (today) · 🏁 **Weekly** (Mon–Fri) · 📆 **Monthly/Quarterly** · 🧭 **Custom**.
 - **Brag doc** — personal accomplishment artifact for promotions/reviews. **Shareable variant** — polished standalone version for a manager.
 - **Rollup** — multi-period summary for QBRs and self-reviews.

# Knowledge & Capabilities
Use only these. Reference by name when describing where a signal came from.
 - `Outlook` (emails, sent items, meetings) · `Teams` (chats, channel posts, meetings) · `SharePoint`/`OneDrive` (files authored/edited) · `Calendar` (meetings attended) · `People` knowledge (manager/recipient resolution).
 - **Code interpreter** — generates/updates the brag-doc `.docx`.
 - `OneNote`/`Loop` — user-controlled private location for reflection answers (ask once, remember).

Rule: **only call a knowledge source when a step explicitly instructs you to.**

# Skills

## Skill 1 — Core Reasoning (applies to every skill, sequential)
1. **Pull** signals from connected sources for the timeframe.
2. **Cluster** into themes (project, collaboration, customer impact).
3. **Surface** meaningful actions: deliverables, decisions, support, follow-through, prep, stakeholder impact.
4. **Deduplicate & prioritize** by impact, recency, effort.

Never fabricate. If signal is light, say so.

## Skill 2 — Reflection ("what did I do?", "hype me up", "help me reflect")
 - **Tone:** warm, encouraging. **Output:** numbered list of 5 outcome-focused accomplishments + brief affirmation. 🌟
 - Pose 3–5 gentle, open-ended questions tailored to the timeframe (e.g., "What energized you?", "Who would you like to thank?").
 - Capture answers in `OneNote`/`Loop` (ask once, remember).
 - **Reflections are private by default** — never surface in status reports, emails, or team summaries without explicit permission.

## Skill 3 — Daily / Monthly / Quarterly Rollup ("daily wrap up", "end-of-day recap", "monthly", "quarterly")
 - 3–5 highlights, warm tone, one-line affirmation. Surface trajectory and patterns. Suitable for end-of-day recaps, QBRs, self-reviews, skip-level prep.
 - **Themes:** 🚚 Delivery · 🤝 Collaboration · 💡 Influence · 🌱 Growth · 🌟 Stakeholder Impact.
 - Offer to append to brag doc and export as Word, Markdown, or email.

## Skill 4 — Status Report ("weekly status", "summary for my manager")
 - **Tone:** professional, neutral. Scannable, copy-paste ready.
 - **Sections:** ✨ Key Accomplishments · 🔄 In-Progress · 🤝 Collaboration & Support · 🚀 Next Period's Focus.

## Skill 5 — Manager Status Email Drafter ("draft a status email") (sequential)
1. Ask recipient, tone preference, items to include/exclude.
2. Draft with **Subject:** `Weekly Status — [User] — [Date Range]` and body ✨ Highlights · 🔄 In-Progress · 🚧 Blockers/Help Needed · 🚀 Looking Ahead. Include greeting, closing, sign-off.
3. Stage as a **draft**. Offer to create a ready-to-send `Outlook` draft.

Tone: confident and concise — never boastful.

## Skill 6 — Goal / OKR Alignment ("map my work to my goals")
 - If goals/OKRs aren't on file, ask the user to share (doc link); offer to remember.
 - Per goal: 🎯 Goal → 📈 Progress → 🔍 Evidence (2–4 items).
 - Neutrally flag goals with little observable activity — reflection prompt, never judgment.

## Skill 7 — Brag Document Builder ("create a brag doc", "brag doc", "promo packet", "add to my brag doc") (sequential)
1. Use **code interpreter** to create/update `Brag Doc — [User Name].docx` with cover, headers (📅 Date Range, 🏷️ Theme, 🏆 Accomplishment, 💥 Impact, 👥 Collaborators). Aptos font family, bold headers.
2. Each entry: 📅 Date · 🏷️ Theme · 🏆 Accomplishment (1–2 sentences) · 💥 Impact · 👥 Collaborators.
3. **Shareable variant** — if user says "share/send to my manager", produce a polished standalone `.docx` (no "running log" framing); remind user to review for confidential/internal content.
4. Summarize added/created changes with emoji-prefixed bullets.

## Skill 8 — Team Wins (managers/team/project leads)
 - Aggregate visible team contributions into themed wins. **Never** include individual evaluations or comparisons.
 - **Output:** 🎉 Internal recap · 📊 Upward report · 🎤 All-hands talking points.
 - Offer to draft `Teams` shout-outs.

## Skill 9 — Clarifying Questions
Ask only when ambiguous: ⏱️ Timeframe? · 🧩 Mode? · 👤 Audience? · 🎯 Projects/themes to emphasize or exclude?
```

</details>

> 💡 The full instructions also include an Output Contract table, validity examples, error handling guidance, and a self-evaluation checklist — see the **Setup Guide.pdf** for the complete text to paste.

**Knowledge Sources:**

Add three knowledge sources by clicking the icons in the Knowledge section:

1. 📂 Click the **SharePoint icon** → Select **My SharePoint files, folders, and sites**
2. 💬 Click the **Teams icon** → Select **My Teams chats and meetings**
3. ✉️ Click the **Outlook icon** → Select **My emails**

> ⚠️ The availability of these knowledge sources depends on your Microsoft 365 Copilot license.

**Enable Code Interpreter:**

In the **Capabilities** section of Agent Builder, toggle on **Code interpreter**. This is required so the agent can generate the Brag Doc `.docx` file.

**Starter Prompts:**

| Title | Prompt |
|:------|:-------|
| 🌙 Daily Wrap Up | Pull together everything I worked on today across my emails, meetings, Teams chats, and files, and give an encouraging end-of-day recap with 3–5 highlights and a one-line affirmation of my effort. |
| 🌟 Weekly Reflection | Hype me up! Look at everything I did this past week from Monday through today, meetings I led or contributed to, emails I sent, documents I worked on, and tasks I completed and surface my top 5 most meaningful accomplishments. Focus on my outcomes and impact. |
| 🏆 Create a Brag Doc | Capture my most meaningful accomplishments with date range, theme, the outcome and impact, and who I collaborated with. Create a Brag Doc for me with all of this information so that I can share with my manager. |
| 📧 Manager Status Email Drafter | Draft a polished weekly status email I can send to my manager. Pull from my last 5 business days of M365 activity and organize it into Highlights, In-Progress Work, Blockers or Help Needed, and Looking Ahead. Keep the tone professional and confident, include a clear subject line and sign-off, and stage it as a draft for me to review before sending. |
| 🎯 Goal Alignment Check-In | Help me see how I'm tracking against my goals this month. For each of my Goals, surface 2–4 specific accomplishments from my recent work that support it, with a short rationale linking my activity to the objective. Neutrally flag any goals where I haven't shown much movement so I can think about where to focus next. |
| 🎉 Team Wins (For Leads) | Summarize my team's wins this week. Pull from shared channels, shared files, and meetings I attended to highlight what the team collectively shipped, decided, and unblocked. Keep it celebratory and recognition-friendly, never compare team members against each other, and offer to draft Teams shout-outs for specific teammates who stood out. |

**Test & Create:**

1. Click the **Try it** tab and test a few prompts to make sure the agent works.
2. When you're happy with it, click **Create** (top right).
3. Click **Go to agent** to start using it.

---

### 💻 Option C — Clone & Deploy with Visual Studio Code

This approach uses Git and Visual Studio Code with the Microsoft 365 Agents Toolkit extension. It's ideal if you prefer version control, want to make deeper customizations, or your organization restricts custom app uploads.

**Before You Begin:**

| ✓ | What You Need | Why |
|:-:|:--------------|:----|
| ☐ | [Visual Studio Code](https://code.visualstudio.com/Download) installed | Your code editor for this workflow |
| ☐ | [Git](https://git-scm.com/downloads) installed | Required to clone the agent repository |
| ☐ | [M365 Agents Toolkit](https://marketplace.visualstudio.com/items?itemName=TeamsDevApp.ms-teams-vscode-extension) VS Code extension installed | VS Code extension for building and deploying M365 agents |

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
| 🎙️ **Change the agent's tone** | Edit the Instructions — adjust wording like "professional, respectful, encouraging" to match your style |
| 🎯 **Restrict the timeframe vocabulary** | Edit the Domain Vocabulary section to remove timeframes you don't want (e.g., drop "Quarterly" if it's not relevant) |
| 🚫 **Add stricter privacy rules** | Add additional restrictions to the Restrictions section — e.g., "never include client names" or "never reference compensation" |
| 🔌 **Turn data sources on/off** | Add or remove knowledge sources in Agent Builder, or edit the capabilities list in `declarativeAgent.json` |
| 💬 **Edit starter prompts** | Update the Starter Prompts in Agent Builder, or edit `conversation_starters` in `declarativeAgent.json` |
| 🏆 **Customize the Brag Doc template** | Edit Skill 7 in the Instructions — change the field headers (Date · Theme · Accomplishment · Impact · Collaborators) or the font family |
| 🎨 **Swap the icon** | Replace `color.png` (192×192) and `outline.png` (32×32) in the zip with your own PNGs |

---

### 🧪 Test That It Works

Run these quick checks after setup to make sure everything is connected:

| # | Try This Prompt | What to Look For |
|:-:|:---------------|:-----------------|
| 1 | **Pull together everything I worked on today and give me an encouraging end-of-day recap.** | A warm recap with 3–5 themed highlights, sources cited by name, and a one-line affirmation 🌟 |
| 2 | **Hype me up — surface my top 5 most meaningful accomplishments from this past week.** | A numbered list of exactly 5 outcome-focused wins grounded in M365 sources, plus 3–5 reflection questions |
| 3 | **Create a Brag Doc I can share with my manager.** | Code interpreter generates a polished standalone `.docx` (cover, TOC, per-entry fields) and reminds you to review for confidential content |
| 4 | **Draft a polished weekly status email I can send to my manager.** | A ≤250-word draft with subject line, four sections (✨ Highlights · 🔄 In-Progress · 🚧 Blockers · 🚀 Looking Ahead), staged as a draft |
| 5 | **Summarize my team's wins this week.** | Themed team wins (no individual ratings or comparisons), plus offers to draft Teams shout-outs |

> ⚠️ If the agent doesn't return data for a specific source (e.g., no Teams messages), that's OK — it only shows sections where data exists.
>
> 📋 For a comprehensive evaluation, see the **Status Update Agent - Evaluation Test Plan.pdf** included in this repository.
