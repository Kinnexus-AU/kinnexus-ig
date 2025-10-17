RuleSet: ComboSearchImmunizationPatientVaccineCodeDateSort
* insert ComboSearchExpectation(#SHALL)
* insert ComboSearchPatientRequired
* insert ComboSearchVaccineCodeRequired
* insert ComboSearchDateRequired
* insert ComboSearch_SortRequired

RuleSet: CSImmunization
* rest.resource[+].type = #Immunization
* rest.resource[=].profile = Canonical(KinnexusImmunization)
* rest.resource[=].documentation = "If the responder supports the Immunization resource, the responder **SHALL** support the Kinnexus profile and the conformance expectations for the Immunization resource."

* insert ResourceConformanceExpectation(#SHOULD)

* insert ComboSearchImmunizationPatientVaccineCodeDateSort

* insert Interaction(#SHALL, #read)
* insert Interaction(#SHALL, #search-type)

* insert ReferencePolicy(#SHOULD, #resolves)

* insert SearchParamPatient
* insert SearchParam(#SHALL, [[vaccine-code]], [[http://hl7.org/fhir/SearchParameter/Immunization-vaccine-code]], #token, [[The requester **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe responder **SHALL** support both.]])
* insert SearchParam(#MAY, [[date]], [[http://hl7.org/fhir/SearchParameter/clinical-date]], #date, [[The requester **SHALL** provide a value precise to the *second + time offset*.\n\nThe responder **SHALL** support a value precise to the *second + time offset*. \n\nThe requester **SHALL** support these search comparators `gt`, `lt`, `ge`, `le`.\n\nThe responder **SHALL** support these search comparators `gt`, `lt`, `ge`, `le`.\n\nThe requester **SHOULD** support `multipleAnd`, and if `multipleAnd` is supported, **SHALL** support the search comparators `gt`, `lt`, `ge`, `le`.\n\nThe responder **SHOULD** support `multipleAnd`, and if `multipleAnd` is supported, **SHALL** support the search comparators `gt`, `lt`, `ge`, `le`.]])
* insert SearchParam_Sort
