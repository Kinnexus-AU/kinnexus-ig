Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $sct = http://snomed.info/sct
Alias: $loinc = http://loinc.org

Instance: smokingstatus-current-smoker
InstanceOf: KinnexusSmokingStatus
Usage: #example
* status = #final
* category = $observation-category#social-history "Social History"
* category.text = "Social History"
* code.coding[0] = $sct#1747861000168109
* code.coding[+] = $loinc#72166-2
* code.text = "Smoking status"
* subject = Reference(Patient/wang-li)
* effectiveDateTime = "2016-07-02"
* valueCodeableConcept.coding[0] = $sct#77176002 "Current smoker"
* valueCodeableConcept.coding[+] = $loinc#LA18979-7
* valueCodeableConcept.text = "Smoker"