Instance: kinnexus-responder
InstanceOf: CapabilityStatement
Usage: #definition
* url = "https://kinnexus.org/CapabilityStatement/kinnexus-responder"
* version = "0.1.0-ci-build"
* name = "KinnexusResponderCapabilityStatement"
* title = "Kinnexus Responder CapabilityStatement"
* status = #active
* date = "2025-10-09"
* publisher = "HL7 Australia"
* description = "It lists the server's conformance expectations for the resource types required as a launch context, resource types required to support prepopulation of the form, resource types required to support writing back to the patient record, and QuestionnaireResponse requirements for managing form responses. These expectations include supported FHIR profiles, RESTful operations, and search parameters."
* jurisdiction = urn:iso:std:iso:3166#AU
* copyright = "All rights reserved Creative Commons License. Kinnexus© 2025+; Licensed Under Creative Commons No Rights Reserved."
* kind = #requirements
* fhirVersion = #4.0.1
* rest.mode = #server
* rest.documentation = "Kinnexus Launcher Server **SHALL**:
1. Support the [Kinnexus AllergyIntolerance resource profile](StructureDefinition-KinnexusAllergyIntolerance.html)
1. Support the [Kinnexus Encounter resource profile](StructureDefinition-KinnexusEncounter.html)
1. Support the [Kinnexus Immunization resource profile](StructureDefinition-KinnexusImmunization.html)
1. Support the [Kinnexus Observation resource profile](profiles-and-extensions.html#observation)
1. Support the [Kinnexus Patient resource profile](StructureDefinition-KinnexusPatient.html)
1. Support the [Kinnexus QuestionnaireResponse resource profile](StructureDefinition-KinnexusQuestionnaireResponse.html)
1. Support the [Kinnexus RelatedPerson resource profiles](StructureDefinition-KinnexusRelatedPerson.html)
1. Implement the RESTful behavior according to the FHIR specification
1. Support JSON source formats for all interactions"

* rest.security.cors = true
* rest.security.cors.extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.security.cors.extension[0].valueCode = #SHALL
* rest.security.service = http://terminology.hl7.org/CodeSystem/restful-security-service#SMART-on-FHIR
* rest.security.service.extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.security.service.extension[0].valueCode = #SHALL
* rest.security.description = "Smart Forms Launcher Server **SHALL**:
1. Support CORS headers
1. Support SMART on FHIR security services

Also see the [AU Core Security and Privacy](https://hl7.org.au/fhir/core/1.0.0/security.html) section for general considerations and recommendations."

* insert Extension([[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm]], valueInteger, 0)
* insert ExtensionWithChild([[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status]], valueCode, #trial-use, [[http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom]], valueCanonical, [[http://hl7.org.au/fhir/core/ImplementationGuide/hl7.fhir.au.core]])

* insert Contact([[HL7 Australia FHIR Work Group]], #url, [[https://confluence.hl7.org/display/HAFWG]], #work)

* insert FormatWithExpectation(#json, #SHALL)

* insert ImplementationGuideWithExpectation([[http://hl7.org/fhir/smart-app-launch/STU2.2/index.html]], #SHALL)
* insert ImplementationGuideWithExpectation([[https://build.fhir.org/ig/HL7/sdc/index.html]], #SHOULD)

* insert SystemInteraction(#MAY, #transaction)
* insert SystemInteraction(#MAY, #batch)

* insert CSAllergyIntolerance
* insert CSEncounter
* insert CSImmunization
* insert CSObservation
* insert CSPatient
* insert CSRelatedPerson
* insert CSQuestionnaireResponse