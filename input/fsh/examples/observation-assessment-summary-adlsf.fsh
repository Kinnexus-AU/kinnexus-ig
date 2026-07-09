Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category

Instance: observation-assessment-summary-adlsf-wang-li
InstanceOf: KinnexusAssessmentSummaryObservation
Usage: #example
Title: "Observation - Assessment Summary ADL Short Form Scale (Wang Li)"
Description: "An Assessment Summary Observation carrying the computed ADL Short Form Scale result for a resident, as produced on assessment sign-off."
* status = #final
* category[survey] = $observation-category#survey "Survey"
* category[assessmentSummary] = KinnexusObservationCategory#interrai-assessment-summary "Assessment Summary"
* category[domain] = KinnexusAssessmentDomain#functional-status-independence "Functional Status and Independence"
* category[measureType] = KinnexusAssessmentMeasureType#scale "Scale"
* code.coding[scale] = KinnexusAssessmentScale#adlsf-scale "Activities of Daily Living Short Form Scale"
* code.coding[outputCode] = KinnexusAssessmentOutputCode#sADLSF "Activities of Daily Living Short Form Scale"
* code.text = "Activities of Daily Living Short Form Scale"
* subject = Reference(Patient/patient-wang-li)
* effectiveDateTime = "2025-06-30"
* performer[0] = Reference(Organization/simulator)
* performer[+] = Reference(Practitioner/example-practitioner)
* derivedFrom = Reference(QuestionnaireResponse/example-assessment)
* valueInteger = 6
* referenceRange.low.value = 0
* referenceRange.high.value = 16
* referenceRange.text = "Higher = more dependency"
