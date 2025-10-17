RuleSet: ComboSearchAIPatientCategoryClinicalStatusSort
* insert ComboSearchExpectation(#SHALL)
* insert ComboSearchPatientRequired
* insert ComboSearchCategoryRequired
* insert ComboSearchClinicalStatusRequired
* insert ComboSearch_SortRequired

RuleSet: CSAllergyIntolerance
* rest.resource[+].type = #AllergyIntolerance
* rest.resource[=].profile = Canonical(KinnexusAllergyIntolerance)
* rest.resource[=].documentation = "If the responder supports the AllergyIntolerance resource, the responder **SHALL** support the Kinnexus profile and the conformance expectations for the AllergyIntolerance resource."

* insert ResourceConformanceExpectation(#SHOULD)

* insert ComboSearchAIPatientCategoryClinicalStatusSort

* insert Interaction(#SHALL, #read)
* insert Interaction(#SHALL, #search-type)

* insert ReferencePolicy(#SHOULD, #resolves)

* insert SearchParamPatient
* insert SearchParam(#SHALL, [[category]], [[http://hl7.org/fhir/SearchParameter/AllergyIntolerance-category]], #token, [[TODO: Write text]])
* insert SearchParam(#SHALL, [[clinical-status]], [[http://hl7.org/fhir/SearchParameter/AllergyIntolerance-clinical-status]], #token, [[The requester **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe responder **SHALL** support both.]])
* insert SearchParam_Sort
