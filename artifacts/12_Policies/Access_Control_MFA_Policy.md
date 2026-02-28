# Access Control & MFA Policy — SDG

Owner/Approver: Badr Karim  
Version: v1.0  
Effective date: 2026-02-28  
Review cadence: Annual (or upon major architecture change)

## 1) Purpose
Define minimum access control requirements for SDG to ensure least privilege, strong authentication, and auditable access decisions.

## 2) Scope
Applies to:
- SDG UI and API access
- Admin functions (targets, templates, permissions, logs)
- Gateway query execution

## 3) Policy statements
### 3.1 Authentication
- Users must authenticate with strong credentials.
- Where enabled, **TOTP MFA (Authenticator app)** is required for interactive access.
- Shared accounts are prohibited.

### 3.2 Authorization (least privilege)
- Access is **deny-by-default** and granted explicitly via RBAC.
- Users may only:
  - view targets/templates granted through role mappings, and
  - execute templates against permitted targets.

### 3.3 Privileged access
- Admin privileges are limited to the minimum necessary.
- Privileged access must be reviewed quarterly (Access Review Record).

### 3.4 Session and secrets handling
- Secrets (JWT secret, Fernet key, target credentials, OTP secrets) must never be committed to source control.
- Secrets must not appear in evidence exports, screenshots, or logs.

## 4) Exceptions
Exceptions require:
- documented justification
- compensating controls
- explicit approval (Owner/Approver)
- expiry date

## 5) Evidence
- CT-01 (MFA) and CT-02 (RBAC) workpapers
- RBAC exports + quarterly access review record
- Hygiene check pass output
