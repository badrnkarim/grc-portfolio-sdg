# GRC Tooling — System of Record

Owner: Badr Karim  
Purpose: Define the single source of truth for governance, risk, compliance, and assurance tracking.

## System of record
- `GRC_Master.xlsx` is the primary workbook used to track:
  - Risk Register
  - Control Matrix + SoA
  - Evidence Tracker
  - Issues & Remediation (MAP)
  - Vendor Register (TPRM)
  - Compliance Obligations Register
  - Policy Inventory
  - Metrics Dashboard

## Supporting tooling
- `Evidence_Tracker.csv` mirrors the evidence tracker in a text-friendly format.
- `Monthly_GRC_Report_Template.md` is used to generate monthly reporting.
- `Dashboard_Notes.md` defines the minimum metrics views.
- `Ticket_Workflow.md` defines the “definition of done” evidence gate.

## Evidence rule
Evidence must be stored under `artifacts/14_Evidence/` and named per:
- `docs/EVIDENCE_NAMING_STANDARD.md`
