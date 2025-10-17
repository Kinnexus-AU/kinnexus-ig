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

* insert SearchParam(#SHALL, [[patient]], [[http://hl7.org.au/fhir/core/SearchParameter/au-core-clinical-patient]], #reference, [[The requester **SHALL** provide at least an id value and **MAY** provide both the Type and id values.\n\nThe responder **SHALL** support both.\n\nThe requester **SHOULD** support chained search patient.identifier using IHI, Medicare Number, and DVA Number identifiers as defined in the Kinnexus Patient profile.\n\nThe responder **SHOULD** support chained search patient.identifier using IHI, Medicare Number, and DVA Number identifiers as defined in the Kinnexus Patient profile.]])
* insert SearchParam(#SHALL, [[vaccine-code]], [[http://hl7.org/fhir/SearchParameter/Immunization-vaccine-code]], #token, [[The requester **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe responder **SHALL** support both.]])
* insert SearchParam(#MAY, [[date]], [[http://hl7.org/fhir/SearchParameter/clinical-date]], #date, [[The requester **SHALL** provide a value precise to the *second + time offset*.\n\nThe responder **SHALL** support a value precise to the *second + time offset*. \n\nThe requester **SHALL** support these search comparators `gt`, `lt`, `ge`, `le`.\n\nThe responder **SHALL** support these search comparators `gt`, `lt`, `ge`, `le`.\n\nThe requester **SHOULD** support `multipleAnd`, and if `multipleAnd` is supported, **SHALL** support the search comparators `gt`, `lt`, `ge`, `le`.\n\nThe responder **SHOULD** support `multipleAnd`, and if `multipleAnd` is supported, **SHALL** support the search comparators `gt`, `lt`, `ge`, `le`.]])
* insert SearchParam(#SHALL, [[_sort]], [[]], #string, [[The client and server **SHALL** support search result sorting by date and **MAY** support other values.]])
