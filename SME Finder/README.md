<p align="center">
  <img src="SME%20Finder%20Icon.png" alt="SME Finder" width="120">
</p>

<h1 align="center">SME Finder</h1>

> **Find the right expert — fast.** — Surface the most relevant subject matter experts for any topic using real Microsoft 365 work signals, ranked by demonstrated expertise, recency, and organisational relevance — with a ready-to-use introduction message.

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

SME Finder is a declarative agent for Microsoft 365 Copilot that helps employees discover the most credible Subject Matter Experts inside their organisation for any topic, product, process, or customer. Instead of browsing org charts, asking around on Teams, or relying on personal networks, users simply ask the agent a question and receive a ranked list of experts backed by cited evidence.

The agent searches across SharePoint, OneDrive, Teams chats and meetings, Outlook email, Calendar, and People signals to identify who has genuine, recent expertise on a given topic. It then generates a personalised, copy-paste-ready introduction message tailored to the SME's seniority, role, and the user's context — accelerating effective collaboration from minutes to seconds.

---

## ✨ Features

| Feature | Description |
|:--------|:------------|
| 🔍 **Signal-Based SME Ranking** | Ranks experts by demonstrated expertise, recency, organisational relevance, and trust — not just job title |
| 💬 **Conversational Access** | Natural language queries via Microsoft 365 Copilot — ask for an expert on any topic |
| ✍️ **Ready-to-Send Outreach** | Generates personalised introduction messages (Email, Teams, @mention, or meeting request) in the user's voice |
| 👥 **Hidden Gem Discovery** | Surfaces non-leader experts with strong recent evidence — individual contributors and cross-team collaborators |
| 🎯 **Outreach Prioritisation** | Compares two SMEs side-by-side to help you decide whom to contact first |
| 🧑‍🏫 **Mentor Finder** | Returns 5 candidate mentors with coaching evidence, org distance criteria, and suggested intros |
| 📋 **Meeting Prep** | Drafts 5 evidence-backed talking points and a context brief before you meet with an SME |
| 🏢 **Content Owner Lookup** | Identifies the primary owner and backup for any internal SharePoint site, Teams channel, or app |

---

## ⚡ How It Works

| Step | What Happens |
|:----:|:-------------|
| **1** | 💬 User asks the agent a question in Microsoft 365 Copilot (e.g., "Who is the best SME for Azure security?") |
| **2** | 🔍 Agent searches Microsoft 365 work signals — Email, Teams, SharePoint, Calendar, and People data |
| **3** | 📊 Agent scores candidates by topical expertise, role relevance, organisational trust, and recency |
| **4** | 📋 Returns a ranked list of SMEs with cited evidence plus a copy-paste-ready outreach message |

---

## ✅ Prerequisites

1. **Microsoft 365 Copilot License** — Required for all users interacting with the agent and to access SharePoint, OneDrive, Teams, and Outlook knowledge sources
2. **Microsoft 365 E3, E5, or Business Premium** — Base subscription for Microsoft 365 services
3. **Sideloading Enabled in Teams** — A Teams admin must enable **Upload custom apps** in the Teams Admin Center under **Setup Policies > Global**
4. **Microsoft Teams** — Desktop or web client to sideload and access the agent
5. **SharePoint & OneDrive Permissions** — Users need read access to the SharePoint sites and OneDrive content the agent will reference

---

## 🚀 Getting Started

For full setup and deployment instructions, refer to the **SME Finder - Setup Guide.pdf** included in this repository.

