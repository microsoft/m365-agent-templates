# Evaluation Sets for My Company Policy Agent

This folder contains evaluation test cases for the **My Company Policy Agent** (Contoso Ltd.) declarative agent. Each CSV file targets a specific evaluation category aligned with the agent's configured behaviors and the 13 knowledge source documents.

## Eval Categories

| File | # Tests | Category | Description |
|------|---------|----------|-------------|
| `01_grounding_accuracy.csv` | 15 | Grounding & Accuracy | Verifies the agent answers with specific facts from the policy documents |
| `02_citation_behavior.csv` | 8 | Source Citation | Verifies every answer cites document name, policy number, and section |
| `03_clarification_behavior.csv` | 8 | Ambiguity Handling | Verifies the agent asks follow-up questions when user intent is ambiguous |
| `04_out_of_scope.csv` | 7 | Out-of-Scope Handling | Verifies the agent redirects non-policy questions appropriately |
| `05_tone_and_persona.csv` | 6 | Tone & Persona | Verifies the agent's voice, professionalism, and third-person self-reference |
| `06_sensitivity_handling.csv` | 6 | Sensitive Topics | Verifies appropriate handling of compensation, disciplinary, medical, and legal topics |
| `07_disclaimer.csv` | 5 | Disclaimer | Verifies every response ends with the required AI disclaimer |
| `08_location_awareness.csv` | 8 | Location & Role Awareness | Verifies the agent factors in user location (US vs UK) and job title |
| `09_cross_document.csv` | 6 | Cross-Document Queries | Verifies questions spanning multiple policy documents |
| `10_conversation_starters.csv` | 6 | Conversation Starters | Verifies the 6 built-in conversation starters produce quality grounded responses |

**Total: 75 test cases**

## CSV Schema

| Column | Description |
|--------|-------------|
| `id` | Unique test case identifier |
| `category` | Evaluation category name |
| `input` | User message sent to the agent |
| `context` | Optional user profile context (location, job title) |
| `expected_behavior` | Description of what the agent should do |
| `expected_facts` | Pipe-delimited specific facts/values that should appear (from actual documents) |
| `not_expected` | Pipe-delimited things the response should NOT contain |
| `source_documents` | Pipe-delimited relevant document filenames |

## Knowledge Sources (SampleData)

All documents are from **Contoso Ltd.**

| # | Document | Policy ID |
|---|----------|-----------|
| 1 | Employment Classification Policy | HR-POL-001 |
| 2 | Code of Conduct | HR-POL-002 |
| 3 | Onboarding Policy | HR-POL-003 |
| 4 | Employment Eligibility Policy | HR-POL-004 |
| 5 | Compensation Policy | HR-POL-005 |
| 6 | Leave Policy | HR-POL-006 |
| 7 | Company Benefits | HR-POL-007 |
| 8 | Quarterly Earnings 2025 | (financial report) |
| 9 | Board Meeting Minutes Q1 2025 | BOARD-MIN-2025-Q1 |
| 10 | Executive Leadership Team | (leadership profile) |
| 11 | IT Support Procedures | (procedures doc) |
| 12 | UK Leave Policies | (UK-specific leave) |
| 13 | Building Maintenance & Facilities | (facilities doc) |

## Agent Behavioral Requirements

- **Citations**: Every answer must reference document name, policy number, and section
- **Clarification**: Ask follow-ups when intent is ambiguous (e.g., PTO depends on classification/tenure)
- **Self-reference**: Refer to itself as "My Company Policy Agent" — never use I/me/my/we/our
- **Grounding**: Answers must come exclusively from the provided documents
- **Disclaimer**: Every response must end with the AI disclaimer
- **Location-aware**: Factor in user's geographic location (US vs UK policies)
- **Out-of-scope**: Redirect non-policy questions; suggest hr@meridiansolutions.com or appropriate resource
- **Sensitivity**: No legal/personal advice; direct to HR or Legal for specific situations
