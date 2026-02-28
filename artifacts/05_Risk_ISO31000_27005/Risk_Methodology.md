# Risk Methodology — SDG (ISO 31000 / ISO 27005 aligned)

Owner/Approver: Badr Karim  
Purpose: Define a repeatable and defensible risk assessment method used for SDG.

## 1) Risk statement format (required)
Risk = Threat exploits Vulnerability impacting an Asset/Process, resulting in a business/security impact.

Template:
- Asset/Process:
- Threat:
- Vulnerability:
- Impact:
- Likelihood:
- Inherent risk score:
- Existing controls:
- Residual risk score:
- Treatment decision:

## 2) Scoring model (strong and simple)
### Likelihood (1–5)
1 Rare: requires highly unlikely conditions  
2 Unlikely: possible but not expected  
3 Possible: could occur under normal conditions  
4 Likely: expected to occur occasionally  
5 Almost Certain: expected to occur frequently  

### Impact (1–5)
1 Negligible: minimal disruption; no sensitive exposure  
2 Minor: limited impact; easily recoverable  
3 Moderate: measurable impact; limited sensitive exposure or service disruption  
4 Major: significant impact; likely sensitive exposure or extended outage  
5 Severe: material impact; high-scale exposure or severe integrity/availability loss  

### Inherent Risk Score
Inherent Score = Likelihood × Impact (range 1–25)

## 3) Risk rating thresholds (defensible)
- Low: 1–4
- Medium: 5–12
- High: 13–19
- Critical: 20–25

## 4) Residual risk
Residual likelihood and impact are re-scored after considering existing controls.
Residual Score = Residual Likelihood × Residual Impact

## 5) Risk treatment options
- Avoid: stop the activity or remove exposure
- Mitigate: implement or strengthen controls
- Transfer: shift risk via contract/insurance/vendor terms
- Accept: accept residual risk with explicit approval and review date

## 6) Acceptance rules (US-grade)
- Critical: not acceptable without mitigation plan and documented approval
- High: requires mitigation plan, owner, and due date; acceptance requires explicit approval
- Medium: mitigation planned or accept with documented rationale and review date
- Low: accept with rationale; review annually

## 7) Evidence requirements
Every High/Critical risk must have:
- a treatment plan item (MAP ticket)
- evidence link(s) for controls implemented/verified
- a review cadence and next review date

## 8) Review cadence
- Weekly: check overdue High/Critical risks and MAP actions
- Monthly: trend review of top risks and control health

