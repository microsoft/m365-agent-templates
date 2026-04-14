<h1 align="center">Microsoft 365 Agent Templates</h1>

<p align="center">
  <strong>Pre-built, deploy-ready AI agents for Microsoft 365</strong><br>
  Built by the <a href="https://developer.microsoft.com/copilot">Copilot Acceleration Team (CAT)</a> at Microsoft
</p>

[![Microsoft 365 Copilot](https://img.shields.io/badge/Microsoft_365-Copilot-0078D4?logo=microsoft&logoColor=white)](https://www.microsoft.com/microsoft-365/copilot)
[![Copilot Studio](https://img.shields.io/badge/Copilot_Studio-Agent-6264A7?logo=microsoft&logoColor=white)](https://learn.microsoft.com/microsoft-copilot-studio/fundamentals-what-is-copilot-studio)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

---

## 💡 What Are Agent Templates?

Agent templates are **pre-configured, deploy-ready AI agents** for Microsoft 365 designed to address common workplace scenarios — from daily planning to policy lookup to request tracking to customer research. Each template ships as a complete package that you can deploy in minutes or customize to fit your organization's needs.

This repository includes two types of agents:

- **Declarative Agents (DAs)** — Lightweight agents that run inside Microsoft 365 Copilot, grounded in your organization's data (SharePoint, email, Teams, calendar, and more). No custom code or Copilot Studio license required.
- **Custom Agents (CAs)** — Full-featured agents built in Copilot Studio with topics, Power Automate flows, and connector integrations for more complex workflows.

### 📦 What's Included with Each Agent

Each agent folder contains a full **Bill of Materials (BOM)**:

| Asset | Description |
|:------|:------------|
| 📊 **Overview Deck** | Scenario overview, architecture, personas, and demo prompts |
| 📘 **Setup Guide** | Step-by-step deployment instructions tailored to the agent's platform |
| 🧪 **Evaluation Test Plan** | Test scenarios with expected results and pass/fail criteria |
| 📦 **Agent Package (.zip)** | Pre-built package ready to deploy |
| 📂 **Sample Files** | Sample data files for testing (where applicable) |

---

## 🤖 Available Agents

<table>
<tr>
<td align="center" width="100">
<img src="Plan My Day/Plan My Day Icon.png" width="64"><br>
</td>
<td>

### [Plan My Day](Plan%20My%20Day/)
Compiles a personalized daily briefing from your calendar, email, Teams messages, files, and people signals — so you start every day knowing exactly what to focus on. Delivers a structured output at three depths: 30-Second Glance, 1-Minute Read, and Deep Read.

</td>
</tr>
<tr>
<td align="center" width="100">
<img src="My Company Policy/My Company Policy Icon.png" width="64"><br>
</td>
<td>

### [My Company Policy](My%20Company%20Policy/)
Gives employees a single, trusted conversational interface to access company policies — HR, benefits, PTO, holidays, IT, procurement, and more. Grounded in your SharePoint policy documents with inline citations and context-aware answers based on user location and role.

</td>
</tr>
<tr>
<td align="center" width="100">
<img src="Executive Briefing/Executive_Briefing_Icon.png" width="64"><br>
</td>
<td>

### [Executive Briefing](Executive%20Briefing/)
Prepares comprehensive executive briefings by synthesizing meeting context, attendee profiles, strategic priorities, and relevant documents into a single, structured pre-read — turning hours of manual prep into one prompt.

</td>
</tr>
<tr>
<td align="center" width="100">
<img src="Request Tracker/Request Tracker Icon.png" width="64"><br>
</td>
<td>

### 🔜 Request Tracker *(Coming Soon)*
Provides a single, intelligent conversational interface to submit, track, escalate, and resolve internal requests across departments. Includes Power Automate workflows for approvals, notifications, nudges, and digests with clear visibility for team leads and managers.

</td>
</tr>
<tr>
<td align="center" width="100">
<img src="Know My Customer/Know My Customer Icon.png" width="64"><br>
</td>
<td>

### 🔜 Know My Customer *(Coming Soon)*
Surfaces a 360° customer profile by pulling together CRM data, meeting history, email threads, and relevant documents — helping sellers and account managers walk into every conversation fully prepared.

</td>
</tr>
</table>

---

## 🚀 Getting Started

1. Click on any agent folder above
2. Read the README for an overview of the agent
3. Follow the Setup Guide for your preferred deployment option

Each agent's README includes detailed deployment instructions tailored to its platform — **Declarative Agents** deploy through Teams/Agent Builder, while **Custom Agents** are imported as Power Platform solutions into Copilot Studio.

> 💡 **To download everything:** Click the green **`<> Code`** button at the top of this page and select **Download ZIP**.

---

## ✅ Prerequisites

All agents in this repository require:

1. **Microsoft 365 Copilot License** — Required for all users interacting with the agents
2. **Microsoft 365 E3, E5, or Business Premium** — Base subscription for Microsoft 365 services
3. **Microsoft Teams** — Desktop or web client to access the agents

Additional prerequisites vary by agent — check each agent's README for details.

---

## 📣 Feedback & Issues

Found a bug? Have an idea for an improvement? We'd love to hear from you!

- 🐛 [**Report a Bug**](https://github.com/microsoft/m365-agent-templates/issues/new?template=bug_report.yml) — Something not working as expected
- 💡 [**Request a Feature**](https://github.com/microsoft/m365-agent-templates/issues/new?template=feature_request.yml) — Suggest an improvement or new capability

---

## 🤝 Contributing

This project welcomes contributions and suggestions. Most contributions require you to agree to a [Contributor License Agreement (CLA)](https://cla.opensource.microsoft.com) declaring that you have the right to, and actually do, grant us the rights to use your contribution.

When you submit a pull request, a CLA bot will automatically determine whether you need to provide a CLA and decorate the PR appropriately. Simply follow the instructions provided by the bot.

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/). For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.

## ⚖️ Trademarks

This project may contain trademarks or logos for projects, products, or services. Authorized use of Microsoft trademarks or logos is subject to and must follow [Microsoft's Trademark & Brand Guidelines](https://www.microsoft.com/legal/intellectualproperty/trademarks/usage/general). Use of Microsoft trademarks or logos in modified versions of this project must not cause confusion or imply Microsoft sponsorship. Any use of third-party trademarks or logos are subject to those third-party's policies.

## 📜 License

This project is licensed under the MIT License. See [LICENSE](LICENSE) for details.
