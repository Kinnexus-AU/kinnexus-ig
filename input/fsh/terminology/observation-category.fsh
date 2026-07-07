CodeSystem: KinnexusObservationCategory
Id: kinnexus-observation-category
Title: "Kinnexus Observation Category"
Description: "Kinnexus-specific `Observation.category` codes used to classify Observations produced by the app."
* ^url = "https://kinnexus.com.au/observation-category"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #interrai-assessment-summary "Assessment Summary" "A computed Assessment Summary Scale or CAP result, extracted on assessment sign-off."

ValueSet: KinnexusObservationCategoryVS
Id: kinnexus-observation-category
Title: "Kinnexus Observation Category ValueSet"
Description: "All Kinnexus-specific Observation category codes."
* ^status = #active
* ^experimental = false
* include codes from system KinnexusObservationCategory
