# CT-01 — Email OTP MFA Enforcement (SOC 2 Security)

Owner: Badr Karim  
Control ID: SOC2-AC-01  
Objective: Verify that SDG enforces MFA using an email-delivered one-time password (OTP) when OTP is enabled.

## Control description
When OTP is enabled for a user, SDG requires a time-bound OTP code delivered via email as an additional factor during interactive authentication.

## Test approach
Re-performance test (direct execution of the control).

## Test steps (executed)
1) Attempt login with correct email/password.
2) Confirm SDG presents an OTP challenge step.
3) Retrieve the OTP code from email and submit it.
4) Confirm successful login and authenticated session.
5) Confirm OTP is not logged or stored in evidence artifacts.

## Expected results
- OTP challenge is required when OTP is enabled.
- Login succeeds only when the correct OTP is provided.
- OTP codes are not exposed in evidence artifacts.

## Actual results
Status: Executed on 2026-02-28 (Pass)  
Notes: OTP challenge displayed and successful login verified. Evidence captured and redacted.

## Evidence collected (paths)
- artifacts/14_Evidence/2026-02/SOC2_SEC_CT-01_EmailOTP_Code_Challenge_2026-02-28.png
- artifacts/14_Evidence/2026-02/SOC2_SEC_CT-01_EmailOTP_Login_Success_2026-02-28.png

## Conclusion
Pass — Email OTP MFA is enforced when enabled.
