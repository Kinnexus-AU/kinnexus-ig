CodeSystem: KinnexusAssessmentScale
Id: kinnexus-assessment-scale
Title: "Kinnexus Assessment Scale"
Description: "Codes identifying each Assessment Summary Scale or CAP by its questionnaire item linkId. Carried in `Observation.code.coding` and used as the stable per-measurement key."
* ^url = "https://kinnexus.com.au/interrai-scale"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
// Scales
* #cps-scale "Cognitive Performance Scale (CPS)"
* #cps2-scale "Cognitive Performance Scale 2 (CPS2)"
* #communication-scale "Communication Scale"
* #adlh-scale "Activities of Daily Living Hierarchy Scale"
* #adlsf-scale "Activities of Daily Living Short Form Scale"
* #adllf-scale "Activities of Daily Living Long Form Scale"
* #pain-scale "Pain Scale"
* #self-report-mood-scale "Self-reported Mood Scale"
* #composite-mood-scale "Composite Mood Scale"
* #clinician-rated-mood-scale "Clinician Rated Mood Scale"
* #pressure-ulcer-risk-scale "Pressure Ulcer Risk Scale"
* #aggressive-behaviour-scale "Aggressive Behaviour Scale (ABS)"
* #rise-scale "Revised Index of Social Engagement (RISE)"
* #fracture-risk-scale "Fracture Risk Scale"
* #falls-scale "Falls Scale"
* #bmi-scale "Body Mass Index"
* #chess-scale "CHESS Scale"
* #first-fall-risk-scale "First Fall Risk Scale"
// CAPs
* #delirium-cap "Delirium CAP"
* #communication-cap "Communication CAP"
* #behavior-cap "Behaviour CAP"
* #social-relationship-cap "Social Relationship CAP"
* #physical-restraints-cap "Physical Restraints CAP"
* #adl-cap "Activities of Daily Living CAP"
* #pain-cap "Pain CAP"
* #cardiorespiratory-cap "Cardiorespiratory Conditions CAP"
* #dehydration-cap "Dehydration CAP"
* #tobacco-alcohol-cap "Tobacco and Alcohol Use CAP"
* #feeding-tube-cap "Feeding Tube CAP"
* #appropriate-medications-cap "Appropriate Medications CAP"
* #urinary-incontinence-cap "Urinary Incontinence CAP"
* #bowel-conditions-cap "Bowel Conditions CAP"
* #pressure-ulcer-cap "Pressure Ulcer (Injury) CAP"
* #undernutrition-cap "Undernutrition CAP"
* #falls-cap "Falls CAP"
* #cognitive-loss-cap "Cognitive Loss CAP"
* #activities-cap "Activities CAP"
* #mood-cap "Mood CAP"

ValueSet: KinnexusAssessmentScaleVS
Id: kinnexus-assessment-scale
Title: "Kinnexus Assessment Scale ValueSet"
Description: "All Assessment Summary Scale and CAP linkId codes."
* ^status = #active
* ^experimental = false
* include codes from system KinnexusAssessmentScale
