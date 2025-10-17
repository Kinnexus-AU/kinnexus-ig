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

* insert ResourceConformanceExpectation(#SHOULD)

* insert ComboSearchEncounterPatientStatusSortCount

* insert Interaction(#SHALL, #read)
* insert Interaction(#SHALL, #search-type)

* insert ReferencePolicy(#SHOULD, #resolves)

* insert SearchParam(#SHALL, [[patient]], [[http://hl7.org.au/fhir/core/SearchParameter/au-core-clinical-patient]], #reference, [[The requester **SHALL** provide at least an id value and **MAY** provide both the Type and id values.\n\nThe responder **SHALL** support both.\n\nThe requester **SHOULD** support chained search patient.identifier using IHI, Medicare Number, and DVA Number identifiers as defined in the Kinnexus Patient profile.\n\nThe responder **SHOULD** support chained search patient.identifier using IHI, Medicare Number, and DVA Number identifiers as defined in the Kinnexus Patient profile.]])
* insert SearchParam(#SHALL, [[status]], [[http://hl7.org/fhir/SearchParameter/Encounter-status]], #token, [[The requester **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe responder **SHALL** support both.\n\nThe requester **SHALL** support `multipleOr`.\n\nThe responder **SHALL** support `multipleOr`.]])
* insert SearchParam(#SHALL, [[_sort]], [[]], #string, [[The client and server **SHALL** support search result sorting by date and **MAY** support other values.]])
* insert SearchParam(#SHALL, [[_count]], [[]], #number, [[The server supports search result limiting.]])
