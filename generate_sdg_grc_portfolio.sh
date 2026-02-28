#!/usr/bin/env bash
set -euo pipefail

OWNER="Badr Karim"
EMAIL="badr.n.karim@gmail.com"
TODAY="$(date +%Y-%m-%d)"

mkdir -p artifacts/{00_Index,01_Governance,02_COBIT,03_NIST_CSF_2,04_ISO27001_27002,05_Risk_ISO31000_27005,06_SOC2_Assurance,07_ISO37301_Compliance,08_TPRM,09_Audit_Readiness,10_Data_Protection,11_GRC_Tooling,12_Policies,13_Extras} docs

# ---------------- ROOT README ----------------
cat > README.md <<EOF
# GRC Proof Portfolio — Secure Database Gateway (SDG)

**Owner:** ${OWNER} (${EMAIL})  
**Date:** ${TODAY}  
**Target roles:** GRC Intern • Third-Party Risk (TPRM) Intern  
**Anchor system:** Secure Database Gateway (SDG)

## SDG (anchor system) — code-true description
SDG is a secure database access layer that prevents direct database access by enforcing:
- **Authentication:** password + **TOTP MFA (Authenticator app)** using pyotp
- **Authorization:** RBAC (roles → allowed targets/templates)
- **Query execution:** approved templates only, SELECT/WITH SELECT only, strict validation + enforced LIMIT
- **SSRF protection:** host/port allowlists + metadata IP block + optional DNS resolution checks
- **Auditability:** request audit logs + per-execution query run logs
- **Confidential data protection:** encrypted fields using Fernet (APP_FERNET_KEY) for secrets/credentials

## Evidence-driven GRC
This portfolio includes governance, risk, controls, assurance readiness (SOC 2 style), compliance operations, TPRM, audit testing, and data protection operations — all mapped to SDG implementation points.

## Accuracy note
ISO standards are copyrighted; this portfolio does not reproduce them verbatim.
EOF

# ---------------- INDEX ----------------
cat > artifacts/00_Index/PORTFOLIO_INDEX.md <<EOF
# Portfolio Index — SDG (v1)
**Owner:** ${OWNER}  
**Date:** ${TODAY}

## LinkedIn “Featured 6” (best proof)
1) Governance Charter
2) Risk Register
3) Control Mapping Matrix (SDG → controls → evidence)
4) SOC 2 Readiness Matrix
5) TPRM pack (intake + checklist + tracker)
6) Mini DPIA

## Contents
Governance: artifacts/01_Governance/
COBIT: artifacts/02_COBIT/
NIST CSF 2.0: artifacts/03_NIST_CSF_2/
ISMS & Controls: artifacts/04_ISO27001_27002/
Risk: artifacts/05_Risk_ISO31000_27005/
SOC 2: artifacts/06_SOC2_Assurance/
ISO 37301 CMS: artifacts/07_ISO37301_Compliance/
TPRM: artifacts/08_TPRM/
Audit readiness: artifacts/09_Audit_Readiness/
Data protection: artifacts/10_Data_Protection/
Tooling: artifacts/11_GRC_Tooling/
Policies: artifacts/12_Policies/
Extras: artifacts/13_Extras/
EOF

# ---------------- GOVERNANCE ----------------
cat > artifacts/01_Governance/GRC_Charter.md <<EOF
# GRC Charter — SDG
**Owner:** ${OWNER}  
**Date:** ${TODAY}

## Purpose
Operate an evidence-driven GRC program for SDG to support audit readiness, stakeholder trust, and repeatable risk-based security decisions.

