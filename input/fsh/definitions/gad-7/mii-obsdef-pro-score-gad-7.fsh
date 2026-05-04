Instance: mii-obsdef-pro-score-gad-7
InstanceOf: mii-pr-pro-score-blueprint
Title: "MII ObsDef PRO Score GAD-7"
Description: "Generalized Anxiety Disorder Scale-7 (GAD-7)"
Usage: #definition
* insert ObsDefVersion
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint)

* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = $LNC#70274-6 "Generalized anxiety disorder 7 item (GAD-7) total score [Reported.PHQ]"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* method = $LNC#69737-5 "Generalized anxiety disorder 7 item (GAD-7)"
* quantitativeDetails.unit = $UCUM#1
* quantitativeDetails.decimalPrecision = 0
* qualifiedInterval.category = #absolute
* qualifiedInterval.range.high.value = 21
* qualifiedInterval.range.low.value = 0
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#decrease
