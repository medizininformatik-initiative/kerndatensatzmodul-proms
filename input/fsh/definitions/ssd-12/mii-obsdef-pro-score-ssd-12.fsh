// SSD-12 (Toussaint et al. 2016/2017) — Summenscore der zwölf Items, Bereich 0-48.
// Höhere Werte zeigen eine größere kognitiv-affektiv-behaviorale Belastung durch körperliche
// Beschwerden im Sinne der DSM-5-Kriterien B einer somatischen Belastungsstörung an.
//
// Kein Cut-off dokumentiert: Für diesen Branch konnte kein klinischer Schwellenwert mit
// ausreichender Sicherheit aus den verfügbaren Quellen belegt werden. Sollte künftig ein
// belastbarer Cut-off verfügbar sein, wäre er — wie beim SCOFF-Muster — ausschließlich als
// dokumentiertes Referenzintervall zu ergänzen, nicht als ausführbare Interpretationslogik
// (siehe MDR-Abgrenzung der IG-Scoring-Seite).

Instance: mii-obsdef-pro-score-ssd-12
InstanceOf: mii-pr-pro-score-blueprint
Title: "MII ObsDef PRO Score SSD-12"
Description: "SSD-12 total score (0-48) — somatic symptom disorder B-criteria burden"
Usage: #definition
* insert ObsDefVersion
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint)

* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code.coding[mii] = $mii-cs-pro-score-catalogue#ssd-12-total "SSD-12 Total Score"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* quantitativeDetails.unit = $UCUM#1
* quantitativeDetails.decimalPrecision = 0

// Messbereich + Scoring-Richtung (höher = größere Belastung durch körperliche Beschwerden)
* qualifiedInterval[0].category = #absolute
* qualifiedInterval[0].range.low.value = 0
* qualifiedInterval[0].range.high.value = 48
* qualifiedInterval[0].range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#decrease