## Scope (code-true)
In scope:
- FastAPI backend and UI
- Password + **TOTP MFA** (Authenticator app) \`backend/app/core/security/otp.py\`
- RBAC authorization for targets/templates \`backend/app/routers/gateway.py\`
- Template-only query execution with validation + LIMIT \`sql_safety.py\`
- SSRF allowlisting \`ssrf.py\`
- Audit logs \`audit_logs\` via middleware \`backend/app/main.py\`
- Query execution logging \`query_runs\` in \`gateway.py\`
- Encrypted fields via Fernet \`crypto.py\` (APP_FERNET_KEY)

Out of scope (v1 portfolio baseline):
- Production hosting security controls unless a platform is selected
- SIEM/SOAR integrations

## Decision rights (portfolio model)
Risk acceptance, policy approval, and exceptions approval: **${OWNER}** (with expiry required for exceptions).

## Cadence (portfolio baseline)
Weekly: risks/issues + evidence freshness  
Monthly: KPI/KRI + control health + remediation status  
Per release: change review + evidence refresh for access/logging/change controls

## Core artifacts
Risk register, control matrix/SoA, evidence tracker, issue log + MAP, vendor register, obligations register, and control tests.
EOF

cat > artifacts/01_Governance/RACI.md <<EOF
# RACI — SDG GRC Operating Model (portfolio)
Owner/Approver: ${OWNER}

| Activity | GRC Owner | System Owner | Approver |
|---|---|---|---|
| Risk register & treatment | R | A | A |
| Control mapping & SoA | R | A | A |
| Evidence collection cadence | R | A | A |
| Control testing write-ups | R | A | A |
| Issue/MAP tracking | R | A | A |
| Exceptions approval | R | C | A |
EOF

cat > artifacts/01_Governance/KPI_KRI.md <<'EOF'
# KPI / KRI Pack — SDG (portfolio baseline)

KPIs:
- Evidence freshness % (target ≥ 90%)
- Remediation on-time % (target ≥ 90%)
- Mean days to close High findings (target ≤ 14)
- % releases with change-review evidence (target ≥ 95%)

KRIs:
- Overdue High risks (target 0)
- High findings past due (target 0)
- Repeated failed auth/OTP attempts trend
- Blocked unsafe query attempts trend
EOF

# ---------------- COBIT ----------------
cat > artifacts/02_COBIT/COBIT_Scorecard.md <<'EOF'
# COBIT 2019 — Governance Scorecard (SDG)

Demonstrated governance outcomes:
- Risk optimization: risk register, treatment tracking, acceptance decisions
- Security management: MFA, RBAC, audit logging, encryption for secrets
- Change governance: release discipline and hygiene checks
- Control monitoring: periodic control tests and issue remediation tracking
EOF

cat > artifacts/02_COBIT/Objectives_to_Metrics.csv <<EOF
Objective_Area,Metric,Target,Frequency,Owner,Evidence
Risk optimization,Overdue high risks,0,Weekly,${OWNER},artifacts/05_Risk_ISO31000_27005/Risk_Register.csv
Security management,Evidence freshness %,>=90%,Weekly,${OWNER},artifacts/11_GRC_Tooling/Evidence_Tracker.csv
Change governance,% releases reviewed,>=95%,Per release,${OWNER},PR/CI evidence screenshots
Control monitoring,High findings open,0,Weekly,${OWNER},artifacts/09_Audit_Readiness/Issue_Log.csv
EOF

# ---------------- NIST CSF 2.0 ----------------
cat > artifacts/03_NIST_CSF_2/CSF_Profile.md <<'EOF'
# NIST CSF 2.0 Profile — SDG (Outcome-based, code-true)

Current:
- GOVERN: governance artifacts exist (charter, RACI, KPIs/KRIs)
- IDENTIFY: core assets/data types identified (users/roles, targets, templates, logs)
- PROTECT: password + TOTP MFA; RBAC; template-only queries; encrypted secrets
- DETECT: audit logs + query run logs; unsafe SQL blocked by validator
- RESPOND: issues/MAP framework in place
- RECOVER: runbook exists for rebuild

Target (internship-ready):
- monthly reporting evidence + formal access reviews
- log review evidence + retention schedule evidence
- vendor register + annual review cadence
- control tests executed and stored as evidence
EOF

cat > artifacts/03_NIST_CSF_2/Gap_Plan.csv <<EOF
Gap,Function,Current,Target,Action,Owner,Due_Date,Status
Monthly GRC reporting,GOVERN,Template exists,Monthly evidence,Publish monthly report PDF,${OWNER},2026-03-31,Planned
Access review evidence,PROTECT,Not documented,Quarterly evidence,Create access review record + run review,${OWNER},2026-04-15,Planned
Log review evidence,DETECT,Not documented,Weekly evidence,Run log review checklist weekly,${OWNER},2026-03-15,Planned
EOF

# ---------------- ISMS / ISO 27001/27002 (topic-based) ----------------
cat > artifacts/04_ISO27001_27002/ISMS_Scope.md <<EOF
# ISMS Scope — SDG
Owner: ${OWNER}

System boundary:
- FastAPI app + UI
- TOTP MFA (Authenticator app): \`backend/app/core/security/otp.py\`
- RBAC: \`role_targets\`, \`role_templates\` enforced in \`gateway.py\`
- Templates: \`query_templates\` (SELECT-only enforced)
- Targets: \`target_dbs\` with encrypted password field
- Audit: \`audit_logs\` middleware + \`query_runs\` per execution
- Integrity snapshots: \`integrity_snapshots\` endpoints in admin router

Data types (classification):
- Confidential: audit logs, query runs, roles/permissions exports, templates
- Restricted: OTP secrets (encrypted), target credentials (encrypted), JWT secret, Fernet key (env only)
EOF

cat > artifacts/04_ISO27001_27002/SoA.csv <<EOF
Control_Topic,Applicable,Justification,Implementation_Status,Evidence_Pointer
MFA (TOTP),Y,Reduce account takeover risk,Implemented,otp.py + auth.py + CT-01
RBAC least privilege,Y,Restrict access by role,Implemented,gateway.py + CT-02
Template-only queries,Y,Prevent arbitrary SQL,Implemented,sql_safety.py + gateway.py
SSRF allowlisting,Y,Prevent internal network abuse,Implemented,ssrf.py + admin.py target validation
Encryption of secrets,Y,Protect credentials at rest,Implemented,crypto.py + models (password_enc / otp_secret_enc)
Audit logging,Y,Traceability for audit/IR,Implemented,main.py middleware + query_runs logging
Integrity verification,Y,Detect unexpected schema/rowcount drift,Implemented,admin.py integrity endpoints + integrity_snapshots
EOF

cat > artifacts/04_ISO27001_27002/Control_Mapping_Matrix.csv <<EOF
Control_Topic,Control_Objective,Implementation_Point,Evidence
TOTP MFA,Strong authentication,"otp.py, auth.py, users.otp_secret_enc",CT-01 + /auth/otp/setup & /enable screenshots (redacted)
RBAC,Least privilege access,"gateway.py + role_targets/role_templates",CT-02 + RBAC exports
SQL safety,Prevent unsafe queries,"sql_safety.py + bound params in gateway.py",Blocked query demo + unit tests (if present)
SSRF allowlist,Prevent internal endpoint abuse,"ssrf.py + target validation in admin.py",Attempt blocked target evidence
Encryption,Protect secrets/credentials,"crypto.py (Fernet) + password_enc/otp_secret_enc",Config evidence (no secrets) + stored ciphertext sample
Audit logging,Traceability,"main.py middleware + query_runs","audit_logs export + query_runs export"
Integrity snapshots,Integrity assurance,"admin.py /integrity/* + integrity_snapshots",Snapshot create + verify evidence
EOF

# ---------------- RISK ----------------
cat > artifacts/05_Risk_ISO31000_27005/Risk_Methodology.md <<'EOF'
# Risk Methodology (ISO 31000 / ISO 27005 aligned)

Likelihood (1–5): Rare, Unlikely, Possible, Likely, Almost certain
Impact (1–5): Negligible, Minor, Moderate, Major, Severe
Rating = Likelihood × Impact (High: 13–25, Medium: 5–12, Low: 1–4)

Acceptance rules:
- High: treatment + explicit approval
- Medium: planned mitigation
- Low: accept with rationale + review date
EOF

cat > artifacts/05_Risk_ISO31000_27005/Risk_Register.csv <<EOF
Risk_ID,Risk_Statement,Asset,Threat,Vulnerability,Impact,Likelihood,Rating,Treatment,Evidence/Notes
R-01,OTP setup endpoint returns raw secret (demo risk),MFA,Attacker/insider,Secret exposure during setup,5,2,10,Mitigate,auth.py returns otp_secret (remediate to QR-only)
R-02,Seed script hard-codes demo credentials,SDLC,Attacker,Credential reuse risk,4,3,12,Mitigate,seed_demo.py has Secure@2026!! and sdg_ro_password (move to env)
R-03,Full traceback stored in DB error_message,Logging,Attacker/insider,Sensitive info leakage in logs,4,3,12,Mitigate,gateway.py stores traceback in query_runs.error_message
R-04,RBAC reviews not documented,Access control,Insider,Privilege creep,4,3,12,Mitigate,Add quarterly access review evidence
R-05,No explicit login rate limiting shown,Auth,Brute force,Online guessing risk,4,3,12,Mitigate,Add throttling/lockout (portfolio gap)
EOF

cat > artifacts/05_Risk_ISO31000_27005/Risk_Treatment_Plan.md <<'EOF'
# Risk Treatment Plan (prioritized)

1) Remove raw OTP secret from /auth/otp/setup response (QR/URI only).
2) Move demo credentials out of seed scripts into environment variables.
3) Sanitize stored errors: do not store full tracebacks in DB; store a correlation ID.
4) Implement and evidence quarterly access reviews (RBAC).
5) Add authentication throttling/lockout policy + implementation notes.
EOF

# ---------------- SOC 2 ----------------
cat > artifacts/06_SOC2_Assurance/SOC2_Readiness_Matrix.csv <<EOF
TSC,Control_Objective,SDG_Control,Implementation,Evidence
Security,Logical access,TOTP MFA enforced,otp.py + auth.py,CT-01 + redacted screenshots
Security,Authorization,RBAC restricts targets/templates,gateway.py + role tables,CT-02 + RBAC exports
Security,Change management,Hygiene checks + review gate,run_demo.sh hygiene + git evidence,CI/PR evidence (recommended)
Security,Logging/monitoring,Audit logs + query runs,main.py + query_runs,CT-03 + exports
Security,Risk management,Risk register + treatment plan,portfolio artifacts,Risk register + MAP
EOF

cat > artifacts/06_SOC2_Assurance/Evidence_Request_List.md <<'EOF'
# SOC 2 Evidence Request List — SDG (audit-style)

Access controls:
- MFA test evidence (CT-01)
- RBAC grants export + quarterly review record

Change governance:
- hygiene_check.sh output
- CI pass screenshot (if Actions enabled)
- release checklist evidence

Logging/monitoring:
- audit_logs export
- query_runs export (sanitize params/error_message before sharing)
- weekly log review checklist

Risk & issues:
- risk register + treatment plan
- issue log + MAP tracker
EOF

cat > artifacts/06_SOC2_Assurance/CT-01_TOTP_MFA.md <<'EOF'
# CT-01 — TOTP MFA Enforcement (Authenticator app)

Objective: Only users with valid password + valid TOTP can login when otp_enabled is true.

Steps:
1) Enable OTP using /auth/otp/setup then /auth/otp/enable.
2) Attempt login with correct password + correct OTP (expect success).
3) Attempt login with correct password + wrong OTP (expect 401).
4) Confirm OTP secrets are not logged.

Evidence: redacted screenshots + reference to otp.py and auth.py.
EOF

cat > artifacts/06_SOC2_Assurance/CT-02_RBAC.md <<'EOF'
# CT-02 — RBAC Authorization (targets/templates)

Objective: User can only run templates/targets granted via role_targets/role_templates.

Steps:
1) Create role; grant role-template and role-target.
2) Allowed combo: expect success + query_run created.
3) Disallowed combo: expect 403.

Evidence: RBAC table export + run responses + query_runs export.
EOF

cat > artifacts/06_SOC2_Assurance/CT-03_Audit_Logging.md <<'EOF'
# CT-03 — Audit Logging Completeness

Objective: Admin actions and query executions are logged for traceability.

Steps:
1) Perform admin action (create template or grant permission).
2) Execute /gateway/run once.
3) Export audit_logs and query_runs; confirm required fields exist.

Evidence: CSV exports (redacted) + screenshots.
EOF

# ---------------- ISO 37301 (CMS) ----------------
cat > artifacts/07_ISO37301_Compliance/CMS_Charter.md <<EOF
# Compliance Management System (CMS) Charter — SDG
Owner: ${OWNER}

Purpose: Track and evidence compliance obligations relevant to SDG deployments.
Scope: Security/privacy obligations; supplier requirements; internal policies (sector-specific).
Cadence: Monthly obligations register review; quarterly training record.
EOF

cat > artifacts/07_ISO37301_Compliance/Obligations_Register.csv <<EOF
Obligation,Source,Applies_to,Requirement_Summary,Controls/Policies,Evidence,Status
Security safeguards,GLBA (conditional),Finance deployments,Safeguards program,MFA/RBAC/logging/vendor,Portfolio controls + tests,Conditional
Health information protections,HIPAA (conditional),Healthcare deployments,Access and audit controls,MFA/RBAC/audit logs,CT-01/02/03 + exports,Conditional
Consumer privacy rights,CCPA/CPRA (conditional),CA consumers,Data inventory/retention/vendor mgmt,Data pack + TPRM pack,DPIA + retention schedule,Conditional
EOF

# ---------------- TPRM ----------------
cat > artifacts/08_TPRM/Vendor_Intake.md <<'EOF'
# Vendor Intake (TPRM) — SDG (portfolio)

Suppliers used (practical):
- GitHub (code hosting)
- Docker images (postgres:16, mysql:8.0)
- Python dependencies (pyotp, cryptography, passlib[argon2], jose)

Vendor evidence (baseline):
- version pinning (requirements.txt)
- hygiene checks (run_demo.sh + hygiene_check.sh)
- periodic review (monthly dependency review log)
EOF

cat > artifacts/08_TPRM/Vendor_Remediation_Tracker.csv <<EOF
Vendor,Finding,Severity,Owner,Due_Date,Status,Notes
Docker images,Track image updates + CVEs,Medium,${OWNER},2026-03-31,Planned,Review monthly
Dependencies,Add monthly dependency review log,Medium,${OWNER},2026-03-31,Planned,Document in Extras
EOF

# ---------------- AUDIT READINESS ----------------
cat > artifacts/09_Audit_Readiness/Issue_Log.csv <<EOF
Issue_ID,Finding,Severity,Root_Cause,Recommendation,Owner,Due_Date,Status
ISS-001,/auth/otp/setup returns raw otp_secret,High,Demo shortcut,Return URI/QR only,${OWNER},2026-03-15,Planned
ISS-002,seed_demo.py hard-coded credentials,High,Demo shortcut,Move to env vars + docs,${OWNER},2026-03-15,Planned
ISS-003,query_runs stores full traceback,Medium,Debug convenience,Store sanitized error + correlation ID,${OWNER},2026-04-01,Planned
EOF

cat > artifacts/09_Audit_Readiness/MAP_Tracker.csv <<EOF
Issue_ID,Action,Owner,Due_Date,Verification_Evidence
ISS-001,Update auth.py to not return otp_secret,${OWNER},2026-03-15,Diff + test evidence
ISS-002,Update seed_demo.py to read creds from env,${OWNER},2026-03-15,Diff + run_demo evidence
ISS-003,Sanitize DB-stored errors,${OWNER},2026-04-01,Diff + query_runs sample
EOF

# ---------------- DATA PROTECTION ----------------
cat > artifacts/10_Data_Protection/Data_Inventory.csv <<EOF
Data_Type,System,Classification,Notes
Users (email, roles),meta DB,Confidential,users/roles tables
OTP secret (encrypted),meta DB,Restricted,users.otp_secret_enc encrypted by Fernet
Target DB credentials (encrypted),meta DB,Restricted,target_dbs.password_enc encrypted by Fernet
Audit logs,meta DB,Confidential,audit_logs table (method/path/status/ip/user_id)
Query runs,meta DB,Confidential,query_runs includes params + error_message (sanitize for sharing)
Integrity snapshots,meta DB,Confidential,integrity_snapshots stores table rowcounts hash
EOF

cat > artifacts/10_Data_Protection/Retention_Schedule.csv <<EOF
Data_Category,Retention,Notes
audit_logs,12 months,Portfolio baseline; adjust per org policy
query_runs,12 months,Sanitize params/error_message before sharing
integrity_snapshots,12 months,Used for drift detection evidence
EOF

cat > artifacts/10_Data_Protection/Mini_DPIA.md <<EOF
# Mini DPIA — SDG
Owner: ${OWNER}

Purpose: Provide controlled access to databases with strong authentication and auditability.

Key risks:
- RBAC misconfiguration exposes data
- OTP secret handling weaknesses
- Over-retention or over-detail in logs (params/tracebacks)

Mitigations:
- TOTP MFA + Argon2 password hashing
- RBAC allowlists for targets/templates
- Encrypt secrets/credentials via Fernet
- Log review cadence + retention schedule + sanitize errors
EOF

# ---------------- TOOLING ----------------
cat > artifacts/11_GRC_Tooling/Evidence_Tracker.csv <<EOF
Evidence_ID,Control,Method,Frequency,Owner,Notes
E-001,MFA test (CT-01),Screenshots + notes,Per release,${OWNER},Redact secrets
E-002,RBAC test (CT-02),RBAC export + 403 proofs,Monthly,${OWNER},
E-003,Audit log export,CSV export,Weekly,${OWNER},Redact sensitive fields
E-004,Integrity snapshot verification,Screenshot + export,Monthly,${OWNER},
EOF

cat > artifacts/11_GRC_Tooling/Monthly_GRC_Report_Template.md <<EOF
# Monthly GRC Report — SDG (Template)
Owner: ${OWNER}

- Executive summary
- Top risks (3–5)
- Control health (evidence freshness)
- Open issues and MAP status
- Supplier review status
- Next month priorities
EOF

# ---------------- POLICIES ----------------
cat > artifacts/12_Policies/Access_Control_MFA_Policy.md <<EOF
# Access Control & MFA Policy — SDG
Owner: ${OWNER}

- Strong passwords + TOTP MFA required for interactive access.
- Deny-by-default RBAC; permissions granted via role_targets and role_templates.
- Admin access is limited and reviewed quarterly.
- Shared accounts prohibited.
EOF

cat > artifacts/12_Policies/Logging_Monitoring_Standard.md <<EOF
# Logging & Monitoring Standard — SDG
Owner: ${OWNER}

Logging:
- audit_logs for requests (method/path/status/ip/user_id)
- query_runs for template executions (target/template/user/status/rows)

Monitoring:
- Weekly log review checklist (record completion)
- Investigate repeated auth failures, repeated blocked queries, unusual execution patterns

Never store secrets in logs (JWT secret, Fernet key, OTP secret, target DB passwords).
EOF

cat > artifacts/12_Policies/Exception_Process.md <<EOF
# Exception Process — SDG
Owner/Approver: ${OWNER}

1) Submit request with justification and compensating controls.
2) Approve/deny; approved exceptions require expiry date.
3) Review monthly; close expired exceptions.
EOF

# ---------------- EXTRAS ----------------
cat > artifacts/13_Extras/Incident_Response_OnePager.md <<EOF
# Incident Response (1-page) — SDG
Owner: ${OWNER}

Triggers: suspected unauthorized access, OTP compromise, data exposure, integrity mismatch.

First actions:
1) Contain: disable accounts/roles; revoke tokens; rotate secrets if needed.
2) Preserve evidence: export audit_logs and query_runs; capture timestamps.
3) Investigate: scope affected templates/targets; verify integrity snapshots.
EOF

# ---------------- VALIDATOR ----------------
cat > docs/validate.py <<'PY'
import os, sys
required = [
"README.md",
"artifacts/00_Index/PORTFOLIO_INDEX.md",
"artifacts/01_Governance/GRC_Charter.md",
"artifacts/01_Governance/RACI.md",
"artifacts/01_Governance/KPI_KRI.md",
"artifacts/02_COBIT/COBIT_Scorecard.md",
"artifacts/02_COBIT/Objectives_to_Metrics.csv",
"artifacts/03_NIST_CSF_2/CSF_Profile.md",
"artifacts/03_NIST_CSF_2/Gap_Plan.csv",
"artifacts/04_ISO27001_27002/ISMS_Scope.md",
"artifacts/04_ISO27001_27002/SoA.csv",
"artifacts/04_ISO27001_27002/Control_Mapping_Matrix.csv",
"artifacts/05_Risk_ISO31000_27005/Risk_Methodology.md",
"artifacts/05_Risk_ISO31000_27005/Risk_Register.csv",
"artifacts/05_Risk_ISO31000_27005/Risk_Treatment_Plan.md",
"artifacts/06_SOC2_Assurance/SOC2_Readiness_Matrix.csv",
"artifacts/06_SOC2_Assurance/Evidence_Request_List.md",
"artifacts/06_SOC2_Assurance/CT-01_TOTP_MFA.md",
"artifacts/06_SOC2_Assurance/CT-02_RBAC.md",
"artifacts/06_SOC2_Assurance/CT-03_Audit_Logging.md",
"artifacts/07_ISO37301_Compliance/CMS_Charter.md",
"artifacts/07_ISO37301_Compliance/Obligations_Register.csv",
"artifacts/08_TPRM/Vendor_Intake.md",
"artifacts/08_TPRM/Vendor_Remediation_Tracker.csv",
"artifacts/09_Audit_Readiness/Issue_Log.csv",
"artifacts/09_Audit_Readiness/MAP_Tracker.csv",
"artifacts/10_Data_Protection/Data_Inventory.csv",
"artifacts/10_Data_Protection/Retention_Schedule.csv",
"artifacts/10_Data_Protection/Mini_DPIA.md",
"artifacts/11_GRC_Tooling/Evidence_Tracker.csv",
"artifacts/11_GRC_Tooling/Monthly_GRC_Report_Template.md",
"artifacts/12_Policies/Access_Control_MFA_Policy.md",
"artifacts/12_Policies/Logging_Monitoring_Standard.md",
"artifacts/12_Policies/Exception_Process.md",
"artifacts/13_Extras/Incident_Response_OnePager.md",
]
missing=[p for p in required if not os.path.exists(p)]
if missing:
    print("MISSING:")
    for m in missing: print(" -",m)
    sys.exit(1)
print("ALL REQUIRED FILES PRESENT ✅")
PY

python3 docs/validate.py
echo "Portfolio generated ✅"
