Instance: mii-obsdef-pro-score-eq5d5l-vas
InstanceOf: MII_PR_PRO_Score_Blueprint
Title: "MII ObsDef PRO Score EQ-5D-5L VAS"
Description: "EuroQol 5 Dimensions 5 Levels (EQ-5D-5L) Visual Analog Scale (VAS) Score"

* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = $SCT#736535009 "EuroQol visual analogue score (observable entity)"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* method = $SCT#73041000052103 "EuroQoL five dimension five level questionnaire (assessment scale)"
* quantitativeDetails.unit = $UCUM#1 
* quantitativeDetails.decimalPrecision = 0
* qualifiedInterval.category = #absolute
* qualifiedInterval.range.high.value = 100
* qualifiedInterval.range.low.value = 0 
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#improvement
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.text = "Higher score indicates better health status"
// add reference https://doi.org/10.1016/j.jad.2017.08.060 for developmental publication