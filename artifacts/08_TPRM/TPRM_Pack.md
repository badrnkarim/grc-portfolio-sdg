# Third-Party Risk Management (TPRM) Pack — SDG

Owner: Badr Karim  
Purpose: Provide a practical vendor risk management baseline aligned to common US assurance expectations.

## 1) TPRM scope (portfolio baseline)
This pack covers vendors/suppliers that influence SDG confidentiality, integrity, or availability:
- Source code hosting and CI: GitHub
- Container images used for dev/demo: postgres:16, mysql:8.0
- Open-source dependencies (PyPI): security-relevant libraries such as pyotp, cryptography, passlib[argon2], jose, etc.

Note: If SDG is deployed as SaaS or uses cloud providers (AWS/GCP/Azure), add those vendors to the vendor register.

## 2) Risk tiering (simple and defensible)
- High: vendor processes sensitive data or has privileged access / production impact
- Medium: vendor impacts build/runtime security but limited direct access to sensitive data
- Low: minimal security impact

## 3) Minimum controls expected from vendors (baseline)
- MFA for administrative access
- Vulnerability management and timely patching
- Incident response and notification process
- Encryption in transit and at rest where applicable
- Subprocessor transparency (where applicable)

## 4) Review cadence
- Monthly (portfolio baseline): dependency and container review check (updates, known issues)
- Quarterly: vendor register review and open remediation follow-up
- Per change: evaluate new vendor before adoption

## 5) Evidence outputs
- Vendor Register (in GRC_Master.xlsx + CSV tracker)
- Vendor Remediation Tracker (open findings, owner, due dates)
- Evidence of periodic review (short dated note or ticket)

## 6) Known SDG-relevant supplier risks
- Outdated container images or dependencies may introduce vulnerabilities
- Insecure CI/workflow configuration may introduce supply-chain exposure
- Overbroad permissions in GitHub settings may weaken change governance

Recommended evidence:
- record dependency/image review date and notes
- maintain CI hygiene workflow pass evidence
- document least privilege for repo access if applicable
