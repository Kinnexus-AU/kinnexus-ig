Extension: PatientTenantIdentifier
Id: patient-tenant-identifier
Title: "Patient Tenant Identifier"
Description: "The tenant that owns this Patient record within the shared multi-tenant store, identified by the tenant issuer (ISS). Its value mirrors the tenant `Organization`'s business identifier (system `https://kinnexus.com.au/Organization`, value the ISS), making a Patient's tenancy explicit and directly searchable instead of inferred from the patient's cross-reference identifier system."
* ^url = "https://kinnexus.com.au/StructureDefinition/patient-tenant-identifier"
* ^status = #active
* ^experimental = false
* ^context[0].type = #element
* ^context[0].expression = "Patient"
* value[x] 1..1
* value[x] only Identifier
* valueIdentifier.system 1..1
* valueIdentifier.system = "https://kinnexus.com.au/Organization"
* valueIdentifier.value 1..1
* valueIdentifier.value ^short = "The tenant issuer (ISS)"
