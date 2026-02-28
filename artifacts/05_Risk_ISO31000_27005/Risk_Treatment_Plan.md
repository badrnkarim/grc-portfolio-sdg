# Risk Treatment Plan — SDG (ISO 27005/ISO 31000 aligned)

Owner/Approver: Badr Karim  
Purpose: Convert top risks into tracked remediation actions with evidence and due dates.

## Treatment principles (US-grade)
- High/Critical risks require: owner, due date, MAP action, and evidence of completion.
- Remediation must be measurable (test or export evidence), not “we believe it is secure”.
- Findings are treated as assurance items and tracked to closure.

## 1) Priority treatments (Top 10)
### T-001 (Risk R-001 / Finding F-001) — OTP setup exposure
- Problem: `/auth/otp/setup` returns otp_secret (demo shortcut).
- Treatment: modify flow to return QR/otpauth URI only; never return raw secret.
- Evidence: code diff + updated CT-01 evidence (screenshots redacted).
- Owner: Badr Karim
- Due: 2026-03-15

### T-002 (Risk R-002 / Finding F-002) — Demo credentials hard-coded
- Problem: demo credentials appear in docs/seed scripts.
- Treatment: move demo creds to environment variables; clearly label demo-only in docs.
- Evidence: code diff + updated README + demo seed run success.
- Owner: Badr Karim
- Due: 2026-03-15

### T-003 (Risk R-003 / Finding F-003) — Tracebacks stored in query_runs
- Problem: full tracebacks stored in DB may leak sensitive info.
- Treatment: store sanitized message + correlation ID; keep full traceback only in local logs (not DB).
- Evidence: code diff + query_runs export showing sanitized field.
- Owner: Badr Karim
- Due: 2026-04-01

### T-004 (Risk R-004) — RBAC privilege creep
- Problem: RBAC misconfig without formal review evidence.
- Treatment: run quarterly access review; export RBAC grants; record findings and actions.
- Evidence: Access_Review_Record + RBAC export evidence; CT-02.
- Owner: Badr Karim
- Due: 2026-04-15

### T-005 (Risk R-005) — SQL safety validator gaps
- Problem: validator edge cases could allow unsafe behavior.
- Treatment: add/extend negative tests for sql_safety rules; document blocked patterns.
- Evidence: test results + blocked attempt evidence.
- Owner: Badr Karim
- Due: 2026-04-30

### T-006 (Risk R-006) — SSRF/target validation gaps
- Problem: target endpoint validation must be proven and reviewed.
- Treatment: document allowlisting rules; test blocked internal endpoints; store evidence.
- Evidence: blocked target evidence + validation documentation.
- Owner: Badr Karim
- Due: 2026-04-30

### T-007 (Risk R-007) — Secrets handling
- Problem: env secrets could leak via screenshots/logs.
- Treatment: enforce redaction rules; keep evidence sanitized; CI hygiene required.
- Evidence: hygiene pass + evidence redaction guide.
- Owner: Badr Karim
- Due: 2026-03-31

### T-008 (Risk R-008) — Monitoring cadence not evidenced
- Problem: no recorded weekly log review evidence.
- Treatment: run weekly log review checklist and store dated record.
- Evidence: Log review checklist entries + exports.
- Owner: Badr Karim
- Due: 2026-03-15

### T-009 (Risk R-009) — Integrity snapshot limitations
- Problem: snapshots may not detect all data-level changes.
- Treatment: document scope/limitations; review approach quarterly.
- Evidence: documented limitation + periodic review note.
- Owner: Badr Karim
- Due: 2026-05-01

### T-010 (Risk R-010) — Supply chain risk
- Problem: dependencies/images may have vulnerabilities.
- Treatment: implement monthly dependency/image review log; track findings.
- Evidence: dependency review record + TPRM updates.
- Owner: Badr Karim
- Due: 2026-04-30

## 2) Linkage to MAP tracker
All treatments must be tracked in:
- GRC_Master.xlsx → Issues & Remediation (MAP)
- Findings Register (for F-001/F-002/F-003)
