[← Back to Agent Templates](https://github.com/microsoft/m365-agent-templates#top)

<h1 align="center">
  <img src="Executive_Briefing_Icon.png" alt="" width="48">&nbsp;&nbsp;Executive Briefing Agent
</h1>

> **Your AI-powered executive prep partner** — generate polished briefings, talking points, and post-meeting summaries in seconds, not hours.

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

The **Executive Briefing Agent** is a **Declarative Agent for Microsoft 365 Copilot** that automates the full briefing lifecycle — from pre-meeting prep to post-meeting follow-through.

Instead of manually stitching together information, executives simply ask Copilot to generate a briefing. The agent **synthesizes content across your Microsoft 365 ecosystem** — Outlook Calendar, Email, Teams messages, SharePoint documents, and OneDrive files — into **structured, ready-to-use briefing documents**.

---

## ✨ Features

| Feature | Description |
|:--------|:------------|
| 📄 **Pre-Meeting Talking Points** | Generates structured talking points aligned to upcoming meeting agendas by pulling from calendar events, related emails, and prior documents |
| 📋 **Executive Briefing Documents** | Creates concise, one-page executive briefs summarizing the current state of projects, initiatives, or strategic topics |
| ✍️ **Post-Meeting Summaries** | Produces executive summaries from meeting transcripts, highlighting key decisions, owners, and follow-up actions |
| ✅ **Action Item Extraction** | Identifies and lists action items with owners and deadlines from meeting transcripts and follow-up emails |
| 🎤 **Interview Preparation** | Builds media/interview prep packages with key messages, supporting points, and anticipated Q&A |
| 📢 **Public & Media Prep** | Generates talking points, key messages, and Q&A documents for speaking engagements, panels, and public appearances |
| 📝 **Briefing Document Drafting** | Creates shareable Word briefing documents with overview, discussion points, and recommended actions |

---

## ⚡ How It Works

| Step | What Happens |
|:----:|:-------------|
| **1** | 🗣️ The executive or EA asks Copilot for a briefing (e.g., *"Prepare me for tomorrow's board meeting"*) |
| **2** | 🔎 The agent evaluates what's relevant — pulls from Outlook Calendar, Email, Teams messages, SharePoint, and OneDrive |
| **3** | 🧠 It synthesizes the information into a **structured briefing document** tailored to the request type |
| **4** | 📄 The output is delivered as formatted talking points, an executive summary, or a full briefing document |

---

## ✅ Prerequisites

1. **Microsoft 365 Copilot License** — Required for all users interacting with the agent and to access SharePoint/OneDrive knowledge sources
2. **Microsoft 365 E3, E5, or Business Premium** — Base subscription for Microsoft 365 services
3. **Sideloading Enabled in Teams** — A Teams admin must enable **Upload custom apps** in the Teams Admin Center under **Setup Policies > Global**
4. **Microsoft Teams** — Desktop or web client to sideload and access the agent
5. **SharePoint & OneDrive Permissions** — Users need read access to the SharePoint sites and OneDrive content the agent will reference

---

## 🚀 Getting Started

For full setup and deployment instructions, refer to the **Executive Briefing Agent - Setup Guide.docx** included in this repository.

> 💡 **To download:** From the [repository root](https://github.com/microsoft/m365-agent-templates), click the green **Code** button and select **Download ZIP**, then extract the **Executive Briefing** folder.

---

## 📦 Documents Included

| Document | Description |
|:---------|:------------|
| [`ExecutiveBriefingAgent_v1.0.0.0.zip`](ExecutiveBriefingAgent_v1.0.0.0.zip) | Pre-built Copilot Studio solution package — ready to import |
| [`Executive Briefing Agent - Setup Guide.docx`](Executive%20Briefing%20Agent%20-%20Setup%20Guide.docx) | Step-by-step setup and configuration guide |
| [`Executive Briefing Agent - Evaluation Test Plan.docx`](Executive%20Briefing%20Agent%20-%20Evaluation%20Test%20Plan.docx) | Evaluation test plan with prompts and expected results |
| [`Executive Briefing Agent - Overview Deck.pptx`](Executive%20Briefing%20Agent%20-%20Overview%20Deck.pptx) | Overview presentation with architecture, personas, and demo scenarios |

> 💡 **To download all files:** From the [repository root](https://github.com/microsoft/m365-agent-templates), click the green **Code** button and select **Download ZIP**, then extract the **Executive Briefing** folder.

---

## 🛠️ Setup Guide

### Which Option Should I Choose?

| Option | Best For | You'll Need | Time |
|:-------|:---------|:------------|:-----|
| **A – Import into Teams** | Fastest setup, non-technical users | Teams + admin-enabled custom app uploading | ~5 min |
| **B – Build in Agent Builder** | Full control, no zip needed, no admin permissions required | Agent Builder access via M365 Copilot | ~15 min |
| **C – Clone & Deploy with VS Code** | Developers, version control, CI/CD | VS Code + Node.js + M365 Agents Toolkit | ~20 min |

---

### 📦 Option A – Import the Agent into Teams

This is the fastest way to get started. You'll upload the pre-built agent package directly into Teams.

**Before You Begin:**

| ✓ | What You Need | Why |
|:-:|:--------------|:----|
| ☐ | Microsoft Teams installed | The agent is uploaded through the Teams app |
| ☐ | Custom app uploading enabled | Your admin must turn this on — see below |
| ☐ | `ExecutiveBriefingAgent_v1.0.0.0.zip` | The agent package you'll upload |

**How to Check if Custom App Uploading Is Enabled:**

1. Open Teams and click **Apps** in the left sidebar.
2. Click **Manage your apps** at the bottom.
3. Look for an **Upload an app** button.

✅ See the button? You're good. ❌ Don't see it? Ask your IT admin to enable **Upload custom apps** in the Teams Admin Center under **Teams apps → Setup policies**.

**Upload the Agent:**

1. Open Microsoft Teams (desktop app or [teams.microsoft.com](https://teams.microsoft.com)).
2. Click **Apps** in the left sidebar.
3. Click **Manage your apps** (bottom of the page).
4. Click **Upload an app** → **Upload a custom app**.
5. Select the `ExecutiveBriefingAgent_v1.0.0.0.zip` file from your computer.
6. Click **Add** when the app details appear.

> 🔴 **Important:** Do not unzip or rename the file. Teams needs the original `.zip` as-is.

✅ The agent is now installed!

**Open the Agent After Uploading:**

| Method | How |
|:-------|:----|
| **Copilot Web** | Go to [m365.cloud.microsoft/chat](https://m365.cloud.microsoft/chat) → click the side-panel icon next to New Chat → select Executive Briefing |
| **Teams** | Open Teams → click Copilot in the sidebar → click the side-panel icon → select Executive Briefing |
| **@Mention** | In any Copilot chat, type `@Executive Briefing` followed by your question |

> 📌 **Pin for Quick Access:** Right-click (or click the ⋯ menu) on the agent in the agent list and select **Pin** to add it to your sidebar.

<details>
<summary>⚠️ <strong>Troubleshooting (Option A)</strong></summary>

| Problem | Fix |
|:--------|:----|
| "Upload an app" button missing | Custom app uploading is disabled. Ask your IT admin to enable it. |
| "Parsing has failed" error | The zip file may be corrupted. Re-download and try again. Don't extract or modify it. |
| App doesn't appear after upload | Wait 1–2 minutes, then refresh Teams. Check **Manage your apps** to confirm it's listed. |
| Agent not showing in Copilot | It can take a few minutes after upload. Refresh the page and check again. |

</details>

---

### 🛠️ Option B – Build the Agent Yourself

If you can't upload a zip — or prefer to build it yourself — use Agent Builder in Microsoft 365 Copilot. No coding required.

**Before You Begin:**

| ✓ | What You Need | Why |
|:-:|:--------------|:----|
| ☐ | Agent Builder access | Available through Microsoft 365 Copilot at [m365.cloud.microsoft/chat](https://m365.cloud.microsoft/chat) |

**Step 1: Open Agent Builder**

1. Go to [m365.cloud.microsoft/chat](https://m365.cloud.microsoft/chat) and sign in.
2. Click **New agent** in the left pane.
3. Click **Skip to configure** (top right).

**Step 2: Name & Description**

| Field | What to Enter |
|:------|:--------------|
| **Name** | Executive Briefing Agent |
| **Description** | Executive support agent for meetings, events and interviews. |

**Step 3: Instructions**

Scroll down to the **Instructions** box. Copy and paste the full instructions below:

<details>
<summary>📝 <strong>Click to expand full agent instructions</strong></summary>

```
# Executive Briefing Agent
Interpret instructions literally. Follow step order exactly.

## Purpose
Prepare executive‑ready materials for leadership meetings, public events, and media
interactions by retrieving, analyzing, and synthesizing enterprise and public information.

## Output Contract
- **Tone:** Professional, concise, factual, insight‑driven
- **Format:** Word document (.docx) with headers and bullets
- **Detail:** Max 5 bullets per overview; 1-2 pages per briefing
- **Include:** Facts, sourced insights, actionable recommendations
- **Exclude:** Speculation, filler, disclaimers, unsolicited recommendations
- **Code visibility:** Never display Python code or code-execution steps in chat.
  Run code silently and present only the final output and deliverable to the user.

---

## Workflow

### Step 1: Identify Engagement Type
- **Goal:** Determine engagement and deliverable.
- **Action:**
  - Classify the request:
    - **meeting** → Pre‑Meeting Briefing or Post‑Meeting Report
    - **public event, speech, keynote** → Event Messaging & Speech
    - **press interview, media interaction** → Interview Preparation
    - **general question** → answer in chat (max 3 bullets, no document)
  - If ambiguous, ask: "Is this for a meeting, public event, or press interview?"
- **Transition:** Proceed to Step 2 once confirmed.

### Step 2: Gather Context
- **Goal:** Collect type-specific details and get explicit user confirmation before proceeding.
- **Action by type:**
  - **Meeting:**
    - Search **Meetings** for a calendar match.
    - If found, present title, date, and participants for confirmation.
    - If no exact match, present up to four candidates by title, date, participants, or topic.
  - **Event / Speech:**
    - Ask in one message for: event name, date, audience, format, theme, and key objectives.
  - **Interview / Media:**
    - Ask in one message for: interviewee name, interviewer name, publication/outlet, media type (print, TV, podcast…), date, and topic.
  - If details are missing or unclear, ask follow-up questions until all required fields are filled.
- **Confirmation gate:** Present a summary of the gathered context and ask the user to confirm it is correct. **Do not proceed to Step 3 until the user explicitly confirms.**
- **Transition:** Proceed to Step 3 only after user confirmation.

### Step 3: Retrieve Content
- **Goal:** Build a reliable information base.
- **Action by type:**
  - **Meeting:**
    - Search **Meetings** for the calendar event, transcript, and recording.
    - Search **Email** (last 6 months) for messages with the same participants and topic.
    - Search **TeamsMessages** for related discussions in chats and channels.
    - Search **OneDriveAndSharePoint** for documents, decks, and prior briefings.
    - Search **Meetings** for past events with the same attendees.
    - **WebSearch**: industry context and news as supplementary grounding.
  - **Event / Speech:**
    - Search **OneDriveAndSharePoint** for prior presentations, decks, and briefings.
    - Search **Email** (last 6 months) for related correspondence.
    - **WebSearch**: industry context, audience background, event coverage.
    - Search **TeamsMessages** for internal discussions on the topic.
    - Search **Meetings** for past events on the same topic.
  - **Interview / Media:**
    - **WebSearch**: interviewer profile, publication history, recent news, competitor stances.
    - Search **Email** for prior correspondence with the interviewer or on the topic.
    - Search **OneDriveAndSharePoint** for media kits, position papers, and approved messaging.
    - Search **TeamsMessages** for internal discussions.
    - Search **Meetings** for past briefings or events on the topic.
- **Transition:** Proceed to Step 4.

### Step 4: Analyze & Synthesize
- **Goal:** Produce executive‑ready insights.
- **Action:**
  - Extract themes, decisions, risks, context. Summarize concisely.
  - Identify sensitive areas; draft recommended messaging.
  - Draft anticipated questions with responses.
  - **Interview prep** additionally: interviewer profile, sentiment, common questions, competitor stances, uncomfortable areas.
- **Transition:** Proceed to Step 5.

### Step 5: Generate Deliverable
- **Goal:** Produce the briefing using the correct template.
- **Action:**
  - Select template by engagement type (see below). Fill each section.
  - **Speech requests**: 20‑min draft, inspirational/visionary tone. Notify user of assumed duration.
  - Present key messages for review before finalizing (event and interview types).
- **Transition:** Proceed to Step 6.

### Step 6: Self‑Evaluation
- **Goal:** Validate completeness before delivering.
- **Action:**
  - Confirm every template section is populated.
  - Confirm talking points are sourced from retrieved content.
  - Confirm output follows the Output Contract.
  - Flag gaps: "⚠️ Incomplete - [specific gap]."
- **Transition:** Deliver.

---

## Output Templates

### Pre‑Meeting Briefing
| Section | Description |
|---------|-------------|
| Executive Summary | Overview of meeting purpose and key takeaways |
| Agenda | Extracted or generated agenda items |
| Background Context | History, decisions, stakeholder positions |
| Talking Points | Points to raise, sourced from **Email**, **Teams**, **SharePoint** |
| Anticipated Questions & Responses | Likely questions with prepared answers |
| Risks & Considerations | Sensitive topics, unresolved issues, political dynamics |
| Past Interactions | Prior meetings or exchanges on the topic |
| References | Links to internal content used |

### Post‑Meeting Report
| Section | Description |
|---------|-------------|
| Executive Summary | One‑paragraph overview of outcomes |
| Agenda | Agenda as discussed |
| Decisions, Actions & Commitments | Specific decisions made, action items with owners and dates |
| Key Themes & Follow‑Up | Recurring themes and required next steps |

### Interview Preparation Report
| Section | Description |
|---------|-------------|
| Background Context | Topic overview and company positioning |
| Key Talking Points | Positive company messaging aligned to the topic |
| Anticipated Questions & Recommended Responses | Likely questions with draft answers |
| Current Media Themes | Relevant trends in public discourse |
| Competitor Stances | How competitors are positioned on the topic |
| Sensitive Areas & Risks | Uncomfortable topics and recommended handling |
| Interviewer Profile | Background, professional history, public positions |
| Interviewer Sentiment | Documented stance toward the topic and company |
| Common Interviewer Patterns | Recurring question types and interview style |
| Past Interactions | Prior interviews or exchanges with this interviewer |

---

## Output Delivery Format
For Pre‑Meeting Briefings, Post‑Meeting Reports, Interview Preparation, and Speeches:
- Generate the deliverable as a **Word document (.docx)** using python-docx or equivalent. Do not generate a Markdown file.
- Deliver a concise summary in chat (key highlights only, not the full document).
- End the message with a link to the generated .docx file: [▶️ filename.docx ◀️](URL)
- **Do not display any Python code, scripts, or code-execution output in chat.** Run all code silently.

For **general questions**: answer in chat only. No file.

### Markdown‑Safe Titles
Strip characters that break markdown (`[`, `]`, `(`, `)`, `<`, `>`, `#`) from titles in links/headings.
- Example: "Meeting [important]" → "Meeting important"

---

## Error Handling
- If a step fails, continue with the next step and provide the best output with available information.
- Flag gaps: "⚠️ Incomplete - [reason]."
```

</details>

> 💡 **Tip:** Select all the text in the box above (Ctrl+A after clicking inside) and paste it directly into the Instructions field.

**Step 4: Knowledge Sources**

Scroll down to the **Knowledge** section and add four sources:

| # | Source | How to Add |
|:-:|:-------|:-----------|
| 1 | 📂 **SharePoint Files** | Click the SharePoint icon → Select "My SharePoint files, folders, and sites" |
| 2 | 💬 **Teams Chats & Meetings** | Click the Teams icon → Select "My Teams chats and meetings" |
| 3 | ✉️ **Emails** | Click the Outlook icon → Select "My emails" |
| 4 | 🌐 **Web Search** | Toggle on "Search all websites" |

> 💻 **Enable Code Interpreter:** Make sure the **Code Interpreter** toggle is turned on in agent settings (typically enabled by default).

> ⚠️ **Note:** The availability of these knowledge sources depends on your license. Users with a Microsoft 365 Copilot license get full access to all sources.

**Step 5: Starter Prompts**

Add these prompts so users see clickable quick-start buttons:

| Title | Prompt |
|:------|:-------|
| Executive Meeting | Assist with the next [executive meeting name] with [person]. Focus on [topics to cover]. |
| Post-meeting report | Summarize [executive meeting name] and create a post-meeting report. |
| Public event | Prepare a speech for my presentation at the [event name and details] on [topic]. The audience are [audience persona]. |
| Leadership Interview | Prepare my interview with [Interviewer name] on the [Interview topic]. |
| Follow-up | Summarize the follow-up points raised in the [previous executive meeting name] with [person]. |
| Key talking points | Create talking points based on my recent emails and chats. |

**Step 6: Test & Create**

1. Click the **Try it** tab (top of the page) and test a few prompts.
2. When you're happy with it, click **Create** (top right).
3. Click **Go to agent** to start using it.

---

### 💻 Option C – Clone & Deploy with Visual Studio Code

This option is for developers who want full control over the agent source code.

**Before You Begin:**

| ✓ | What You Need | Why |
|:-:|:--------------|:----|
| ☐ | Visual Studio Code installed | Your code editor for this workflow |
| ☐ | Git installed | Required to clone the agent repository |
| ☐ | Microsoft 365 Agents Toolkit extension | VS Code extension for building and deploying M365 agents |
| ☐ | Node.js (v18 or later) | Required by the toolkit and agent runtime |

**Step 1: Install the M365 Agents Toolkit**

1. Open Visual Studio Code.
2. Click the **Extensions** icon in the left sidebar (or press `Ctrl+Shift+X`).
3. Search for **"Microsoft 365 Agents Toolkit"**.
4. Click **Install**.

**Step 2: Clone the Agent Repository**

1. Open a terminal in VS Code (**Terminal → New Terminal**).
2. Run: `git clone [repository-url]` (replace with the URL provided by your team lead or admin).
3. Open the cloned folder in VS Code (**File → Open Folder**).

> ⚠️ **Note:** Ask your team lead or admin for the repository URL if you don't have it.

**Step 3: Provision and Deploy**

1. Click the **Agents Toolkit** icon in the VS Code sidebar.
2. Sign in to your Microsoft 365 account when prompted.
3. Click **"Provision"** in the Lifecycle section to set up cloud resources.
4. Click **"Deploy"** to upload the agent to your M365 environment.
5. Wait for the success notification in VS Code.

✅ The agent is now deployed!

**Step 4: Preview and Test**

1. In the Agents Toolkit sidebar, click **"Preview in Copilot"**.
2. The agent will open in Microsoft 365 Copilot in your browser.
3. Try one of the suggested prompts to verify everything works.

<details>
<summary>⚠️ <strong>Troubleshooting (Option C)</strong></summary>

| Problem | Fix |
|:--------|:----|
| Toolkit not showing in sidebar | Restart VS Code after installing the extension |
| Sign-in fails | Ensure you're using your M365 account (not a personal Microsoft account) |
| Provision fails | Check that your Microsoft 365 Copilot license is active |
| Deploy fails | Verify Node.js v18+ is installed (run `node --version` in terminal) |
| Agent not appearing in Copilot | Wait 1–2 minutes after deploy, then refresh the Copilot page |

</details>

---

### 🎨 Make It Your Own

You can adjust the agent's behavior after setup:

| If You Used... | How to Customize |
|:---------------|:-----------------|
| **Agent Builder** | Find Executive Briefing in your agents list → click the ⋯ menu → **Edit** → make changes on the Configure tab |
| **Zip Import** | Extract the zip → edit `declarativeAgent.json` → re-zip all files (keep files at root, not in a subfolder) → remove old version in Teams and upload the new zip |
| **VS Code** | Edit `declarativeAgent.json` in the project folder → click **"Deploy"** in the Agents Toolkit |

| What You Can Change | How |
|:--------------------|:----|
| Change the agent's tone | Edit the Instructions — adjust wording like "Professional, concise, factual" |
| Hide output sections | Remove sections from the Instructions text |
| Add a VIP list | Add names to the Instructions so the agent prioritizes their communications |
| Turn data sources on/off | Add or remove knowledge sources in Agent Builder, or edit the capabilities in the JSON |
| Edit starter prompts | Update Starter Prompts in Agent Builder, or edit `conversation_starters` in the JSON |
| Swap the icon | Replace `color.png` (192×192) and `outline.png` (32×32) in the zip |

---

### 🧪 Test That It Works

Run through these quick checks after setup:

| # | Try This Prompt | What to Look For |
|:-:|:----------------|:-----------------|
| 1 | Assist with the next leadership meeting with [colleague]. Focus on [topic]. | Structured briefing with talking points, anticipated questions, and context from email, Teams, and SharePoint |
| 2 | Summarize [meeting name] and create a post-meeting report. | Post-meeting report with executive summary, decisions, action items, and follow-up themes |
| 3 | Prepare a speech for my presentation at [event] on [topic]. | Speech draft or event messaging document with key messages and audience-tailored talking points |
| 4 | Prepare my interview with [interviewer] on [topic]. | Interview prep report with anticipated questions, responses, interviewer profile, and media themes |
| 5 | Create talking points based on my recent emails and chats. | Concise talking points synthesized from recent email threads and Teams conversations |

> ⚠️ **Note:** If the agent doesn't return data for a specific source, that's OK — it only shows sections where data exists. Replace placeholder text in brackets with real names and topics from your work.
