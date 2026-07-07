Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category

Profile: KinnexusAssessmentSummaryObservation
Parent: Observation
Id: KinnexusAssessmentSummaryObservation
Title: "Kinnexus Assessment Summary Observation"
Description: """
An Observation carrying one computed Assessment Summary Scale or CAP result.

One Observation is produced per Scale/CAP on assessment sign-off. Each Observation is self-describing: `code` names the measurement, `value[x]` is the computed result, `referenceRange` lists the measurement's bands (each graded band carries a severity in `referenceRange.type`), and `interpretation` grades the current value.
"""
* status = #final
* status ^short = "Always `final` — produced on assessment sign-off"

// Four categories: the standard survey category, the Kinnexus Assessment Summary marker,
// the clinical domain, and the measure type (Scale vs CAP).
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "coding.system"
* category ^slicing.rules = #open
* category ^short = "Survey classification, the Assessment Summary marker, the clinical domain, and the measure type"
* category contains
    survey 1..1 and
    assessmentSummary 1..1 and
    domain 1..1 and
    measureType 1..1
* category[survey] = $observation-category#survey
* category[survey] ^short = "Standard survey category"
* category[assessmentSummary] = KinnexusObservationCategory#interrai-assessment-summary
* category[assessmentSummary] ^short = "Marks this as an Assessment Summary result"
* category[domain].coding.system 1..1
* category[domain].coding.system = "https://kinnexus.com.au/assessment-domain"
* category[domain].coding.code 1..1
* category[domain].coding.code from KinnexusAssessmentDomainVS (required)
* category[domain] ^short = "The clinical domain this result belongs to"
* category[measureType].coding.system 1..1
* category[measureType].coding.system = "https://kinnexus.com.au/assessment-measure-type"
* category[measureType].coding.code 1..1
* category[measureType].coding.code from KinnexusAssessmentMeasureTypeVS (required)
* category[measureType] ^short = "Whether this result is a Scale or a CAP"

// code carries two codings: the measurement linkId and the algorithm output code.
* code 1..1
* code.text 1..1
* code.text ^short = "Human-readable measurement name"
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    scale 1..1 and
    outputCode 1..1
* code.coding[scale].system 1..1
* code.coding[scale].system = "https://kinnexus.com.au/interrai-scale"
* code.coding[scale].code 1..1
* code.coding[scale].code from KinnexusAssessmentScaleVS (required)
* code.coding[scale] ^short = "The measurement linkId (stable per-measurement key)"
* code.coding[outputCode].system 1..1
* code.coding[outputCode].system = "https://interrai.org/output-code"
* code.coding[outputCode].code 1..1
* code.coding[outputCode].code from KinnexusAssessmentOutputCodeVS (required)
* code.coding[outputCode] ^short = "The algorithm output code"

* subject 1..1
* subject only Reference(Patient)

* effective[x] 1..1
* effective[x] only dateTime
* effective[x] ^short = "The assessment sign-off date"

* performer only Reference(Organization or Practitioner)
* performer ^short = "The authoring organization and/or practitioner"

* derivedFrom 1..1
* derivedFrom only Reference(QuestionnaireResponse)
* derivedFrom ^short = "The source assessment QuestionnaireResponse"

* value[x] 0..1
* value[x] only CodeableConcept or integer or Quantity
* value[x] ^short = "Computed result: coded (choice), integer, or quantity"

* referenceRange ^short = "Measurement bands; each graded band carries a severity in referenceRange.type"
* referenceRange.type ^short = "Band severity, coded with v3 ObservationInterpretation"

* interpretation from http://hl7.org/fhir/ValueSet/observation-interpretation (extensible)
* interpretation ^short = "Current-value grade, coded with v3 ObservationInterpretation"
