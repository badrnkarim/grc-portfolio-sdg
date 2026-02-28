# Change Review Checklist — SDG (per release/demo)

Owner/Approver: Badr Karim  
Purpose: Provide a repeatable, auditable release gate.

## Pre-release checks (required)
Repository hygiene:
- [ ] `hygiene_check.sh` passed
- [ ] No secrets tracked (`git status` clean; no .env/backend/.env committed)
- [ ] CI hygiene workflow passed (if enabled)

Security controls validation:
- [ ] Authentication works as designed (password + TOTP if enabled)
- [ ] RBAC enforcement verified (allowed/denied scenarios)
- [ ] SQL safety validator blocks non-SELECT / forbidden patterns
- [ ] SSRF safeguards for target connectivity validated

Logging & evidence readiness:
- [ ] audit_logs export available (sanitized)
- [ ] query_runs export available (sanitized)
- [ ] integrity snapshot create/verify tested (if included in demo)

Risk & issues governance:
- [ ] New risks reviewed (if any) and recorded
- [ ] Findings register updated for any newly discovered issues
- [ ] MAP tracker updated for remediation items (with owner + due date)

Evidence packaging:
- [ ] Evidence files named using `docs/EVIDENCE_NAMING_STANDARD.md`
- [ ] Evidence links recorded in GRC_Master.xlsx → Evidence Tracker tab

## Approval
Approved by: Badr Karim  
Date: ___________
