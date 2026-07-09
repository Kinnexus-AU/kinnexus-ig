CodeSystem: KinnexusAssessmentOutputCode
Id: kinnexus-assessment-output-code
Title: "Kinnexus Assessment Output Code"
Description: "Standard algorithm output codes for the Assessment Summary Scales and CAPs (e.g. `sCPS`, `cADL`). Carried as a second `Observation.code.coding`. This is a fragment enumerating only the codes emitted by the app."
* ^url = "https://interrai.org/output-code"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #fragment
// Scales
* #sCPS "Cognitive Performance Scale (CPS)"
* #sCPS2 "Cognitive Performance Scale 2 (CPS2)"
* #sCOMM "Communication Scale"
* #sADLH "Activities of Daily Living Hierarchy Scale"
* #sADLSF "Activities of Daily Living Short Form Scale"
* #sADLLF "Activities of Daily Living Long Form Scale"
* #sPAIN "Pain Scale"
* #sSRMOOD "Self-reported Mood Scale"
* #sCPMOOD "Composite Mood Scale"
* #sCRMOOD "Clinician Rated Mood Scale"
* #sPURS "Pressure Ulcer Risk Scale"
* #sABS "Aggressive Behaviour Scale (ABS)"
* #sRISE "Revised Index of Social Engagement (RISE)"
* #sFRS "Fracture Risk Scale"
* #xFALLS "Falls Scale"
* #sBMI "Body Mass Index"
* #sCHESS "CHESS Scale"
* #s1STFALLLTC "First Fall Risk Scale"
// CAPs
* #cDELIR "Delirium CAP"
* #cCOMMUN "Communication CAP"
* #cBEHAV "Behaviour CAP"
* #cSOCFUNC "Social Relationship CAP"
* #cRESTR "Physical Restraints CAP"
* #cADL "Activities of Daily Living CAP"
* #cPAIN "Pain CAP"
* #cCARDIO "Cardiorespiratory Conditions CAP"
* #cDEHYD "Dehydration CAP"
* #cADD "Tobacco and Alcohol Use CAP"
* #cFEEDTB "Feeding Tube CAP"
* #cDRUG "Appropriate Medications CAP"
* #cURIN "Urinary Incontinence CAP"
* #cBOWEL "Bowel Conditions CAP"
* #cPULCER "Pressure Ulcer (Injury) CAP"
* #cNUTR "Undernutrition CAP"
* #cFALLS "Falls CAP"
* #cCOGNIT "Cognitive Loss CAP"
* #cACTIV "Activities CAP"
* #cMOOD "Mood CAP"

ValueSet: KinnexusAssessmentOutputCodeVS
Id: kinnexus-assessment-output-code
Title: "Kinnexus Assessment Output Code ValueSet"
Description: "All Assessment Summary Scale and CAP output codes emitted by the app."
* ^status = #active
* ^experimental = false
* include codes from system KinnexusAssessmentOutputCode
