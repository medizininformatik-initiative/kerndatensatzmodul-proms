Profile: MII_PR_PRO_Score_Blueprint
Parent: ObservationDefinition
Id: mii-pr-pro-score-blueprint
Title: "MII PR PRO Score Blueprint / Template"  
Description: "MII PR PRO Questionnaire, based on the FHIR Structure Data Capture Specification"

* insert PR_CS_VS_Version
* code MS 
* code.coding  1..* MS

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding ^slicing.description = "Different code systems for the same questionnaire"
* code.coding ^slicing.ordered = false
* code.coding contains
    snomed 0..1 and
    loinc 0..1 and
    mii 0..1

* code.coding[loinc].code 1..1 MS
* code.coding[loinc].system 1..1 MS
* code.coding[loinc].system = "http://loinc.org" (exactly)
* code.coding[snomed].code 1..1 MS
* code.coding[snomed].system 1..1 MS
* code.coding[snomed].system = "http://snomed.info/sct" (exactly)
* code.coding[mii].code 1..1 MS
* code.coding[mii].system 1..1 MS
* code.coding[mii].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue" (exactly)

* permittedDataType MS
* quantitativeDetails.decimalPrecision MS
* quantitativeDetails.unit MS
* quantitativeDetails.customaryUnit MS
* qualifiedInterval MS
* qualifiedInterval.category MS
* qualifiedInterval.range.low MS
* qualifiedInterval.range.high MS
* qualifiedInterval.range.extension MS
* qualifiedInterval.range.extension contains
    MII_EX_PRO_Score_Score_Health_Correlation named ScoreHealthCorrelation 0..1 MS 
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept 1..1 MS

* preferredReportName MS


//* publisher = MII Setzen (RuleSet?)


// R5 Backport for relevant fields
/*
* url
* contact
* purpose
* copyright
// * copyrightLabel - R5 element, not available in R4
* approvalDate
* lastReviewDate
* effectivePeriod
* derivedFrom URI
* subject
* performerType

*/