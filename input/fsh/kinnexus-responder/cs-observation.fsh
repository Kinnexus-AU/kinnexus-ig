RuleSet: ComboSearchObservationPatientCategory
* insert ComboSearchExpectation(#SHALL)
* insert ComboSearchPatientRequired
* insert ComboSearchCategoryRequired

RuleSet: ComboSearchObservationPatientCategoryDate
* insert ComboSearchExpectation(#SHALL)
* insert ComboSearchPatientRequired
* insert ComboSearchCategoryRequired
* insert ComboSearchDateRequired

RuleSet: ComboSearchObservationPatientCode
* insert ComboSearchExpectation(#SHALL)
* insert ComboSearchPatientRequired
* insert ComboSearch([[required]], [[code]])

RuleSet: ComboSearchObservationPatientCategoryStatus
* insert ComboSearchExpectation(#SHOULD)
* insert ComboSearchPatientRequired
* insert ComboSearchCategoryRequired
* insert ComboSearchStatusRequired

RuleSet: ComboSearchObservationPatientCodeDate
* insert ComboSearchExpectation(#SHOULD)
* insert ComboSearchPatientRequired
* insert ComboSearch([[required]], [[code]])
* insert ComboSearchDateRequired

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

* insert ComboSearchObservationPatientCategory
* insert ComboSearchObservationPatientCategoryDate
* insert ComboSearchObservationPatientCode
* insert ComboSearchObservationPatientCategoryStatus
* insert ComboSearchObservationPatientCodeDate

* insert Interaction(#SHALL, #read)
* insert Interaction(#SHALL, #search-type)

* insert ReferencePolicy(#SHOULD, #resolves)

* insert SearchParam(#MAY, [[category]], [[http://hl7.org/fhir/SearchParameter/Observation-category]], #token, [[The requester **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe responder **SHALL** support both.\n\nThe requester **SHALL** support search using the category code defined in each profile supported.\n\nThe responder **SHALL** support search using the category code defined in each profile supported.]])
* insert SearchParam(#SHALL, [[code]], [[http://hl7.org/fhir/SearchParameter/clinical-code]], #token, [[The requester **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe responder **SHALL** support both.\n\nThe requester **SHALL** support `multipleOr`.\n\nThe responder **SHALL** support `multipleOr`.\n\nThe requester **SHALL** support search using the LOINC codes defined in each profile supported.\n\nThe responder **SHALL** support search using the LOINC codes defined in each profile supported.]])
* insert SearchParam(#MAY, [[date]], [[http://hl7.org/fhir/SearchParameter/clinical-date]], #date, [[The requester **SHALL** provide a value precise to the *second + time offset*.\n\nThe responder **SHALL** support a value precise to the *second + time offset*. \n\nThe requester **SHALL** support these search comparators `gt`, `lt`, `ge`, `le`.\n\nThe responder **SHALL** support these search comparators `gt`, `lt`, `ge`, `le`.\n\nThe requester **SHOULD** support `multipleAnd`, and if `multipleAnd` is supported, **SHALL** support the search comparators `gt`, `lt`, `ge`, `le`.\n\nThe responder **SHOULD** support `multipleAnd`, and if `multipleAnd` is supported, **SHALL** support the search comparators `gt`, `lt`, `ge`, `le`.]])
* insert SearchParam(#MAY, [[status]], [[http://hl7.org/fhir/SearchParameter/Observation-status]], #token, [[The requester **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe responder **SHALL** support both.\n\nThe requester **SHALL** support `multipleOr`.\n\nThe responder **SHALL** support `multipleOr`.]])
* insert SearchParam(#MAY, [[patient]], [[http://hl7.org.au/fhir/core/SearchParameter/au-core-clinical-patient]], #reference, [[The requester **SHALL** provide at least an id value and **MAY** provide both the Type and id values.\n\nThe responder **SHALL** support both.\n\nThe requester **SHOULD** support chained search patient.identifier using IHI, Medicare Number, and DVA Number identifiers as defined in the Kinnexus Patient profile.\n\nThe responder **SHOULD** support chained search patient.identifier using IHI, Medicare Number, and DVA Number identifiers as defined in the Kinnexus Patient profile.]])
