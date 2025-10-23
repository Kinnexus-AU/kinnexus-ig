RuleSet: CSPatient
* rest.resource[+].type = #Patient
* rest.resource[=].profile = Canonical(KinnexusPatient)
* rest.resource[=].documentation = "Responders **SHALL** support the capability for a requester application to access the patient record using any of the following API calls:\n\n```GET [url]/Patient/[id]```\n\n```GET [url]/Patient?_id=[id]```\n\n```GET [url]/Patient?identifier=[identifier]```\n\nResponders are not required to support any additional search parameters, and requesters **SHOULD NOT** expect responders to do so.\n\nThe responder **SHALL** support the Kinnexus profile and **SHALL** support the conformance expectations for the Patient resource."

* insert ResourceConformanceExpectation(#SHALL)

* insert Interaction(#SHALL, #read)

* insert ReferencePolicy(#SHOULD, #resolves)
