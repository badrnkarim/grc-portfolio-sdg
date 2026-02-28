# KPI / KRI Pack — SDG (US-grade)

Owner: Badr Karim  
Purpose: Provide measurable performance and risk indicators for governance and assurance.

## KPI definitions (performance)
1) **Evidence Freshness %**
- Definition: % of in-scope controls with evidence collected within the required frequency window.
- Target: ≥ 90%
- Data source: GRC_Master.xlsx → Evidence Tracker

2) **Remediation On-time %**
- Definition: % of remediation actions (MAP items) closed by the target due date.
- Target: ≥ 90%
- Data source: GRC_Master.xlsx → Issues & Remediation (MAP)

3) **Mean Days to Close High Findings**
- Definition: Average age (days) of High severity findings from open date to closure.
- Target: ≤ 14 days (portfolio baseline)
- Data source: Findings Register + MAP

4) **% Releases/Demos with Change Review Evidence**
- Definition: % releases/demos where hygiene check + change review checklist evidence exists.
- Target: ≥ 95%
- Data source: Change review checklist + CI logs (if used)

5) **Control Test Completion %**
- Definition: % scheduled control tests (CT-01/02/03) completed within the period.
- Target: ≥ 90%
- Data source: SOC2 control test files + Evidence Tracker

## KRI definitions (risk indicators)
1) **Overdue High Risks**
- Definition: High risks past due date without treatment completion.
- Target: 0
- Data source: Risk Register

2) **High Findings Past Due**
- Definition: High findings with MAP due date exceeded.
- Target: 0
- Data source: MAP Tracker

3) **Failed Authentication / OTP Failures Trend**
- Definition: Count/trend of failed logins and OTP verification failures.
- Target: stable or decreasing trend
- Data source: audit_logs export (sanitized) + weekly log review notes

4) **Blocked Unsafe Query Attempts Trend**
- Definition: Count/trend of blocked queries by SQL safety validator.
- Target: stable/decreasing; investigate spikes
- Data source: app logs / query run outcomes (sanitized)

5) **Integrity Snapshot Verify Failures**
- Definition: number of failed integrity verifications per month.
- Target: 0
- Data source: integrity_snapshots evidence + admin snapshot/verify outcomes

## Reporting cadence
- Weekly: KRIs + urgent KPIs (evidence freshness, open high items)
- Monthly: full KPI/KRI dashboard and trend notes
