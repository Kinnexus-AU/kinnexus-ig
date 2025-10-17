RuleSet: ComboSearchEncounterPatientStatusSortCount
* insert ComboSearchExpectation(#SHOULD)
* insert ComboSearchPatientRequired
* insert ComboSearchStatusRequired
* insert ComboSearch_SortRequired
* insert ComboSearch_CountRequired

RuleSet: CSEncounter
* rest.resource[+].type = #Encounter
* rest.resource[=].profile = Canonical(KinnexusEncounter)
* rest.resource[=].documentation = "The responder **SHALL** support the Kinnexus profile and **SHALL** support the conformance expectations for the Encounter resource."

* insert ResourceConformanceExpectation(#SHALL)

* insert ComboSearchEncounterPatientStatusSortCount

* insert Interaction(#SHALL, #read)
* insert Interaction(#SHALL, #search-type)

* insert ReferencePolicy(#SHOULD, #resolves)

* insert SearchParamPatient
* insert SearchParam(#SHALL, [[status]], [[http://hl7.org/fhir/SearchParameter/Encounter-status]], #token, [[The requester **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe responder **SHALL** support both.\n\nThe requester **SHALL** support `multipleOr`.\n\nThe responder **SHALL** support `multipleOr`.]])
* insert SearchParam_Sort
* insert SearchParam_Count
