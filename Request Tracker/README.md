<h1 align="center">
  <img src="Request%20Tracker%20Icon.png" alt="" width="48">&nbsp;&nbsp;Request Tracker Agent
</h1>

> **Your team's single pane of glass for internal requests** — submit, track, escalate, and resolve requests across departments through a conversational interface in Microsoft Teams.

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
- [Setup Guide](#%EF%B8%8F-setup-guide)

---

## 💡 Overview

The **Request Tracker Agent** is a Custom Agent built in Microsoft Copilot Studio that provides a single, intelligent conversational interface to submit, track, escalate, and resolve internal requests across departments — all from a chat window in Microsoft Teams or Microsoft 365 Copilot. Whether it's IT, HR, Facilities, Finance, or Security, employees can manage their requests without navigating portals or spreadsheets.

The agent is powered by a **Microsoft Dataverse** table as its system of record and uses **Power Automate** cloud flows to create, read, update, and bulk-load request records. It supports natural-language search and filtering through a Dataverse knowledge source with semantic search, AI-driven auto-categorisation and priority suggestion, and interactive **Adaptive Card** forms for creating and editing requests — complete with built-in duplicate detection to prevent redundant tickets.

---

## ✨ Features

| Feature | Description |
|:--------|:------------|
| 🔍 **Search & Query Requests** | Find, filter, and analyze requests by keywords, status, priority, assignee, date, or any combination using natural language |
| 📊 **Summarize & Report** | Get counts, summaries, breakdowns, and trends across requests (e.g., "how many high priority requests are blocked?") |
| ➕ **Create a Request** | Submit a new request with an auto-populated Adaptive Card form — the agent checks for duplicates before creating |
| ✏️ **Update a Request** | Search for an existing request, select it, and edit any field via a pre-populated form with before/after confirmation |
| 🤖 **AI-Driven Auto-Categorisation** | Intelligent priority suggestion and category classification powered by AI Builder prompts |
| 🔔 **Power Automate Workflows** | Automated approvals, notifications, nudges, and weekly digests via Power Automate cloud flows |
| 💬 **Conversational Interface** | Fully accessible via Microsoft Teams chat or Microsoft 365 Copilot — no portal navigation required |
| 🗃️ **Sample Data Loader** | Admin function to bulk-load demo records for testing and evaluation purposes |

---

## ⚡ How It Works

| Step | What Happens |
|:----:|:-------------|
| **1** | 💬 Employee asks the agent in Teams — e.g., *"I need a new monitor"* or *"What's the status of my request?"* |
| **2** | 🔍 Agent identifies the intent, gathers any missing details, and searches existing requests for duplicates or matches |
| **3** | ⚙️ Request is created only if needed — the agent calls the appropriate Power Automate flow to write to the Dataverse table |
| **4** | ✅ Structured response is returned to the user with rich, emoji-enhanced formatting showing status, priority, assignee, and more |

---

## ✅ Prerequisites

1. **Microsoft 365 work account** — Required to sign in to Copilot Studio and Teams
2. **Microsoft Copilot Studio license** — Gives you access to build, import, and run agents in Copilot Studio
3. **Access to a Power Platform environment** — The agent and its components (Dataverse table, cloud flows) live inside an environment
4. **System Customizer or System Administrator security role** — Required to import solutions into the target environment
5. **Microsoft 365 Copilot license** *(optional)* — Required only if you want users to access the agent through the Microsoft 365 Copilot chat interface

---

## 🚀 Getting Started

For full setup and deployment instructions, refer to the **Request Tracker Agent - Setup Guide.pdf** included in this repository.

> 💡 **To download:** From the [repository root](https://github.com/microsoft/m365-agent-templates), click the green **Code** button and select **Download ZIP**, then extract the **Request Tracker** folder.

---

## 📦 Files Included

| File | Description |
|:---------|:------------|
| [`RequestTrackerAgent_1_0_0_0.zip`](RequestTrackerAgent_1_0_0_0.zip) | Pre-built Copilot Studio solution package — import directly into your environment |
| [`Setup Guide.pdf`](Request%20Tracker%20Agent%20-%20Setup%20Guide.pdf) | Complete setup and configuration guide with three deployment options |
| [`Overview Deck.pptx`](Request%20Tracker%20Agent%20-%20Overview%20Deck.pptx) | Scenario overview with features, architecture, personas, user journey, and demo prompts |
| [`Evaluation Test Plan.docx`](Request%20Tracker%20Agent%20-%20Evaluation%20Test%20Plan.docx) | Detailed evaluation test plan with pass/fail criteria |
| [`Evaluation Test Set.csv`](Request%20Tracker%20Agent%20-%20Evaluation%20Test%20Set.csv) | 10-question evaluation test set importable into Copilot Studio |
| [`Icon.png`](Request%20Tracker%20Icon.png) | Agent icon for Teams and Copilot Studio branding |
| [`Eval Sets/`](Eval%20Sets/) | 7 granular CSV evaluation sets covering topic routing, create/update flows, search, edge cases, negative cases, and multi-turn conversations |
| [`Sample Data/`](Sample%20Data/) | Sample data files including Employee FAQ and event planning data for testing |

> 💡 **To download all files:** From the [repository root](https://github.com/microsoft/m365-agent-templates), click the green **Code** button and select **Download ZIP**, then extract the **Request Tracker** folder.

---

## 🛠️ Setup Guide

This section is generated from the **Request Tracker Agent - Setup Guide.pdf** and provides three deployment options.

### Which Option Should I Choose?

| | Option A — Import Solution | Option B — Publish to Teams & Copilot | Option C — Build from Scratch |
|---|---|---|---|
| **Best for** | Fastest setup — uses the pre-built solution package | Share the agent with your team via Teams & M365 Copilot | Full control — learn how every piece works |
| **Time** | ~5 min | ~10 min | ~45 min |
| **Requires** | Copilot Studio access + solution `.zip` file | Copilot Studio access + completed Option A | Copilot Studio + Power Automate access |
| **Customization** | Full (edit after import) | N/A (publishing step) | Full (you build everything) |
| **Skill Level** | Beginner | Beginner | Intermediate |

> 💡 **Tip:** Most users should start with **Option A**, then **Option B**. Option C is for deep customization and learning.

---

### 📦 Option A — Import the Solution into Copilot Studio

This is the fastest way to get started. You'll upload the pre-built solution package directly into Copilot Studio, which sets up everything — the agent, its topics, actions, and AI models — in one step.

**Before You Begin:**

| ✓ | What You Need | Why |
|---|---|---|
| ☐ | Copilot Studio access at [copilotstudio.microsoft.com](https://copilotstudio.microsoft.com) | Where you'll import the solution |
| ☐ | System Customizer or System Administrator security role | Required to import solutions |
| ☐ | `RequestTrackerAgent_1_0_0_0.zip` file | The solution package — do not unzip or rename it |

> 🔴 **Important:** Do not unzip, rename, or modify the `.zip` file. Copilot Studio needs the original package as-is.

**Import the Solution:**

1. Open your browser and go to [copilotstudio.microsoft.com](https://copilotstudio.microsoft.com). Sign in with your Microsoft 365 work account.
2. Check the environment selector in the top-right corner. If you need a different environment, click the selector and switch to the correct one.
3. In the left navigation pane, click **Settings** (the gear icon ⚙️).
4. Under Settings, click **Solutions**.
5. Click the **Import** button at the top of the Solutions page.
6. Click **Browse**, navigate to the `RequestTrackerAgent_1_0_0_0.zip` file, select it, and click **Open**.
7. Click **Next**. If prompted for connection references (e.g., Microsoft Dataverse), sign in with your Microsoft 365 account for each one.
8. Click **Import** and wait for the green success banner to appear. This may take 1–2 minutes.

✅ **The solution is imported!** The agent, topics, flows, and AI models are now in your environment.

**Find and Open Your Agent:**

1. In the left navigation pane, click **Agents**.
2. Look for **Request Tracker DB** in the agents list. Click on it to open.
3. You'll see the agent's overview page with its topics, actions, and settings.

**Set Up the Cloud Flow Connections:**

The Request Tracker Agent uses four Power Automate cloud flows to interact with Dataverse. After importing, you need to ensure the connections are authorized.

1. Open the agent and navigate to the **Actions** panel (or click **Tools** in the left navigation).
2. You should see the following flows listed:

| Flow Name | What It Does |
|---|---|
| Add a New Request Tracker Item | Creates a new request record in the Dataverse table |
| Request Tracker Get Row from Dataverse | Fetches a specific request's full details by Record ID |
| Update Request Tracker Item in Dataverse | Updates an existing request's fields |
| Request Tracker Add Sample Data to Dataverse | Bulk-loads sample/demo records for testing |

3. Click on each flow to open it. If you see a warning about connections, click the connection link and sign in with your Microsoft 365 account.
4. All flows use the Microsoft Dataverse connector. Verify that each flow shows a green checkmark next to the connection.

> ⚠️ **Note:** The flows run using your credentials (invoker mode). Each user who interacts with the agent will be prompted to authorize the Dataverse connection on first use.

<details>
<summary>🔧 Troubleshooting — Option A</summary>

| Problem | Fix |
|---|---|
| Import button is grayed out | You need the System Customizer or System Administrator security role. Contact your Power Platform admin. |
| Import fails with dependency errors | Ensure the environment has Copilot Studio and Dataverse provisioned. Try a different environment. |
| Agent not appearing after import | Wait 1–2 minutes and refresh the page. The agent may take a moment to appear. |
| Flow connection errors | Open each flow individually and re-authenticate the Dataverse connection. |
| "Solution already exists" message | Choose **Overwrite** to update the existing solution, or delete the old one first. |

</details>

---

#### 🔐 Configure Dataverse Table Permissions for Agent Users

The Request Tracker Agent uses Power Automate cloud flows that run in **invoker mode** — meaning each user's own credentials are used when reading or writing data. For users to successfully create, update, or search requests through the agent, they must have the correct **Dataverse security role** assigned to their account.

By default, only users with the **System Administrator** or **System Customizer** roles can access custom Dataverse tables. You need to either create a dedicated security role or modify an existing one to grant your team the right permissions on the Request Tracker table.

**What Permissions Are Needed:**

| Permission | Level | Why It's Needed |
|---|---|---|
| Create | Organization | Allows creating new request records via the agent |
| Read | Organization | Allows searching, querying, and viewing all request records |
| Write | Organization | Allows updating existing request records |
| Delete | Organization | Allows removing request records (admin cleanup) |
| Append | Organization | Required by Dataverse when adding related records |
| Append To | Organization | Required by Dataverse when other records reference this table |

> ⚠️ **Note:** Organization-level means the user can access all records in the table, not just their own. This is important because users need to see requests from other people (e.g., "show me all high-priority requests"). If you want to restrict users to only see their own requests, set the level to **User** instead.

**Step-by-Step: Create a Security Role**

1. Open your browser and go to **admin.powerplatform.microsoft.com**. Sign in with your Microsoft 365 admin account.
2. In the left navigation pane, click **Environments**. Find and click on the environment where you imported the Request Tracker solution.
3. In the environment details page, click **Settings** in the top command bar.
4. In the Settings page, expand the **Users + permissions** section in the left panel. Click **Security roles**.
5. Click **+ New role** in the top command bar to create a new security role.
6. Fill in the role details:
   - **Role Name:** `Request Tracker User`
   - **Business Unit:** (leave as default — your root business unit)
   - **Description:** Grants permissions to create, read, update, and delete records in the Request Tracker Dataverse table via the agent.
   - **Member's privilege inheritance:** Direct User (Basic) access level and Team privileges (the default)
7. Click **Save**. The role is created and you'll see the role's privileges page.

**Step-by-Step: Add Table Permissions to the Role**

1. After saving the new role, you'll see the privileges editor with a search bar at the top. Type **Request Tracker** in the search bar to find the custom table.
2. The Request Tracker table will appear in the results. You'll see a row of permission columns: Create, Read, Write, Delete, Append, and Append To.
3. Click on each permission icon to set it to **Organization** level (the full green circle). Set all six permissions: **Create**, **Read**, **Write**, **Delete**, **Append**, and **Append To**.
4. Click **Save + close** in the top command bar to save the role.

> 💡 **Tip:** Each click cycles through permission levels: None → User → Business Unit → Parent: Child Business Units → Organization. Keep clicking until the circle is fully filled. You can also right-click a cell to see a dropdown of all available levels.

**Step-by-Step: Assign the Role to Users**

1. Go back to **Settings → Users + permissions → Users** in the Power Platform Admin Center.
2. Find the user you want to grant access to. Use the search bar to search by name or email.
3. Click on the user's name to open their details.
4. Click **Manage security roles** in the top command bar.
5. In the security roles panel, search for **Request Tracker User** and check the box next to it.
6. Click **Save**. The user now has the correct permissions.
7. Repeat steps 2–6 for each additional user who needs access to the agent.

> 💡 **Tip:** For large teams, consider assigning the security role to a **Microsoft Entra security group** instead of individual users. Go to Users + permissions → Teams, create a new team linked to an Entra security group, and assign the "Request Tracker User" role to the team. All members of that group will automatically inherit the permissions.

> ⚠️ **Note:** Users will also need the **Basic User** role (or equivalent) to sign in to the environment. Most users already have this. If a user gets an "access denied" error, check that they also have the Basic User role assigned.

<details>
<summary>🔧 Troubleshooting — Dataverse Permissions</summary>

| Problem | Fix |
|---|---|
| User gets "You do not have permission" error | The user is missing the Request Tracker User security role. Assign it via Power Platform Admin Center → Users. |
| "Request Tracker" table not showing in security role editor | Search for the table's internal name (may have a publisher prefix like `cr_xxx_requesttracker`). |
| User can search but cannot create/update requests | The user has Read but is missing Create and/or Write. Edit the security role to add those permissions. |
| Security roles page is not accessible | You need the System Administrator role to manage security roles. Contact your Power Platform admin. |
| Changes to role don't take effect immediately | Security role changes can take up to 15 minutes. Ask the user to sign out and sign back in, then try again. |

</details>

---

### 📡 Option B — Publish to Microsoft Teams & Copilot Channels

After importing the solution (Option A), you can make the agent available to your colleagues through Microsoft Teams and Microsoft 365 Copilot.

> ⚠️ **Note:** You must complete **Option A** first. The agent must be imported before you can publish it.

**Step 1: Publish the Agent**

1. Open the **Request Tracker** agent in Copilot Studio.
2. Click the **Publish** button in the top-right corner of the agent page.
3. Wait for the publishing process to complete. A success banner will appear.

**Step 2: Connect the Teams Channel**

1. From the agent overview page, click **Channels** in the left navigation.
2. Find **Microsoft Teams** in the channel list and click on it to expand.
3. Toggle the Teams channel to **On**.

**Configure the Teams App Details:**

1. **App Icon** — Upload a color icon (192×192 PNG) and an outline icon (32×32 PNG) for the Teams app tile.
2. **Accent Color** — Enter a hex color code for the brand accent (e.g., `#0078D4` for blue).
3. **Short Description** — Enter: *"Manage requests — search, create, update, and analyze with a conversational agent."*
4. **Long Description** — Enter a full description of the agent's capabilities including search, create, update, reporting, and sample data features.
5. **Developer Information** — Enter the developer name, website, privacy policy URL, and terms of use URL.
6. **Team Channel Access** *(optional)* — Toggle on if you want users to @mention the agent in Teams channels.

**Enable Microsoft 365 Copilot Channel:**

1. Return to the **Channels** page.
2. Find **Microsoft 365 Copilot** and toggle it to **On**.

This allows users to access the Request Tracker agent directly from the Microsoft 365 Copilot chat interface.

**Step 3: Install for Yourself First**

1. After configuring the Teams channel, click **See agent in Teams**.
2. Teams will open with the agent. Click **Add** to install it.
3. Test the agent by trying one of the suggested prompts.

**Step 4: Share with Others**

| Method | How |
|---|---|
| 🔗 Direct Installation Link | Copy the agent's installation link from the Channels page and share it with colleagues via email or chat |
| 🏢 Built with Power Platform | Go to the agent's Availability settings → toggle on "Built with Power Platform" to make it discoverable |
| ✅ Submit for Admin Approval | Submit the agent for admin approval — once approved, it appears in the "Built for your org" section of the Teams app store |

> 💡 **Tip:** Method 3 is best for org-wide rollouts where you want the agent available to everyone.

**How to Access After Publishing:**

| Where | How to Open |
|---|---|
| Teams Chat | Open Teams → find Request Tracker in your chat list or Apps |
| Teams App Store | Open Teams → Apps → search "Request Tracker" |
| Team Channel | Type `@Request Tracker` followed by your question (if team channel access is enabled) |
| M365 Copilot | Go to [m365.cloud.microsoft/chat](https://m365.cloud.microsoft/chat) → find Request Tracker in the agents panel |

<details>
<summary>🔧 Troubleshooting — Option B</summary>

| Problem | Fix |
|---|---|
| "See agent in Teams" not working | You must publish the agent first (Step 1). Unpublished agents can't be added to Teams. |
| Agent not appearing in Teams | Wait 1–2 minutes and reopen Teams. New agents take a moment to propagate. |
| Users can't find the agent | Check the visibility toggle in Availability settings, or submit for admin approval. |
| SystemError when chatting | Check that all cloud flow connections are valid. Re-authenticate if needed. |
| Install link doesn't work on mobile | Have the user search for the agent in the Teams mobile app store instead. |

</details>

---

### 🏗️ Option C — Build the Agent from Scratch in Copilot Studio

This option walks you through building the entire agent from the ground up. It's the best choice if you want to deeply understand how every piece works — from the Dataverse table to the cloud flows, AI prompts, and topics.

> 🔴 **Important:** This is the longest option (~45 min). Use **Option A** if you just want a working agent quickly.

**Before You Begin:**

| ✓ | What You Need | Why |
|---|---|---|
| ☐ | Copilot Studio access | Where you'll build the agent |
| ☐ | Power Automate access | Required for creating the cloud flows that read/write Dataverse |
| ☐ | AI Builder access (included with Copilot Studio license) | Required for the AI prompts used in duplicate detection and record selection |
| ☐ | Dataverse environment | The request data table lives in Dataverse |

This section is organized into **10 parts**:

1. Create the Agent
2. Configure Agent Settings & Instructions
3. Create the Dataverse Table
4. Add Dataverse as a Knowledge Source
5. Create the "Add a New Request" Cloud Flow
6. Create the "Get Row from Dataverse" Cloud Flow
7. Create the "Update Request" Cloud Flow
8. Create the "Populate Sample Data" Cloud Flow
9. Connect Flows as Agent Tools
10. Test & Publish

**Part 1: Create the Agent**

1. Open your browser and go to [copilotstudio.microsoft.com](https://copilotstudio.microsoft.com). Sign in with your Microsoft 365 work account.
2. In the left navigation, click **Agents**.
3. Click **+ New agent** at the top of the page.
4. When the creation wizard appears, click **Skip to configure** to go directly to the configuration page.

**Part 2: Configure Agent Settings & Instructions**

| Field | What to Enter |
|---|---|
| **Name** | Request Tracker DB |
| **Description** | A helpful agent that manages requests stored in a Dataverse table. Supports searching, creating, updating, and analyzing request records through a conversational interface. |

Scroll down to the **Instructions** box and paste the full agent instructions:

<details>
<summary>📋 Full Agent Instructions (click to expand)</summary>

```
## Identity & Purpose
You are the **Request Tracker Assistant**, a helpful and friendly agent that helps users manage requests stored in the _RequestTracker Dataverse table. You support searching, analyzing, creating, and updating request records. Today's date is {Today()}. Use it when answering questions about deadlines, due dates, or anything time-sensitive.

## Tone & Personality
- Be warm, professional, and concise
- Use emojis to make responses visually scannable (📋, ⚡, 🔍, ✅, etc.)
- Always confirm actions before and after performing them
- If something goes wrong, acknowledge the issue clearly and suggest next steps

## Capabilities
You can help users with the following:
- **🔍 Search & Query Requests** — Find, filter, and analyze requests by keywords, status, priority, assignee, date, or any combination.
- **📊 Summarize & Report** — Provide counts, summaries, breakdowns, and trends across requests.
- **➕ Create a Request** — Add a new request to the tracker.
- **✏️ Update a Request** — Modify an existing request's fields.

## Search & Query Behavior
Answer directly from the knowledge source — do not redirect to another topic. Support natural language queries. When filtering, combine multiple criteria naturally. If no results match, suggest broader keywords.

## Request Fields
- **Title** — Short name summarizing the request
- **Description** — Detailed explanation of the request
- **Priority** — Low, Medium, High, or Critical
- **Status** — New, In Progress, Blocked, or Completed
- **Assigned To** — Person or team responsible
- **Due Date** — Target completion date (YYYY-MM-DD)
- **Submitted Date** — Date originally created
- **Requestor** — Person who submitted the request

## Topic Routing Rules
- **Create** → "create", "new", "submit", "file", "add a request" → New Request topic
- **Update** → "update", "edit", "change", "modify", "reassign" → Update Request topic
- **Search** → Answer directly from knowledge source (no topic needed)
- **Sample Data** → Only for "sample data", "test data", "populate data"

## Current User Identity
Use {System.User.DisplayName} for all user-facing responses. Never expose {System.User.Id} (GUID).
```

</details>

**AI Settings:**

| Setting | Value | Why |
|---|---|---|
| Web Browsing | Off | The agent works only with Dataverse data |
| Code Interpreter | Off | Not needed for request management |
| Content Moderation | Medium | Balanced filtering for professional use |
| Generative Actions (Orchestration) | **On** | Allows the agent to automatically select the right flow |
| General Knowledge | Off | The agent should only answer from Dataverse |

> 🔴 **Important:** Generative Actions must be turned **ON**. Without it, the agent cannot automatically route to the correct flow.

**Part 3: Create the Dataverse Table**

1. In Copilot Studio, click **Settings** → **Tables** (or go to [make.powerapps.com](https://make.powerapps.com) → Tables).
2. Click **+ New table** → **Create new tables**.
3. Name the table **Request Tracker**. Set the primary column to **Title**.
4. Add these columns:

| Column Name | Data Type | Required | Notes |
|---|---|---|---|
| Title | Single line of text | Yes | Primary name column |
| Description | Multiple lines of text | No | Detailed explanation |
| Priority | Choice | Yes | Options: Low, Medium, High, Critical |
| Status | Choice | Yes | Options: New, In Progress, Blocked, Completed |
| Assigned To | Single line of text | No | Person or team responsible |
| Requestor | Single line of text | No | Person who submitted |
| Due Date | Date only | No | Target completion date |
| Submitted Date | Date only | No | Date originally created |

**Part 4: Add Dataverse as a Knowledge Source**

> 🔴 **Important:** Before continuing, make sure to configure Dataverse table permissions for your users. Follow the **"Configure Dataverse Table Permissions for Agent Users"** steps in Option A above. Without proper security roles, users will not be able to create, read, update, or delete records in the Request Tracker table through the agent.

1. Open the agent in Copilot Studio → **Knowledge** section.
2. Click **Add knowledge** → select **Dataverse**.
3. Select the **Request Tracker** table.
4. Enable **Semantic Search** so the agent can understand natural language queries.

> ⚠️ Semantic search may take a few minutes to index. If the agent returns no results initially, wait and try again.

**Parts 5–8: Create the Cloud Flows**

You need to create four Power Automate cloud flows. Each follows the same pattern: **trigger** (When an agent calls the flow) → **Dataverse action** → **response** (Respond to the agent).

| # | Flow Name | What It Does | Key Inputs |
|---|---|---|---|
| 5 | Add a New Request Tracker Item | Creates a new row in Dataverse | Title, Description, Priority, Status, AssignedTo, Requestor, DueDate |
| 6 | Request Tracker Get Row from Dataverse | Fetches a specific request by Record ID | RecordID |
| 7 | Update Request Tracker Item in Dataverse | Updates an existing request's fields | RecordID + 6 field values |
| 8 | Request Tracker Add Sample Data to Dataverse | Bulk-loads sample records | UserDisplayName |

> ⚠️ For **Priority** and **Status** fields, use `int()` to convert text to integer since Choice columns expect numeric values.

<details>
<summary>📋 Detailed flow-by-flow instructions (click to expand)</summary>

**Flow 5 — Add a New Request:** Create a new agent flow → add 7 text input parameters (Title, Description, Priority, Status, AssignedTo, Requestor, DueDate) → add "Add a new row" Dataverse action mapping each field → set Submitted Date to `formatDateTime(utcNow(), 'yyyy-MM-dd')` → respond with "Success".

**Flow 6 — Get Row:** Create a new agent flow → add RecordID text input → add "Get a row by ID" Dataverse action → respond with 8 output parameters (Title, Description, Priority, Status, AssignedTo, DueDate, SubmittedDate, Requestor).

**Flow 7 — Update Request:** Create a new agent flow → add 7 text inputs (RecordID + 6 fields) → add "Update a row" Dataverse action → respond with "Success".

**Flow 8 — Populate Sample Data:** Create a new agent flow → add UserDisplayName input → add Compose step with JSON array of 5-10 sample records → add Apply to Each loop with "Add a new row" inside → respond with confirmation message.

</details>

**Part 9: Connect Flows as Agent Tools**

1. Open the agent → **Tools** (or Actions).
2. Click **Add a tool** → select **Flows** → add each of the four flows.
3. For each flow: set inputs to *"Let the AI fill this value"* and completion to *"Return to the agent"*.

> 💡 Clear, specific flow descriptions are critical for Generative Actions. The AI uses these descriptions to decide which flow to call.

**Part 10: Test & Publish**

1. Open the test panel in Copilot Studio (bottom-left corner).
2. Try `Create a task` — verify the agent invokes the correct flow.
3. Try `Show me all requests` — verify the agent queries the Dataverse knowledge source.
4. When satisfied, click **Publish** to make the agent live.

✅ **Your Request Tracker agent is built and published!**

---

### 🎨 Make It Your Own

| Customization | How |
|:---|:---|
| 🎭 Change the agent's tone | Edit the **Instructions** — modify the Tone & Personality section |
| 📝 Add or remove request fields | Edit the Dataverse table columns, then update the flows and Adaptive Card forms |
| 🔢 Modify priority or status options | Edit the Choice column in Dataverse and update the Adaptive Card forms to match |
| 🔍 Change search result formatting | Edit the "Displaying Search Results" section in the Instructions |
| 💬 Add new suggested prompts | Go to agent configuration → Conversation Starters → add/edit entries |
| 🔒 Restrict who can create requests | Add access control logic to the Instructions or create a topic-level check |
| 🚫 Turn off duplicate detection | Remove or disable the AI Builder prompt call in the New Request topic |
| 📧 Add email notifications | Add a "Send an email" action in the "Add a New Request" flow after the Dataverse step |
| 🔗 Connect additional data sources | Add knowledge sources in agent settings (SharePoint, websites, etc.) |

---

### 🧪 Test That It Works

| # | Try This Prompt | What to Look For |
|:---:|:---|:---|
| 1 | *"Show me all open high priority tasks"* | Agent queries Dataverse and returns a formatted list with status, priority, requestor, assigned-to, and due date |
| 2 | *"How many tasks have been created this month?"* | Agent returns a count and summary of requests created within the current month |
| 3 | *"Create a task"* | Agent presents an Adaptive Card form (or prompts for details) to create a new request, then confirms success |
| 4 | *"Update a task"* | Agent asks for search keywords, displays results, lets you select one, shows a pre-populated edit form, and confirms the update |
| 5 | *"Who am I?"* | Agent responds with your display name (e.g., "You are Matt Krause"), **not** a GUID or internal ID |

> ⚠️ If the agent doesn't return data for a search, make sure the Dataverse table has data. Use the *"Populate sample data"* prompt to add test records first.

<details>
<summary>🔧 Troubleshooting — General</summary>

| Problem | Fix |
|---|---|
| Agent doesn't respond to search queries | Verify the Dataverse knowledge source is enabled and semantic search is turned on. Wait a few minutes for indexing. |
| Create/Update flow returns an error | Open the flow in Power Automate and check the run history for details. Common cause: expired Dataverse connection. |
| Adaptive card form doesn't appear | Ensure the topic is correctly configured with an AdaptiveCardPrompt node. Check that the card JSON is valid. |
| Agent routes to the wrong topic | Review the topic model descriptions and trigger phrases. Make sure they distinguish between create, update, and search intents. |
| Connection expired error | Re-authenticate: go to the flow → Connections → sign in again with your M365 account. |
| "No results found" for a valid query | Try broader keywords. Semantic search may not match exact phrases — use general terms. |
| Sample data prompt doesn't work | Ensure the "Populate Sample Data" topic has a clear model description matching phrases like "sample data" or "test data." |

</details>
