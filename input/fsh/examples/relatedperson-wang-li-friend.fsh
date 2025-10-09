Alias: $v3-RoleCode = http://terminology.hl7.org/CodeSystem/v3-RoleCode
Alias: $v2-0131 = http://terminology.hl7.org/CodeSystem/v2-0131

Instance: wang-li-friend
InstanceOf: KinnexusRelatedPerson
Usage: #example
* patient = Reference(Patient/wang-li)
* relationship.coding[0] = $v3-RoleCode#FRND "unrelated friend"
* relationship.coding[+] = $v2-0131#C "Emergency Contact"
* name.use = #usual
* name.family = "Rabbit"
* name.given[0] = "Peter"
* name.given[+] = "Rabbit"
* telecom.system = #phone
* telecom.value = "07 853 9191"
* telecom.use = #home
* address.use = #home
* address.line = "29 Gadsby Street"
* address.city = "Blacktown"
* address.state = "NSW"
* address.postalCode = "2148"
* address.country = "AU"