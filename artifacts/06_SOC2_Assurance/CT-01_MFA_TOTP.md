# CT-01 — TOTP MFA Enforcement (SOC 2 Security)

Owner: Badr Karim  
Control ID: SOC2-AC-01  
Objective: Verify that TOTP MFA is enforced for SDG interactive authentication when OTP is enabled.

## Control description
SDG supports TOTP MFA (Authenticator app). When otp_enabled is true for a user, login requires a valid OTP code in addition to password.

## Population
Authentication events for the test window (local demo environment).

## Test approach
Re-performance test (direct execution of the control).

## Test steps
1) Enable OTP for a test user:
   - Use the OTP setup/enable flow in SDG UI/API.
   - Important: do not capture or share any raw otp_secret values in evidence.
2) Attempt authentication with:
   - correct password + correct OTP (expected: success)
   - correct password + incorrect OTP (expected: deny)
   - incorrect password (expected: deny)
3) Validate logs:
   - Confirm audit logs record authentication attempts (sanitized).
   - Confirm OTP codes and secrets are not logged.

## Sample
- 5 successful attempts (valid password + valid OTP)
- 5 failed attempts (valid password + invalid OTP)
- 3 failed attempts (invalid password)

## Expected results
- Success only when both password and OTP are valid (for OTP-enabled users).
- Failure when OTP is invalid or password is invalid.
- No OTP secrets or OTP codes appear in logs or exported evidence.

## Actual results
Status: [Pending execution]
Notes: ___________________________

## Evidence to attach (redacted)
- Screenshots of OTP enable confirmation (no secrets shown)
- Screenshots of success and failure attempts (OTP codes redacted)
- Sanitized `audit_logs.csv` export reference
- Hygiene check pass output reference

## Conclusion
[Pending]
