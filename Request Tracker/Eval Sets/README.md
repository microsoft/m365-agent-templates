# MCS Built-In Evaluation Test Sets — Request Tracker Agent

## Overview

This directory contains **7 CSV test sets** formatted for import into the **Copilot Studio built-in evaluation tool**. These test sets cover all core agent capabilities and are designed to be imported, configured, and run directly within Copilot Studio.

| # | File | Test Cases | Focus Area |
|---|------|-----------|------------|
| 1 | `01-topic-routing.csv` | 20 | Topic routing accuracy across all intents |
| 2 | `02-create-flow.csv` | 10 | Create request flow — input extraction & form behavior |
| 3 | `03-update-flow.csv` | 10 | Update request flow — search, select, edit |
| 4 | `04-search-query.csv` | 15 | Search/query behavior — knowledge source answers |
| 5 | `05-edge-cases.csv` | 12 | Ambiguous inputs, off-topic, edge cases |
| 6 | `06-negative-cases.csv` | 12 | Wrong topic avoidance, no internal data leakage |
| 7 | `07-multi-turn-conversations.csv` | 5 | Multi-turn conversation flows |
| | **Total** | **84** | |

---

## How to Import into Copilot Studio

### Single Response Test Sets (Files 01–06)

1. Open your **Request Tracker** agent in [Copilot Studio](https://copilotstudio.microsoft.com)
2. Navigate to the **Evaluation** tab (in the left sidebar)
3. Click **New evaluation** → **Single response**
4. Under "Data source", drag the CSV file or click **Browse** to upload
5. Name the test set (see naming recommendations below)
6. Configure test methods (see per-file instructions below)
7. Click **Save** or **Evaluate** to run immediately

### Conversation Test Set (File 07)

1. Click **New evaluation** → **Conversation**
2. Import the CSV file
3. Each row represents a multi-turn conversation — turns are separated by `|` pipe characters
4. **Note**: You may need to manually split the pipe-separated turns in the UI after import, as MCS conversation import may require a different format. Alternatively, manually create these 5 conversation test cases in the UI.

---

## Per-File Setup Instructions

### 01-topic-routing.csv — "RT - Topic Routing"

**Purpose**: Validates that create/update/search/sample-data intents route to the correct topic.

**Test methods to configure**:
| Method | Configuration |
|--------|--------------|
| **Compare meaning** | ✅ Already in CSV. Set pass score to **60%** |
| **Capability use** | ➕ Add in UI (see below) |
| **General quality** | ➕ Add for baseline quality |

**Capability use configuration** (add in UI after import):
| Test Case (Question) | Expected Capabilities |
|----------------------|----------------------|
| "Create a new request" | `_New Request Item` |
| "I need to submit a new request..." | `_New Request Item` |
| "Add a request for booking..." | `_New Request Item` |
| "I want to file a request" | `_New Request Item` |
| "New request please" | `_New Request Item` |
| "Update an existing request" | `_Update Existing Request` |
| "I need to edit a request" | `_Update Existing Request` |
| "Change the status of a request" | `_Update Existing Request` |
| "Reassign the server migration..." | `_Update Existing Request` |
| "Mark the laptop replacement..." | `_Update Existing Request` |
| "Show me all requests" | *(no specific topic — conversational)* |
| "What are the high priority..." | *(no specific topic — conversational)* |
| "List all blocked requests" | *(no specific topic — conversational)* |
| "How many requests are in progress..." | *(no specific topic — conversational)* |
| "Give me a breakdown..." | *(no specific topic — conversational)* |
| "Populate sample data" | `_Populate Sample Data` |
| "Load test data into the tracker" | `_Populate Sample Data` |
| "Add sample records for demo..." | `_Populate Sample Data` |
| "Hey can you help me..." | *(no specific topic)* |
| "What can you do?" | *(no specific topic)* |

---

### 02-create-flow.csv — "RT - Create Request Flow"

**Purpose**: Validates that the create flow shows the adaptive card form with proper input extraction.

**Test methods to configure**:
| Method | Configuration |
|--------|--------------|
| **Compare meaning** | ✅ Already in CSV (7 cases). Set pass score to **60%** |
| **Keyword match** | ✅ Already in CSV (3 cases). Set to match **any** keyword |
| **Capability use** | ➕ Add in UI — set ALL cases to expect `_New Request Item` |

---

### 03-update-flow.csv — "RT - Update Request Flow"

**Purpose**: Validates the update flow — search, select, edit with pre-populated form.

**Test methods to configure**:
| Method | Configuration |
|--------|--------------|
| **Compare meaning** | ✅ Already in CSV. Set pass score to **60%** |
| **Capability use** | ➕ Add in UI — set ALL cases to expect `_Update Existing Request` |

**Key behaviors to verify manually in results**:
- Cases with specific item names (e.g., "Update Finalize speaker lineup") should **skip** the "which request?" question (streamlined prompting)
- Cases without item names (e.g., "I want to update a request") should **ask** for search keywords

---

### 04-search-query.csv — "RT - Search & Query"

**Purpose**: Validates conversational search answers from the knowledge source.

**Test methods to configure**:
| Method | Configuration |
|--------|--------------|
| **Compare meaning** | ✅ Already in CSV (9 cases). Set pass score to **50%** |
| **Keyword match** | ✅ Already in CSV (6 cases). Set to match **any** keyword |
| **General quality** | ➕ Add for all cases — baseline quality check |

**Note**: Search results depend on actual data in the `_RequestTracker` Dataverse table. Make sure sample data is loaded before running this test set.

---

### 05-edge-cases.csv — "RT - Edge Cases & Ambiguity"

**Purpose**: Validates the agent asks clarifying questions for ambiguous inputs and handles off-topic queries gracefully.

**Test methods to configure**:
| Method | Configuration |
|--------|--------------|
| **Compare meaning** | ✅ Already in CSV. Set pass score to **50%** |
| **General quality** | ➕ Add for all cases |

**Custom test method** (optional but recommended):
| Setting | Value |
|---------|-------|
| **Name** | Clarification Quality |
| **Evaluation instructions** | "Evaluate whether the agent asks a clarifying question when the user's intent is ambiguous, rather than guessing and routing to the wrong topic. The agent should help the user disambiguate between creating a new request, updating an existing request, searching for requests, or loading sample data." |
| **Labels** | `Asks clarification` (Pass), `Guesses without asking` (Fail) |

---

### 06-negative-cases.csv — "RT - Negative Cases"

**Purpose**: Validates wrong-topic avoidance and that internal data isn't exposed.

**Test methods to configure**:
| Method | Configuration |
|--------|--------------|
| **Compare meaning** | ✅ Already in CSV. Set pass score to **60%** |
| **Keyword match** | ✅ Already in CSV (2 cases) |
| **Capability use** | ➕ Add in UI (see below) |

**Capability use configuration** (critical for negative testing):
| Test Case | Expected Capability | Verifies |
|-----------|-------------------|----------|
| "Update the server migration..." | `_Update Existing Request` | NOT create |
| "Create a brand new request..." | `_New Request Item` | NOT update |
| "Search for all requests..." | *(none)* | NOT create/update |
| "Find all requests assigned to..." | *(none)* | NOT update |
| "Add a new request for budget..." | `_New Request Item` | NOT sample data |
| "I need to add a record for..." | `_New Request Item` | NOT sample data |
| "List all new requests" | *(none)* | NOT create |
| "How many requests are there..." | *(none)* | NOT any action topic |
| "Modify the new hire orientation..." | `_Update Existing Request` | NOT create |

**Custom test method** (recommended):
| Setting | Value |
|---------|-------|
| **Name** | No Internal Data Leakage |
| **Evaluation instructions** | "Check that the agent's response does not contain internal identifiers, column names, or technical metadata. Specifically, the response must not contain: Dataverse internal prefixes like cre1b_, GUID-like identifiers, variable names like Global. or Topic., raw JSON, or numeric values for Priority/Status instead of display labels (Low/Medium/High/Critical, New/In Progress/Blocked/Completed)." |
| **Labels** | `Clean output` (Pass), `Leaks internal data` (Fail) |

---

### 07-multi-turn-conversations.csv — "RT - Multi-Turn Flows"

**Purpose**: Validates the agent maintains context across multi-turn conversations.

**Import method**: Create as a **Conversation** test set.
- If CSV pipe-separated format isn't supported, manually create 5 conversation test cases in the UI
- Each conversation has 2-3 turns

**Test methods to configure**:
| Method | Configuration |
|--------|--------------|
| **General quality** | ✅ Add for all cases |
| **Keyword match** | ➕ Optional — add keywords per turn |

**Conversation scenarios**:
1. Search → Detail drill-down (context retention)
2. Start update → Select item → Change field (multi-step flow)
3. Start create → Provide details (form population)
4. Search count → Filter → Transition to update (cross-capability)
5. Search by assignee → Narrow by status (progressive filtering)

---

## Recommended Evaluation Cadence

| When | What to Run | Why |
|------|-------------|-----|
| After every agent instruction change | `01-topic-routing` | Catch routing regressions |
| After topic YAML changes | `02-create-flow` + `03-update-flow` | Validate flow behavior |
| After knowledge source updates | `04-search-query` | Verify answer quality |
| Before each publish | All test sets | Full regression check |
| Weekly (ongoing) | `05-edge-cases` + `06-negative-cases` | Monitor boundary behavior |

---

## Prerequisites Before Running

1. **Sample data must be loaded** — Run the "Populate sample data" command in the agent first, so search/query test cases have data to return
2. **Agent must be published** — The evaluation tool tests the published version
3. **User profile** — Select or create a user profile in the evaluation UI that has access to the Dataverse `_RequestTracker` table and any connected flows

---

## Agent Topic Reference (for Capability Use configuration)

| Topic Name (as shown in MCS) | Component Name | Trigger Type |
|------------------------------|----------------|-------------|
| _New Request Item | `_New Request Item` | OnRecognizedIntent |
| _Update Existing Request | `_Update Existing Request` | OnRecognizedIntent |
| _Populate Sample Data | `_Populate Sample Data` | OnRecognizedIntent |
| Conversational boosting | `Conversational boosting` | OnUnknownIntent (fallback) |

When configuring **Capability use** in the UI, select these topic names from the dropdown for each test case.
