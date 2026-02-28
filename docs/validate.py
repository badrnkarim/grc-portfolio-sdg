import os, sys
required = [
"README.md",
"artifacts/00_Index/PORTFOLIO_INDEX.md",
"artifacts/01_Governance/GRC_Charter.md",
"artifacts/01_Governance/RACI.md",
"artifacts/01_Governance/KPI_KRI.md",
"artifacts/02_COBIT/COBIT_Scorecard.md",
"artifacts/02_COBIT/Objectives_to_Metrics.csv",
"artifacts/03_NIST_CSF_2/CSF_Profile.md",
"artifacts/03_NIST_CSF_2/Gap_Plan.csv",
"artifacts/04_ISO27001_27002/ISMS_Scope.md",
"artifacts/04_ISO27001_27002/SoA.csv",
"artifacts/04_ISO27001_27002/Control_Mapping_Matrix.csv",
"artifacts/05_Risk_ISO31000_27005/Risk_Methodology.md",
"artifacts/05_Risk_ISO31000_27005/Risk_Register.csv",
"artifacts/05_Risk_ISO31000_27005/Risk_Treatment_Plan.md",
"artifacts/06_SOC2_Assurance/SOC2_Readiness_Matrix.csv",
"artifacts/06_SOC2_Assurance/Evidence_Request_List.md",
"artifacts/06_SOC2_Assurance/CT-01_TOTP_MFA.md",
"artifacts/06_SOC2_Assurance/CT-02_RBAC.md",
"artifacts/06_SOC2_Assurance/CT-03_Audit_Logging.md",
"artifacts/07_ISO37301_Compliance/CMS_Charter.md",
"artifacts/07_ISO37301_Compliance/Obligations_Register.csv",
"artifacts/08_TPRM/Vendor_Intake.md",
"artifacts/08_TPRM/Vendor_Remediation_Tracker.csv",
"artifacts/09_Audit_Readiness/Issue_Log.csv",
"artifacts/09_Audit_Readiness/MAP_Tracker.csv",
"artifacts/10_Data_Protection/Data_Inventory.csv",
"artifacts/10_Data_Protection/Retention_Schedule.csv",
"artifacts/10_Data_Protection/Mini_DPIA.md",
"artifacts/11_GRC_Tooling/Evidence_Tracker.csv",
"artifacts/11_GRC_Tooling/Monthly_GRC_Report_Template.md",
"artifacts/12_Policies/Access_Control_MFA_Policy.md",
"artifacts/12_Policies/Logging_Monitoring_Standard.md",
"artifacts/12_Policies/Exception_Process.md",
"artifacts/13_Extras/Incident_Response_OnePager.md",
]
missing=[p for p in required if not os.path.exists(p)]
if missing:
    print("MISSING:")
    for m in missing: print(" -",m)
    sys.exit(1)
print("ALL REQUIRED FILES PRESENT ✅")
