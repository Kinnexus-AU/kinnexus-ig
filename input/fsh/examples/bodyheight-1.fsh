Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct

Instance: bodyheight-1
InstanceOf: KinnexusBodyHeight
Usage: #example
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"
* code.coding[0] = $loinc#8302-2 "Body height"
* code.coding[+] = $sct#50373000
* code.text = "height"
* subject = Reference(Patient/wang-li)
* effectiveDateTime = "2016-07-02"
* valueQuantity = 175 'cm' "cm"