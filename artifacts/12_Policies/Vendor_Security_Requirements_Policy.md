# Vendor Security Requirements Policy — SDG (TPRM Baseline)

Owner/Approver: Badr Karim  
Version: v1.0  
Effective date: 2026-02-28  
Review cadence: Annual (or upon major vendor change)

## 1) Purpose
Define minimum security requirements for vendors/suppliers that support or impact SDG confidentiality, integrity, or availability.

## 2) Scope
Applies to:
- code hosting and CI services (e.g., GitHub)
- container registries/images used for runtime
- software dependencies (open-source packages)
- any third party with access to sensitive SDG data or privileged operations

## 3) Minimum requirements (baseline)
Vendors must support or provide:
- MFA for administrative access
- vulnerability management and patching cadence
- incident response process and notification expectations
- encryption in transit and at rest where applicable
- subprocessor transparency where applicable
- least privilege access (permissions restricted to need)

## 4) Risk tiering
- High: processes sensitive data or has privileged access / production impact
- Medium: impacts build/runtime security but limited direct access to sensitive data
- Low: minimal security impact

## 5) Evidence and tracking
Required artifacts:
- Vendor Register + risk tier
- Vendor Remediation Tracker (findings, owners, due dates)
- Evidence of periodic review (monthly/quarterly note or ticket)

## 6) Exceptions
Any exception must be documented with:
- rationale
- compensating controls
- expiry date
- approval by Owner/Approver
