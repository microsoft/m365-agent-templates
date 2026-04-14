<p align="center">
  <img src="My Company Policy Icon.png" alt="My Company Policy Agent" width="120">
</p>

<h1 align="center">My Company Policy Agent</h1>

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

**My Company Policy** is a **Declarative Agent** for **Microsoft 365 Copilot** that gives employees a single, trusted conversational interface to access company policies — HR information, benefits, holidays, PTO, IT, procurement, and general company information — without searching across multiple portals.

Instead of manually hunting through intranet sites, HR portals, and internal documentation, employees simply ask the agent a question. The agent grounds every response in authoritative company documents stored in **SharePoint**, returns clear answers with inline citations (document name, policy number, and section), and factors in the user's location and job title to surface the most relevant policy version. From day-one new hires to long-tenured employees with a quick benefits question, My Company Policy is the trusted first stop that replaces portal-hopping.

---

## ✨ Features

| Feature | Description |
|:--------|:------------|
| 💬 **Conversational Policy Access** | Natural language Q&A for company policies via Microsoft 365 Copilot |
| 📚 **Grounded in Authoritative Sources** | Every answer is sourced exclusively from your company's SharePoint policy documents with inline citations |
| 📄 **Broad Policy Coverage** | Covers employment, compensation, benefits, leave, onboarding, IT, procurement, and more |
| 🔗 **Direct Portal Links** | Provides links to official employee portals and resources for follow-up actions |
| 🌍 **Context-Aware Answers** | Factors in the user's geographic location and job title to surface the most relevant policy version |
| ❓ **Smart Clarification** | Asks targeted follow-up questions when a query is ambiguous before answering |
| 📝 **Inline Citations** | References specific document name, policy number, and section for every answer |
| ⚠️ **Built-in Disclaimer** | Every response ends with a reminder that content is AI-generated and critical decisions should be verified with HR |

---

## ⚡ How It Works

| Step | What Happens |
|:----:|:-------------|
| **1** | 💬 Employee asks the agent a policy question — *"What is our PTO policy?"* or *"How do I enrol in dental coverage?"* |
| **2** | 🔍 Agent evaluates the question, grounds the response in authoritative SharePoint documents and trusted web sources |
| **3** | 🎯 Agent selects the most relevant, up-to-date information — factoring in user location and role |
| **4** | 📋 Agent delivers a clear, concise answer with inline citations and links to official portals |

---

## ✅ Prerequisites

1. **Microsoft 365 Copilot License** — Required for all users interacting with the agent and to access SharePoint knowledge sources
2. **Microsoft 365 E3, E5, or Business Premium** — Base subscription for Microsoft 365 services
3. **Sideloading Enabled in Teams** — A Teams admin must enable **Upload custom apps** in the Teams Admin Center under **Setup Policies > Global** (required for Option A only)
4. **Microsoft Teams** — Desktop or web client to access the agent
5. **SharePoint Site with Policy Documents** — A SharePoint site containing your company's policy documents (the agent's knowledge source)

---

## 🚀 Getting Started

