Extension: AnonymisationDisabled
Id: anonymisation-disabled
Title: "Anonymisation Disabled"
Description: "When present and `true` on an Organization, the tenant has opted out of patient anonymisation: the app renders and stores patient identifying information normally instead of de-identifying it. Absent or `false` means anonymisation applies."
* ^url = "https://kinnexus.com.au/StructureDefinition/anonymisation-disabled"
* ^status = #active
* ^experimental = false
* ^context[0].type = #element
* ^context[0].expression = "Organization"
* value[x] 1..1
* value[x] only boolean
