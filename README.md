# GRC Proof Portfolio — Secure Database Gateway (SDG)

**Owner:** Badr Karim (badr.n.karim@gmail.com)  
**Target roles:** GRC Intern • Third-Party Risk (TPRM) Intern  
**Availability:** June 2026 (U.S. Citizen)  
**Anchor system:** Secure Database Gateway (SDG)

## Executive summary
This repository is a practical, evidence-driven GRC portfolio anchored on SDG. It demonstrates the ability to:
- Define and operate a governance model (cadence, roles, reporting)
- Perform risk assessment with measurable scoring and treatment planning
- Map controls to a real system and maintain audit-ready evidence
- Prepare for assurance (SOC 2 style readiness, evidence requests, control testing)
- Operate compliance obligations tracking (ISO 37301-style CMS artifacts)
- Conduct third-party risk management (TPRM) with remediation tracking
- Manage data protection operations (inventory, classification, retention, mini DPIA)

## SDG (anchor system) — implementation-aligned description
SDG is a secure database access layer that prevents direct database access by enforcing:
- **Authentication:** password + **TOTP MFA (Authenticator app)** (pyotp)
- **Authorization:** RBAC (roles → allowed targets/templates)
- **Query execution:** template-only queries with strict validation (SELECT-only) and server-side LIMIT clamp
- **SSRF safeguards:** endpoint validation/allowlisting for targets
- **Auditability:** request audit logs + per-execution query run logs
- **Secrets protection:** encrypted sensitive fields (Fernet) and env-only secrets
- **Integrity snapshots:** snapshot/verify workflow supporting drift detection

## Repository structure
- `artifacts/` — all portfolio outputs (governance, risk, controls, SOC2, compliance, TPRM, data protection, tooling)
- `docs/` — standards and operating guides (evidence naming, tickets board)
- `artifacts/14_Evidence/` — evidence repository structure (files must follow naming standard; no secrets)

## Non-negotiable safety rules (audit-grade)
- Do not commit secrets (.env files, tokens, keys, passwords).
- Evidence shared publicly must be sanitized (no internal hostnames/IPs if sensitive, no tracebacks, no sensitive params).
- ISO standards are copyrighted; this portfolio avoids reproducing them verbatim and uses control topics/outcomes.
