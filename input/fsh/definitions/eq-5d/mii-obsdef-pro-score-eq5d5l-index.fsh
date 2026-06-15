Instance: mii-obsdef-pro-score-eq5d5l-index
InstanceOf: MII_PR_PRO_Score_Blueprint
Title: "MII ObsDef PRO Score EQ-5D-5L Index"
Description: "EuroQol 5 Dimensions 5 Levels (EQ-5D-5L) Index Score"
Usage: #definition
* insert ObsDefVersion
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint)

* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code.coding[snomed] = $SCT#736534008 "EuroQol five dimension five level index value (observable entity)"
* code.coding[mii] = $mii-cs-pro-score-catalogue#euroqol-eq5d5l-index "EuroQol EQ-5D-5L Index Score" 
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* method = $SCT#73041000052103 "EuroQoL five dimension five level questionnaire"
* quantitativeDetails.unit = $UCUM#1 
* quantitativeDetails.decimalPrecision = 3

* qualifiedInterval.category = #absolute
* qualifiedInterval.range.high.value = 1
* qualifiedInterval.range.low.value = -0.661
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#increase
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.text = "Higher score indicates better health status"
// add reference https://doi.org/10.1016/j.jad.2017.08.060 for developmental publication

