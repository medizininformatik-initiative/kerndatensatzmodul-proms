Instance: mii-obsdef-pro-score-phq-9
InstanceOf: ObservationDefinition
Title: "MII ObsDef PRO Score PHQ-9"
Description: "Patient Health Questionnaire (PHQ-9)"
Usage: #definition

* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = $LNC#44261-6 "Patient Health Questionnaire 9 item (PHQ-9) total score [Reported]"
* permittedDataType = #quantity
* multipleResultsAllowed = false
* method = $LNC#72166-2 "Patient Health Questionnaire 9 item (PHQ-9) total score [Reported]" // check loinc code, also check whether makes sense for german , or how to deal with PHQ-8
* quantitativeDetails.unit = $UCUM#1 // check if this is correct, or if we need to use a different unit of measure like score
* quantitativeDetails.decimalPrecision = 0
* qualifiedInterval.category = #absolute
* qualifiedInterval.range.high.value = 27 
* qualifiedInterval.range.low.value = 0 

// add reference https://doi.org/10.1016/j.jad.2017.08.060 for developmental publication