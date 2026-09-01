// PC-PTSD (Prins et al. 2003) — Summenscore der vier binären Items, Bereich 0-4.
// Höhere Werte zeigen eine größere Wahrscheinlichkeit einer posttraumatischen Belastungsstörung an.
//
// Cut-off: in der Literatur wird für das ursprüngliche 4-Item-PC-PTSD (Prins et al. 2003)
// verbreitet ein Schwellenwert von >= 3 positiven Antworten als auffällig genannt. Belastbare
// Sensitivitäts-/Spezifitätsangaben liegen hier nicht verifiziert vor, daher werden keine
// Kennzahlen genannt. Der Cut-off ist als Referenzintervall DOKUMENTIERT. Er wird bewusst NICHT
// als ausführbare Interpretationslogik ausgeliefert — siehe MDR-Abgrenzung der IG-Scoring-Seite.
// Ein auffälliges Screening ersetzt keine Diagnostik.

Instance: mii-obsdef-pro-score-pc-ptsd
InstanceOf: mii-pr-pro-score-blueprint
Title: "MII ObsDef PRO Score PC-PTSD"
Description: "PC-PTSD total score (0-4) — screening for posttraumatic stress disorder"
Usage: #definition
* insert ObsDefVersion
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint)

* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code.coding[mii] = $mii-cs-pro-score-catalogue#pc-ptsd-total "PC-PTSD Total Score (0-4)"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* quantitativeDetails.unit = $UCUM#1
* quantitativeDetails.decimalPrecision = 0

// Messbereich + Scoring-Richtung (höher = größere Wahrscheinlichkeit einer PTBS)
* qualifiedInterval[0].category = #absolute
* qualifiedInterval[0].range.low.value = 0
* qualifiedInterval[0].range.high.value = 4
* qualifiedInterval[0].range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#decrease

// Screening-Kategorien (Prins et al. 2003): verbreiteter Cut-off bei 3 Punkten
* qualifiedInterval[+].category = #reference
* qualifiedInterval[=].range.low.value = 0
* qualifiedInterval[=].range.high.value = 2
* qualifiedInterval[=].condition = "Unauffälliges Screening (screening negative)"
* qualifiedInterval[+].category = #reference
* qualifiedInterval[=].range.low.value = 3
* qualifiedInterval[=].range.high.value = 4
* qualifiedInterval[=].condition = "Auffälliges Screening, weitere Abklärung empfohlen (screening positive, further assessment indicated)"
