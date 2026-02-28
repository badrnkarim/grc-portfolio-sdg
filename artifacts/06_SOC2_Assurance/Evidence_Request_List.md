# SOC 2 Evidence Request List — SDG (Audit-style)

Owner: Badr Karim  
Scope: Security (TSC Security category baseline)

## A) Logical Access (MFA / Authentication)
Provide:
- CT-01 results (pass/fail with notes)
- Redacted screenshots of:
  - OTP enable flow (do not show otp_secret)
  - Successful login with OTP (redact OTP code)
  - Failed login due to wrong OTP
- Evidence of secret handling:
  - No secrets committed (hygiene check pass output)

## B) Authorization (RBAC)
Provide:
- CT-02 results (allowed + denied scenarios)
- RBAC exports (meta DB):
  - role_targets export
  - role_templates export
- Quarterly Access Review Record (dated)

## C) Change Management
Provide:
- Change Review Checklist for a release/demo (dated)
- CI hygiene workflow pass screenshot/log (if enabled)
- hygiene_check.sh output (local)

## D) Logging and Monitoring
Provide:
- Exported and sanitized logs:
  - audit_logs.csv (sanitized columns)
  - query_runs_sanitized.csv (no params, no tracebacks)
  - integrity_snapshots.csv (if used)
- Weekly Log Review Checklist (dated) + short notes

## E) Risk Management
Provide:
- Risk methodology (scoring and acceptance)
- Risk register (top risks + scores + treatment)
- Risk treatment plan
- MAP tracker (actions with due dates)

## F) Vendor / Supplier Management (TPRM)
Provide:
- Vendor Register + remediation tracker
- Evidence of periodic review (monthly/quarterly note)

## G) Data Protection
Provide:
- Data inventory + classification standard
- Retention schedule
- Mini DPIA

## Evidence handling rules
- Use naming standard: docs/EVIDENCE_NAMING_STANDARD.md
- Do not include secrets, internal-only sensitive hostnames/IPs, or full tracebacks
