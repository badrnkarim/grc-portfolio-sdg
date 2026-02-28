# GRC Tickets Board (Operating System)

Owner: Badr Karim  
Board name: **GRC Tickets**  
Purpose: Run GRC work like a real program (traceable actions + evidence).

## Columns (required)
Backlog → This Week → In Progress → In Review → Evidence Collected → Done

## Ticket rules (audit-grade)
1) Every ticket must have:
   - Owner
   - Due date
   - Link to a Control ID and/or Risk ID (from GRC_Master.xlsx)
2) “Done” requires evidence:
   - An Evidence ID exists in GRC_Master.xlsx → Evidence Tracker tab
   - The evidence file follows `docs/EVIDENCE_NAMING_STANDARD.md`
3) Findings must create tickets:
   - Any SDG flaw goes into Findings Register + MAP tracker and becomes a ticket
4) Weekly cadence:
   - Move items from Backlog → This Week (max 5 active)
   - Close or re-scope unfinished tickets with updated due dates

## Suggested ticket types
- CONTROL: implement/strengthen a control
- EVIDENCE: collect/export evidence
- TEST: execute CT-01/02/03 and record results
- FINDING: remediate a documented flaw
- POLICY: create/update policy and review record
- TPRM: vendor review and remediation follow-up
