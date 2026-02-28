# Evidence Naming Standard (Audit-friendly)

Owner: Badr Karim  
Purpose: Ensure evidence is traceable, reviewable, and safe to share.

## Naming format (required)
[Framework]_[ControlID]_[Artifact]_[YYYY-MM-DD].[ext]

### Examples
SOC2_SEC_CT-01_TOTP_MFA_Test_2026-02-28.pdf  
NIST_CSF_PR.AA_RBAC_Exports_2026-02-28.xlsx  
ISO27001_AC_AccessReview_Record_2026-02-28.pdf  
SDG_LOGS_AuditLogs_Export_2026-02-28.csv  
SDG_LOGS_QueryRuns_Sanitized_2026-02-28.csv  

## Rules
1) **No secrets** in any evidence file (JWT secret, Fernet key, OTP secret, DB passwords, tokens).
2) **Redact** internal hostnames/IPs if they are sensitive.
3) **Do not include full tracebacks** or overly detailed error dumps in public evidence.
4) Evidence must be:
   - dated
   - attributable (owner/reviewer recorded)
   - complete (shows required fields)
   - mapped (linked to a control in GRC_Master.xlsx)

## Storage location
Store evidence in:
- `artifacts/14_Evidence/` (organized by framework or by month)

Suggested structure:
- `artifacts/14_Evidence/2026-02/`
- `artifacts/14_Evidence/2026-03/`

## Minimum metadata (recommended)
Add a 1–3 line note in your Evidence Tracker:
- what the evidence proves
- how it was collected
- what was redacted (if anything)
