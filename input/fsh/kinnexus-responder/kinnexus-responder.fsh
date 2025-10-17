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
* description = "This CapabilityStatement describes the basic rules for the [Kinnexus Responder actor](ActorDefinition-au-core-actor-responder.html) that is responsible for providing responses to queries submitted by Kinnexus Requesters. The complete list of FHIR profiles, RESTful operations, and search parameters supported by Kinnexus Responders are defined in this CapabilityStatement."
* jurisdiction = urn:iso:std:iso:3166#AU
* copyright = "All rights reserved Creative Commons License. Kinnexus© 2025+; Licensed Under Creative Commons No Rights Reserved."
* kind = #requirements
* fhirVersion = #4.0.1
* rest.mode = #server
* rest.documentation = "The Kinnexus Responder **SHALL**:\n1. Support the Kinnexus Patient resource profile.\n1. Support at least one additional resource profile from the list of Kinnexus Profiles.\n1. Implement the RESTful behaviour according to the FHIR specification.\n1. Return the following response classes:\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n   - (Status 400): invalid parameter\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n   - (Status 401/4xx): unauthorized request\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n   - (Status 403): insufficient scope\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n   - (Status 404): unknown resource\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n1. Support JSON source formats for all Kinnexus interactions.\n1. Declare a CapabilityStatement identifying the list of profiles, operations, and search parameters supported.\n\n\n\n\n\n\n\n\nThe Kinnexus Responder **SHOULD**:\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n1. Support XML source formats for all Kinnexus interactions."
* rest.security.description = "See the [Security and Privacy](security.html) page for Kinnexus security requirements."

* insert Extension([[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm]], valueInteger, 0)
* insert ExtensionWithChild([[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status]], valueCode, #trial-use, [[http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom]], valueCanonical, [[http://hl7.org.au/fhir/core/ImplementationGuide/hl7.fhir.au.core]])

* insert Contact([[HL7 Australia FHIR Work Group]], #url, [[https://confluence.hl7.org/display/HAFWG]], #work)

* insert FormatWithExpectation(#json, #SHALL)

* insert ImplementationGuideWithExpectation([[http://hl7.org.au/fhir/ImplementationGuide/hl7.fhir.au.base]], #SHALL)
* insert ImplementationGuideWithExpectation([[http://hl7.org/fhir/smart-app-launch/ImplementationGuide/hl7.fhir.uv.smart-app-launch|2.2.0]], #SHOULD)
* insert ImplementationGuideWithExpectation([[http://hl7.org/fhir/uv/ipa/ImplementationGuide/hl7.fhir.uv.ipa]], #SHOULD)

* insert SystemInteraction(#MAY, #transaction)
* insert SystemInteraction(#MAY, #batch)

* insert CSAllergyIntolerance
* insert CSEncounter
* insert CSImmunization
* insert CSObservation
* insert CSPatient
* insert CSRelatedPerson
* insert CSQuestionnaireResponse