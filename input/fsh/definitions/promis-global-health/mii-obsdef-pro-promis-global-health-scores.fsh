// PROMIS Global Health v1.2 — Rohwert-ObservationDefinitions für Global Physical Health (GPH) und
// Global Mental Health (GMH), je 4 Items, Bereich 4-20 (Hays et al. 2009; Scoring Manual v1.2).
// T-Scores (LOINC 71971-6 / 71969-0, Mittelwert 50, SD 10) folgen als CQL-Library, sobald die
// offizielle Umrechnungstabelle verifiziert vorliegt (Bead 92b).

Instance: mii-obsdef-pro-promis-global-health-physical-raw
InstanceOf: mii-pr-pro-score-blueprint
Title: "MII ObsDef PRO PROMIS Global Health Physical Raw Score"
Description: "PROMIS Global Physical Health raw score (Global03 + Global06 + Global07 recoded + Global08 recoded), range 4-20"
Usage: #definition
* insert ObsDefVersion
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint)

* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code.coding[loinc] = $LNC#71972-4 "PROMIS-10 Global Physical Health score"
* code.coding[mii] = $mii-cs-pro-score-catalogue#promis-global-health-physical-raw "PROMIS Global Health - Global Physical Health Raw Score (4-20)"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* method.text = "PROMIS Scale v1.2 - Global Health (Scoring Manual v1.2: Global07/Global08 recoded)"
* quantitativeDetails.unit = $UCUM#{score} "{score}"
* quantitativeDetails.decimalPrecision = 0
* qualifiedInterval.category = #absolute
* qualifiedInterval.range.low.value = 4
* qualifiedInterval.range.high.value = 20
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#increase
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.text = "Higher scores indicate better global physical health"

Instance: mii-obsdef-pro-promis-global-health-mental-raw
InstanceOf: mii-pr-pro-score-blueprint
Title: "MII ObsDef PRO PROMIS Global Health Mental Raw Score"
Description: "PROMIS Global Mental Health raw score (Global02 + Global04 + Global05 + Global10 recoded), range 4-20"
Usage: #definition
* insert ObsDefVersion
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint)

* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code.coding[loinc] = $LNC#71970-8 "PROMIS-10 Global Mental Health score"
* code.coding[mii] = $mii-cs-pro-score-catalogue#promis-global-health-mental-raw "PROMIS Global Health - Global Mental Health Raw Score (4-20)"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* method.text = "PROMIS Scale v1.2 - Global Health (Scoring Manual v1.2: Global10 recoded)"
* quantitativeDetails.unit = $UCUM#{score} "{score}"
* quantitativeDetails.decimalPrecision = 0
* qualifiedInterval.category = #absolute
* qualifiedInterval.range.low.value = 4
* qualifiedInterval.range.high.value = 20
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#increase
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.text = "Higher scores indicate better global mental health"
