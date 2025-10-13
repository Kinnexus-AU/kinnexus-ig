Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct

Instance: bodyweight-1
InstanceOf: KinnexusBodyWeight
Usage: #example
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"
* code.coding[0] = $loinc#29463-7 "Body weight"
* code.coding[+] = $sct#27113001
* code.text = "weight"
* subject = Reference(Patient/banks-mia-leanne)
* effectiveDateTime = "2023-03-14"
* valueQuantity = 59 'kg' "kg"