RuleSet: ResourceConformanceExpectation(expectation)
* rest.resource[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].valueCode = {expectation}

RuleSet: ComboSearchExpectation(expectation)
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = {expectation}
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"

RuleSet: Interaction(expectation, code)
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = {expectation}
* rest.resource[=].interaction[=].code = {code}

RuleSet: ReferencePolicy(expectation, policy)
* rest.resource[=].referencePolicy = {policy}
* rest.resource[=].referencePolicy.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].referencePolicy.extension.valueCode = {expectation}

RuleSet: SearchParam(expectation, paramName, definition, paramType, documentation)
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = {expectation}
* rest.resource[=].searchParam[=].name = "{paramName}"
* rest.resource[=].searchParam[=].definition = "{definition}"
* rest.resource[=].searchParam[=].type = {paramType}
* rest.resource[=].searchParam[=].documentation = "{documentation}"

RuleSet: ComboSearch(url, paramName)
* rest.resource[=].extension[=].extension[+].url = "{url}"
* rest.resource[=].extension[=].extension[=].valueString = "{paramName}"

RuleSet: ComboSearchPatientRequired
* insert ComboSearch([[required]], [[patient]])

RuleSet: ComboSearchClinicalStatusRequired
* insert ComboSearch([[required]], [[clinical-status]])

RuleSet: ComboSearchCategoryRequired
* insert ComboSearch([[required]], [[category]])

RuleSet: ComboSearch_SortRequired
* insert ComboSearch([[required]], [[_sort]])

RuleSet: ComboSearchNameRequired
* insert ComboSearch([[required]], [[name]])

RuleSet: ComboSearchRelationshipRequired
* insert ComboSearch([[required]], [[relationship]])

RuleSet: ComboSearchStatusRequired
* insert ComboSearch([[required]], [[status]])

RuleSet: ComboSearchLocationRequired
* insert ComboSearch([[required]], [[location]])

RuleSet: ComboSearchClassRequired
* insert ComboSearch([[required]], [[class]])

RuleSet: ComboSearchDateRequired
* insert ComboSearch([[required]], [[date]])

RuleSet: ComboSearchVaccineCodeRequired
* insert ComboSearch([[required]], [[vaccine-code]])

RuleSet: ComboSearchCodeRequired
* insert ComboSearch([[required]], [[code]])

RuleSet: ComboSearchBirthdateRequired
* insert ComboSearch([[required]], [[birthdate]])

RuleSet: ComboSearchFamilyRequired
* insert ComboSearch([[required]], [[family]])

RuleSet: ComboSearchGenderRequired
* insert ComboSearch([[required]], [[gender]])