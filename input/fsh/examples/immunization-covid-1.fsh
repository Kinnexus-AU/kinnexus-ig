Alias: $air-vaccine-code-formats = https://www.humanservices.gov.au/organisations/health-professionals/enablers/air-vaccine-code-formats
Alias: $sct = http://snomed.info/sct

Instance: covid-1
InstanceOf: KinnexusImmunization
Usage: #example
* status = #completed
* vaccineCode.coding[0] = $air-vaccine-code-formats#COMIRN
* vaccineCode.coding[+] = $sct#1525011000168107 "Comirnaty"
* vaccineCode.text = "Pfizer Comirnaty"
* patient = Reference(Patient/bennelong-anne)
* encounter = Reference(Encounter/covid-admin-1)
* occurrenceDateTime = "2021-06-17"
* recorded = "2021-06-17"
* primarySource = true
* location = Reference(Location/bobrester-medical-center)
* manufacturer.display = "Pfizer Australia Ltd"
* lotNumber = "200000000P"
* site = $sct#368208006 "Structure of left upper arm"
* site.text = "Left upper arm"