# NIST CSF 2.0 Profile — SDG (Current vs Target)

Owner: Badr Karim  
Purpose: Express SDG security posture and GRC operations as outcome-based CSF profiles.

## 1) CURRENT profile (today)
### GOVERN (governance)
- Governance charter, RACI, KPI/KRI definitions exist
- Change review checklist exists for release/demo gating
- Findings are tracked (Findings Register + MAP tracking)

### IDENTIFY (asset/risk understanding)
- SDG assets identified: users/roles, targets, templates, logs, snapshots
- Initial risks documented (risk register template present)

### PROTECT (safeguards)
- Authentication: password + TOTP MFA (Authenticator) available/implemented
- Authorization: RBAC for targets/templates
- Query safety: DDL-blocking SQL safety validation + LIMIT clamp
- Secrets protection: encrypted fields (Fernet) + env-only secrets

### DETECT (monitoring)
- Audit logging exists: request audit logs + query run logs
- Integrity snapshots exist (snapshot/verify workflow)
- Formal weekly log review evidence is planned (checklist exists)

### RESPOND (response)
- Issues and remediation tracking exists (Issue Log + MAP Tracker)
- Incident response one-pager is planned (to be created in Extras)

### RECOVER (recovery)
- Runbook supports clean rebuild/reset (docker compose down -v, re-bootstrap env, re-migrate)

## 2) TARGET profile (internship-ready, US-grade)
### GOVERN
- Monthly GRC report issued (PDF) with KPI/KRI and trend notes
- Evidence freshness maintained ≥ 90%
- Formal risk acceptance and exception records exist

### IDENTIFY
- Complete data inventory + classification + retention schedule exists
- Vendor register includes periodic reviews (TPRM)

### PROTECT
- Access review record completed quarterly and stored as evidence
- Policies exist and are reviewed on cadence (policy inventory)

### DETECT
- Weekly log review checklist completed and stored as evidence
- Evidence exports (audit_logs/query_runs) performed and stored with naming standard

### RESPOND
- Control tests (CT-01/02/03) executed on schedule with pass/fail and evidence
- Incident response plan includes evidence capture steps

### RECOVER
- Recovery assumptions documented + at least one recorded recovery tabletop test

## 3) Mapping to portfolio artifacts
- Governance: `artifacts/01_Governance/`
- Risk: `artifacts/05_Risk_ISO31000_27005/`
- Controls/ISMS: `artifacts/04_ISO27001_27002/`
- Assurance: `artifacts/06_SOC2_Assurance/`
- Tooling: `artifacts/11_GRC_Tooling/`
