Instance: mii-obsdef-pro-score-phq-9
InstanceOf: mii-pr-pro-score-blueprint
Title: "MII ObsDef PRO Score PHQ-9"
Description: "Patient Health Questionnaire (PHQ-9)"
Usage: #definition
* insert ObsDefVersion
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint)

* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = $LNC#44261-6 "Patient Health Questionnaire 9 item (PHQ-9) total score [Reported]"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* method = $LNC#44249-1 "PHQ-9 quick depression assessment panel [Reported.PHQ]" 
* quantitativeDetails.unit = $UCUM#1 // check if this is correct, or if we need to use a different unit of measure like score
* quantitativeDetails.decimalPrecision = 0
* qualifiedInterval.category = #absolute
* qualifiedInterval.range.high.value = 27 
* qualifiedInterval.range.low.value = 0 
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#decrease

// add reference https://doi.org/10.1016/j.jad.2017.08.060 for developmental publication