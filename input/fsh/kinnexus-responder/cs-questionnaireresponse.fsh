RuleSet: ComboSearchQRPatientStatusSortCount
* insert ComboSearchExpectation(#SHOULD)
* insert ComboSearchQuestionnaireRequired
* insert ComboSearchPatientRequired
* insert ComboSearchStatusRequired
* insert ComboSearch_SortRequired
* insert ComboSearch_CountRequired

RuleSet: CSQuestionnaireResponse
* rest.resource[+].type = #QuestionnaireResponse
* rest.resource[=].profile = Canonical(KinnexusQuestionnaireResponse)
* rest.resource[=].documentation = "The responder **SHALL** support the Kinnexus profile and **SHALL** support the conformance expectations for the QuestionnaireResponse resource."

* insert ResourceConformanceExpectation(#SHALL)

* insert ComboSearchQRPatientStatusSortCount

* insert Interaction(#SHALL, #read)
* insert Interaction(#SHALL, #search-type)

* insert ReferencePolicy(#SHOULD, #resolves)

* insert SearchParam(#SHALL, [[questionnaire]], [[http://hl7.org/fhir/SearchParameter/QuestionnaireResponse-questionnaire]], #reference, [[The requester **SHALL** provide at least an id value and **MAY** provide both the Type and id values.\n\nThe responder **SHALL** support both.]])
* insert SearchParamPatient
* insert SearchParam(#SHALL, [[status]], [[http://hl7.org/fhir/SearchParameter/QuestionnaireResponse-status]], #token, [[The requester **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe responder **SHALL** support both.\n\nThe requester **SHALL** support `multipleOr`.\n\nThe responder **SHALL** support `multipleOr`.]])
* insert SearchParam_Sort
* insert SearchParam_Count
