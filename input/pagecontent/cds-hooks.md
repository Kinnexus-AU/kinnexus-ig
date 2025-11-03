### Overview
This page gives guidelines for populating and returning CDS Hooks response Cards

### CDS Hooks Anatomy

1. Synchronous, workflow-triggered CDS calls returning information and suggestions 
2. Launching a web page to provide additional information to the user 
3. Launching a user-facing SMART app when CDS requires additional interaction

The main concepts of the specification are **Services**, **CDS Clients**, and **Cards**.

#### CDS Services
A CDS Service is a service that provides recommendations and guidance through the RESTful APIs described by this specification. The primary APIs are Discovery, which allows a CDS Developer to publish the types of CDS Services it provides. The Service API that CDS Clients use to request decision support. The Feedback API through which services learn the outcomes of their recommendations and guidance.

#### CDS Clients
A CDS Client is an Electronic Health Record (EHR), or other clinical information system that uses decision support by calling CDS Services at specific points in the application's workflow called hooks. Each hook defines the hook context (contextual information available within the CDS Client and specific to the workflow) that is provided as part of the request. Each service advertises which hooks it supports and what prefetch data (information needed by the CDS Service to determine what decision support should be presented) it requires. In addition, CDS Clients typically provide the FHIR resource server location and associated authorization information as part of the request to enable services to request additional information.

#### Cards
Decision support is then returned to the CDS Client in the form of cards, which the CDS Client MAY display to the end-user as part of their workflow. Cards may be informational, or they may provide suggestions that the user may accept or reject they may provide a link to additional information or even launch a SMART app when additional user interaction is required.

### Discovery
A CDS Service is discoverable via a stable endpoint by CDS Clients. The Discovery endpoint includes information such as a description of the CDS Service, when it should be invoked, and any data that is requested to be prefetched.

A CDS Service provider exposes its discovery endpoint at:
```aiignore
{baseURL}/cds-services
```

### Used hooks

#### Patient view

##### Workflow
The user has just opened a patient's record; typically called only once at the beginning of a user's interaction with a specific patient's record.

##### Context
The patient whose record was opened, including their encounter, if applicable.

|Field|Optionality|Prefetch Token|Type| Description                                                                                                                                                                                                                                                                                                                            |
|-----|-----------|--------------|----|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|userId|REQUIRED|Yes|string| The id of the current user. Must be in the format [ResourceType]/[id]. \nFor this hook, the user is expected to be of type Practitioner, PractitionerRole, Patient, or RelatedPerson.\n Patient or RelatedPerson are appropriate when a patient or their proxy are viewing the record.\n For example, Practitioner/abc or Patient/123. |
|patientId|REQUIRED| 	Yes| 	string| 	The FHIR Patient.id of the current patient in context                                                                                                                                                                                                                                                                                 |
|encounterId| 	OPTIONAL| 	Yes| 	string| 	The FHIR Encounter.id of the current encounter in context                                                                                                                                                                                                                                                                             |

##### Examples

```json
"context": {
  "userId" : "PractitionerRole/123",
  "patientId" : "1288992"
}
```

```json
"context":{
  "userId" : "Practitioner/abc",
  "patientId" : "1288992",
  "encounterId" : "456"
}
```