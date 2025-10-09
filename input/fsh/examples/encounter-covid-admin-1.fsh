Alias: $v3-ActCode = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: $sct = http://snomed.info/sct
Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $v3-ParticipationType = http://terminology.hl7.org/CodeSystem/v3-ParticipationType

Instance: covid-admin-1
InstanceOf: KinnexusEncounter
Usage: #example
* status = #finished
* class = $v3-ActCode#AMB "ambulatory"
* serviceType = $sct#1575161000168105 "COVID-19 vaccination service"
* subject = Reference(Patient/bennelong-anne)
* subject.identifier.type = $v2-0203#MR
* subject.identifier.system = "http://mossypointmc.example.com/mrn/"
* subject.identifier.value = "872038020"
* subject.identifier.assigner.display = "Albion Hospital"
* participant.type = $v3-ParticipationType#PPRF "primary performer"
* participant.individual = Reference(PractitionerRole/bobrester-bob-gp)
* participant.individual.identifier.type = $v2-0203#EI "Employee number"
* participant.individual.identifier.type.text = "Employee Number"
* participant.individual.identifier.system = "http://ns.electronichealth.net.au/id/abn-scoped/service-provider-individual/1.0/12345678901"
* participant.individual.identifier.value = "12345678"
* participant.individual.identifier.assigner.display = "Bobrester Medical Center"
* period.start = "2021-06-17T09:20:00+10:00"
* period.end = "2021-06-17T09:35:00+10:00"
* serviceProvider = Reference(Organization/bobrester-medical-center)