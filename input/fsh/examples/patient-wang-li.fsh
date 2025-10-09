Alias: $australian-indigenous-status-1 = https://healthterminologies.gov.au/fhir/CodeSystem/australian-indigenous-status-1
Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203

Instance: patient-wang-li
InstanceOf: KinnexusPatient
Usage: #example
* extension.url = "http://hl7.org.au/fhir/StructureDefinition/indigenous-status"
* extension.valueCoding = $australian-indigenous-status-1#4 "Neither Aboriginal nor Torres Strait Islander origin"
* identifier.type = $v2-0203#MR "Medical record number"
* identifier.type.text = "Medical Record Number"
* identifier.system = "http://ns.electronichealth.net.au/id/hpio-scoped/medicalrecord/1.0/8003626566699734"
* identifier.value = "22421441"
* identifier.assigner.display = "Mount Mitchell Private Hospital"
* name.family = "Wang"
* name.given = "Li"
* name.prefix = "Mr"
* gender = #male
* birthDate = "1975-05-03"
* address.use = #home
* address.line = "29 Gadsby Street"
* address.city = "Blacktown"
* address.state = "NSW"
* address.postalCode = "2148"
* address.country = "AU"
* communication.language = urn:ietf:bcp:47#yue
* communication.language.text = "Cantonese"
* communication.preferred = true