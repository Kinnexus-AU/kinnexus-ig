RuleSet: ComboSearchAIPatientClinicalStatusCategorySort
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHOULD
* insert ComboSearchPatientRequired
* insert ComboSearchClinicalStatusRequired
* insert ComboSearchCategoryRequired
* insert ComboSearch_SortRequired
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"

RuleSet: ComboSearchParams
* rest.resource[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].valueCode = #SHOULD
* insert ComboSearchAIPatientClinicalStatusCategorySort

RuleSet: CSAllergyIntolerance
* insert ComboSearchParams

* rest.resource[=].type = #AllergyIntolerance
* rest.resource[=].profile = Canonical(KinnexusAllergyIntolerance)
* rest.resource[=].documentation = "If the responder supports the AllergyIntolerance resource, the responder **SHALL** support the Kinnexus profile and the conformance expectations for the AllergyIntolerance resource."

* insert Interaction(#SHALL, #read)
* insert Interaction(#SHALL, #search-type)

* insert ReferencePolicy(#SHOULD, #resolves)

* insert SearchParam(#MAY, [[clinical-status]], [[http://hl7.org/fhir/SearchParameter/AllergyIntolerance-clinical-status]], #token, [[The requester **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe responder **SHALL** support both.]])
* insert SearchParam(#SHALL, [[patient]], [[http://hl7.org.au/fhir/core/SearchParameter/au-core-clinical-patient]], #reference, [[The requester **SHALL** provide at least an id value and **MAY** provide both the Type and id values.\n\nThe responder **SHALL** support both.\n\nThe requester **SHOULD** support chained search patient.identifier using IHI, Medicare Number, and DVA Number identifiers as defined in the Kinnexus Patient profile.\n\nThe responder **SHOULD** support chained search patient.identifier using IHI, Medicare Number, and DVA Number identifiers as defined in the Kinnexus Patient profile.]])
* insert SearchParam(#SHALL, [[category]], [[http://hl7.org/fhir/SearchParameter/AllergyIntolerance-category]], #token, [[TODO: Write text]])
* insert SearchParam(#SHALL, [[_sort]], [[]], #string, [[The client and server **SHALL** support search result sorting by date and **MAY** support other values.]])
