# Evidence Repository — SDG GRC Portfolio

Owner: Badr Karim  
Purpose: Store sanitized, audit-friendly evidence that supports controls, tests, and reporting.

## Naming rule (required)
[Framework]_[ControlID]_[Artifact]_[YYYY-MM-DD].[ext]

Examples:
SOC2_SEC_CT-01_TOTP_MFA_Test_2026-02-28.pdf
SOC2_SEC_CT-03_AuditLogs_Export_2026-02-28.csv
NIST_CSF_PR.AA_RBAC_Exports_2026-02-28.xlsx
ISO27001_AC_AccessReview_Record_2026-02-28.pdf

## Redaction rules (non-negotiable)
Do NOT include:
- AUTH_JWT_SECRET, APP_FERNET_KEY, OTP secrets, DB passwords, tokens, keys
- full tracebacks
- sensitive query parameters (if they contain sensitive data)

Before sharing publicly:
- redact internal hostnames/IPs if sensitive
- export only sanitized columns (audit_logs/query_runs sanitized exports)

## Recommended structure
- artifacts/14_Evidence/2026-02/
- artifacts/14_Evidence/2026-03/

## Link everything
Every evidence file must be referenced in:
- GRC_Master.xlsx → Evidence Tracker tab
and/or
- artifacts/11_GRC_Tooling/Evidence_Tracker.csv
