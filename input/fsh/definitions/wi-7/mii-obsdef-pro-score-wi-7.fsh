// WI-7 (Fink et al. 1999) — Summenscore der sieben binären Items, Bereich 0-7.
// Höhere Werte zeigen eine größere Ausprägung von Hypochondrie/Somatisierungstendenz an.
//
// Cut-offs: Die Originalpublikation berichtet zwei explorative Trennwerte (Cut-point 0/1 und
// Cut-point 1/2) gegen ICD-10- bzw. DSM-IV-Kriterien für somatoforme Störungen in einer
// Primärversorgungsstichprobe (Tabelle II, N=99) — OHNE sich auf einen einzelnen empfohlenen
// Trennwert festzulegen. Beide sind hier als Referenzintervalle DOKUMENTIERT. Sie werden bewusst
// NICHT als ausführbare Interpretationslogik ausgeliefert — siehe MDR-Abgrenzung der IG-Scoring-
// Seite. Ein auffälliges Screening ersetzt keine Diagnostik.

Instance: mii-obsdef-pro-score-wi-7
InstanceOf: mii-pr-pro-score-blueprint
Title: "MII ObsDef PRO Score WI-7"
Description: "WI-7 (Whiteley-7) total score (0-7) — screening for hypochondriasis and somatization"
Usage: #definition
* insert ObsDefVersion
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint)

* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code.coding[mii] = $mii-cs-pro-score-catalogue#wi-7-total "WI-7 Total Score"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* quantitativeDetails.unit = $UCUM#1
* quantitativeDetails.decimalPrecision = 0

// Messbereich + Scoring-Richtung (höher = größere Ausprägung von Hypochondrie/Somatisierung)
* qualifiedInterval[0].category = #absolute
* qualifiedInterval[0].range.low.value = 0
* qualifiedInterval[0].range.high.value = 7
* qualifiedInterval[0].range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#decrease

// Cut-point 0/1 (Fink et al. 1999, Tabelle II, Primärversorgungsstichprobe N=99, Referenzstandard
// ICD-10-Forschungskriterien somatoforme Störung N=24): Sensitivität 1,00, Spezifität 0,65
* qualifiedInterval[+].category = #reference
* qualifiedInterval[=].range.low.value = 0
* qualifiedInterval[=].range.high.value = 0
* qualifiedInterval[=].condition = "Unauffälliges Screening nach Cut-off 0/1 (screening negative)"
* qualifiedInterval[+].category = #reference
* qualifiedInterval[=].range.low.value = 1
* qualifiedInterval[=].range.high.value = 7
* qualifiedInterval[=].condition = "Auffälliges Screening nach Cut-off 0/1 — hohe Sensitivität, moderate Spezifität (ICD-10: Sensitivität 1,00, Spezifität 0,65; Fink et al. 1999, Tabelle II)"

// Cut-point 1/2 (dieselbe Quelle, ICD-10-Referenzstandard): Sensitivität 0,65, Spezifität 0,84
* qualifiedInterval[+].category = #reference
* qualifiedInterval[=].range.low.value = 0
* qualifiedInterval[=].range.high.value = 1
* qualifiedInterval[=].condition = "Unauffälliges Screening nach Cut-off 1/2 (screening negative)"
* qualifiedInterval[+].category = #reference
* qualifiedInterval[=].range.low.value = 2
* qualifiedInterval[=].range.high.value = 7
* qualifiedInterval[=].condition = "Auffälliges Screening nach Cut-off 1/2 — moderate Sensitivität, höhere Spezifität, weitere Abklärung empfohlen (ICD-10: Sensitivität 0,65, Spezifität 0,84; Fink et al. 1999, Tabelle II)"
