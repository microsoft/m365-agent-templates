<p align="center">
  <img src="AI%20Learning%20Advisor.png" alt="AI Learning Advisor Agent" width="120">
</p>

<h1 align="center">AI Learning Advisor Agent</h1>

> **Your personal AI teaching assistant for the Microsoft stack** — delivering step-by-step guidance, personalized learning plans, and structured troubleshooting grounded in official Microsoft Learn documentation.

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

The **AI Learning Advisor Agent** is a Microsoft 365 Copilot declarative agent that teaches, troubleshoots, and guides users across Microsoft's AI and low-code stack — including M365 Copilot Agent Builder, Copilot Studio, Power Platform (Power Apps, Power Automate, AI Builder, Dataverse), Azure, and Entra ID. It explains concepts in plain language, builds personalized learning plans, recommends the right tool for any scenario, provides step-by-step build guides, and walks users through structured troubleshooting.

The agent leverages **scoped web search** locked to two trusted public domains — `learn.microsoft.com` and `microsoft.github.io/copilot-camp` — ensuring every answer is grounded in current, authoritative first-party Microsoft documentation. It adapts its depth and vocabulary for Beginner, Maker, or Pro Code Developer audiences, always ending with actionable next steps and citation-backed references.

---

## ✨ Features

| Feature | Description |
|:--------|:------------|
| 🎓 **Audience Adaptation** | Detects user level (Beginner / Maker / Pro Dev) from prompt signals and tailors tone, vocabulary, and depth accordingly. |
| 📚 **Personalized Learning Plans** | Generates 4-phase curricula — Get Hands-On Today → Build Your First Real Thing → Level Up → Go Pro — with Microsoft Learn modules and Copilot Developer Camp exercises. |
| ⚖️ **What to Build Where** | Recommends the right tool (Agent Builder vs. Copilot Studio vs. Power Automate vs. Power Apps vs. AI Builder) with reasons and step-by-step build instructions. |
| 🩺 **Structured Troubleshooting** | Diagnoses issues with a Cause → Fix → Verify approach for misbehaving agents, topics, and flows in Copilot Studio and Power Platform. |
| 🆕 **What's New Digests** | Summarizes recent updates across Copilot Studio and M365 Copilot, grouped by product, with "Try First" recommendations tailored to user level. |
| 💡 **Concept Explainer** | Breaks down AI and platform concepts (MCP, agentic AI, autonomous agents, multi-agent orchestration) calibrated to audience level with comparison tables. |
| 🔗 **Citation-Backed Answers** | Every response includes at least one deep Microsoft Learn link — no invented URLs, no open-web noise. |
| 🚀 **Six Conversation Starters** | Curated launch prompts: Create a Learning Plan, Troubleshoot, What To Use When, Key Concepts, What's New, Agentic AI Decoded. |

---

## ⚡ How It Works

| Step | What Happens |
|:----:|:-------------|
| **1** | 💬 User asks a question in Microsoft 365 Copilot Chat or Teams — e.g., "Steps to create a Declarative Agent" or "Create a learning plan to build my first Copilot Studio agent." |
| **2** | 🔍 The agent retrieves and reasons over relevant documentation from Microsoft Learn and Copilot Developer Camp via scoped web search. |
| **3** | 🧠 The agent synthesizes a structured, audience-appropriate answer with step-by-step guidance, build recommendations, or troubleshooting fixes. |
| **4** | 📋 A complete response is delivered with citation-backed references, actionable next steps, and a "What's Next?" follow-up suggestion. |

---

## ✅ Prerequisites

1. **Microsoft 365 Copilot License** — Required for all users interacting with the agent and to access the scoped web search capability
2. **Microsoft 365 E3, E5, or Business Premium** — Base subscription for Microsoft 365 services
3. **Sideloading Enabled in Teams** — A Teams admin must enable **Upload custom apps** in the Teams Admin Center under **Setup Policies > Global**
4. **Microsoft Teams** — Desktop or web client to sideload and access the agent
5. **No additional data permissions required** — The agent uses only public Microsoft Learn and Copilot Developer Camp content via scoped web search; no SharePoint, OneDrive, or tenant data access is needed

---

## 🚀 Getting Started

For full setup and deployment instructions, refer to the **AI Learning Advisor - Setup Guide.pdf** included in this repository.

