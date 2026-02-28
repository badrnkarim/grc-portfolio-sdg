# GRC Ticket Workflow — SDG

Owner: Badr Karim  
Purpose: Ensure all GRC work produces auditable evidence and closes cleanly.

## Board name
GRC Tickets

## Columns (required)
Backlog → This Week → In Progress → In Review → Evidence Collected → Done

## Definition of Done (US-grade)
A ticket can only move to **Done** when:
1) It is linked to a Risk ID and/or Control ID, and
2) Evidence exists with an Evidence ID recorded in:
   - GRC_Master.xlsx → Evidence Tracker tab, and/or
   - artifacts/11_GRC_Tooling/Evidence_Tracker.csv
3) Evidence file naming follows:
   - docs/EVIDENCE_NAMING_STANDARD.md
4) Any associated finding/issue is updated:
   - Issue Log + MAP Tracker status updated
5) Redaction rules were applied:
   - no secrets
   - no full tracebacks
   - no sensitive params

## Recommended ticket template
Title:
Type (CONTROL / EVIDENCE / TEST / FINDING / POLICY / TPRM):
Linked Control ID(s):
Linked Risk ID(s):
Owner:
Due date:
Steps:
Evidence link/path:
Notes:
