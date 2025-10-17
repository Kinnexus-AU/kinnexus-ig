RuleSet: CSRelatedPerson
* rest.resource[+].type = #RelatedPerson
* rest.resource[=].profile = Canonical(KinnexusRelatedPerson)
* rest.resource[=].documentation = "If the responder supports the RelatedPerson resource, the responder **SHALL** support the Kinnexus profile and the conformance expectations for the RelatedPerson resource."

* insert ResourceConformanceExpectation(#SHOULD)

* insert Interaction(#SHALL, #read)
* insert Interaction(#SHALL, #search-type)

* insert ReferencePolicy(#SHOULD, #resolves)

* insert SearchParam(#SHALL, [[patient]], [[http://hl7.org.au/fhir/core/SearchParameter/au-core-clinical-patient]], #reference, [[The requester **SHALL** provide at least an id value and **MAY** provide both the Type and id values.\n\nThe responder **SHALL** support both.\n\nThe requester **SHOULD** support chained search patient.identifier using IHI, Medicare Number, and DVA Number identifiers as defined in the Kinnexus Patient profile.\n\nThe responder **SHOULD** support chained search patient.identifier using IHI, Medicare Number, and DVA Number identifiers as defined in the Kinnexus Patient profile.]] )