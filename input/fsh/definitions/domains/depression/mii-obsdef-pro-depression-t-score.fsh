Instance: mii-obsdef-pro-depression-t-score
InstanceOf: mii-pr-pro-score-blueprint
Title: "MII ObsDef PRO Depression Domain T-Score"
Description: "ObservationDefinition for depression domain T-score across all depression questionnaires with European population reference ranges"
Usage: #definition

* category.coding = $hl7-observation-category#survey
* code = $LNC#77861-3 "PROMIS emotional distress - depression - version 1.0 Tscore"
* permittedDataType = #Quantity
* multipleResultsAllowed = false

// Method references European cross-cultural validation study
* method.text = "PROMIS Depression T-score metric derived from European Health Interview Survey (EHIS) wave 3 cross-cultural validation study"

// Quantitative value definition
* quantitativeDetails.unit = $UCUM#{score} "score"

// German general population reference ranges (EHIS wave 3, n=22,996)
* qualifiedInterval[+].category = #reference
* qualifiedInterval[=].context.coding = $LNC#LA6112-2 "General population"
* qualifiedInterval[=].context.text = "German general population - EHIS wave 3 (n=22,996): Mean 46.5 (SD 7.7), Median 45.5"

* qualifiedInterval[=].range.low.value = 41.8
* qualifiedInterval[=].range.high.value = 51.5
* qualifiedInterval[=].range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#decrease
* qualifiedInterval[=].range.extension[ScoreHealthCorrelation].valueCodeableConcept.text = "Higher scores indicate worse health (more depression symptoms)"

// European male population reference ranges (for gender context)
* qualifiedInterval[+].category = #reference
* qualifiedInterval[=].context.coding = $LNC#LA6112-2 "General population"
* qualifiedInterval[=].context.text = "European male population - EHIS wave 3 (29 countries): Median 44.11"
* qualifiedInterval[=].appliesTo[+].coding.system = "http://terminology.hl7.org/CodeSystem/v3-AdministrativeGender"
* qualifiedInterval[=].appliesTo[=].coding.code = #M
* qualifiedInterval[=].appliesTo[=].coding.display = "Male"
* qualifiedInterval[=].range.low.value = 38.06
* qualifiedInterval[=].range.high.value = 50.40
* qualifiedInterval[=].range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#decrease
* qualifiedInterval[=].range.extension[ScoreHealthCorrelation].valueCodeableConcept.text = "Higher scores indicate worse health (more depression symptoms)"

// European female population reference ranges (for gender context)  
* qualifiedInterval[+].category = #reference
* qualifiedInterval[=].context.coding = $LNC#LA6112-2 "General population"
* qualifiedInterval[=].context.text = "European female population - EHIS wave 3 (29 countries): Median 46.37"
* qualifiedInterval[=].appliesTo[+].coding.system = "http://terminology.hl7.org/CodeSystem/v3-AdministrativeGender"
* qualifiedInterval[=].appliesTo[=].coding.code = #F
* qualifiedInterval[=].appliesTo[=].coding.display = "Female"
* qualifiedInterval[=].range.low.value = 40.00
* qualifiedInterval[=].range.high.value = 52.76
* qualifiedInterval[=].range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#decrease
* qualifiedInterval[=].range.extension[ScoreHealthCorrelation].valueCodeableConcept.text = "Higher scores indicate worse health (more depression symptoms)"

// European population context for comparison
* qualifiedInterval[+].category = #reference
* qualifiedInterval[=].context.coding = $LNC#LA6112-2 "General population"
* qualifiedInterval[=].context.text = "Overall European population median (IQR) - EHIS wave 3, 29 countries (n=287,530)"

* qualifiedInterval[=].range.low.value = 39.11
* qualifiedInterval[=].range.high.value = 51.68

// Data source and methodology
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-citation"
* extension[=].valueString = "Riazy L, Grote M, Liegl G, Rose M, Fischer F. Cross-Sectional Reference Data From 29 European Countries for 6 Frequently Used Depression Measures. JAMA Network Open. 2025;8(6):e2517394"

// Clinical interpretation guidance - removed invalid clinical guidance extension and note
// Interpretation: PROMIS Depression T-scores are standardized with US general population mean=50, SD=10. 
// European population shows lower mean scores (Germany: mean=46.5, SD=7.7). 
// Scores >1 SD above population mean indicate elevated depression symptoms. 
// Age, sex, and cultural factors should be considered in interpretation.