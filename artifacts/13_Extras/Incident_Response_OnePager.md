# Incident Response One-Pager — SDG (Portfolio Baseline)

Owner: Badr Karim  
Purpose: Provide a clear, auditable response playbook with evidence capture steps.

## 1) Incident triggers (examples)
- Suspicious authentication activity (repeated failed logins/OTP failures)
- Unauthorized query execution attempt or RBAC bypass suspicion
- Suspected secret exposure (JWT/Fernet key/OTP secret/DB credential)
- Unexpected data exposure from query results
- Integrity snapshot verification mismatch
- Vendor/supply-chain concern affecting dependencies/images

## 2) Immediate priorities
1) **Contain** (stop further impact)
2) **Preserve evidence** (capture logs and context)
3) **Eradicate** (remove root cause)
4) **Recover** (restore trusted operation)
5) **Learn** (post-incident actions)

## 3) Containment actions (choose what applies)
- Disable affected user accounts / revoke access (RBAC changes)
- Rotate secrets if suspected exposure:
  - AUTH_JWT_SECRET
  - APP_FERNET_KEY (note: requires re-encryption plan if used broadly)
  - target DB credentials
- Temporarily block high-risk templates/targets
- Restrict admin access and pause releases/demos

## 4) Evidence capture (audit-friendly)
Collect evidence **before** making changes when possible:
- Export sanitized logs (portfolio-safe):
  - audit_logs.csv (sanitized columns)
  - query_runs_sanitized.csv (sanitized columns)
  - integrity_snapshots.csv (if relevant)
- Capture screenshots of:
  - the suspicious event context (UI/admin pages)
  - any denial/403 outcomes if relevant
- Record a short timeline:
  - first detection time
  - actions taken + timestamps
  - suspected scope and affected users/targets/templates

Evidence storage:
- Save to artifacts/14_Evidence/ with naming standard:
  [Framework]_[ControlID]_[Artifact]_[YYYY-MM-DD].ext

## 5) Triage questions (fast scoping)
- Who: which user_id(s) and roles?
- What: which templates and targets?
- When: timestamps and frequency?
- Where: source IPs (if available) — redact before public sharing
- How: misconfig, credential compromise, or validator gap?

## 6) Communication (portfolio baseline)
- Internal: document status in Issue Log + MAP tracker
- External: if deployed in an org, follow org breach notification policy and contractual timelines

## 7) Post-incident actions
- Create/Update finding in Findings Register
- Create MAP action(s) with owner and due date
- Run relevant control tests (CT-01/02/03) after fixes
- Update risk register if residual risk changed