For full setup and deployment instructions, see the **[Setup Guide](#️-setup-guide)** section below, or refer to the **My Company Policy Agent - Setup Guide.docx** included in this repository.

> 💡 **To download:** From the [repository root](https://github.com/microsoft/m365-agent-templates), click the green **Code** button and select **Download ZIP**, then extract the **My Company Policy** folder.

> 🔴 **Important:** The agent package ships with a **placeholder SharePoint URL** that must be replaced with your actual SharePoint site. Each setup option below includes the specific steps to do this.

---

## 📦 Documents Included

| Document | Description |
|:---------|:------------|
| [`My Company Policy Agent - Overview Deck.pptx`](My%20Company%20Policy%20Agent%20-%20Overview%20Deck.pptx) | Comprehensive overview deck covering the agent scenario, architecture, personas, and demo prompts |
| [`My Company Policy Agent - Setup Guide.docx`](My%20Company%20Policy%20Agent%20-%20Setup%20Guide.docx) | Step-by-step setup and configuration guide with three deployment options |
| [`My Company Policy Agent - Evaluation Test Plan.docx`](My%20Company%20Policy%20Agent%20-%20Evaluation%20Test%20Plan.docx) | Evaluation test plan with pass/fail criteria for grounding accuracy, citation behavior, and tone |
| [`MyCompanyPolicy_1_0_0_0.zip`](MyCompanyPolicy_1_0_0_0.zip) | Pre-built agent package ready for sideloading into Teams |
| [`Sample Files/`](Sample%20Files/) | Sample company policy documents for testing the agent |
| [`Eval Sets/`](Eval%20Sets/) | Evaluation test sets for automated testing |

> 💡 **To download all files:** From the [repository root](https://github.com/microsoft/m365-agent-templates), click the green **Code** button and select **Download ZIP**, then extract the **My Company Policy** folder.

---

## 🛠️ Setup Guide

### Which Option Should I Choose?

| | **Option A — Import Package** | **Option B — Build from Scratch** | **Option C — Clone & Deploy (VS Code)** |
|---|---|---|---|
| **Best for** | Fastest setup, non-technical users | Full control, no zip needed, no admin permissions required | Developers, version control, CI/CD |
| **Time** | ~5 minutes | ~15 minutes | ~20 minutes |
| **Requires** | Teams + admin-enabled custom app uploading | Agent Builder access via M365 Copilot | VS Code + Node.js + M365 Agents Toolkit |
| **Customization** | Edit JSON, re-zip, re-upload | Full control in browser UI | Full control in code |
| **Skill Level** | Beginner | Beginner | Intermediate |

---

### 📦 Option A — Import the Agent into Teams

This is the fastest way to get started. You'll configure the agent package with your SharePoint site, then upload it directly into Teams.

> 🔴 **Important:** The agent package includes a **placeholder SharePoint URL** that you must replace before uploading. See the configuration steps below.

**Before You Begin:**
- ☐ Microsoft Teams installed (desktop app or [teams.microsoft.com](https://teams.microsoft.com))
- ☐ Custom app uploading enabled in Teams ([how to check](#how-to-check-if-custom-app-uploading-is-enabled))
- ☐ `MyCompanyPolicy_1_0_0_0.zip` file downloaded from this repository
- ☐ Your SharePoint site URL containing company policy documents

#### How to Check if Custom App Uploading Is Enabled

1. Open Teams and click **Apps** in the left sidebar
2. Click **Manage your apps** at the bottom
3. Look for an **Upload an app** button

See the button? ✅ You're good to go. Don't see it? Ask your IT admin to enable "Upload custom apps" in the Teams Admin Center under **Teams apps → Setup policies**.

#### Configure Your SharePoint Knowledge Source

1. **Extract** (unzip) the `MyCompanyPolicy_1_0_0_0.zip` file to a folder on your computer
2. Open `declarativeAgent.json` in a text editor (e.g., Notepad, VS Code)
3. Find the `capabilities` section. It looks like this:
   ```json
   "capabilities": [
     { "name": "OneDriveAndSharePoint",
       "items_by_url": [
         { "url": "https://replaceme.with.your.sharepoint.com/sites/CompanyPolicy/Shared%20Documents" }
       ]
     }
   ]
   ```
4. **Replace** the placeholder URL with your actual SharePoint site URL
5. **Save** the file
6. **Re-zip** all the files back into a single `.zip` file

> 🔴 When re-zipping, make sure the files are at the **root** of the zip — not inside a subfolder.

> 💡 If your SharePoint URL contains spaces, replace them with `%20` (e.g., `Shared Documents` → `Shared%20Documents`).

#### Upload Steps

1. Open **Microsoft Teams** (desktop app or [teams.microsoft.com](https://teams.microsoft.com))
2. Click **Apps** in the left sidebar
3. Click **Manage your apps** (bottom of the page)
4. Click **Upload an app** → **Upload a custom app**
5. Select the updated `.zip` file you just re-zipped
6. Click **Add** when the app details appear

✅ The agent is now installed and connected to your SharePoint policy documents!

#### Open the Agent

| Method | How |
|:-------|:----|
| **Copilot Web** | Go to [m365.cloud.microsoft/chat](https://m365.cloud.microsoft/chat) → click the side-panel icon → select **My Company Policy** |
| **Teams** | Open Teams → click **Copilot** in the sidebar → click the side-panel icon → select **My Company Policy** |
| **@Mention** | In any Copilot chat, type `@My Company Policy` followed by your question |

> 💡 **Pin it:** Right-click the agent in the agent list and select **Pin** to keep it in your sidebar for instant access.

<details>
<summary>🔧 Troubleshooting (Option A)</summary>

| Problem | Fix |
|:--------|:----|
| "Upload an app" button missing | Custom app uploading is disabled. Ask your IT admin to enable it. |
| "Parsing has failed" error | The zip may be corrupted or JSON malformed. Re-open `declarativeAgent.json`, verify your URL edit didn't break JSON syntax (check for missing quotes/commas), re-zip and try again. |
| App doesn't appear after upload | Wait 1–2 minutes, then refresh Teams. Check **Manage your apps** to confirm it's listed. |
| Agent not showing in Copilot | It can take a few minutes after upload. Refresh the page and check again. |
| Agent returns no results | The SharePoint URL may be incorrect. Verify the URL in `declarativeAgent.json` points to the correct document library. |

</details>

---

### 🏗️ Option B — Build the Agent in Agent Builder

If you can't upload a zip — or prefer to build it yourself — use **Agent Builder** in Microsoft 365 Copilot. No coding required.

**Before You Begin:**
- ☐ Access to Agent Builder at [m365.cloud.microsoft/chat](https://m365.cloud.microsoft/chat)
- ☐ Your SharePoint site URL containing company policy documents

#### Step 1 — Open Agent Builder

1. Go to [m365.cloud.microsoft/chat](https://m365.cloud.microsoft/chat) and sign in
2. Click **New agent** in the left pane
3. Click **Skip to configure** (top right)

#### Step 2 — Name & Description

| Field | What to Enter |
|:------|:--------------|
| **Name** | My Company Policy |
| **Description** | Ask me anything about company policies. I can answer questions about employment, compensation, benefits, leave, onboarding, and more. |

#### Step 3 — Instructions

Scroll down to the **Instructions** box. Copy and paste the full agent instructions below:

<details>
<summary>📋 Click to expand full agent instructions</summary>

```
You are the My Company Policy Assistant, an internal HR and company policy
resource for employees. The purpose of this assistant is to help employees
understand company policies accurately, clearly, and with appropriate citations
to the source documents.

## Tone and Style
- Respond as "My Company Policy Agent", not as a human or individual. Do not
  use first-person pronouns (I, me, my, we, our). Instead, refer to the
  assistant as "My Company Policy Agent" where a subject is needed.
- Professional, approachable, and concise
- Neutral and non-judgmental on sensitive HR topics
- Never condescending — assume employees are asking in good faith
- Use plain language; avoid HR or legal jargon unless defined in the policy

## Knowledge Sources
You have access to official company policy documents stored in SharePoint.
Answers must be grounded exclusively in these documents. Do not use general
knowledge, training data, or assumptions to answer policy questions. If the
answer is not found in the available documents, say so — do not supplement
with information from outside the provided sources.

## User Context
M365 Copilot has access to the user's organizational profile, including their
location and job title. When searching for relevant policy content, always
factor in:
- The user's geographic location or region — prioritize policies applicable
  to their jurisdiction or office location
- The user's job title or role — surface policies relevant to their
  employment classification or level

If a retrieved policy varies by region or role and the user's profile indicates
a specific location or title, lead with the version that applies to them and
note that other variations exist.

## Core Behaviors

### Always cite your sources
Every answer must reference the specific document name, policy number, and
section where the information was found. Format citations inline, for example:
"Full-time employees accrue 15 days of PTO in their first two years of service.
(Company Leave Policy, HR-POL-006, Section 2)"
If an answer draws from more than one document, cite each one where relevant.

### Clarify before answering when intent is ambiguous
If a question could be interpreted in more than one way, or if the answer
depends on details not available (such as employment classification, tenure,
or location), ask a targeted follow-up question before answering. Do not make
assumptions about the employee's situation.

Examples of when to ask a follow-up question:
- "How much PTO do I get?" — Ask whether they are full-time or part-time,
  and how long they have been with the company.
- "What is my bonus?" — Ask what job level they are, as bonus target
  percentages vary by level.
- "Am I eligible for parental leave?" — Ask whether they are the primary or
  secondary caregiver and how long they have been employed.

Keep follow-up questions brief — ask only what is necessary to give an accurate
answer. Ask one question at a time.

### Be direct and structured
Lead with the answer, then provide supporting detail. Use bullet points or
short paragraphs for readability. Avoid unnecessary preamble.

### Acknowledge when something is not covered
If a question cannot be answered from the available policy documents, say so
clearly. Suggest the employee contact HR directly at hr@meridiansolutions.com,
or their manager for role-specific situations.

### Do not provide legal or personal advice
My Company Policy Agent can explain what a policy says, but must not interpret
how a policy applies to a specific legal, medical, or disciplinary situation.
For those cases, direct the employee to HR or Legal.

### Treat all topics with appropriate sensitivity
Questions about compensation, disciplinary matters, leave for medical or family
reasons, or employment eligibility should be answered factually and without
judgment. Do not volunteer information beyond what was asked.

### Keep answers current to the documents provided
If a policy document references a specific year, dollar amount, or legal
threshold, relay it accurately and note that limits may be subject to annual
IRS or regulatory adjustment where applicable.

## Out-of-Scope Requests
If an employee asks something unrelated to company policy (e.g., IT support,
project questions, personal career advice), let them know this assistant is
focused on company policies and direct them to the appropriate resource.

## Disclaimer
Every response must end with the following disclaimer:
---
This response was generated by an AI assistant and may not reflect the most
recent policy updates. Always verify critical decisions with HR.
```

</details>

#### Step 4 — Knowledge Sources

Scroll down to the **Knowledge** section and add your SharePoint policy site:

1. Click the **SharePoint icon** (the first icon — teal/blue document icon)
2. Click the **Sites** tab to narrow results
3. Search for your SharePoint site name or paste the full URL (e.g., `https://yourcompany.sharepoint.com/sites/CompanyPolicy/Shared Documents`)
4. Select the matching site from the results
5. Confirm it appears as an active knowledge source with the toggle turned on

> ⚠️ If you don't see your SharePoint site, verify you have access to it in your browser first.

> 💡 You can add **multiple SharePoint sites** if your policy documents are spread across different locations.

#### Step 5 — Starter Prompts

Add these starter prompts so users see clickable quick-start buttons:

| Title | Prompt |
|:------|:-------|
| 📝 Summarize Leave | Can you summarize all the types of leave I'm eligible for as a full-time employee? |
| 👤 New Hire | What happens during my first 90 days, and what is the probationary period policy? |
| 🏥 Health Insurance | What health insurance options are available to employees? |
| 👶 Parental Leave | How much notice do I need to give before taking parental leave? |
| 🎉 Paid Holidays | What are the company's paid holidays this year? |
| 📊 Board Meeting | What were the key discussion points from the last board meeting? |

#### Step 6 — Test & Create

1. Click the **Try it** tab (top of the page) and test a few prompts to verify the agent retrieves answers from your SharePoint documents
2. When you're happy with it, click **Create** (top right)
3. Click **Go to agent** to start using it

---

### 💻 Option C — Clone & Deploy with Visual Studio Code

This approach uses Git and VS Code with the **Microsoft 365 Agents Toolkit** extension. Ideal for developers who want full control, version history, or CI/CD pipelines.

**Before You Begin:**
- ☐ [Visual Studio Code](https://code.visualstudio.com/Download) installed
- ☐ [Git](https://git-scm.com/downloads) installed
- ☐ [Node.js v18+](https://nodejs.org/) installed
- ☐ [M365 Agents Toolkit](https://learn.microsoft.com/microsoftteams/platform/toolkit/install-teams-toolkit) VS Code extension installed
- ☐ Your SharePoint site URL containing company policy documents

#### Step 1 — Clone the Repository

**From VS Code (recommended):**
1. Press `Ctrl+Shift+P` → type **"Git: Clone"** → select it
2. Paste: `https://github.com/microsoft/m365-agent-templates.git`
3. Choose a local folder and click **Select as Repository Destination**
4. When prompted, click **Open**

**From the command line:**
```bash
git clone https://github.com/microsoft/m365-agent-templates.git
cd m365-agent-templates/My\ Company\ Policy
code .
```

#### Step 2 — Configure Your SharePoint Knowledge Source

1. Open `declarativeAgent.json` from the project
2. Find the `capabilities` section with the placeholder URL
3. **Replace** the placeholder with your actual SharePoint site URL:
   ```json
   "url": "https://yourcompany.sharepoint.com/sites/YourSite/Shared%20Documents"
   ```
4. Save the file (`Ctrl+S`)

> 💡 Use VS Code's Find and Replace (`Ctrl+H`) to quickly locate `replaceme.with.your.sharepoint.com` and swap it.

> 💡 You can add **multiple SharePoint sites** by adding more objects to the `items_by_url` array.

#### Step 3 — Sign In & Deploy

1. Click the **Agents Toolkit** icon in the VS Code left sidebar
2. Under **Accounts**, click **Sign in to Microsoft 365**
3. Under **Lifecycle**, click **Provision** to register the agent
4. Click **Deploy** to upload the agent to your M365 environment

✅ The agent is now deployed and connected to your SharePoint policy documents!

#### Step 4 — Preview & Share

| Action | How |
|:-------|:----|
| **Preview** | Agents Toolkit sidebar → **Preview in Copilot** |
| **Share with colleagues** | Lifecycle → **Share** → enter names or groups |
| **Publish to organization** | Lifecycle → **Publish to Organization** → admin may need to approve |

<details>
<summary>🔧 Troubleshooting (Option C)</summary>

| Problem | Fix |
|:--------|:----|
| Toolkit not showing in sidebar | Restart VS Code after installing the extension. |
| Sign-in fails | Ensure you're using your M365 account (not personal Microsoft account). |
| Provision fails | Check that your Microsoft 365 Copilot license is active. |
| Deploy fails | Verify Node.js v18+ is installed (`node --version` in terminal). |
| Agent not appearing in Copilot | Wait 1–2 minutes after deploy, then refresh. |
| Agent returns no results | Verify the SharePoint URL in `declarativeAgent.json` is correct and that the site contains your policy documents. |

</details>

---

### 🎨 Make It Your Own

| Customization | How |
|:--------------|:----|
| Change the agent's tone | Edit the **Instructions** — adjust wording to match your preferred style |
| Point to a different SharePoint site | In Agent Builder: remove existing source, add new URL. In JSON: edit the `url` field under `capabilities → items_by_url` |
| Add multiple SharePoint sites | In Agent Builder: add additional sites from Knowledge section. In JSON: add more objects to `items_by_url` array |
| Hide output sections | Remove sections from the Instructions text |
| Turn data sources on/off | Add or remove knowledge sources in Agent Builder, or edit the capabilities list in JSON |
| Edit starter prompts | Update **Starter Prompts** in Agent Builder, or edit `conversation_starters` in JSON |
| Swap the icon | Replace `companyinfo.png` (192×192) and `outline.png` (32×32) in the zip with your own PNGs |

---

### 🧪 Test That It Works

Run through these quick checks after setup to make sure everything is connected:

| # | Try This Prompt | What to Look For |
|:-:|:----------------|:-----------------|
| 1 | *Can you summarize all the types of leave I'm eligible for as a full-time employee?* | Types of leave listed with policy document citations (document name, policy number, section) |
| 2 | *What happens during my first 90 days, and what is the probationary period policy?* | Onboarding steps and probationary period details with policy citations |
| 3 | *What health insurance options are available to employees?* | Insurance plan details sourced from policy documents with citations |
| 4 | *How much notice do I need to give before taking parental leave?* | Notice requirements with policy reference; may ask if you're primary/secondary caregiver |
| 5 | *What are the company's paid holidays this year?* | List of holidays with policy citation and disclaimer at the end |

> ⚠️ If the agent doesn't return data for a query, that's OK — it means the relevant policy document hasn't been added to the SharePoint knowledge source yet. Verify the SharePoint URL is correct and that the documents are stored there.

For a deeper test, refer to the **[My Company Policy Agent - Evaluation Test Plan.docx](My%20Company%20Policy%20Agent%20-%20Evaluation%20Test%20Plan.docx)** included in this repository.
