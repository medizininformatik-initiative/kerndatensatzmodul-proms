// SCOFF (Morgan, Reid & Lacey 1999) — Summenscore der fünf binären Items, Bereich 0-5.
// Höhere Werte zeigen eine größere Wahrscheinlichkeit für eine Essstörung an.
//
// Cut-off: >= 2 Punkte gelten laut Originalpublikation als auffällig (Sensitivität 100 %,
// Spezifität 87,5 % gegenüber klinischer Diagnose von Anorexia/Bulimia nervosa).
// Der Cut-off ist hier als Referenzintervall DOKUMENTIERT. Er wird bewusst NICHT als
// ausführbare Interpretationslogik ausgeliefert — siehe MDR-Abgrenzung der IG-Scoring-Seite.
// Ein auffälliges Screening ersetzt keine Diagnostik.

Instance: mii-obsdef-pro-score-scoff
InstanceOf: mii-pr-pro-score-blueprint
Title: "MII ObsDef PRO Score SCOFF"
Description: "SCOFF total score (0-5) — screening for eating disorders"
Usage: #definition
* insert ObsDefVersion
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint)

* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code.coding[mii] = $mii-cs-pro-score-catalogue#scoff-total "SCOFF Total Score"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* quantitativeDetails.unit = $UCUM#1
* quantitativeDetails.decimalPrecision = 0

// Messbereich + Scoring-Richtung (höher = größere Wahrscheinlichkeit einer Essstörung)
* qualifiedInterval[0].category = #absolute
* qualifiedInterval[0].range.low.value = 0
* qualifiedInterval[0].range.high.value = 5
* qualifiedInterval[0].range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#decrease

// Screening-Kategorien (Morgan, Reid & Lacey 1999): Cut-off bei 2 Punkten
* qualifiedInterval[+].category = #reference
* qualifiedInterval[=].range.low.value = 0
* qualifiedInterval[=].range.high.value = 1
* qualifiedInterval[=].condition = "Unauffälliges Screening (screening negative)"
* qualifiedInterval[+].category = #reference
* qualifiedInterval[=].range.low.value = 2
* qualifiedInterval[=].range.high.value = 5
* qualifiedInterval[=].condition = "Auffälliges Screening, weitere Abklärung empfohlen (screening positive, further assessment indicated)"
