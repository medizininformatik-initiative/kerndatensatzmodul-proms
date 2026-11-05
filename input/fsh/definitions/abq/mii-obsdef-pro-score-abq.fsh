// ABQ — Summenscore der 16 Items (je 1-4), Bereich 16-64.
// Höhere Werte = mehr Adhärenzbarrieren (laut Auftrag; die Zuordnung der Antwortstufen zur
// Richtung ist NICHT gegen das Original verifiziert, siehe Questionnaire-Kommentar).
// Es werden keine Cut-offs ausgeliefert.

Instance: mii-obsdef-pro-score-abq
InstanceOf: mii-pr-pro-score-blueprint
Title: "MII ObsDef PRO Score ABQ"
Description: "ABQ total score (16-64) — Adherence Barriers Questionnaire"
Usage: #definition
* insert ObsDefVersion
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint)

* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code.coding[mii] = $mii-cs-pro-score-catalogue#abq-total "ABQ Total Score (16-64)"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* quantitativeDetails.unit = $UCUM#1
* quantitativeDetails.decimalPrecision = 0

* qualifiedInterval[0].category = #absolute
* qualifiedInterval[0].range.low.value = 16
* qualifiedInterval[0].range.high.value = 64
* qualifiedInterval[0].range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#decrease
