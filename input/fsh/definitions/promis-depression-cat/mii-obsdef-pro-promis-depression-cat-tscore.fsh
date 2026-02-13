Instance: mii-obsdef-pro-promis-depression-cat-tscore
InstanceOf: mii-pr-pro-score-blueprint
Title: "MII ObsDef PRO PROMIS Depression CAT T-Score"
Description: "ObservationDefinition for PROMIS Depression CAT-derived T-Scores (M=50, SD=10, US general population reference)"
Usage: #definition
* insert ObsDefVersion
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint)

* code.coding[loinc] = $LNC#77861-3 "PROMIS emotional distress - depression - version 1.0 Tscore"
* code.coding[mii] = $mii-cs-pro-score-catalogue#promis-depression-cat-tscore "PROMIS Depression CAT T-Score"

* permittedDataType = #Quantity
* quantitativeDetails.unit = $UCUM#{score} "T-Score"
* quantitativeDetails.decimalPrecision = 1

* preferredReportName = "PROMIS Depression CAT T-Score"

* method.text = "Computer Adaptive Testing (Graded Response Model, EAP estimation)"

// Normal range
* qualifiedInterval[+].category = #reference
* qualifiedInterval[=].range.low.value = 50
* qualifiedInterval[=].range.low.unit = "{score}"
* qualifiedInterval[=].range.high.value = 50
* qualifiedInterval[=].range.high.unit = "{score}"
* qualifiedInterval[=].context = http://terminology.hl7.org/CodeSystem/referencerange-meaning#normal "Normal Range"

// Mild depression
* qualifiedInterval[+].category = #reference
* qualifiedInterval[=].range.low.value = 55
* qualifiedInterval[=].range.low.unit = "{score}"
* qualifiedInterval[=].range.high.value = 59.9
* qualifiedInterval[=].range.high.unit = "{score}"
* qualifiedInterval[=].context.text = "Mild depression"

// Moderate depression
* qualifiedInterval[+].category = #reference
* qualifiedInterval[=].range.low.value = 60
* qualifiedInterval[=].range.low.unit = "{score}"
* qualifiedInterval[=].range.high.value = 69.9
* qualifiedInterval[=].range.high.unit = "{score}"
* qualifiedInterval[=].context.text = "Moderate depression"

// Severe depression
* qualifiedInterval[+].category = #reference
* qualifiedInterval[=].range.low.value = 70
* qualifiedInterval[=].range.low.unit = "{score}"
* qualifiedInterval[=].range.high.value = 100
* qualifiedInterval[=].range.high.unit = "{score}"
* qualifiedInterval[=].context.text = "Severe depression"
