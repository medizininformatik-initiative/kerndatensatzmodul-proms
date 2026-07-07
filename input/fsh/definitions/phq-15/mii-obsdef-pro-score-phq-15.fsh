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
* code.coding[loinc] = $LNC#70273-8 "Patient Health Questionnaire 15 item (PHQ-15) total score [Reported]"
* code.coding[mii] = $mii-cs-pro-score-catalogue#phq-phq15-total "PHQ-15 Total Score"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* method = $LNC#69728-4 "Patient Health Questionnaire 15 item (PHQ-15) [Reported]"
* quantitativeDetails.unit = $UCUM#1
* quantitativeDetails.decimalPrecision = 0
// Overall measurable range + scoring direction (higher = greater somatic symptom burden)
* qualifiedInterval[0].category = #absolute
* qualifiedInterval[0].range.high.value = 30
* qualifiedInterval[0].range.low.value = 0
* qualifiedInterval[0].range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#decrease

// Severity categories (Kroenke, Spitzer & Williams 2002): 5 / 10 / 15 cut-offs
* qualifiedInterval[+].category = #reference
* qualifiedInterval[=].range.low.value = 0
* qualifiedInterval[=].range.high.value = 4
* qualifiedInterval[=].condition = "Minimal somatic symptom burden (minimale somatische Symptomlast)"
* qualifiedInterval[+].category = #reference
* qualifiedInterval[=].range.low.value = 5
* qualifiedInterval[=].range.high.value = 9
* qualifiedInterval[=].condition = "Low somatic symptom burden (geringe somatische Symptomlast)"
* qualifiedInterval[+].category = #reference
* qualifiedInterval[=].range.low.value = 10
* qualifiedInterval[=].range.high.value = 14
* qualifiedInterval[=].condition = "Medium somatic symptom burden (mittlere somatische Symptomlast)"
* qualifiedInterval[+].category = #reference
* qualifiedInterval[=].range.low.value = 15
* qualifiedInterval[=].range.high.value = 30
* qualifiedInterval[=].condition = "High somatic symptom burden (hohe somatische Symptomlast)"
