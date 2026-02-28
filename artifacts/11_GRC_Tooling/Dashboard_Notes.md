# Metrics Dashboard Notes — SDG

Owner: Badr Karim  
Purpose: Define the minimum dashboard views used for monthly reporting.

## 1) Core charts (US-grade)
1) Evidence Freshness %
- Source: Evidence Tracker (GRC_Master.xlsx + Evidence_Tracker.csv)
- Definition: % controls with evidence collected within frequency window

2) Open Findings by Severity
- Source: Issue Log + Findings Register
- View: count by severity + aging buckets (0–7, 8–14, 15–30, 30+ days)

3) Remediation On-time %
- Source: MAP Tracker
- View: closed on-time vs late

4) Top Risks (Residual Score)
- Source: Risk Register
- View: top 5 by residual score with treatment status

5) Auth failures trend (if available)
- Source: audit_logs.csv (sanitized)
- View: failed auth/OTP attempts per week

6) Query risk signals (if available)
- Source: query_runs_sanitized.csv
- View: error rate trend; volume per week

## 2) Reporting
Include these charts in Monthly GRC Report as a snapshot with short notes:
- what changed
- why it changed
- what action is being taken

## 3) Data quality rules
- Never include secrets in dashboard exports
- Avoid internal hostnames/IPs if evidence is shared publicly
- Prefer sanitized exports for portfolio use
