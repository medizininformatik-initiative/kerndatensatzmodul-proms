/*
SearchParameters can be found at https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter.
The SearchParameters listed here are only specific for the PRO module extensions and ObservationDefinition resource.
Most standard elements (code, status, subject, derivedFrom, etc.) are already covered by FHIR R4 core SearchParameters.
*/

// ============================================
// Questionnaire SearchParameters
// ============================================

Instance: mii-sp-pro-questionnaire-capabilities
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile
* insert Version
* name = "MII_SP_PRO_Questionnaire_Capabilities"
* status = #active
* experimental = true
* date = 2025-05-24
* description = "SearchParameter for Questionnaire.extension[capabilities] to filter questionnaires by capability flags (displayable, collectable, calculatable, extractable, populatable, domainAligned)"
* code = #capabilities
* base = #Questionnaire
* type = #token
* expression = "Questionnaire.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-ex-pro-questionnaire-capabilities').extension.where(url='displayable' or url='collectable' or url='calculatable' or url='extractable' or url='populatable' or url='domainAligned').value"

// ============================================
// ObservationDefinition SearchParameters
// ============================================
// Note: ObservationDefinition has NO core SearchParameters in FHIR R4
// We define all necessary SearchParameters for MS elements

Instance: mii-sp-pro-observationdefinition-code
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile
* insert Version
* name = "MII_SP_PRO_ObservationDefinition_Code"
* status = #active
* experimental = true
* date = 2025-05-24
* description = "SearchParameter for ObservationDefinition.code to find score definitions by code (LOINC, SNOMED, MII)"
* code = #code
* base = #ObservationDefinition
* type = #token
* expression = "ObservationDefinition.code"

Instance: mii-sp-pro-observationdefinition-permitted-datatype
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile
* insert Version
* name = "MII_SP_PRO_ObservationDefinition_PermittedDataType"
* status = #active
* experimental = true
* date = 2025-05-24
* description = "SearchParameter for ObservationDefinition.permittedDataType to filter score definitions by data type (Quantity, string, etc.)"
* code = #permitted-datatype
* base = #ObservationDefinition
* type = #token
* expression = "ObservationDefinition.permittedDataType"

Instance: mii-sp-pro-observationdefinition-preferred-report-name
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile
* insert Version
* name = "MII_SP_PRO_ObservationDefinition_PreferredReportName"
* status = #active
* experimental = true
* date = 2025-05-24
* description = "SearchParameter for ObservationDefinition.preferredReportName to search score definitions by display name"
* code = #preferred-report-name
* base = #ObservationDefinition
* type = #string
* expression = "ObservationDefinition.preferredReportName"

Instance: mii-sp-pro-observationdefinition-interval-category
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile
* insert Version
* name = "MII_SP_PRO_ObservationDefinition_QualifiedInterval_Category"
* status = #active
* experimental = true
* date = 2025-05-24
* description = "SearchParameter for ObservationDefinition.qualifiedInterval.category to filter by reference range category (reference, critical, absolute)"
* code = #interval-category
* base = #ObservationDefinition
* type = #token
* expression = "ObservationDefinition.qualifiedInterval.category"

Instance: mii-sp-pro-observationdefinition-unit
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile
* insert Version
* name = "MII_SP_PRO_ObservationDefinition_QuantitativeDetails_Unit"
* status = #active
* experimental = true
* date = 2025-05-24
* description = "SearchParameter for ObservationDefinition.quantitativeDetails.unit to filter score definitions by measurement unit"
* code = #unit
* base = #ObservationDefinition
* type = #token
* expression = "ObservationDefinition.quantitativeDetails.unit"

Instance: mii-sp-pro-observationdefinition-health-correlation
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile
* insert Version
* name = "MII_SP_PRO_ObservationDefinition_ScoreHealthCorrelation"
* status = #active
* experimental = true
* date = 2025-05-24
* description = "SearchParameter for ObservationDefinition.qualifiedInterval.range.extension[ScoreHealthCorrelation] to filter by health correlation direction (higher scores = better/worse health)"
* code = #health-correlation
* base = #ObservationDefinition
* type = #token
* expression = "ObservationDefinition.qualifiedInterval.range.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-ex-pro-score-score-health-correlation').value.coding"
