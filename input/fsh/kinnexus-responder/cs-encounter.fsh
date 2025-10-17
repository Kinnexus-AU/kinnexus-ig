RuleSet: ComboSearchEncounterPatientStatusSortCount
* insert ComboSearchExpectation(#SHOULD)
* insert ComboSearchPatientRequired
* insert ComboSearchStatusRequired
* insert ComboSearch_SortRequired
* insert ComboSearch_CountRequired

RuleSet: CSEncounter
* rest.resource[+].type = #Encounter
* rest.resource[=].profile = Canonical(KinnexusEncounter)
* rest.resource[=].documentation = "If the responder supports the Encounter resource, the responder **SHALL** support the Kinnexus profile and the conformance expectations for the Encounter resource.\n\nThe Encounter resource can communicate the clinical indication using either a code in `Encounter.reasonCode` or a reference using `Encounter.reasonReference`. Although both `Encounter.reasonCode` and `Encounter.reasonReference` are marked as *Must Support*, a responder is not required to support both but **SHALL** support at least one of these elements. The requester **SHALL** support both elements."

* insert ResourceConformanceExpectation(#SHALL)

* insert ComboSearchEncounterPatientStatusSortCount

* insert Interaction(#SHALL, #read)
* insert Interaction(#SHALL, #search-type)

* insert ReferencePolicy(#SHOULD, #resolves)

* insert SearchParamPatient
* insert SearchParam(#SHALL, [[status]], [[http://hl7.org/fhir/SearchParameter/Encounter-status]], #token, [[The requester **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe responder **SHALL** support both.\n\nThe requester **SHALL** support `multipleOr`.\n\nThe responder **SHALL** support `multipleOr`.]])
* insert SearchParam_Sort
* insert SearchParam_Count
