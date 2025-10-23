RuleSet: CSRelatedPerson
* rest.resource[+].type = #RelatedPerson
* rest.resource[=].profile = Canonical(KinnexusRelatedPerson)
* rest.resource[=].documentation = "The responder **SHALL** support the Kinnexus profile and **SHALL** support the conformance expectations for the RelatedPerson resource."

* insert ResourceConformanceExpectation(#SHALL)

* insert Interaction(#SHALL, #read)
* insert Interaction(#SHALL, #search-type)

* insert ReferencePolicy(#SHOULD, #resolves)

* insert SearchParamPatient
