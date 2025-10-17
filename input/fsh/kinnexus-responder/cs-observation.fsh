RuleSet: ComboSearchObservationPatientCodeSort
* insert ComboSearchExpectation(#SHALL)
* insert ComboSearchPatientRequired
* insert ComboSearchCodeRequired
* insert ComboSearch_SortRequired

RuleSet: CSObservation
* rest.resource[+].type = #Observation
* rest.resource[=].supportedProfile[0] = Canonical(KinnexusBodyHeight)
* rest.resource[=].supportedProfile[+] = Canonical(KinnexusBodyWeight)
* rest.resource[=].supportedProfile[+] = Canonical(KinnexusSmokingStatus)
* rest.resource[=].supportedProfile[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].supportedProfile[=].extension.valueCode = #SHALL
* rest.resource[=].supportedProfile[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].supportedProfile[=].extension.valueCode = #SHALL
* rest.resource[=].supportedProfile[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].supportedProfile[=].extension.valueCode = #SHALL
* rest.resource[=].documentation = "The responder **SHALL** support the Kinnexus profile and **SHALL** support the conformance expectations for the Observation resource."

* insert ResourceConformanceExpectation(#SHALL)

* insert ComboSearchObservationPatientCodeSort

* insert Interaction(#SHALL, #read)
* insert Interaction(#SHALL, #search-type)

* insert ReferencePolicy(#SHOULD, #resolves)

* insert SearchParamPatient
* insert SearchParam(#SHALL, [[code]], [[http://hl7.org/fhir/SearchParameter/clinical-code]], #token, [[The requester **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe responder **SHALL** support both.\n\nThe requester **SHALL** support `multipleOr`.\n\nThe responder **SHALL** support `multipleOr`.\n\nThe requester **SHALL** support search using the LOINC codes defined in each profile supported.\n\nThe responder **SHALL** support search using the LOINC codes defined in each profile supported.]])
* insert SearchParam_Sort
