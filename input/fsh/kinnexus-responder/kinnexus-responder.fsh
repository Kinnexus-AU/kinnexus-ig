Instance: kinnexus-responder
InstanceOf: CapabilityStatement
Usage: #definition
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* extension[=].valueInteger = 2
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* extension[=].valueCode = #trial-use
* extension[=].valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* extension[=].valueCode.extension.valueCanonical = "http://hl7.org.au/fhir/core/ImplementationGuide/hl7.fhir.au.core"
* url = "https://kinnexus.org/CapabilityStatement/kinnexus-responder"
* version = "0.1.0-ci-build"
* name = "KinnexusResponderCapabilityStatement"
* title = "Kinnexus Responder CapabilityStatement"
* status = #active
* date = "2025-10-09"
* publisher = "HL7 Australia"
* contact.name = "HL7 Australia FHIR Work Group"
* contact.telecom.system = #url
* contact.telecom.value = "https://confluence.hl7.org/display/HAFWG"
* contact.telecom.use = #work
* description = "This CapabilityStatement describes the basic rules for the [Kinnexus Responder actor](ActorDefinition-au-core-actor-responder.html) that is responsible for providing responses to queries submitted by Kinnexus Requesters. The complete list of FHIR profiles, RESTful operations, and search parameters supported by Kinnexus Responders are defined in this CapabilityStatement."
* jurisdiction = urn:iso:std:iso:3166#AU
* copyright = "All rights reserved Creative Commons License. Kinnexus© 2025+; Licensed Under Creative Commons No Rights Reserved."
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #json
* format[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* format[=].extension.valueCode = #SHALL
* implementationGuide[0] = "http://hl7.org.au/fhir/ImplementationGuide/hl7.fhir.au.base"
* implementationGuide[+] = "http://hl7.org/fhir/smart-app-launch/ImplementationGuide/hl7.fhir.uv.smart-app-launch|2.2.0"
* implementationGuide[+] = "http://hl7.org/fhir/uv/ipa/ImplementationGuide/hl7.fhir.uv.ipa"
* implementationGuide[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* implementationGuide[=].extension.valueCode = #SHALL
* implementationGuide[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* implementationGuide[=].extension.valueCode = #SHOULD
* implementationGuide[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* implementationGuide[=].extension.valueCode = #SHOULD
* rest.mode = #server
* rest.documentation = "The Kinnexus Responder **SHALL**:\n1. Support the Kinnexus Patient resource profile.\n1. Support at least one additional resource profile from the list of Kinnexus Profiles.\n1. Implement the RESTful behaviour according to the FHIR specification.\n1. Return the following response classes:\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n   - (Status 400): invalid parameter\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n   - (Status 401/4xx): unauthorized request\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n   - (Status 403): insufficient scope\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n   - (Status 404): unknown resource\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n1. Support JSON source formats for all Kinnexus interactions.\n1. Declare a CapabilityStatement identifying the list of profiles, operations, and search parameters supported.\n\n\n\n\n\n\n\n\nThe Kinnexus Responder **SHOULD**:\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n1. Support XML source formats for all Kinnexus interactions."
* rest.security.description = "See the [Security and Privacy](security.html) page for Kinnexus security requirements."
* rest.interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.interaction[=].extension.valueCode = #MAY
* rest.interaction[=].code = #transaction
* rest.interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.interaction[=].extension.valueCode = #MAY
* rest.interaction[=].code = #batch

* insert CSAllergyIntolerance
* insert CSEncounter
* insert CSImmunization
* insert CSObservation
* insert CSPatient
* insert CSRelatedPerson
* insert CSQuestionnaireResponse