# Incident Response (1-page) — SDG
Owner: Badr Karim

Triggers: suspected unauthorized access, OTP compromise, data exposure, integrity mismatch.

First actions:
1) Contain: disable accounts/roles; revoke tokens; rotate secrets if needed.
2) Preserve evidence: export audit_logs and query_runs; capture timestamps.
3) Investigate: scope affected templates/targets; verify integrity snapshots.
