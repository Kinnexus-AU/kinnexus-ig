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
* rest.resource[=].documentation = "If the responder supports the Observation resource, the responder **SHALL** support the Kinnexus profiles and the conformance expectations for the Observation resource."

* insert ResourceConformanceExpectation(#SHOULD)

* insert ComboSearchObservationPatientCodeSort

* insert Interaction(#SHALL, #read)
* insert Interaction(#SHALL, #search-type)

* insert ReferencePolicy(#SHOULD, #resolves)

* insert SearchParam(#SHALL, [[patient]], [[http://hl7.org.au/fhir/core/SearchParameter/au-core-clinical-patient]], #reference, [[The requester **SHALL** provide at least an id value and **MAY** provide both the Type and id values.\n\nThe responder **SHALL** support both.\n\nThe requester **SHOULD** support chained search patient.identifier using IHI, Medicare Number, and DVA Number identifiers as defined in the Kinnexus Patient profile.\n\nThe responder **SHOULD** support chained search patient.identifier using IHI, Medicare Number, and DVA Number identifiers as defined in the Kinnexus Patient profile.]])
* insert SearchParam(#SHALL, [[code]], [[http://hl7.org/fhir/SearchParameter/clinical-code]], #token, [[The requester **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe responder **SHALL** support both.\n\nThe requester **SHALL** support `multipleOr`.\n\nThe responder **SHALL** support `multipleOr`.\n\nThe requester **SHALL** support search using the LOINC codes defined in each profile supported.\n\nThe responder **SHALL** support search using the LOINC codes defined in each profile supported.]])
* insert SearchParam(#SHALL, [[_sort]], [[]], #string, [[The client and server **SHALL** support search result sorting by date and **MAY** support other values.]])
