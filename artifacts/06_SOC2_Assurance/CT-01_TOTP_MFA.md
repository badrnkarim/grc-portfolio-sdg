# CT-01 — TOTP MFA Enforcement (Authenticator app)

Objective: Only users with valid password + valid TOTP can login when otp_enabled is true.

Steps:
1) Enable OTP using /auth/otp/setup then /auth/otp/enable.
2) Attempt login with correct password + correct OTP (expect success).
3) Attempt login with correct password + wrong OTP (expect 401).
4) Confirm OTP secrets are not logged.

Evidence: redacted screenshots + reference to otp.py and auth.py.
