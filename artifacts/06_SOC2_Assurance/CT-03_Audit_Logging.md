# CT-03 — Audit Logging Completeness (SOC 2 Security)

Owner: Badr Karim  
Control ID: SOC2-LG-01  
Objective: Verify SDG logs administrative actions and query executions with sufficient fields to support audit and investigation.

## Control description
SDG produces two key evidence streams in the meta database:
1) **audit_logs**: request-level audit trail (method/path/status/ip/user_id, timestamps)
2) **query_runs**: per-execution history (user/target/template/status/rows, timestamps)

## Population
Administrative actions and gateway runs during the test window (local demo environment).

## Test approach
Re-performance + inspection of exported logs (sanitized columns).

## Test steps
1) Perform an admin action (choose one):
   - create a query template OR
   - grant a role-template permission OR
   - grant a role-target permission
2) Execute a gateway run:
   - select an allowed target + allowed template
3) Export evidence using the sanitized export process:
   - audit_logs.csv (sanitized columns)
   - query_runs_sanitized.csv (sanitized columns)
   - integrity_snapshots.csv (if snapshot/verify tested)
4) Inspect exports for completeness:
   - audit_logs includes: created_at, user_id, method, path, status_code, ip
   - query_runs includes: started_at, finished_at, user_id, target_id, template_id, status, rows_returned
5) Confirm sensitive data is not present in evidence exports:
   - no secrets (JWT, Fernet key, DB passwords, OTP secrets)
   - no full tracebacks
   - no sensitive query parameters

## Sample
- 1 admin action + 1 query execution (minimum)
- Optional: 1 denied RBAC run (to evidence “deny” logging)

## Expected results
- Relevant events appear in audit_logs and query_runs with required fields.
- Exports are sanitized and safe to attach as evidence.
- Evidence file naming follows docs/EVIDENCE_NAMING_STANDARD.md.

## Actual results
Status: [Pending execution]
Notes: ___________________________

## Evidence to attach (redacted)
- audit_logs.csv export reference
- query_runs_sanitized.csv export reference
- Screenshot(s) of admin action and query run
- Evidence naming proof (file name + date)
- Optional: integrity_snapshots.csv (if used)

## Conclusion
[Pending]
