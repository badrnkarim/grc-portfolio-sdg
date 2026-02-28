# CT-02 — RBAC Authorization for Targets/Templates (SOC 2 Security)

Owner: Badr Karim  
Control ID: SOC2-AC-02  
Objective: Verify RBAC enforces least privilege by allowing only approved template/target combinations per role.

## Control description
SDG uses RBAC to restrict:
- which targets a user can access (role_targets)
- which templates a user can execute (role_templates)

A user may only run a query when both:
- target is permitted, and
- template is permitted.

## Population
Gateway run requests for the test window (local demo environment).

## Test approach
Re-performance test with positive and negative scenarios.

## Preconditions
- A role exists (e.g., Admin)
- At least one target exists (e.g., Demo MySQL)
- At least one template exists (e.g., whoami)
- Role-target and role-template grants are controllable via the admin panel/API

## Test steps
1) Baseline: Export current RBAC grants (role_targets and role_templates).
2) Positive test (expected: success):
   - Grant Role → Target
   - Grant Role → Template
   - Execute template against target as a user assigned that role.
3) Negative test A (expected: deny):
   - Remove Role → Template grant
   - Attempt execution again (expect deny).
4) Negative test B (expected: deny):
   - Restore Role → Template
   - Remove Role → Target grant
   - Attempt execution again (expect deny).
5) Verify logging:
   - query_runs record exists for attempts (success/fail status)
   - audit logs record admin changes and run attempts (sanitized)

## Sample
- 1 successful run (allowed target + allowed template)
- 2 denied runs (missing template grant; missing target grant)

## Expected results
- Execution succeeds only for allowed target+template combinations.
- Execution is denied (403) when either grant is missing.
- Evidence exports show RBAC grants and query run outcomes.

## Actual results
Status: [Pending execution]
Notes: ___________________________

## Evidence to attach (redacted)
- RBAC exports: role_targets + role_templates (CSV)
- Screenshots of allowed run result
- Screenshots of denied runs (403)
- Sanitized `query_runs_sanitized.csv` export reference
- Sanitized `audit_logs.csv` export reference

## Conclusion
[Pending]
