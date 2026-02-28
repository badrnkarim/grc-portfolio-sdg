# Logging & Monitoring Standard — SDG

Owner/Approver: Badr Karim  
Version: v1.0  
Effective date: 2026-02-28  
Review cadence: Annual (or upon major control changes)

## 1) Purpose
Ensure SDG generates sufficient audit evidence and monitoring signals to support security, investigations, and assurance readiness.

## 2) Scope
Applies to:
- Authentication events (success/failure)
- Admin actions (targets/templates/permissions/log access)
- Gateway query execution (runs, outcomes, rows)

## 3) Required logging (minimum fields)
### 3.1 Request audit logs (audit_logs)
Must capture at minimum:
- timestamp (created_at)
- user identifier (user_id)
- method, path, status code
- source IP (ip)

### 3.2 Query execution logs (query_runs)
Must capture at minimum:
- timestamps (started_at, finished_at)
- user_id
- target_id, template_id
- status, rows_returned

## 4) Prohibited logging (non-negotiable)
Do NOT log:
- JWT secret, Fernet key
- OTP secrets or OTP codes
- DB passwords/credentials
- Full stack traces in evidence exports
- Sensitive query parameters in public evidence

## 5) Monitoring cadence (evidence-driven)
- Weekly: log review checklist completion + anomaly notes
- Monthly: KPI/KRI trend review and report

## 6) Evidence exports (sanitized)
Exports used for portfolio/assurance must be sanitized:
- audit_logs.csv: sanitized columns only
- query_runs_sanitized.csv: sanitized columns only (no params, no tracebacks)
- integrity_snapshots.csv: limited fields (hash evidence)

## 7) Evidence
- CT-03 workpaper + sanitized exports
- Weekly Log Review Checklist entries
- Evidence naming standard compliance
