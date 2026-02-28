# Executed Control Tests — Summary (Evidence-Backed)

Owner: Badr Karim  
As-of: 2026-02-28

## Executed tests (high impact)
| Test | What it proves | Evidence |
|---|---|---|
| CT-01 (Email OTP MFA) | MFA challenge shown + successful authenticated session | artifacts/14_Evidence/2026-02/SOC2_SEC_CT-01_EmailOTP_Code_Challenge_2026-02-28.png, artifacts/14_Evidence/2026-02/SOC2_SEC_CT-01_EmailOTP_Login_Success_2026-02-28.png |
| CT-02 (RBAC) | deny-by-default + revoke takes effect immediately + allow works when granted | artifacts/14_Evidence/2026-02/SOC2_SEC_CT-02_RBAC_Deny_Target_Not_Allowed_2026-02-28.png, artifacts/14_Evidence/2026-02/SOC2_SEC_CT-02_RBAC_Allow_Query_Success_2026-02-28.png |
| CT-03 (Audit logging) | request/query logging exists and can be exported sanitized | artifacts/14_Evidence/2026-02/SOC2_SEC_CT-03_AuditLogs_Export_2026-02-28.csv, artifacts/14_Evidence/2026-02/SOC2_SEC_CT-03_QueryRuns_Sanitized_2026-02-28.csv |
| CT-04 (SQL safety) | DDL blocked before execution (e.g., DROP) | artifacts/14_Evidence/2026-02/SOC2_SEC_CT-04_SQL_Safety_DDL_Block_2026-02-28.png |
| CT-05 (SSRF/target allowlist) | forbidden database target rejected | artifacts/14_Evidence/2026-02/SOC2_SEC_CT-05_SSRF_Target_Block_2026-02-28.png |
| CT-06 (Integrity snapshots) | match when unchanged + mismatch when DB changes | artifacts/14_Evidence/2026-02/SOC2_SEC_CT-06_Integrity_Verify_Match_2026-02-28.png, artifacts/14_Evidence/2026-02/SOC2_SEC_CT-06_Integrity_Verify_Mismatch_2026-02-28.png |
