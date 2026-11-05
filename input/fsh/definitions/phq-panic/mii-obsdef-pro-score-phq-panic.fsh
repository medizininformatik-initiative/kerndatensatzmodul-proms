// PHQ-D Panikblock — Anzahl der Ja-Antworten in den Screeningitems 3a-3d, Bereich 0-4.
//
// Der PHQ definiert für den Panikblock KEINEN Summenscore, sondern einen Algorithmus:
// "Panic Syndrome if #3a-d are all 'YES' and 4 or more of #4a-k are 'YES'" (PHQ Instruction
// Manual, Pfizer). Ohne die Symptomliste 4a-4k ist nur die Screening-Stufe abbildbar:
// alle vier Screeningitems "Ja" = Screening positiv, weitere Abklärung (Symptomliste bzw.
// klinisches Interview) erforderlich. Das Zählitem ist ein technischer Zwischenwert; die
// Interpretation ist hier DOKUMENTIERT (qualifiedInterval), nicht als ausführbare Logik
// ausgeliefert (MDR-Abgrenzung der IG-Scoring-Seite). Ein auffälliges Screening ersetzt
// keine Diagnostik.

Instance: mii-obsdef-pro-score-phq-panic
InstanceOf: mii-pr-pro-score-blueprint
Title: "MII ObsDef PRO Score PHQ-D Panikblock"
Description: "PHQ panic screening items 3a-3d — number of 'yes' answers (0-4); all four 'yes' = screening positive"
Usage: #definition
* insert ObsDefVersion
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint)

* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code.coding[mii] = $mii-cs-pro-score-catalogue#phq-panic-count "PHQ-D Panikblock Yes-Count (0-4, screening items 3a-3d)"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* quantitativeDetails.unit = $UCUM#1
* quantitativeDetails.decimalPrecision = 0

// Messbereich + Richtung (höher = mehr Hinweise auf Panikattacken)
* qualifiedInterval[0].category = #absolute
* qualifiedInterval[0].range.low.value = 0
* qualifiedInterval[0].range.high.value = 4
* qualifiedInterval[0].range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#decrease

// Screening-Stufe laut PHQ-Algorithmus: nur bei allen vier Ja-Antworten positiv
* qualifiedInterval[+].category = #reference
* qualifiedInterval[=].range.low.value = 0
* qualifiedInterval[=].range.high.value = 3
* qualifiedInterval[=].condition = "Unauffälliges Screening (screening negative — PHQ panic syndrome algorithm requires all of 3a-3d 'yes')"
* qualifiedInterval[+].category = #reference
* qualifiedInterval[=].range.low.value = 4
* qualifiedInterval[=].range.high.value = 4
* qualifiedInterval[=].condition = "Auffälliges Screening — Symptomliste 4a-4k bzw. klinische Abklärung erforderlich (screening positive; panic syndrome additionally requires >= 4 of 4a-4k 'yes')"
