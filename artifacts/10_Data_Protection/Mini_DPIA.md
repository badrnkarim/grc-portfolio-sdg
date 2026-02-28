# Mini DPIA — SDG (Data Protection Impact Assessment)

Owner/Approver: Badr Karim  
Purpose: Document privacy/data-protection risk considerations for SDG in a deployment-agnostic way.

## 1) Processing purpose
SDG provides controlled, audited, read-only access to target databases through a secure gateway that enforces authentication, authorization, query safety, and traceability.

## 2) Data categories (baseline)
SDG itself stores and processes:
- user identifiers (email) and role assignments
- RBAC grants (role_targets, role_templates)
- query templates (may contain schema/field intent)
- audit logs and query run history
- encrypted secrets/credentials at rest (OTP secret ciphertext, target credential ciphertext)

SDG may process additional personal/sensitive data depending on the target databases and query templates executed.

## 3) Necessity and proportionality
Controls are designed to minimize unnecessary access:
- deny-by-default RBAC
- template-only query execution
- validation (DDL-blocking SQL safety validation) and row limits
- audit logging to support accountability
- encryption for sensitive values at rest
- secrets restricted to environment variables (never committed)

## 4) Key risks
1) Unauthorized access due to RBAC misconfiguration or privilege creep  
2) Exposure of MFA setup secret during enrollment flow (demo shortcut risk)  
3) Overly detailed logs (tracebacks/params) exposing sensitive information  
4) Excessive retention of logs or RBAC exports beyond business need  
5) Exposure of internal hostnames/IPs or sensitive target metadata in shared evidence

## 5) Mitigations (baseline)
- TOTP MFA enforcement (CT-01)
- RBAC authorization tests and quarterly access review evidence (CT-02 + access review record)
- Log export sanitization (no secrets, no tracebacks, minimal columns)
- Retention schedule and secure disposal rules
- Evidence naming standard and redaction rules for public sharing
- Findings register + MAP tracking for known SDG issues

## 6) Residual risk decision
Residual risk is acceptable for portfolio/demo use with the above mitigations and with documented remediation for known findings.

Decision: Approved by Badr Karim  
Date: ___________
