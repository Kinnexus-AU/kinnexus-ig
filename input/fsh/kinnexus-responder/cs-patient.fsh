RuleSet: ComboSearchPatientBirthdateFamily
* insert ComboSearchExpectation(#SHOULD)
* insert ComboSearchBirthdateRequired
* insert ComboSearchFamilyRequired

RuleSet: ComboSearchPatientBirthdateName
* insert ComboSearchExpectation(#SHOULD)
* insert ComboSearchBirthdateRequired
* insert ComboSearchNameRequired

RuleSet: ComboSearchPatientFamilyGender
* insert ComboSearchExpectation(#SHOULD)
* insert ComboSearchFamilyRequired
* insert ComboSearchGenderRequired

RuleSet: ComboSearchPatientGenderName
* insert ComboSearchExpectation(#SHOULD)
* insert ComboSearchGenderRequired
* insert ComboSearchNameRequired

RuleSet: CSPatient
* rest.resource[+].type = #Patient
* rest.resource[=].profile = Canonical(KinnexusPatient)
* rest.resource[=].documentation = "Responders **SHALL** support the capability for a requester application to access the patient record using any of the following API calls:\n\n```GET [url]/Patient/[id]```\n\n```GET [url]/Patient?_id=[id]```\n\n```GET [url]/Patient?identifier=[identifier]```\n\nResponders are not required to support any additional search parameters, and requesters **SHOULD NOT** expect responders to do so.\n\nThe responder **SHALL** support the Kinnexus profile and **SHALL** support the conformance expectations for the Patient resource."

* insert ResourceConformanceExpectation(#SHALL)

* insert ComboSearchPatientBirthdateFamily
* insert ComboSearchPatientBirthdateName
* insert ComboSearchPatientFamilyGender
* insert ComboSearchPatientGenderName

* insert Interaction(#SHALL, #read)
* insert Interaction(#SHALL, #search-type)

* insert ReferencePolicy(#SHOULD, #resolves)

* insert SearchParam(#SHALL, [[_id]], [[http://hl7.org/fhir/SearchParameter/Resource-id]], #token, [[The requester **SHOULD** support `_id`.\n\nThe responder **SHALL** support `_id`.]])
* insert SearchParam(#MAY, [[birthdate]], [[http://hl7.org/fhir/SearchParameter/individual-birthdate]], #date, [[The requester **SHALL** provide a value precise to the *day*.\n\nThe responder **SHALL** support a value a value precise to the *day*.\n\nThe requester **SHOULD** support these search comparators `gt`, `lt`, `ge`, `le`.\n\nThe responder **SHOULD** support these search comparators `gt`, `lt`, `ge`, `le`.\n\nThe requester **SHOULD** support `multipleAnd`, and if `multipleAnd` is supported, **SHALL** support the search comparators `gt`, `lt`, `ge`, `le`.\n\nThe responder **SHOULD** support `multipleAnd`, and if `multipleAnd` is supported, **SHALL** support the search comparators `gt`, `lt`, `ge`, `le`.]])
* insert SearchParam(#SHOULD, [[family]], [[http://hl7.org/fhir/SearchParameter/individual-family]], #string, [[]])
* insert SearchParam(#MAY, [[gender]], [[http://hl7.org/fhir/SearchParameter/individual-gender]], #token, [[The requester **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe responder **SHALL** support both.]])
* insert SearchParam(#MAY, [[indigenous-status]], [[http://hl7.org.au/fhir/SearchParameter/indigenous-status]], #token, [[The requester **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe responder **SHALL** support both.]])
* insert SearchParam(#SHALL, [[identifier]], [[http://hl7.org/fhir/SearchParameter/Patient-identifier]], #token, [[The requester **SHALL** provide both the system and code values.\n\nThe responder **SHALL** support both.\n\nThe requester **SHOULD** support search using IHI, Medicare Number, and DVA Number identifiers as defined in the profile.\n\nThe responder **SHOULD** support search using the using IHI, Medicare Number, and DVA Number identifiers as defined in the profile.]])
* insert SearchParam(#SHOULD, [[name]], [[http://hl7.org/fhir/SearchParameter/Patient-name]], #string, [[]])
* insert SearchParam(#MAY, [[gender-identity]], [[http://hl7.org.au/fhir/SearchParameter/gender-identity]], #token, [[The requester **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe responder **SHALL** support both.]])
