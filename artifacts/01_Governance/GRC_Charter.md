# Governance Charter — Secure Database Gateway (SDG)

**Owner/Approver:** Badr Karim  
**Portfolio intent:** Demonstrate US-grade, evidence-driven GRC execution anchored on a real system (SDG).

## 1) Purpose
Operate a practical GRC operating model for SDG that supports:
- risk-based decision-making
- audit readiness and repeatable evidence collection
- transparent tracking of findings and remediation

## 2) Scope
### In scope (SDG boundary)
- SDG application (FastAPI backend + UI)
- Meta database (PostgreSQL) and target databases (MySQL/PostgreSQL)
- Authentication: password + TOTP MFA (Authenticator app)
- Authorization: RBAC (roles → allowed targets/templates)
- Query execution: template-only queries with strict validation (DDL-blocking SQL safety validation) and enforced limits
- SSRF safeguards for target connectivity
- Audit evidence: request audit logs + per-execution query run logs
- Data protection: encrypted secrets/credentials at rest (Fernet) and env-only secrets
- Integrity snapshots: snapshot/verify workflow for drift detection

### Out of scope (portfolio baseline)
- Production hosting controls unless a specific platform is defined (AWS/GCP/Azure/on-prem)
- Enterprise SIEM/SOAR integrations

## 3) Governance model
### Decision rights
- Risk acceptance: Badr Karim
- Policy approval: Badr Karim
- Exception approvals: Badr Karim (expiry required)
- Release/demo readiness: hygiene checks pass + evidence refreshed for critical controls

### Roles (operating model)
- GRC Owner: owns risk register, SoA/control mapping, evidence tracker, reporting cadence
- System Owner: accountable for security posture and remediation delivery
- Control Owners: maintain control operation and supply evidence
(For this portfolio, Badr Karim performs all roles to demonstrate capability.)

## 4) Cadence
- Weekly (operations): evidence freshness, log review completion, new findings, overdue remediation
- Monthly (assurance): KPI/KRI reporting, control health, vendor risk status, obligations review
- Per release/demo: change review evidence and refresh of critical control tests

## 5) Required artifacts (outputs)
- GRC_Master.xlsx (system of record)
- Risk methodology + register + treatment plan (ISO 31000 + ISO 27005 aligned)
- ISMS scope + SoA + control mapping (ISO 27001/27002 topic-based)
- NIST CSF 2.0 current/target profile + gap plan
- COBIT governance scorecard + objectives-to-metrics
- SOC 2 readiness matrix + evidence request list + control tests (CT-01/02/03)
- ISO 37301 compliance program pack + obligations register
- TPRM pack + remediation tracker
- Policies + exception process + policy inventory
- Audit issue log + MAP tracker
- Data inventory + classification + retention + mini DPIA
