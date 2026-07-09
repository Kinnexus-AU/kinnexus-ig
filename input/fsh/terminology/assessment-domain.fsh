CodeSystem: KinnexusAssessmentDomain
Id: kinnexus-assessment-domain
Title: "Kinnexus Assessment Domain"
Description: "Clinical domains grouping each Assessment Summary Scale or CAP result. Carried as a second `Observation.category` so results can be organised by area of care."
* ^url = "https://kinnexus.com.au/assessment-domain"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #cognition-mental-health "Cognition and Mental Health"
* #falls-mobility-injury-risk "Falls, Mobility and Injury Risk"
* #pain-symptoms "Pain and Symptoms"
* #nutrition-hydration-feeding "Nutrition, Hydration and Feeding"
* #functional-status-independence "Functional Status and Independence"
* #clinical-complexity-instability "Clinical Complexity and Overall Instability"
* #mood-psychosocial-wellbeing "Mood and Psychosocial Wellbeing"
* #skin-integrity-pressure-injury "Skin Integrity and Pressure Injury"
* #continence-body-systems "Continence and Body Systems"
* #medication-lifestyle-risks "Medication and Lifestyle Risks"

ValueSet: KinnexusAssessmentDomainVS
Id: kinnexus-assessment-domain
Title: "Kinnexus Assessment Domain ValueSet"
Description: "All Assessment Summary clinical-domain codes."
* ^status = #active
* ^experimental = false
* include codes from system KinnexusAssessmentDomain
