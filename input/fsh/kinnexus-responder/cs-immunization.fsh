RuleSet: ComboSearchImmunizationPatientStatus
* insert ComboSearchExpectation(#SHALL)
* insert ComboSearchPatientRequired
* insert ComboSearchStatusRequired

RuleSet: ComboSearchImmunizationPatientDate
* insert ComboSearchExpectation(#SHOULD)
* insert ComboSearchPatientRequired
* insert ComboSearchDateRequired

RuleSet: ComboSearchImmunizationPatientVaccineCode
* insert ComboSearchExpectation(#MAY)
* insert ComboSearchPatientRequired
* insert ComboSearchVaccineCodeRequired

RuleSet: CSImmunization
* rest.resource[+].type = #Immunization
* rest.resource[=].profile = Canonical(KinnexusImmunization)
* rest.resource[=].documentation = "If the responder supports the Immunization resource, the responder **SHALL** support the Kinnexus profile and the conformance expectations for the Immunization resource."

* insert ResourceConformanceExpectation(#SHOULD)

* insert ComboSearchImmunizationPatientStatus
* insert ComboSearchImmunizationPatientDate
* insert ComboSearchImmunizationPatientVaccineCode

* insert Interaction(#SHALL, #read)
* insert Interaction(#SHALL, #search-type)

* insert ReferencePolicy(#SHOULD, #resolves)

* insert SearchParam(#MAY, [[date]], [[http://hl7.org/fhir/SearchParameter/clinical-date]], #date, [[The requester **SHALL** provide a value precise to the *second + time offset*.\n\nThe responder **SHALL** support a value precise to the *second + time offset*. \n\nThe requester **SHALL** support these search comparators `gt`, `lt`, `ge`, `le`.\n\nThe responder **SHALL** support these search comparators `gt`, `lt`, `ge`, `le`.\n\nThe requester **SHOULD** support `multipleAnd`, and if `multipleAnd` is supported, **SHALL** support the search comparators `gt`, `lt`, `ge`, `le`.\n\nThe responder **SHOULD** support `multipleAnd`, and if `multipleAnd` is supported, **SHALL** support the search comparators `gt`, `lt`, `ge`, `le`.]])
* insert SearchParam(#MAY, [[status]], [[http://hl7.org/fhir/SearchParameter/Immunization-status]], #token, [[The requester **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe responder **SHALL** support both.]])
* insert SearchParam(#MAY, [[vaccine-code]], [[http://hl7.org/fhir/SearchParameter/Immunization-vaccine-code]], #token, [[The requester **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe responder **SHALL** support both.]])
* insert SearchParam(#SHALL, [[patient]], [[http://hl7.org.au/fhir/core/SearchParameter/au-core-clinical-patient]], #reference, [[The requester **SHALL** provide at least an id value and **MAY** provide both the Type and id values.\n\nThe responder **SHALL** support both.\n\nThe requester **SHOULD** support chained search patient.identifier using IHI, Medicare Number, and DVA Number identifiers as defined in the Kinnexus Patient profile.\n\nThe responder **SHOULD** support chained search patient.identifier using IHI, Medicare Number, and DVA Number identifiers as defined in the Kinnexus Patient profile.]])
