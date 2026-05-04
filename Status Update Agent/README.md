<p align="center">
  <img src="Status%20Update%20Agent%20Icon.png" alt="Status Update Agent" width="120">
</p>

<h1 align="center">Status Update Agent</h1>

> **Your personal status-writing companion** — turns your Microsoft 365 activity into clear, audience-ready summaries, brag docs, and manager emails.

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
- [Setup Guide](#️-setup-guide)

---

## 💡 Overview

**Status Update Agent** is a Declarative Agent for Microsoft 365 Copilot that transforms your everyday work signals into polished, audience-ready outputs — daily recaps, weekly status reports, manager emails, OKR alignment check-ins, brag docs, and team wins summaries. It grounds every claim in observable Microsoft 365 activity and never fabricates, compares colleagues, or rates performance.

The agent pulls from your Outlook emails, Teams chats and meetings, SharePoint and OneDrive files, and Calendar events to synthesize structured outputs tailored to your chosen format. Whether you need a quick end-of-day wrap-up or a shareable brag document for your next promotion review, Status Update Agent delivers it in seconds — with warm encouragement and zero typing.

---

## ✨ Features

| Feature | Description |
|:--------|:------------|
| 🌙 **Daily Wrap Up** | End-of-day recap with 3–5 highlights and a one-line affirmation, pulled from meetings, chats, emails, and files. |
| 🏁 **Weekly Reflection** | Surfaces your top 5 most meaningful accomplishments from the past week, focused on outcomes and impact. |
| 🏆 **Brag Doc Builder** | Generates a polished `.docx` with date, theme, accomplishment, impact, and collaborators — ready to share with your manager. |
| 📧 **Manager Status Email** | Drafts a professional weekly status email with Highlights, In-Progress, Blockers, and Looking Ahead sections. |
| 🎯 **Goal Alignment Check-In** | Maps recent activity to your goals, surfacing 2–4 supporting accomplishments per goal and flagging goals with little movement. |
| 🎉 **Team Wins (For Leads)** | Aggregates your team's collective wins from shared channels, files, and meetings — celebratory, never comparative. |
| 🔒 **Privacy by Design** | Reflections stay private; no comparisons, ratings, or performance judgments; all claims grounded in observable signals. |

---

## ⚡ How It Works

| Step | What Happens |
|:----:|:-------------|
| **1** | 💬 You ask the agent for a status update, reflection, brag doc, or email draft — or click a suggested prompt button. |
| **2** | 🔍 The agent pulls signals from Outlook, Teams, SharePoint, OneDrive, and Calendar for the requested timeframe. |
| **3** | 🧩 It clusters activity into themes (Delivery, Collaboration, Influence, Growth, Stakeholder Impact) and deduplicates by impact. |
| **4** | 📋 A polished, audience-ready output is delivered in your chosen format — recap, report, email draft, or downloadable `.docx`. |

---

## ✅ Prerequisites

1. **Microsoft 365 account** — Required to sign in and access Microsoft 365 services
2. **Microsoft 365 Copilot license** — Gives the agent access to your email, calendar, Teams, and files
3. **Sideloading enabled in Teams** (for Option B) — A Teams admin must enable **Upload custom apps** in the Teams Admin Center under **Teams apps > Setup policies > Global**
4. **Microsoft Teams** — Desktop or web client to sideload and access the agent

---

## 🚀 Getting Started

For full setup and deployment instructions, refer to the **Status Update Agent - Setup Guide.docx** included in this repository.

> 💡 **To download:** From the [repository root](https://github.com/microsoft/m365-agent-templates), click the green **Code** button and select **Download ZIP**, then extract the **Status Update Agent** folder.

---

## 📦 Documents Included

| Document | Description |
|:---------|:------------|
| `Status Update Agent - Setup Guide.pdf` | Step-by-step setup and configuration guide covering all deployment options. |
| `Status Update Agent - Evaluation Test Plan.pdf` | Detailed evaluation test plan with pass/fail criteria for validating the agent. |
| `Status Update Agent - Overview Deck.pptx` | Scenario overview deck — agent summary, personas, user journey, architecture, and demo prompts. |
| `Status Update Agent Icon.png` | The agent's icon image. |
| `Status Update Agent.zip` | The agent package — upload this directly into Teams (Option B). |

> 💡 **To download all files:** From the [repository root](https://github.com/microsoft/m365-agent-templates), click the green **Code** button and select **Download ZIP**, then extract the **Status Update Agent** folder.

---

## 🛠️ Setup Guide

This section is generated from the **Status Update Agent - Setup Guide.docx** and covers all deployment options.

### Which Option Should I Choose?

| | Option A — Microsoft Marketplace | Option B — Import into Teams | Option C — Build in Agent Builder | Option D — Clone & Deploy (VS Code) |
|---|---|---|---|---|
| **Best for** | Easiest install, ready-to-use, no admin needed | Fast local install, non-technical users | Full control, no zip needed, no admin permissions | Developers who want source-code control, ALM, CI/CD |
| **Time** | ~10 min | ~5 min | ~15 min | ~20 min |
| **Requires** | M365 account + Power Platform environment + permission to install marketplace apps | Teams + admin-enabled custom app uploading + agent `.zip` | Agent Builder access via M365 Copilot | VS Code + M365 Agents Toolkit + access to source repo |
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
| ☐ | Permission to install marketplace apps (System Administrator or System Customizer) | Required to install in the target environment |
| ☐ | Acceptance of the Marketplace terms of service | Required during the "Get it now" flow |

**Install the Agent Library:**

1. Go to the **Agent Library on Microsoft Marketplace** and ensure you're signed in with your Microsoft 365 account.
2. Select **Get it now**.
3. Select **Get it now** to confirm.
4. Select the environment where you will install the solution, review and accept the terms of use and privacy statements, then select **Install**.
5. You'll be redirected to Power Platform Admin Center. If not redirected, navigate to: **Environments → your environment → Dynamics 365 apps → Agent Library**.
6. Once installed, go to **make.powerapps.com** and switch to the environment where you installed the Agent Library.
7. Navigate to **Apps → Agent Library**.
8. Browse the available templates and deploy your first agent.

> 💡 **Tip:** If you don't see the Agent Library or the Get it now button, ask your tenant admin to enable Marketplace apps for your environment.

> ⚠️ **Important:** This solution enables code components in your environment. This is a standard Power Platform feature for custom UI experiences and requires no additional licensing beyond your existing entitlements.

**Deploy Status Update Agent from the Library:**

1. Open the Agent Library app from **make.powerapps.com → Apps → Agent Library**.
2. Browse or search for **Status Update Agent**.
3. Select the template, then click **Configure** (or **Download** if no configuration is required).
4. Configure the template — edit instructions, set knowledge sources, connected services, capabilities, and starter prompts.
5. Click **Download** and then follow the side-loading instructions.

<details>
<summary>🔧 Troubleshooting</summary>

| Problem | Fix |
|---------|-----|
| "Get it now" button is greyed out | Sign in with a work or school account that has Marketplace access (personal Microsoft accounts are not supported) |
| No environments listed in the install dialog | Confirm you have admin permissions on at least one Power Platform environment |
| Install stuck in "Installing" | Check Power Platform admin center under Resources → Dynamics 365 apps; allow up to 15 minutes |
| App isn't opening correctly | Have a Power Platform admin enable Code app operations for the target environment |
| Agent Library app doesn't appear in Apps | Confirm install completed and that you're viewing the same environment |
| Status Update Agent template not visible | Confirm the agent has been published to the Marketplace catalog |

</details>

---

### 📦 Option B — Import the Agent into Teams

This is a fast way to get started locally. You'll upload the pre-built agent package directly into Teams.

> ⚠️ **Important:** Do not unzip or rename the file. Teams needs the original `.zip` as-is.

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
5. Select the `Status Update Agent.zip` file from your computer.
6. Click **Add** when the app details appear.

✅ The agent is now installed!

**Open the Agent After Uploading:**

| Method | How |
|--------|-----|
| **Copilot Web** | Go to m365.cloud.microsoft/chat → click the side-panel icon next to New Chat → select Status Update Agent |
| **Teams** | Open Teams → click Copilot in the sidebar → click the side-panel icon → select Status Update Agent |
| **@Mention** | In any Copilot chat, type `@Status Update Agent` followed by your question |

**Pin the Agent for Quick Access:**

1. Open the agent list by clicking the side-panel icon next to New Chat.
2. Find **Status Update Agent** in the list.
3. Right-click (or click the ⋯ menu) on the agent and select **Pin**.

The agent will now appear in your left sidebar for instant access — no searching needed.

<details>
<summary>🔧 Troubleshooting</summary>

| Problem | Fix |
|---------|-----|
| "Upload an app" button missing | Custom app uploading is disabled. Ask your IT admin to enable it. |
| "Parsing has failed" error | The zip file may be corrupted. Re-download the original file and try again. Make sure you didn't extract or modify it. |
| App doesn't appear after upload | Wait 1–2 minutes, then refresh Teams. Check Manage your apps to confirm it's listed. |
| Agent not showing in Copilot | It can take a few minutes after upload for the agent to appear in the Copilot agent list. Refresh the page and check again. |

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
|-------|---------------|
| **Name** | Status Update Agent |
| **Description** | Your end-of-day, weekly status, and brag-doc writing companion. |

**Instructions:**

Scroll down to the Instructions box and paste the full agent instructions.

<details>
<summary>📋 Full Agent Instructions (click to expand)</summary>

```
# Purpose
You are the **Status Update Agent** — you turn Microsoft 365 activity into clear, encouraging, audience-ready summaries: personal reflection companion, status-report assistant, brag-doc builder, and (for managers) team-visibility tool.

# General Guidelines
## Tone & Style
- **Tone:** professional, respectful, encouraging. Positive without being flippant. Jargon-light.
- **Format:** Markdown with **emoji-prefixed ## headers** (e.g., ## ✨ Highlights). Bullets over paragraphs. **Bold** the key outcome per bullet. 1–2 sentences per bullet.
- Open with a short warm intro. Close with a one-line affirmation (reflection) or sign-off (report).

## Restrictions
- No confidential, sensitive, or restricted content.
- **No comparisons** to colleagues. No ratings, scores, or performance judgments.
- **No fabrication.** Ground every statement in observable Microsoft 365 activity. If signal is light, say so.
- No content from meetings the user didn't attend, or from direct reports' private chats/DMs.
- Before any external-facing artifact, remind the user to review for confidential or internal-only details.

# Domain Vocabulary
- **Default Timeframes:** 🌙 Daily (today) · 🏁 Weekly (Mon–Fri) · 📆 Monthly/Quarterly · 🧭 Custom.
- **Brag doc** — personal accomplishment artifact for promotions/reviews. **Shareable variant** — polished standalone version for a manager.
- **Rollup** — multi-period summary for QBRs and self-reviews.

# Knowledge & Capabilities
Use only these. Reference by name when describing where a signal came from.
- Outlook (emails, sent items, meetings) · Teams (chats, channel posts, meetings) · SharePoint/OneDrive (files authored/edited) · Calendar (meetings attended) · People knowledge (manager/recipient resolution).
- **Code interpreter** — generates/updates the brag-doc .docx.
- OneNote/Loop — user-controlled private location for reflection answers (ask once, remember).

Rule: **only call a knowledge source when a step explicitly instructs you to.**

# Skills
## Skill 1 — Core Reasoning (applies to every skill, sequential)
1. Pull signals from connected sources for the timeframe.
2. Cluster into themes (project, collaboration, customer impact).
3. Surface meaningful actions: deliverables, decisions, support, follow-through, prep, stakeholder impact.
4. Deduplicate & prioritize by impact, recency, effort.
Never fabricate. If signal is light, say so.

## Skill 2 — Reflection
- **Tone:** warm, encouraging. **Output:** numbered list of 5 outcome-focused accomplishments + brief affirmation. 🌟
- Pose 3–5 gentle, open-ended questions tailored to the timeframe.
- Reflections are private by default — never surface in status reports without explicit permission.

## Skill 3 — Daily / Monthly / Quarterly Rollup
- 3–5 highlights, warm tone, one-line affirmation. Surface trajectory and patterns.
- **Themes:** 🚚 Delivery · 🤝 Collaboration · 💡 Influence · 🌱 Growth · 🌟 Stakeholder Impact.

## Skill 4 — Status Report
- **Tone:** professional, neutral. Scannable, copy-paste ready.
- **Sections:** ✨ Key Accomplishments · 🔄 In-Progress · 🤝 Collaboration & Support · 🚀 Next Period's Focus.

## Skill 5 — Manager Status Email Drafter (sequential)
1. Ask recipient, tone preference, items to include/exclude.
2. Draft with Subject: Weekly Status — [User] — [Date Range] and body ✨ Highlights · 🔄 In-Progress · 🚧 Blockers/Help Needed · 🚀 Looking Ahead.
3. Stage as a draft. Offer to create a ready-to-send Outlook draft.

## Skill 6 — Goal / OKR Alignment
- Per goal: 🎯 Goal → 📈 Progress → 🔍 Evidence (2–4 items).
- Neutrally flag goals with little observable activity.

## Skill 7 — Brag Document Builder (sequential)
1. Use code interpreter to create/update Brag Doc .docx with cover, headers.
2. Each entry: 📅 Date · 🏷️ Theme · 🏆 Accomplishment · 💥 Impact · 👥 Collaborators.
3. Shareable variant — polished standalone .docx; remind user to review for confidential content.

## Skill 8 — Team Wins (managers/team/project leads)
- Aggregate visible team contributions into themed wins. Never include individual evaluations or comparisons.
- Output: 🎉 Internal recap · 📊 Upward report · 🎤 All-hands talking points.

## Skill 9 — Clarifying Questions
Ask only when ambiguous: ⏱️ Timeframe? · 🧩 Mode? · 👤 Audience? · 🎯 Projects/themes to emphasize or exclude?
```

</details>

**Knowledge Sources:**

Add three knowledge sources by clicking the icons in the Knowledge section:

1. 📂 Click the **SharePoint icon** → Select **My SharePoint files, folders, and sites**
2. 💬 Click the **Teams icon** → Select **My Teams chats and meetings**
3. ✉️ Click the **Outlook icon** → Select **My emails**

**Starter Prompts:**

| Title | Prompt |
|-------|--------|
| Daily Wrap Up | Pull together everything I worked on today across my emails, meetings, Teams chats, and files, and give an encouraging end-of-day recap with 3–5 highlights and a one-line affirmation of my effort. |
| Weekly Reflection | Hype me up! Look at everything I did this past week from Monday through today, meetings I led or contributed to, emails I sent, documents I worked on, and tasks I completed and surface my top 5 most meaningful accomplishments. Focus on my outcomes and impact. |
| Create a Brag Doc | Capture my most meaningful accomplishments with date range, theme, the outcome and impact, and who I collaborated with. Create a Brag Doc for me with all of this information so that I can share with my manager. |
| Manager Status Email Drafter | Draft a polished weekly status email I can send to my manager. Pull from my last 5 business days of M365 activity and organize it into Highlights, In-Progress Work, Blockers or Help Needed, and Looking Ahead. Keep the tone professional and confident, include a clear subject line and sign-off, and stage it as a draft for me to review before sending. |
| Goal Alignment Check-In | Help me see how I'm tracking against my goals this month. For each of my Goals, surface 2–4 specific accomplishments from my recent work that support it, with a short rationale linking my activity to the objective. Neutrally flag any goals where I haven't shown much movement so I can think about where to focus next. |
| Team Wins (For Leads) | Summarize my team's wins this week. Pull from shared channels, shared files, and meetings I attended to highlight what the team collectively shipped, decided, and unblocked. Keep it celebratory and recognition-friendly, never compare team members against each other, and offer to draft Teams shout-outs for specific teammates who stood out. |

**Test & Create:**

1. Click the **Try it** tab (top of the page, next to Configure) and test a few prompts.
2. When you're happy with it, click **Create** (top right).
3. Click **Go to agent** to start using it.

---

### 💻 Option D — Clone & Deploy with Visual Studio Code

This path is for developers who want full control over Status Update Agent — source-code editing, ALM, and CI/CD. You'll clone the agent's source repo and deploy it from VS Code using the Microsoft 365 Agents Toolkit.

> ⚠️ **Note:** If you don't have access to the agent's source repository, ask the agent owner for the repo URL or use Option A / B / C instead.

**Install the Microsoft 365 Agents Toolkit:**

1. Open Visual Studio Code.
2. Click the **Extensions** icon in the sidebar (or press `Ctrl+Shift+X`).
3. Search for **"Microsoft 365 Agents Toolkit"**.
4. Click **Install** on the official Microsoft extension.

**Clone the Status Update Agent Repository:**

1. Open a terminal in VS Code (**Terminal → New Terminal**).
2. Run: `git clone <repository-url-for-Status Update Agent>`
3. Open the cloned folder in VS Code (**File → Open Folder**).

**Provision and Deploy:**

1. Open the **Agents Toolkit** sidebar (the Microsoft 365 icon).
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
|---------|-----|
| "Agents Toolkit" extension not found | Make sure you searched for the official Microsoft extension. Sign in to VS Code with the same account you'll use for M365. |
| Provision fails | Check that your account has the right Microsoft 365 / Power Platform licenses and that you're targeting an environment where you have admin rights. |
| Deploy succeeds but agent doesn't show | Wait 1–2 minutes and refresh M365 Copilot. Confirm the agent's manifest deployed under your account. |
| Repo URL doesn't exist | Confirm with the agent owner that the source repo is shared with you, or fall back to Option A / B / C. |

</details>

---

### 🎨 Make It Your Own

| Customization | How |
|:--------------|:----|
| 🎭 **Change the agent's tone** | Edit the Instructions — adjust wording like "warm, efficient" to match your style |
| 🚫 **Hide output sections** | Remove sections (e.g., Deep Read) from the Instructions text |
| ⭐ **Add a VIP list** | Add names to the Instructions so the agent always surfaces their messages first |
| 🔌 **Turn data sources on/off** | Add or remove knowledge sources in Agent Builder, or edit the capabilities list in the JSON |
| 💬 **Edit starter prompts** | Update the Starter Prompts in Agent Builder, or edit `conversation_starters` in the JSON |
| 🎨 **Swap the icon** | Replace `color.png` (192×192) and `outline.png` (32×32) in the zip with your own PNGs |

---

### 🧪 Test That It Works

| # | Try This Prompt | What to Look For |
|:-:|:----------------|:-----------------|
| 1 | Pull together everything I worked on today across my emails, meetings, Teams chats, and files, and give an encouraging end-of-day recap with 3–5 highlights and a one-line affirmation of my effort. | A warm end-of-day recap with 3–5 highlights and a one-line affirmation, grounded in today's meetings, emails, chats, and files. |
| 2 | Hype me up! Look at everything I did this past week from Monday through today, meetings I led or contributed to, emails I sent, documents I worked on, and tasks I completed and surface my top 5 most meaningful accomplishments. Focus on my outcomes and impact. | A numbered list of your top 5 outcome-focused accomplishments from the past week, with sources cited and a closing affirmation. |
| 3 | Capture my most meaningful accomplishments with date range, theme, the outcome and impact, and who I collaborated with. Create a Brag Doc for me with all of this information so that I can share with my manager. | The agent uses code interpreter to generate a Brag Doc `.docx` with cover, theme/impact/collaborator fields, and a download link. A reminder to review for confidential content. |
| 4 | Draft a polished weekly status email I can send to my manager. Pull from my last 5 business days of M365 activity and organize it into Highlights, In-Progress Work, Blockers or Help Needed, and Looking Ahead. Keep the tone professional and confident, include a clear subject line and sign-off, and stage it as a draft for me to review before sending. | A polished email draft with subject line and Highlights / In-Progress / Blockers / Looking Ahead — staged for your review, never auto-sent. |
| 5 | Summarize my team's wins this week. Pull from shared channels, shared files, and meetings I attended to highlight what the team collectively shipped, decided, and unblocked. Keep it celebratory and recognition-friendly, never compare team members against each other, and offer to draft Teams shout-outs for specific teammates who stood out. | Themed team wins from shared channels, files, and meetings you attended — recognition-friendly, never comparing teammates. |

> 📋 For a comprehensive evaluation, see the **Status Update Agent - Evaluation Test Plan.pdf** included in this repository.
