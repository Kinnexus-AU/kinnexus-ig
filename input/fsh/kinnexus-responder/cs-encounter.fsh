RuleSet: ComboSearchEncounterClassPatient
* insert ComboSearchExpectation(#SHOULD)
* insert ComboSearchClassRequired
* insert ComboSearchPatientRequired

RuleSet: ComboSearchEncounterDatePatient
* insert ComboSearchExpectation(#SHALL)
* insert ComboSearchDateRequired
* insert ComboSearchPatientRequired

RuleSet: ComboSearchEncounterPatientLocation
* insert ComboSearchExpectation(#SHOULD)
* insert ComboSearchPatientRequired
* insert ComboSearchLocationRequired

RuleSet: ComboSearchEncounterPatientStatus
* insert ComboSearchExpectation(#SHOULD)
* insert ComboSearchPatientRequired
* insert ComboSearchStatusRequired

RuleSet: CSEncounter
* insert ResourceConformanceExpectation(#SHOULD)

* insert ComboSearchEncounterDatePatient
* insert ComboSearchEncounterClassPatient
* insert ComboSearchEncounterPatientLocation
* insert ComboSearchEncounterPatientStatus

* rest.resource[=].type = #Encounter
* rest.resource[=].profile = Canonical(KinnexusEncounter)
* rest.resource[=].documentation = "If the responder supports the Encounter resource, the responder **SHALL** support the Kinnexus profile and the conformance expectations for the Encounter resource.\n\nThe Encounter resource can communicate the clinical indication using either a code in `Encounter.reasonCode` or a reference using `Encounter.reasonReference`. Although both `Encounter.reasonCode` and `Encounter.reasonReference` are marked as *Must Support*, a responder is not required to support both but **SHALL** support at least one of these elements. The requester **SHALL** support both elements."

* insert Interaction(#SHALL, #read)
* insert Interaction(#SHALL, #search-type)

* insert ReferencePolicy(#SHOULD, #resolves)

* insert SearchParam(#MAY, [[class]], [[http://hl7.org/fhir/SearchParameter/Encounter-class]], #token, [[The requester **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe responder **SHALL** support both.]])
* insert SearchParam(#MAY, [[date]], [[http://hl7.org/fhir/SearchParameter/clinical-date]], #date, [[The requester **SHALL** provide a value precise to the *second + time offset*.\n\nThe responder **SHALL** support a value precise to the *second + time offset*. \n\nThe requester **SHALL** support these search comparators `gt`, `lt`, `ge`, `le`.\n\nThe responder **SHALL** support these search comparators `gt`, `lt`, `ge`, `le`.\n\nThe requester **SHOULD** support `multipleAnd`, and if `multipleAnd` is supported, **SHALL** support the search comparators `gt`, `lt`, `ge`, `le`.\n\nThe responder **SHOULD** support `multipleAnd`, and if `multipleAnd` is supported, **SHALL** support the search comparators `gt`, `lt`, `ge`, `le`.]])
* insert SearchParam(#MAY, [[location]], [[http://hl7.org/fhir/SearchParameter/Encounter-location]], #reference, [[The requester **SHALL** provide at least an id value and **MAY** provide both the Type and id values.\n\nThe responder **SHALL** support both.]])
* insert SearchParam(#MAY, [[status]], [[http://hl7.org/fhir/SearchParameter/Encounter-status]], #token, [[The requester **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe responder **SHALL** support both.\n\nThe requester **SHALL** support `multipleOr`.\n\nThe responder **SHALL** support `multipleOr`.]])
* insert SearchParam(#SHALL, [[patient]], [[http://hl7.org.au/fhir/core/SearchParameter/au-core-clinical-patient]], #reference, [[The requester **SHALL** provide at least an id value and **MAY** provide both the Type and id values.\n\nThe responder **SHALL** support both.\n\nThe requester **SHOULD** support chained search patient.identifier using IHI, Medicare Number, and DVA Number identifiers as defined in the Kinnexus Patient profile.\n\nThe responder **SHOULD** support chained search patient.identifier using IHI, Medicare Number, and DVA Number identifiers as defined in the Kinnexus Patient profile.]])
