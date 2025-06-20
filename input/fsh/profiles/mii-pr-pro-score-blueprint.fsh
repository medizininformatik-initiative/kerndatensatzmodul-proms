Profile: MII_PR_PRO_Score_Blueprint
Parent: ObservationDefinition
Id: mii-pr-pro-score-blueprint
Title: "MII PR PRO Score Blueprint / Template"  
Description: "MII PR PRO Questionnaire, based on the FHIR Structure Data Capture Specification"

* code MS
* identifier 0..* MS
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

* preferredReportName


//* publisher = MII Setzen (RuleSet?)


// R5 Backport for relevant fields
/*
* url
* contact
* purpose
* copyright
* copyrightLabel
* approvalDate
* lastReviewDate
* effectivePeriod
* derivedFrom URI
* subject
* performerType

*/