> 💡 **To download:** From the [repository root](https://github.com/microsoft/m365-agent-templates), click the green **Code** button and select **Download ZIP**, then extract the **AI Learning Advisor** folder.

---

## 📦 Documents Included

| Document | Description |
|:---------|:------------|
| `AI Learning Advisor - Setup Guide.pdf` | Step-by-step setup and configuration guide covering all deployment options. |
| `AI Learning Advisor - Evaluation Test Plan.pdf` | Detailed evaluation test plan with pass/fail criteria for validating the agent. |
| `AI Learning Advisor Agent - Overview Deck.pptx` | Scenario overview deck — agent summary, personas, user journey, architecture, and demo prompts. |
| `AI Learning Advisor.png` | The agent's icon image. |
| `AI Learning Advisor.zip` | The agent package — upload this directly into Teams (Option B). |

> 💡 **To download all files:** From the [repository root](https://github.com/microsoft/m365-agent-templates), click the green **Code** button and select **Download ZIP**, then extract the **AI Learning Advisor** folder.

---

## 🛠️ Setup Guide

This section is generated from the **AI Learning Advisor - Setup Guide.docx** and includes all deployment options for getting the agent up and running.

### Which Option Should I Choose?

| | Option A — Microsoft Marketplace | Option B — Import into Teams | Option C — Build in Agent Builder | Option D — Clone & Deploy (VS Code) |
|---|---|---|---|---|
| **Best for** | Easiest install, ready-to-use, no admin needed | Fast local install, non-technical users | Full control, no zip needed, no admin permissions | Developers who want source-code control, ALM, CI/CD |
| **Time** | ~10 min | ~5 min | ~15 min | ~20 min |
| **Requires** | M365 account with Agent Library access on Microsoft Marketplace | Teams + admin-enabled custom app uploading + agent `.zip` | Agent Builder access via M365 Copilot | VS Code + M365 Agents Toolkit + access to source repo |
| **Customization** | Guided configuration in the Library | Edit JSON, re-zip, re-upload | Full no-code editing | Full source-code editing with Git workflow |
| **Skill Level** | Beginner | Beginner | Beginner / Maker | Pro Code Developer |

---

### 🏪 Option A — Microsoft Marketplace (Agent Library)

The fastest way to get started — install directly from the Microsoft Marketplace Agent Library.

1. Open the **Microsoft Marketplace** at [https://marketplace.microsoft.com](https://marketplace.microsoft.com)
2. Search for **"AI Learning Advisor"** in the Agent Library
3. Click **Get it now** and sign in with your Microsoft 365 account
4. Review the agent's permissions and click **Add**
5. Open **Microsoft 365 Copilot Chat** or **Microsoft Teams**
6. Find **AI Learning Advisor** in your agents list and start chatting

> ⚠️ Availability in the Agent Library depends on your tenant's admin policies. If you don't see the agent, ask your IT admin to enable Agent Library access or use Option B instead.

---

### 📦 Option B — Import into Teams

Upload the agent package directly into Microsoft Teams — no coding required.

**Prerequisites:**
- Admin-enabled custom app sideloading in Teams
- The `AI Learning Advisor.zip` package from this repository

**Steps:**

1. Download the `AI Learning Advisor.zip` file from this repository
2. Open **Microsoft Teams** (desktop or web)
3. Click **Apps** in the left sidebar
4. Click **Manage your apps** → **Upload an app**
5. Select **Upload a custom app** (or **Upload an app to your org's app catalog** if you're an admin)
6. Browse to and select the `AI Learning Advisor.zip` file
7. Click **Add** when prompted to confirm
8. The agent will appear in your Teams apps — open it to start chatting

> ⚠️ If you don't see the "Upload a custom app" option, your Teams admin needs to enable sideloading. Go to **Teams Admin Center** → **Setup Policies** → **Global** → toggle **Upload custom apps** to **On**.

<details>
<summary>🔧 Troubleshooting — Import Issues</summary>

| Issue | Solution |
|-------|----------|
| "Upload a custom app" not visible | Ask your Teams admin to enable sideloading in Setup Policies |
| Upload fails with validation error | Ensure you're using the original `.zip` — do not unzip and re-zip |
| Agent doesn't respond | Verify your Microsoft 365 Copilot license is active |
| Agent not appearing after upload | Refresh Teams or sign out and back in |

</details>

---

### 🏗️ Option C — Build in Agent Builder

Recreate the agent from scratch using Agent Builder in Microsoft 365 Copilot — gives you full control over instructions and knowledge sources.

**Prerequisites:**
- Microsoft 365 Copilot license with Agent Builder access
- No admin permissions required

**Steps:**

1. Navigate to [https://m365.cloud.microsoft/copilot](https://m365.cloud.microsoft/copilot)
2. Click **Create** in the right panel, or select **Agents** → **New agent**
3. Set the agent name to **AI Learning Advisor**
4. Upload the agent icon (`AI Learning Advisor.png`)
5. Paste the agent instructions into the **Instructions** field

<details>
<summary>📝 Full Agent Instructions (click to expand)</summary>

Copy and paste the complete instructions from the **AI Learning Advisor - Setup Guide.docx** into the Instructions field. The instructions cover 7 skills: Audience Adaptation, What to Build Where, Recommend & Build, Troubleshoot, Learning Plan, News/What's New, and Explain a Concept.

Key instruction sections:
- **Purpose** — Define the agent as a friendly expert teaching assistant
- **Style** — Friendly, encouraging, professional; 150–350 words; Markdown with emoji headers
- **Audience Levels** — Beginner, Maker, Pro Code Developer
- **Skills 1–7** — Each skill with specific output contracts
- **Link Rules** — Ground all claims in Microsoft Learn and Copilot Developer Camp
- **Self-Check** — Validation criteria for every response

</details>

6. Under **Knowledge**, add web search sources:
   - `https://learn.microsoft.com/en-us/`
   - `https://microsoft.github.io/copilot-camp/`
7. Add **Conversation Starters**:
   - 🌱 Create a Learning Plan
   - 🛠️ Troubleshoot
   - ⚖️ What To Use When
   - 🧠 Key Concepts
   - 🆕 What's New
   - 🤖 Agentic AI Decoded
8. Click **Create** to publish the agent
9. Test by asking: "Create a learning plan to take me from beginner to building my first Copilot Studio agent."

> ⚠️ The agent uses **scoped web search only** — do not enable OneDrive/SharePoint, Email, or other capabilities unless extending the agent for your organization.

---

### 💻 Option D — Clone & Deploy with VS Code

For pro-code developers who want source-code control, CI/CD pipelines, and Git-based ALM.

**Prerequisites:**
- [Visual Studio Code](https://code.visualstudio.com/) with the **M365 Agents Toolkit** extension installed
- A Microsoft 365 developer account with Copilot license
- Git and Node.js installed locally

**Steps:**

1. Clone the repository:
   ```bash
   git clone https://github.com/microsoft/m365-agent-templates.git
   cd m365-agent-templates/AI\ Learning\ Advisor
   ```
2. Open the folder in VS Code
3. Install the **M365 Agents Toolkit** extension if not already installed
4. Sign in to your Microsoft 365 account via the Agents Toolkit sidebar
5. Press **F5** or click **Preview Your Agent** in the Agents Toolkit panel
6. Teams will open with the agent sideloaded — test your changes in real-time
7. Edit the declarative agent manifest and instructions as needed
8. Deploy using the Agents Toolkit **Provision** and **Deploy** commands

> ⚠️ Ensure your Microsoft 365 tenant has sideloading enabled for development. The Agents Toolkit handles app registration and manifest packaging automatically.

<details>
<summary>🔧 Troubleshooting — VS Code Issues</summary>

| Issue | Solution |
|-------|----------|
| "Agents Toolkit" extension not found | Search for "Teams Toolkit" in VS Code marketplace — it's been renamed to M365 Agents Toolkit |
| Sign-in fails | Ensure you're using a work/school account with a Copilot license, not a personal Microsoft account |
| Preview doesn't launch | Check that sideloading is enabled and your account has the correct permissions |
| Changes not reflecting | Stop and restart the preview — some changes require a fresh sideload |

</details>

---

### 🎨 Make It Your Own

| What to Customize | How | Options A/B/C/D |
|:------------------|:----|:---------------:|
| 📝 **Agent Instructions** | Edit the system prompt to adjust tone, add skills, or narrow scope | C, D |
| 🌐 **Knowledge Sources** | Add more web search domains (up to 4) or add SharePoint/OneDrive | C, D |
| 💬 **Conversation Starters** | Change the 6 starter prompts to match your team's common questions | C, D |
| 🎨 **Agent Name & Icon** | Rebrand to match your org (e.g., "Contoso Tech Advisor") | A, B, C, D |
| 📖 **Internal Docs** | Add SharePoint sites with internal runbooks or platform standards | C, D |
| 🔌 **Copilot Connectors** | Connect to ServiceNow, Confluence, or other knowledge bases | C, D |

---

### 🧪 Test That It Works

| # | Prompt | What to Check | Expected Result |
|:-:|:-------|:--------------|:----------------|
| 1 | "Create a learning plan to take me from beginner to building my first Copilot Studio agent." | Returns a structured, phased plan | 4-phase learning plan with Microsoft Learn links and a clear next step 📚 |
| 2 | "My Copilot Studio topic isn't triggering — help me troubleshoot it?" | Asks for context, then provides fixes | Up to 3 ranked Cause → Fix → Verify suggestions with a Learn link 🛠️ |
| 3 | "What's the difference between Agent Builder and Copilot Studio and which should I use when?" | Comparison with recommendation | Agent Builder vs. Copilot Studio comparison table with recommendation and Learn link ⚖️ |
| 4 | "Explain MCP (Model Context Protocol) like I am new to AI and why should I care as a maker?" | Beginner-friendly explanation | Plain-language explanation with analogy, why-it-matters, and Learn link 🧠 |
| 5 | "What's new in Copilot Studio and M365 Copilot and what should I try first?" | Grouped updates with recommendations | What's New items grouped by product with a Try First section and Learn links 🆕 |

> 📋 For a comprehensive evaluation, see the **AI Learning Advisor - Evaluation Test Plan.pdf** included in this repository.
