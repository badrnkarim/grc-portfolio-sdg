# Portfolio Timeline — SDG GRC Program (Jan–Feb 2026)

Owner: Badr Karim  
As-of date: 2026-02-28

## January 2026 — Program design + operating model
- Defined governance operating model (charter, RACI, cadence)
- Defined scoring methodology and risk acceptance rules
- Established evidence naming and ticket workflow (“definition of done”)
- Drafted control mapping approach (system → controls → evidence)

## February 2026 — Assurance readiness + proof artifacts
- Built full proof portfolio packs (COBIT, NIST CSF 2.0, ISO 27001/27002 topic mapping)
- Built SOC 2 readiness artifacts (readiness matrix, evidence request list, CT workpapers)
- Built compliance pack (ISO 37301 CMS + obligations register)
- Built TPRM pack and remediation tracker
- Built audit readiness artifacts (issue log + MAP tracker + control testing plan)
- Built data protection artifacts (inventory, classification, retention, mini DPIA)

## Evidence collection (audit-safe)
- Evidence exports are collected on actual export dates and stored under:
  artifacts/14_Evidence/YYYY-MM/
- All evidence is sanitized (no secrets, no full tracebacks, no sensitive params) and linked to:
  - Evidence_Tracker.csv
  - GRC_Master.xlsx (Evidence Tracker tab)
