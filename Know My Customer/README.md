<h1 align="center">
  <img src="Know%20My%20Customer%20Icon.png" alt="" width="48">&nbsp;&nbsp;Know My Customer Agent
</h1>

> **Your competitive intelligence co-pilot** — research companies, analyze competitor landscapes, and generate executive-ready briefings from a simple chat conversation.

[![Microsoft 365 Copilot](https://img.shields.io/badge/Microsoft_365-Copilot-0078D4?logo=microsoft&logoColor=white)](https://www.microsoft.com/microsoft-365/copilot)
[![Agent Type](https://img.shields.io/badge/Agent_Type-Custom_(Copilot_Studio)-742774?logo=microsoft&logoColor=white)](https://copilotstudio.microsoft.com)
[![Power Platform](https://img.shields.io/badge/Power_Platform-Solution-0B556A?logo=microsoft&logoColor=white)](https://make.powerapps.com)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

---

## 📖 Table of Contents

- [Overview](#-overview)
- [Features](#-features)
- [How It Works](#-how-it-works)
- [Prerequisites](#-prerequisites)
- [Getting Started](#-getting-started)
- [Files Included](#-files-included)
- [Setup Guide](#-setup-guide)

---

## 💡 Overview

The **Know My Customer Agent** is a custom agent built in **Microsoft Copilot Studio** that automates and standardizes competitive intelligence research. Instead of piecing together context from scattered documents, systems, and prior interactions, users can ask the agent to research companies, surface competitor moves, identify market forces, and generate structured executive-ready briefings — all from a single chat conversation.

The agent operates in three phases: it first runs a multi-stage **web search pipeline** to gather competitive intelligence from the last 8 months, then **synthesizes** the results into a structured briefing with executive summary, market context, key competitor moves, tailwinds, and headwinds. When requested, it **generates a professional Word document** from the research, saves it to OneDrive, and returns a shareable download link — turning hours of manual research into minutes of guided intelligence.

---

## ✨ Features

| Feature | Description |
|:--------|:------------|
| 📋 **Rules-Driven Research Pipeline** | Multi-stage web search that gathers competitive intelligence scoped to the last 8 months across market positioning, M&A, pricing, product launches, and more |
| 🔍 **Automated Gap Analysis** | Identifies what's known, what's unclear, and what may be most relevant for upcoming customer conversations |
| ⚠️ **Risk Signal Surfacing** | Highlights competitor moves, market headwinds, and potential threats with explanations of why they matter |
| 📚 **Guided Next Steps** | Provides actionable recommendations with references to market forces and competitive dynamics |
| 📄 **Professional Document Generation** | Creates executive-ready Word documents from research using AI Builder + Power Automate, saved to OneDrive with a shareable link |
| 🏢 **Structured Competitive Briefings** | Produces reports with Executive Summary, Market Context, Key Moves table, Tailwinds & Headwinds, and sourced Appendix |
| ⚡ **One-Click Starter Prompts** | Six built-in conversation starters covering top competitors, competitive intel, recent moves, market forces, landscape briefs, and exec-ready reports |

---

## ⚡ How It Works

| Step | What Happens |
|:----:|:-------------|
| **1** | 💬 User asks the agent for competitive intelligence (e.g., *"I need competitive intel details for Salesforce"*) |
| **2** | 🔍 The agent runs a multi-stage web search pipeline, gathering competitive intelligence from the last 8 months |
| **3** | 📝 Search results are synthesized into a structured briefing with executive summary, market context, competitor key moves, tailwinds, and headwinds |
| **4** | 📄 When requested, the agent triggers a Power Automate flow that generates a professional Word document, saves it to OneDrive, and returns a shareable download link |

---

## ✅ Prerequisites

1. **Microsoft 365 work account** — Required to sign in to Copilot Studio and Teams
2. **Microsoft Copilot Studio license** — Gives you access to build, import, and run agents in Copilot Studio
3. **Access to a Power Platform environment** — The agent and its components (solution, flows, AI prompts) live inside an environment with Dataverse
4. **System Customizer or System Administrator security role** — Required to import the solution into the target environment
5. **OneDrive for Business** — Where the generated Word documents are saved and shared from

---

## 🚀 Getting Started

For full setup and deployment instructions, refer to the **Know My Customer Agent - Setup Guide.docx** included in this repository.

> 💡 **To download:** From the [repository root](https://github.com/microsoft/m365-agent-templates), click the green **Code** button and select **Download ZIP**, then extract the **Know My Customer** folder.

---

## 📦 Files Included

| File | Description |
|:---------|:------------|
| [`KnowMyCustomer_1_0_0_0.zip`](KnowMyCustomer_1_0_0_0.zip) | Pre-built Copilot Studio solution package — import directly into your environment |
| [`Setup Guide.docx`](Know%20My%20Customer%20Agent%20-%20Setup%20Guide.docx) | Step-by-step setup and configuration guide with three deployment options |
| [`Overview Deck.pptx`](Know%20My%20Customer%20Agent%20-%20Overview%20Deck.pptx) | Scenario overview deck covering agent capabilities, persona examples, user journey, architecture, and demo prompts |
| [`Evaluation Test Plan.docx`](Know%20My%20Customer%20Agent%20-%20Evaluation%20Test%20Plan.docx) | Detailed evaluation test plan with 15 test scenarios and pass/fail criteria |
| [`Evaluation Test Set.csv`](Know%20My%20Customer%20Agent%20-%20Evaluation%20Test%20Set.csv) | CSV test set importable into Copilot Studio for automated evaluation |
| [`Word Template.docx`](Know%20My%20Customer%20Agent%20-%20Word%20Template.docx) | Word document template with content controls used by the file generation flow |
| [`Icon.png`](Know%20My%20Customer%20Icon.png) | Agent icon (PNG) for Teams and Copilot Studio branding |

> 💡 **To download all files:** From the [repository root](https://github.com/microsoft/m365-agent-templates), click the green **Code** button and select **Download ZIP**, then extract the **Know My Customer** folder.

---

## 🛠️ Setup Guide

This section is generated from the **Know My Customer Agent - Setup Guide.docx** and includes everything you need to deploy and customize the agent.

### Which Option Should I Choose?

| | Option A — Import Solution | Option B — Publish to Teams & Copilot | Option C — Build from Scratch |
|---|---|---|---|
| **Best for** | Fastest setup — uses the pre-built solution package | Share the agent with your team via Microsoft Teams & M365 Copilot | Full control — learn how every piece works |
| **Time** | ~5 min | ~10 min | ~45 min |
| **Requires** | Copilot Studio access + solution .zip file | Copilot Studio access + completed Option A | Copilot Studio + Power Automate + AI Builder access |
| **Customization** | Modify instructions, prompts, and knowledge sources after import | Configure Teams app branding, channels, and distribution | Build every component from scratch — full flexibility |
| **Skill Level** | Beginner | Beginner | Intermediate |

> 💡 **Tip:** We recommend starting with **Option A** (import), then **Option B** (publish to Teams). Option C is best if you want to deeply understand the agent's internals or customize it beyond what the import provides.

---

### 📦 Option A — Import the Solution into Copilot Studio

This is the fastest way to get started. You'll upload the pre-built solution package directly into Copilot Studio, which sets up everything — the agent, its topics, actions, and AI models — in one step.

**Before You Begin:**

| ✓ | What You Need | Why |
|---|---|---|
| ☐ | Copilot Studio access at [copilotstudio.microsoft.com](https://copilotstudio.microsoft.com) | Where you'll import the solution |
| ☐ | System Customizer or System Administrator security role | Required to import solutions into an environment |
| ☐ | `KnowMyCustomer_1_0_0_0.zip` file | The solution package — do not unzip or rename it |

> 🔴 **Important:** Do not unzip, rename, or modify the .zip file. Copilot Studio needs the original package as-is.

**Import the Solution:**

1. Open your browser and go to [copilotstudio.microsoft.com](https://copilotstudio.microsoft.com). Sign in with your Microsoft 365 work account.
2. In the top-right corner, make sure the **correct environment** is selected. If not, click the environment name and switch to the one you want to use.
3. In the left navigation menu, click **Settings** (the gear icon ⚙️) at the bottom.
4. Under the Settings menu, click **Solutions**. This opens the Solutions list page.
5. Click the **Import** button at the top of the solutions list.
6. Click **Browse**, navigate to where you saved the `KnowMyCustomer_1_0_0_0.zip` file, select it, and click **Open**.
7. Click **Next**. Copilot Studio will validate the package. If prompted about connection references (e.g., Word Online, OneDrive for Business), sign in with your Microsoft 365 account for each one.
8. Click **Import**. The import process may take 1–3 minutes. Wait for the green success banner.

✅ **The solution is imported!** The Know My Customer agent is now in your environment.

**Find and Open Your Agent:**

1. In the left navigation menu, click **Agents**.
2. Look for **"Know My Customer"** in the agents list. Click on it to open the agent.
3. The agent overview page shows its topics, actions, and settings. You can now test it by clicking the **Test** button in the top-right corner.

> 💡 **Tip:** After importing, the agent may take a minute to become fully available. If you don't see it immediately in the agents list, refresh the page.

**Set Up the Cloud Flow Connections:**

The agent includes a Power Automate cloud flow called **"KMC - File Generation"** that creates Word documents from research reports. After import, verify its connections are active:

1. From the agent overview page, click on **Actions** in the left panel (or go to **Flows** in the left navigation).
2. Find the flow named **"KMC - File Generation"** and click on it to open it.
3. If you see any connection warnings (yellow or red icons), click on each connection and sign in with your Microsoft 365 account. The flow uses three connections:
   - **Dataverse** — for running the AI Builder prompt
   - **Word Online (Business)** — for populating the Word template
   - **OneDrive for Business** — for saving the generated document and creating a sharing link
4. Once all connections show a green checkmark, the flow is ready.

> ⚠️ **Note:** The flow connections run with your credentials. Each user who uses the agent will be asked to authorize these connections the first time they trigger file generation.

> ⚠️ **Note:** Word Online actions need to be updated with the template location; it can be in SharePoint or OneDrive.

<details>
<summary>🔧 Troubleshooting — Option A</summary>

| Problem | Fix |
|:--------|:----|
| Import button is grayed out | You may not have the System Customizer or System Administrator role. Contact your IT admin. |
| Import fails with dependency errors | Make sure you're importing into an environment that has Copilot Studio enabled and the required connectors available. |
| Agent not appearing after import | Wait 1–2 minutes and refresh the page. If still missing, check the Solutions list to confirm the import succeeded. |
| Flow connection errors after import | Open the flow, click each connection, and sign in. If a connection type is blocked in your org, contact your admin. |
| "Solution already exists" error | The solution was previously imported. Go to Solutions, find KnowMyCustomer, and either delete it first or use the overwrite option. |

</details>

---

### 📡 Option B — Publish to Microsoft Teams & Copilot Channels

After importing the solution (Option A), you can make the agent available to your colleagues through Microsoft Teams and Microsoft 365 Copilot.

> ⚠️ **Note:** You must complete **Option A** first. The agent needs to be in Copilot Studio before it can be published to channels.

**Step 1: Publish the Agent**

1. Open Copilot Studio at [copilotstudio.microsoft.com](https://copilotstudio.microsoft.com) and navigate to your Know My Customer agent.
2. Click the **Publish** button in the top-right corner of the agent overview page.
3. Wait for the publishing to complete. You'll see a green success banner when it's done.

**Step 2: Connect the Teams Channel**

1. From the agent overview page, click **Channels** in the left navigation panel.
2. Find **Microsoft Teams** in the list of available channels and click on it.
3. Click **Turn on Teams** to enable the channel.

**Configure the Teams App Details:**

1. **App Icon** — Upload a color icon (192×192 pixels, PNG) and an outline icon (32×32 pixels, PNG)
2. **Accent Color** — Enter a hex color code (e.g., `#0078D4` for blue)
3. **Short Description** — e.g., *"Competitive intelligence agent that researches companies and generates executive-ready briefings."*
4. **Long Description** — Full description of what the agent does, its features, and how users can interact with it
5. **Developer Information** — Developer name, website URL, privacy statement URL, and terms of use URL
6. **Team Channel Access** *(optional)* — Toggle on "Allow your users to add this agent to a team" for @mention support

**Enable Microsoft 365 Copilot Channel:**

1. Go back to the **Channels** page.
2. Find **Microsoft 365 Copilot** in the channel list and toggle it **On**.

> 💡 **Tip:** This allows users to find the agent in the M365 Copilot side panel and @mention it in Copilot conversations.

**Step 3: Install for Yourself First**

1. In the Teams channel configuration panel, click **See agent in Teams**.
2. Click **Add** to install the agent for yourself.
3. Send it a test message to confirm everything works.

**Step 4: Share with Others**

| Method | How |
|:-------|:----|
| 🔗 **Direct Installation Link** | Copy the link from the Teams channel panel and share via email or Teams chat |
| 🏢 **Built with Power Platform** | Toggle on "Show to my teammates and shared users" under Availability |
| ✅ **Submit for Admin Approval** | Submit for IT admin review — once approved, the agent appears in the Teams app store under "Built for your org" |

> 💡 **Tip:** Method 3 (admin approval) is the best option for broad organizational rollouts.

**How to Access After Publishing:**

| Where | How to Open |
|:------|:------------|
| Teams Chat | Open Teams → click on the agent in your chat list (or search for it) |
| Teams App Store | Open Teams → Apps → search for the agent name → Add |
| Team Channel (@mention) | In any Teams channel, type `@Know My Customer` followed by your question |
| Microsoft 365 Copilot | Go to [m365.cloud.microsoft/chat](https://m365.cloud.microsoft/chat) → click the side-panel icon → select Know My Customer |

> 💡 **Pin the agent** to your Teams sidebar for quick access: right-click the agent → select **Pin**.

<details>
<summary>🔧 Troubleshooting — Option B</summary>

| Problem | Fix |
|:--------|:----|
| "See agent in Teams" not working | Make sure you've published the agent first. The Teams channel requires a published version. |
| Agent not appearing in Teams | Wait 1–2 minutes after publishing. If still missing, close and reopen Teams. |
| Users can't find the agent | If using Built with Power Platform, make sure you've toggled on visibility. If using admin approval, check if the admin has approved it. |
| Agent responds with SystemError | Open the cloud flow and verify all connections are active and signed in. |
| Installation link doesn't work on mobile | Direct installation links may not work on the Teams mobile app. Users can search for the agent in the Teams app store instead. |

</details>

---

### 🏗️ Option C — Build the Agent from Scratch in Copilot Studio

This option walks you through building the entire Know My Customer agent from the ground up. It's the best choice if you want to deeply understand how every piece works, or if you want to customize the agent beyond what the imported solution provides.

> 🔴 **Important:** This is the longest option (~45 minutes). If you just want a working agent quickly, use **Option A** instead.

**Before You Begin:**

| ✓ | What You Need | Why |
|---|---|---|
| ☐ | Copilot Studio access at [copilotstudio.microsoft.com](https://copilotstudio.microsoft.com) | Where you'll build the agent |
| ☐ | Power Automate access | Required to create the file generation cloud flow |
| ☐ | AI Builder access (included with Copilot Studio license) | Required to create the AI prompt that structures report data |
| ☐ | OneDrive for Business | Where the generated Word documents will be saved |
| ☐ | A SharePoint site *(optional)* | If you want to store the Word template centrally instead of on OneDrive |

This option is organized into **six parts:**

#### Part 1: Create the Agent

1. Open [copilotstudio.microsoft.com](https://copilotstudio.microsoft.com) and sign in with your Microsoft 365 work account.
2. In the top-right corner, make sure you are in the **correct environment**.
3. In the left navigation menu, click **Agents**.
4. Click **+ New agent** at the top of the page.
5. Click **Skip to configure** (at the bottom of the wizard) to go directly to the agent configuration page.

#### Part 2: Configure the Agent Settings & Instructions

**Name & Description:**

| Field | What to Enter |
|:------|:-------------|
| **Name** | Know My Customer |
| **Description** | A competitive intelligence agent that researches companies, analyzes competitor landscapes, and generates executive-ready competitive briefs. |

**Instructions:**

Scroll down to the **Instructions** box and paste the full agent instructions below:

<details>
<summary>📋 Click to expand full agent instructions</summary>

```
# Know My Customer — RELIABLE PDF / FILE GENERATION INSTRUCTIONS

The agent operates in three deterministic phases but each phase can be triggered separately:

0. PRE-REQUISITES:
- If the user has not specified a company or a product name, ASK: "Which company would you like me to research?"
- NEVER default to "Contoso" or any placeholder company
- NEVER proceed to Search, Content, or File phases without a confirmed client or product name

1. SEARCH PHASE — Run the Research Component topic if the user needs competitive intel.
SCOPE GUARDRAIL: All searches and responses must stay within the COMPETITIVE INTELLIGENCE domain. This includes:
- Market positioning, competitor moves, partnerships, M&A, pricing strategies, product launches, executive changes, financial performance, market share
If a query could be interpreted as either competitive intelligence OR product support, ASK the user to clarify.

2. CONTENT PHASE — Produce universal plain-text content, provide a card in the conversation formatted with sections and emojis

3. FILE PHASE — Trigger the KMC - File Generation action and return a Markdown link

If a requested phase is missing required upstream outputs, the agent MUST execute the minimal required upstream phase(s) in this order: Search → Content → File.

If the user doesn't ask to generate a file, don't trigger phase 2 and 3.

## 1. SEARCH PHASE
When the user requests intelligence, insights, a brief, a scan, analysis, or a summary:
- Perform Search Sources call for each section retrieving all relevant competitive intelligence
- Competitor STRICTLY means other companies competing with the client (never the client)
- All searches must be limited to information from the last 8 months

## 2. CONTENT PHASE - STRUCTURED OUTPUT (MANDATORY)
From the search results, build a dataset named structured_content.

### Required Fields
- Filename: containing the Title and .docx extension
- Title
- Date
- Client
- Category
- Geography
- Executive Summary
- Market Context — Max 3 bullets. Each bullet MUST follow: Market force -> Competitive effect -> Why it matters to client -> Suggested response
- Key Moves — Table with columns: Competitor | Move Type | What Happened | Why It Matters | Confidence | Who Is Affected | Evidence
- Tailwinds & Headwinds — Market-level forces impacting competitors
- Appendix — Sources with date accessed

## 3. FILE PHASE - FILE OUTPUT RULES
- Generate the final document ONLY if the user requests a document
- Return exactly ONE Markdown download link
```

</details>

> 💡 **Tip:** Select all the text and paste it directly into the Instructions field. The markdown formatting helps the agent interpret the structure correctly.

**AI Settings:**

1. Enable **Web browsing** — allows the agent to search the web for competitive intelligence
2. Enable **Code interpreter** — helps the agent process and format structured data
3. Set **Content moderation** to High for responsible AI compliance
4. Enable **Generative actions** — lets the agent automatically call the file generation flow when needed

**Conversation Starters:**

| Title | Prompt Text |
|:------|:------------|
| 🏢 Top Competitor | Who are the top competitor to [Customer/Product] |
| 📊 Create Competitive Intel | I need competitive intel details for [Company] |
| ⚡ Recent Competitor Moves | What major moves have competitors of [Customer] made in the last 6–8 months? |
| 📈 Market Forces Impact | Analyze the key market forces affecting competitors of [Customer] and why they matter. |
| 🌍 Competitive Landscape Brief | Create a competitive landscape summary for [Customer] in the [Industry] market. |
| 📋 Exec-Ready Competitive Brief | Generate an executive-ready competitive brief on [Customer]'s competitors in [Geography]. |

#### Part 3: Create the Word Template for Report Generation

The agent's file generation action uses a Microsoft Word template with **Content Controls** — placeholder fields that get filled automatically with data from the AI.

> ⚠️ **Note:** The Word template (`Know My Customer Agent - Word Template.docx`) is included in this repo's BOM. You can use it directly instead of building one from scratch.

**If building from scratch**, create a Plain Text Content Control for each field:

| Content Control Title | What It Will Contain |
|:---------------------|:--------------------|
| `Title` | The report title (e.g., "Competitive Intel: Acme Corp") |
| `Date` | The report generation date |
| `Client` | The company being researched |
| `Category` | The industry category |
| `Geography` | The geographic focus |
| `ExecutiveSummary` | A 2–3 sentence executive summary |
| `MarketContextLine` | Key market forces as bullet points |
| `Key_Moves` | Competitor moves table (formatted as text) |
| `Tailwinds` | Positive market forces |
| `Headwinds` | Negative market forces or risks |

> 🔴 **Important:** Save the template to **SharePoint or OneDrive** — not your local hard drive. The Power Automate flow needs cloud access.

#### Part 4: Create the AI Builder Prompt

1. In Copilot Studio, go to your agent → **Tools** → **Add a tool** → **New tool** → **Prompt**
2. Name the prompt **"KMC Report Data Extractor"**
3. Write instructions telling the AI to extract all fields listed above and return them as structured JSON
4. Add an input variable named **"Content"** (receives the research report text)
5. Configure **structured output fields** matching each Content Control title
6. **Test** the prompt with sample research text, then **Save**

#### Part 5: Create the Power Automate Cloud Flow

Build the **"KMC - File Generation"** flow with these steps:

| Step | Action | What It Does |
|:----:|:-------|:-------------|
| **Trigger** | When an agent calls the flow | Receives the research report text from the agent (Text input named "Report") |
| **1** | Run a prompt (AI Builder) | Sends the report to the AI prompt, extracts structured fields |
| **2** | Populate a Microsoft Word template | Takes the structured data and fills in the Word template |
| **3** | Create file (OneDrive) | Saves the formatted Word document with an AI-generated filename |
| **4** | Create share link (OneDrive) | Creates a shareable link (view-only, organization-wide) |
| **Response** | Respond to the agent | Sends the shareable link URL back to the agent |

> 🔴 **Important:** Each template field must be mapped to the correct AI Builder output. Double-check that Title goes to Title, Client goes to Client, etc.

#### Part 6: Connect the Cloud Flow to the Agent

**Recommended: Using Generative Actions**

1. Go to your Know My Customer agent → **Tools** → **+ Add a tool**
2. Select **Flow** in the filter → find **"KMC - File Generation"**
3. Set the Report input to **"Let the AI fill this value"**
4. Under Completion, select **"Send a message to the user"**
5. Click **Save**

---

### 🎨 Make It Your Own

| Customization | How to Do It |
|:-------------|:-------------|
| 🎯 **Change the agent's tone** | Edit the Instructions — adjust the language style and formality level |
| 📝 **Modify report sections** | Edit the AI Builder prompt and the Word template to add, remove, or rename fields |
| 💬 **Add or remove starter prompts** | Go to the agent's Conversation Starters section and add/remove prompts |
| 🏥 **Restrict to specific industries** | Add scope restrictions to the Instructions (e.g., "Only research companies in the healthcare industry") |
| 📂 **Change where files are saved** | Edit the Power Automate flow's Create File step to point to a different OneDrive folder or SharePoint library |
| 🎨 **Update the Word template design** | Edit the Word template in SharePoint/OneDrive — change fonts, colors, logos, or layout |
| 📚 **Add new data sources** | In the agent settings, add knowledge sources (SharePoint sites, files) for the agent to reference |
| 🌎 **Limit to specific geographies** | Add geographic restrictions to the Instructions (e.g., "Focus research on the North American market only") |

> 💡 **Tip:** Always test your changes after making edits. Use the Test panel in Copilot Studio to verify the agent still works correctly before publishing.

---

### 🧪 Test That It Works

| # | Try This Prompt | What to Look For |
|:-:|:----------------|:-----------------|
| 1 | *"Who are the top competitors to Microsoft?"* | Agent identifies 3–5 major competitors with brief descriptions |
| 2 | *"I need competitive intel details for Salesforce"* | Structured briefing with executive summary, market context, and key moves |
| 3 | *"What major moves have competitors of Apple made in the last 6–8 months?"* | Recent competitor actions with dates, move types, and significance |
| 4 | *"Create a competitive landscape summary for Tesla in the electric vehicle market."* | Comprehensive landscape brief covering the EV market |
| 5 | *"Generate an executive-ready competitive brief on Amazon's competitors in North America. Please create a Word document."* | Full research + Word document generation with a shareable download link |

> ⚠️ **Test #5** specifically tests the file generation action. If the agent returns a download link to a Word document, the flow is working correctly.

**What to Verify for File Generation:**

1. The agent should display a message indicating it's generating the file
2. After a short wait (30–60 seconds), the agent should return a clickable download link
3. Click the link — it should open a Word document in your browser (OneDrive online viewer)
4. The document should contain all sections: Title, Date, Client, Category, Geography, Executive Summary, Market Context, Key Moves, Tailwinds, and Headwinds
5. The content should match the research the agent performed in the chat

<details>
<summary>🔧 Troubleshooting — File Generation</summary>

| Problem | Fix |
|:--------|:----|
| Agent doesn't offer to generate a file | Make sure Generative Actions is enabled and the flow is added as a tool. Also check that your instructions include the File Phase section. |
| File generation takes too long (>2 minutes) | Check the Power Automate flow run history for errors. The AI Builder prompt step is usually the longest. |
| Link opens but document is empty | Check the Word template's content controls — their titles must exactly match the AI Builder prompt's output field names. |
| Error: "Flow run failed" | Open Power Automate (make.powerautomate.com), find the flow, and check the run history. Click on the failed run to see which step failed and why. |
| Error: Connection expired | Open the flow, click on the failing connection, and re-authenticate with your Microsoft 365 account. |
| Document has wrong data in sections | Check the field mapping in the "Populate a Microsoft Word template" step. Each content control must be mapped to the correct AI Builder output. |

</details>