> 💡 **To download:** From the [repository root](https://github.com/microsoft/m365-agent-templates), click the green **Code** button and select **Download ZIP**, then extract the **SME Finder** folder.

---

## 📦 Documents Included

| Document | Description |
|:---------|:------------|
| `SME Finder - Setup Guide.pdf` | Step-by-step setup and configuration guide covering all deployment options. |
| `SME Finder - Evaluation Test Plan.pdf` | Detailed evaluation test plan with pass/fail criteria for validating the agent. |
| `SME Finder Agent - Overview Deck.pptx` | Scenario overview deck — agent summary, personas, user journey, architecture, and demo prompts. |
| `SME Finder Icon.png` | The agent's icon image. |
| `SME Finder.zip` | The agent package — upload this directly into Teams (Option B). |

> 💡 **To download all files:** From the [repository root](https://github.com/microsoft/m365-agent-templates), click the green **Code** button and select **Download ZIP**, then extract the **SME Finder** folder.

---

## 🛠️ Setup Guide

This section is generated from the **SME Finder - Setup Guide.docx** and covers all deployment options for getting SME Finder up and running in your environment.

### Which Option Should I Choose?

| | Option A — Microsoft Marketplace | Option B — Import into Teams | Option C — Build in Agent Builder | Option D — Clone & Deploy (VS Code) |
|---|---|---|---|---|
| **Best for** | Easiest install, ready-to-use, no admin needed | Fastest local install, non-technical users | Full control, no zip needed, no admin permissions | Developers who want source-code control, ALM, CI/CD |
| **Time** | ~10 min | ~5 min | ~15 min | ~20 min |
| **Requires** | M365 account + Power Platform environment + permission to install marketplace apps | Teams + admin-enabled custom app uploading + agent `.zip` | Agent Builder access via M365 Copilot | VS Code + Microsoft 365 Agents Toolkit + access to source repo |
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

> ⚠️ **Important:** This solution enables code components in your environment. This is a standard Power Platform feature for custom UI experiences and requires no additional licensing.

**Deploy SME Finder from the Library:**

1. Open the Agent Library app from **make.powerapps.com → Apps → Agent Library**.
2. Browse or search for **SME Finder**.
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
| SME Finder template not visible in the library | Confirm the agent has been published to the Marketplace catalog |

</details>

---

### 📦 Option B — Import the Agent into Teams

This is the fastest way to get started locally. You'll upload the pre-built agent package directly into Teams.

> ⚠️ **Important:** Do not unzip or rename the file. Teams needs the original `.zip` as-is.

**Upload the Agent:**

1. Open **Microsoft Teams** (desktop app or teams.microsoft.com).
2. Click **Apps** in the left sidebar.
3. Click **Manage your apps** (bottom of the page).
4. Click **Upload an app → Upload a custom app**.
5. Select the `SME Finder.zip` file from your computer.
6. Click **Add** when the app details appear.

✅ The agent is now installed!

**Open the Agent After Uploading:**

*From Microsoft 365 Copilot (Web):*
1. Go to **m365.cloud.microsoft/chat** in your browser and sign in.
2. Click the side-panel icon next to the **New Chat** button (top-left area).
3. Browse the agent list and select **SME Finder**.

*From Microsoft Teams:*
1. Open Teams and click the **Copilot** icon in the left sidebar.
2. Click the side-panel icon to browse available agents.
3. Select **SME Finder** from the list.

*Using @Mention (Either App):*
In any Copilot chat window, type **@SME Finder** followed by your question. Select the agent from the dropdown that appears.

**Pin the Agent for Quick Access:**

1. Open the agent list by clicking the side-panel icon next to New Chat.
2. Find **SME Finder** in the list.
3. Right-click (or click the ⋯ menu) on the agent and select **Pin**.

The agent will now appear in your left sidebar for instant access — no searching needed.

<details>
<summary>🔧 Troubleshooting</summary>

| Problem | Fix |
|---------|-----|
| "Upload an app" button missing | Custom app uploading is disabled. Ask your IT admin to enable it in Teams Admin Center. |
| "Parsing has failed" error | The zip file may be corrupted. Re-download the original file and try again. Make sure you didn't extract or modify it. |
| App doesn't appear after upload | Wait 1–2 minutes, then refresh Teams. Check Manage your apps to confirm it's listed. |
| Agent not showing in Copilot | It can take a few minutes after upload for the agent to appear in the Copilot agent list. Refresh the page and check again. |

</details>

---

### 🔨 Option C — Build the Agent Yourself in Agent Builder

If you can't upload a zip — or prefer to build it yourself — use Agent Builder in Microsoft 365 Copilot. No coding required.

**Open Agent Builder:**

1. Go to **m365.cloud.microsoft/chat** and sign in.
2. Click **New agent** in the left pane.
3. Click **Skip to configure** (top right).

**Fill In the Configuration:**

*Name & Description:*

| Field | What to Enter |
|-------|---------------|
| Name | SME Finder |
| Description | Find the right Subject Matter Experts at your company — fast, evidence-based, and with a ready-to-send outreach message. |

*Instructions:*

Scroll down to the Instructions box and paste the full agent instructions.

<details>
<summary>📋 View Full Agent Instructions (click to expand)</summary>

```
# Purpose
You are the **SME Finder Agent**. Help employees find credible Subject Matter Experts (SMEs) for any topic, product, process, customer, or business question. Use the user's Microsoft 365 work signals to surface trustworthy experts, explain *why* they qualify with cited evidence, and draft a channel-appropriate outreach message in the user's voice.

# Guidelines
- **Tone:** professional, evidence-based, respectful. Match user's language and formality.
- **Verbosity:** concise. Tables/bullets over paragraphs. Markdown with clear headers.
- **Restrictions:** stay evidence-based; never speculate. Decline absolute "who is better" judgments. **Out of scope:** HR, legal, M&A, compensation — only respond to SME-finding requests.

# Vocabulary
- **SME** — strongest evidence-based expertise on the topic.
- **Confidence** — High/Med/Low (signal strength, recency, breadth).
- **Topical evidence** — observable signals (doc titles, meeting/channel names) tied to topic.
- **Stale** — last relevant signal >6 months old.
- **Hidden gem** — strong-evidence SME below Director level, not among the most-cited names.
- **Relevance** — internal weighted score used to order results, not to rank people.

# Knowledge & Capabilities
Cite by name when using evidence. Only call when a step instructs.
- SharePoint/OneDrive — docs; site/library owner & permissions.
- Teams — channel posts, presentations, meetings, chats; channel owner.
- Outlook — meetings organized, email threads on topic.
- Calendar — recurring meetings the candidate organizes/presents in.
- People — title, team, manager chain, location, tenure.

# Skills

## Skill 1 — Identification Criteria (weighted, relevance only)
Compute an internal Relevance signal for ordering. Never expose scores or rank positions.
- **Topical Expertise (40%)** — authorship, edits, presentations, channel posts on topic.
- **Role Relevance (25%)** — title, discipline, product ownership, reporting line.
- **Org Trust (20%)** — cross-team visibility, "go-to" status, DRI/tech-lead.
- **Recency (15%)** — sustained activity in last 3–6 months.

## Skill 2 — Fairness & Exclusion
- Self-exclusion + manager toggle (skip user's direct manager unless asked).
- Bias balance when evidence is comparable.
- Stale flag any SME whose last relevant signal is >6 months old.

## Skill 3 — Find SMEs (sequential)
1. Clarify — one focused question only if scope is ambiguous.
2. Decompose topic → domains, keywords, synonyms, acronyms.
3. Search SharePoint, OneDrive, Teams, Outlook, Calendar, People.
4. Score for relevance internally; do not rank or number people.
5. Filter with Skill 2.
6. Self-critique silently: evidence-based? recent? diverse? right seniority?
7. Select the most-relevant SME and one alternate.
8. Justify — 2–3 evidence points per SME with source name.
9. Draft outreach for the most-relevant SME via Skill 4.
10. Offer 2–3 next-step follow-ups.

## Skill 4 — Outreach Generation
Channels: Email (default) · Teams chat · @mention · Meeting request.
Tone: Formal · Friendly (default) · Peer · Brief.
Length: Short (default, 5–7 sentences) · Detailed (8–10) · One-liner.

## Skill 5 — Pre-Meeting Prep
Draft 5 talking points + a one-paragraph context brief tied to cited evidence.

## Skill 6 — Follow-Up Drafting
No-response nudges and post-meeting thank-yous.

## Skill 7 — Adjacent-Expert Fallback
If no strong SME exists, recommend adjacent teams, DLs, Viva Topics, or communities of practice.

## Skill 8 — Hidden Gems
Boost Topical Expertise→55%, drop Role Relevance→10%. Exclude Director+ titles. Return 3–5 ICs/cross-team collaborators.

## Skill 9 — Content / Site Owner Lookup
Identify asset owner, backup, and support contact with cited source.

## Skill 10 — Compare Two SMEs
Outreach prioritization: Topical evidence · Recency · Seniority fit · Availability.

## Skill 11 — Mentor Finder
Return 5 candidates: 5+ yrs in domain, coaching evidence, org distance ≥2 levels from user.

# Output Contract
## 1. Most Relevant SMEs — table (Name, Role/Team, Confidence, Why Relevant)
## 2. Evidence (per SME) — 2–3 cited points per SME
## 3. Ready-to-Use Outreach Message — fenced code block
## 4. Next Steps — 2–3 follow-ups
```

</details>

> 💡 **Tip:** Select all the text in the instructions block above (Ctrl+A after clicking inside) and paste it directly into the Instructions field.

*Knowledge Sources:*

Add three knowledge sources by clicking the icons:

1. 📂 Click the **SharePoint** icon → Select **My SharePoint files, folders, and sites**
2. 💬 Click the **Teams** icon → Select **My Teams chats and meetings**
3. ✉️ Click the **Outlook** icon → Select **My emails**

*Starter Prompts:*

| Title | Prompt |
|-------|--------|
| Find SMEs By Topic | Find the right SMEs for [topic/area]. |
| Hidden Gems | Surface "hidden gem" experts on [topic/area] (not just leaders). |
| Prep for Meeting with SME | I'm meeting with an SME about [topic/area]. Give me 5 talking points and a context brief. |
| Content Owner | Who maintains the [internal app/site] that I use? |
| Decide Which SME to Contact First | Help me decide which SME to contact first about [topic/area] — and why. |
| Find a Mentor | Provide me with 5 suggestions for possible mentors who specialize in [topic/area] |

**Test & Create:**

8. Click the **Try it** tab and test a few prompts.
9. When you're happy, click **Create** (top right).
10. Click **Go to agent** to start using it.

---

### 💻 Option D — Clone & Deploy with Visual Studio Code

This path is for developers who want full control — source-code editing, ALM, and CI/CD. You'll clone the agent's source repo and deploy it using the Microsoft 365 Agents Toolkit.

> ⚠️ **Note:** If you don't have access to the agent's source repository, ask the agent owner for the repo URL or use Option A / B / C instead.

**Install the Microsoft 365 Agents Toolkit:**

1. Open **Visual Studio Code**.
2. Click the **Extensions** icon in the sidebar (or press `Ctrl+Shift+X`).
3. Search for **"Microsoft 365 Agents Toolkit"**.
4. Click **Install** on the official Microsoft extension.

**Clone the SME Finder Repository:**

1. Open a terminal in VS Code (**Terminal → New Terminal**).
2. Run: `git clone <repository-url-for-SME-Finder>`
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

> 💡 **Tip:** After deploying, you can edit the agent's source files locally, commit your changes to git, and re-deploy with one click.

<details>
<summary>🔧 Troubleshooting</summary>

| Problem | Fix |
|---------|-----|
| "Agents Toolkit" extension not found | Search for the official Microsoft extension. Sign in to VS Code with the same account you'll use for M365. |
| Provision fails | Check that your account has the right M365 / Power Platform licenses and admin rights in the target environment. |
| Deploy succeeds but agent doesn't show | Wait 1–2 minutes and refresh M365 Copilot. Confirm the agent's manifest deployed under your account. |
| Repo URL doesn't exist | Confirm with the agent owner that the source repo is shared with you, or fall back to Option A / B / C. |

</details>

---

### 🎨 Make It Your Own

You can adjust the agent's behavior after setup — whether you built it in Agent Builder or imported the zip.

| Customization | How |
|:--------------|:----|
| 🎯 Change the agent's tone | Edit the Instructions — adjust wording like "professional, evidence-based" to match your style |
| 🙈 Hide output sections | Remove sections (e.g., Next Steps) from the Instructions text |
| ⭐ Add a VIP list | Add names to the Instructions so the agent always surfaces their messages first |
| 🔌 Turn data sources on/off | Add or remove knowledge sources in Agent Builder, or edit the capabilities list in the JSON |
| 💬 Edit starter prompts | Update the Starter Prompts in Agent Builder, or edit `conversation_starters` in the JSON |
| 🖼️ Swap the icon | Replace `color.png` (192×192) and `outline.png` (32×32) in the zip with your own PNGs |

> ⚠️ **Important (zip users):** When re-zipping, make sure the files are at the root of the zip — not inside a subfolder.

---

### 🧪 Test That It Works

Run through these quick checks after setup to make sure everything is connected.

| # | Try This Prompt | What to Look For |
|:-:|:----------------|:-----------------|
| 1 | "Find the right SMEs for change management at scale." | A short table with a top SME + backup, evidence bullets per SME, and a drafted outreach message. |
| 2 | "Surface 'hidden gem' experts on Power Platform governance (not just leaders)." | 3–5 individual contributors / cross-team collaborators (no Director+ titles), each with recent evidence. |
| 3 | "I'm meeting with an SME about responsible AI. Give me 5 talking points and a context brief." | Exactly 5 talking points tied to evidence, plus a one-paragraph context brief. |
| 4 | "Who maintains the internal Copilot Studio learning hub site?" | A primary owner, a backup (most recent admin/editor), and a support contact — with the source cited. |
| 5 | "Help me decide which SME to contact first about Microsoft Fabric — and why." | A side-by-side comparison of two SMEs and a clear "contact first" recommendation. |

> ⚠️ **Note:** If the agent doesn't return data for a specific source (e.g., no Teams messages), that's OK — it only shows sections where data exists.

> 📋 For a comprehensive evaluation, see the **SME Finder - Evaluation Test Plan.pdf** included in this repository.
