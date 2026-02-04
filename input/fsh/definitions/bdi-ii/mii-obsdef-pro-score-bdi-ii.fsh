Instance: mii-obsdef-pro-score-bdi-ii
InstanceOf: mii-pr-pro-score-blueprint
Title: "MII ObsDef PRO Score BDI-II"
Description: "Beck Depression Inventory II (BDI-II) Total Score"
Usage: #definition
* insert ObsDefVersion
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint)

* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = $LNC#89209-1 "Beck Depression Inventory II total score [BDI]"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* method.coding = $LNC#89209-1 "Beck Depression Inventory II total score [BDI]"
* method.text = "Beck Depression Inventory II (BDI-II)"
* quantitativeDetails.unit = $UCUM#{score} "{score}"
* quantitativeDetails.decimalPrecision = 0

* qualifiedInterval.category = #absolute
* qualifiedInterval.range.high.value = 63
* qualifiedInterval.range.low.value = 0
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#decrease
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.text = "Higher scores indicate more severe depression"