# ISMS Scope — Secure Database Gateway (SDG)

Owner: Badr Karim  
Purpose: Define the ISMS boundary for SDG and establish what is in scope for controls, risk, and assurance evidence.

## 1) Scope statement
The ISMS scope covers SDG components and processes that provide controlled, audited, read-only access to target databases through a secure gateway:
- SDG application (backend API + UI)
- Meta database (PostgreSQL) for users, roles, targets, templates, logs, and snapshots
- Target databases (MySQL and PostgreSQL) accessed through configured targets
- Authentication with password + TOTP MFA (Authenticator app) (when enabled)
- RBAC authorization for targets and templates
- Template-based query execution with SQL safety validation and enforced limits
- Audit logging (request logs + query run logs) and integrity snapshot capability
- Secrets protection using environment variables and Fernet encryption for sensitive stored fields

## 2) In-scope assets
- SDG application source and configuration (excluding secrets)
- Meta DB records (users/roles, grants, templates, targets metadata, audit logs, query runs)
- Encrypted fields:
  - OTP secret ciphertext (otp_secret_enc)
  - target credential ciphertext (password_enc)
- Operational artifacts (runbook, hygiene check output, evidence exports)

## 3) Data types and classification (portfolio baseline)
- Confidential:
  - audit logs, query run history, RBAC exports, query templates
- Restricted:
  - encrypted secrets/credentials at rest, JWT secret, Fernet key (env only)
Notes:
- Secrets must never be committed to Git.
- Evidence shared publicly must be sanitized.

## 4) Interfaces and dependencies
- Docker Compose runtime for dev/demo (meta_postgres, target_mysql, target_postgres)
- Python dependencies (security-relevant: pyotp, cryptography, passlib[argon2])
- GitHub/Git tooling for change tracking and (optionally) CI checks

## 5) Exclusions (v1 portfolio baseline)
- Production hosting posture (cloud network controls, WAF, centralized SIEM) unless a target platform is defined.
- Enterprise identity provider integration (SSO/SAML) unless implemented.

## 6) Review cadence
- Scope review: annually or upon major architecture change
- Control mapping review: per release/during monthly assurance review
