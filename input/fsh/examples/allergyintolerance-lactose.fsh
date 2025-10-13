Alias: $allergyintolerance-clinical = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical
Alias: $allergyintolerance-verification = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification
Alias: $sct = http://snomed.info/sct

Instance: lactose
InstanceOf: KinnexusAllergyIntolerance
Usage: #example
* clinicalStatus = $allergyintolerance-clinical#active "Active"
* verificationStatus = $allergyintolerance-verification#confirmed "Confirmed"
* code = $sct#782415009 "Intolerance to lactose"
* patient = Reference(Patient/banks-mia-leanne)
* onsetDateTime = "2022"
* recordedDate = "2023-03-14"
* recorder = Reference(PractitionerRole/bobrester-bob-gp)
* reaction.manifestation[0] = $sct#21522001 "Abdominal pain"
* reaction.manifestation[+] = $sct#116289008 "Abdominal bloating"
* reaction.manifestation[+] = $sct#62315008 "Diarrhoea"
* reaction.severity = #mild