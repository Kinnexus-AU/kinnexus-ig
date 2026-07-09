CodeSystem: KinnexusAssessmentMeasureType
Id: kinnexus-assessment-measure-type
Title: "Kinnexus Assessment Measure Type"
Description: "Classifies each Assessment Summary result by measure type — a computed Scale or a Care Assessment Protocol (CAP). Carried as an `Observation.category` so results can be filtered by measure type."
* ^url = "https://kinnexus.com.au/assessment-measure-type"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #scale "Scale"
* #cap "CAP"

ValueSet: KinnexusAssessmentMeasureTypeVS
Id: kinnexus-assessment-measure-type
Title: "Kinnexus Assessment Measure Type ValueSet"
Description: "All Assessment Summary measure-type codes."
* ^status = #active
* ^experimental = false
* include codes from system KinnexusAssessmentMeasureType
