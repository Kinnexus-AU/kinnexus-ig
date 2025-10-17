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

RuleSet: ComboSearchQuestionnaireRequired
* insert ComboSearch([[required]], [[questionnaire]])

RuleSet: ComboSearch_SortRequired
* insert ComboSearch([[required]], [[_sort]])

RuleSet: ComboSearch_CountRequired
* insert ComboSearch([[required]], [[_count]])

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

RuleSet: Contact(name, system, value, use)
* contact.name = "{name}"
* contact.telecom.system = {system}
* contact.telecom.value = "{value}"
* contact.telecom.use = {use}

RuleSet: ImplementationGuideWithExpectation(guide, expectation)
* implementationGuide[+] = "{guide}"
* implementationGuide[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* implementationGuide[=].extension.valueCode = {expectation}

RuleSet: FormatWithExpectation(format, expectation)
* format[+] = {format}
* format[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* format[=].extension.valueCode = {expectation}

RuleSet: SystemInteraction(expectation, code)
* rest.interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.interaction[=].extension.valueCode = {expectation}
* rest.interaction[=].code = {code}

RuleSet: Extension(url, type, value)
* extension[+].url = "{url}"
* extension[=].{type} = {value}

RuleSet: ExtensionWithChild(url, type, value, childUrl, childType, childValue)
* extension[+].url = "{url}"
* extension[=].{type} = {value}
* extension[=].{type}.extension.url = "{childUrl}"
* extension[=].{type}.extension.{childType} = "{childValue}"

RuleSet: SearchParamPatient
* insert SearchParam(#SHALL, [[patient]], [[http://hl7.org.au/fhir/core/SearchParameter/au-core-clinical-patient]], #reference, [[The requester **SHALL** provide at least an id value and **MAY** provide both the Type and id values.\n\nThe responder **SHALL** support both.]])

RuleSet: SearchParam_Count
* insert SearchParam(#SHALL, [[_count]], [[...]], #number, [[The server supports search result limiting.]])

RuleSet: SearchParam_Sort
* insert SearchParam(#SHALL, [[_sort]], [[...]], #string, [[The client and server **SHALL** support search result sorting by date and **MAY** support other values.]])