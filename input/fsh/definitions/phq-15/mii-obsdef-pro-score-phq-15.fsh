// PHQ-15 (Kroenke et al. 2002) — somatic symptom severity sum score, range 0–30
// Higher scores indicate greater somatic symptom burden.
// Severity thresholds: 0–4 minimal, 5–9 low, 10–14 medium, 15–30 high (Kroenke 2002)

Instance: mii-obsdef-pro-score-phq-15
InstanceOf: mii-pr-pro-score-blueprint
Title: "MII ObsDef PRO Score PHQ-15"
Description: "Patient Health Questionnaire-15 (PHQ-15) total somatic symptom severity score (0–30)"
Usage: #definition
* insert ObsDefVersion
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint)

* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = $LNC#70273-8 "Patient Health Questionnaire 15 item (PHQ-15) total score [Reported]"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* method = $LNC#69728-4 "Patient Health Questionnaire 15 item (PHQ-15) [Reported]"
* quantitativeDetails.unit = $UCUM#1
* quantitativeDetails.decimalPrecision = 0
* qualifiedInterval.category = #absolute
* qualifiedInterval.range.high.value = 30
* qualifiedInterval.range.low.value = 0
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#decrease
