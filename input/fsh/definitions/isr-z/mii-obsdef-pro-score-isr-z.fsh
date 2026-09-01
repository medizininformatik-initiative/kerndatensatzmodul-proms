// ISR-Z (Tritt et al. 2008) — Skalenwert der Subskala Zwang.
//
// SCORING-BESONDERHEIT: Der ISR-Skalenwert ist der MITTELWERT der 3 Items, NICHT ihre Summe.
// Wertebereich daher 0-4 (nicht 0-12). decimalPrecision = 2, da der Mittelwert dreier
// Ganzzahl-Items im Allgemeinen keine Ganzzahl ist (z.B. (0+1+1)/3 = 0,67). Siehe Kopfkommentar
// von mii-qst-pro-isr-z.fsh für die ausführliche Begründung dieser Abweichung von der
// Summenscore-Konvention des Moduls.
//
// Höhere Werte zeigen eine stärkere Zwangssymptomatik an.

Instance: mii-obsdef-pro-score-isr-z
InstanceOf: mii-pr-pro-score-blueprint
Title: "MII ObsDef PRO Score ISR-Z"
Description: "ISR-Z Skalenwert (Mittelwert, Bereich 0-4) — Subskala Zwang des ICD-10-Symptom-Rating"
Usage: #definition
* insert ObsDefVersion
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint)

* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code.coding[mii] = $mii-cs-pro-score-catalogue#isr-z-mean "ISR-Z Skalenwert (Mittelwert 0-4)"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* quantitativeDetails.unit = $UCUM#1
* quantitativeDetails.decimalPrecision = 2

// Messbereich + Scoring-Richtung (höher = stärkere Zwangssymptomatik)
* qualifiedInterval[0].category = #absolute
* qualifiedInterval[0].range.low.value = 0
* qualifiedInterval[0].range.high.value = 4
* qualifiedInterval[0].range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#decrease
