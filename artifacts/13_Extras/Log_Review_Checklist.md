# Weekly Log Review Checklist — SDG

Owner: Badr Karim  
Purpose: Provide repeatable monitoring evidence (SOC2-MN-01 / SDG-LG-03).

## How to use
- Complete weekly.
- Attach/record sanitized exports used (audit_logs.csv, query_runs_sanitized.csv).
- Record findings and open tickets for anomalies.

## Checklist (weekly)
Date:
Reviewer: Badr Karim

### A) Authentication anomalies
- [ ] Review repeated failed logins and OTP failures
- [ ] Identify suspicious spikes or patterns
Notes:

### B) Authorization / RBAC anomalies
- [ ] Review denied runs (403) and unusual access attempts
- [ ] Confirm RBAC admin changes were expected (if any)
Notes:

### C) Query execution anomalies
- [ ] Review query run error rate trend
- [ ] Review unusual query volume spikes
Notes:

### D) Potential unsafe query signals
- [ ] Review blocked/failed safety validations (if tracked)
- [ ] Confirm LIMIT enforcement behavior in results (spot-check)
Notes:

### E) Integrity snapshot signals (monthly or if used)
- [ ] If integrity verify performed, confirm no mismatches
Notes:

### F) Follow-up actions
Tickets created/updated (IDs):
- 
Risk/Findings updated (IDs):
- 

Evidence references (paths, named per standard):
- 
