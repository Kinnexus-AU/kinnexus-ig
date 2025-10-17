RuleSet: CSRelatedPerson
* rest.resource[+].type = #RelatedPerson
* rest.resource[=].profile = Canonical(KinnexusRelatedPerson)
* rest.resource[=].documentation = "If the responder supports the RelatedPerson resource, the responder **SHALL** support the Kinnexus profile and the conformance expectations for the RelatedPerson resource."

* insert ResourceConformanceExpectation(#SHOULD)

* insert Interaction(#SHALL, #read)
* insert Interaction(#SHALL, #search-type)

* insert ReferencePolicy(#SHOULD, #resolves)

* insert SearchParamPatient
