// ===== PROMIS Cognitive Function SF 4a ObservationDefinitions =====

// Raw Score ObservationDefinition
Instance: mii-obsdef-pro-promis-cognitive-function-sf4a-raw-score
InstanceOf: mii-pr-pro-score-blueprint
Title: "MII ObsDef PRO PROMIS Cognitive Function SF 4a Raw Score"
Description: "PROMIS Cognitive Function Short Form 4a Raw Score (4-20 range)"
Usage: #definition

* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = $LNC#81533-2 "PROMIS short form - cognitive function 4a - version 2.0 raw score"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* method.text = "PROMIS Cognitive Function SF 4a"
* quantitativeDetails.unit = $UCUM#{score} "score"
* quantitativeDetails.decimalPrecision = 0
* qualifiedInterval.category = #absolute
* qualifiedInterval.range.low.value = 4
* qualifiedInterval.range.high.value = 20
* qualifiedInterval.context.text = "Raw score range for 4 items with 1-5 scale (reverse scored)"
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#increase
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.text = "Higher scores indicate better cognitive function"

// Reference to scoring manual
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-citation"
* extension[=].valueString = "PROMIS Cognitive Function Scoring Manual, Version 3 June 2022. Available at: https://www.healthmeasures.net/images/PROMIS/manuals/Scoring_Manual_Only/PROMIS_Cognitive_Function_Scoring_Manual_03June2022.pdf"

// T-Score ObservationDefinition
Instance: mii-obsdef-pro-promis-cognitive-function-sf4a-tscore
InstanceOf: mii-pr-pro-score-blueprint
Title: "MII ObsDef PRO PROMIS Cognitive Function SF 4a T-Score"
Description: "PROMIS Cognitive Function Short Form 4a T-Score"
Usage: #definition

* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = $LNC#81538-1 "PROMIS cognitive function - version 2.0 T-score"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* method.text = "PROMIS Cognitive Function SF 4a"
* quantitativeDetails.unit = $UCUM#{score} "score"
* quantitativeDetails.decimalPrecision = 1
* qualifiedInterval.category = #reference
* qualifiedInterval.range.low.value = 20
* qualifiedInterval.range.high.value = 80
* qualifiedInterval.context.text = "PROMIS T-Score metric (Mean=50, SD=10)"
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#increase
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.text = "Higher scores indicate better cognitive function"

// Reference to scoring manual
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-citation"
* extension[=].valueString = "PROMIS Cognitive Function Scoring Manual, Version 3 June 2022. Available at: https://www.healthmeasures.net/images/PROMIS/manuals/Scoring_Manual_Only/PROMIS_Cognitive_Function_Scoring_Manual_03June2022.pdf"