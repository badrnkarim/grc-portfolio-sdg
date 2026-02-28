# Data Classification Standard — SDG (Portfolio Baseline)

Owner: Badr Karim  
Purpose: Define how SDG-related data is classified and handled for confidentiality and compliance readiness.

## Classification levels
### 1) Public
Information safe for public release.
Examples: README, non-sensitive architecture overview, sanitized portfolio artifacts.

Handling:
- No restrictions beyond integrity and accuracy.

### 2) Internal
Operational information not intended for public release but not highly sensitive.
Examples: runbooks without secrets, non-sensitive project notes.

Handling:
- Share on a need-to-know basis.

### 3) Confidential
Information that could cause harm if disclosed.
Examples:
- audit logs (sanitized for evidence)
- query run history
- RBAC exports (roles/permissions)
- query templates (may reveal structure)

Handling:
- Least privilege access
- Redact before public sharing
- Controlled retention

### 4) Restricted
Highly sensitive information requiring maximum protection.
Examples:
- JWT secret (AUTH_JWT_SECRET)
- Fernet key (APP_FERNET_KEY)
- OTP secret ciphertext (otp_secret_enc)
- target DB credential ciphertext (password_enc)
- any real passwords/tokens/keys

Handling (non-negotiable):
- Never commit to Git
- Never include in screenshots/evidence
- Store only in environment variables or secure secret storage
- Rotate on suspicion

## Evidence redaction rules
When producing portfolio evidence:
- Remove secrets and credentials entirely
- Avoid internal hostnames/IPs if sensitive
- Do not include full tracebacks or sensitive query parameters
- Follow: docs/EVIDENCE_NAMING_STANDARD.md
