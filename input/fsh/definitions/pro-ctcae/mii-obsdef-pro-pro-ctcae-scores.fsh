// ============================================================================
// PRO-CTCAE ObservationDefinitions
// ============================================================================
// 2 score definitions:
//   1. Composite Grade (per adverse event) — integer 0-3
//   2. Average Composite Score (ACS) — decimal 0.0-3.0
//
// Composite Grade is reused across all 78 AEs — the specific AE is identified
// by Observation.code referencing the PRO-CTCAE CodeSystem AE group code.
//
// dataAbsentReason is used when an AE has opt-out answers (not-applicable,
// not-sexually-active, prefer-not-to-answer) — no score is computed.
//
// Source: Basch et al. Composite grading algorithm for the NCI's PRO-CTCAE.
//         Clinical Trials. 2021;18(1):104-114.
// ============================================================================


// ---------------------------------------------------------------------------
// 1. PRO-CTCAE Composite Grade (per Adverse Event)
// ---------------------------------------------------------------------------
// One Observation per AE per timepoint. The specific AE is identified by
// Observation.code (e.g., proctcae-ae-09 "Nausea").
// Range 0-3 maps to CTCAE grade equivalents for symptomatic AEs.
// Grade 0 = no symptom, Grade 3 = most severe.
// ---------------------------------------------------------------------------

Instance: mii-obsdef-pro-score-proctcae-composite-grade
InstanceOf: mii-pr-pro-score-blueprint
Title: "PRO-CTCAE Composite Grade"
Description: "Composite grade for a single PRO-CTCAE adverse event, computed from frequency, severity, and/or interference scores using the NCI composite grading algorithm (Basch et al., 2021). Range 0-3, mapped to CTCAE grade equivalents. Grade 0 = no symptom, Grade 3 = most severe patient-reported burden. May have dataAbsentReason when patient selected opt-out answers."
Usage: #definition
* insert ObsDefVersion
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint)

* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code.coding[mii] = $mii-cs-pro-score-catalogue#proctcae-composite-grade "PRO-CTCAE Composite Grade (per Adverse Event)"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* quantitativeDetails.unit = $UCUM#{score} "score"
* quantitativeDetails.decimalPrecision = 0

* qualifiedInterval.category = #absolute
* qualifiedInterval.range.low.value = 0
* qualifiedInterval.range.high.value = 3
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#decrease
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.text = "Higher grade indicates worse patient-reported adverse event burden"


// ---------------------------------------------------------------------------
// 2. PRO-CTCAE Average Composite Score (ACS)
// ---------------------------------------------------------------------------
// Mean of all composite grades at a given timepoint.
// Symptoms with opt-out answers (dataAbsentReason) are excluded from average.
// Range 0.0-3.0 continuous.
// ---------------------------------------------------------------------------

Instance: mii-obsdef-pro-score-proctcae-acs
InstanceOf: mii-pr-pro-score-blueprint
Title: "PRO-CTCAE Average Composite Score (ACS)"
Description: "Average of all PRO-CTCAE composite grades at a given timepoint, reflecting overall symptomatic adverse event burden. Symptoms with opt-out responses are excluded from the average. Range 0.0-3.0 (continuous). ACS = sum(composite grades) / count(scored symptoms)."
Usage: #definition
* insert ObsDefVersion
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint)

* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code.coding[mii] = $mii-cs-pro-score-catalogue#proctcae-acs "PRO-CTCAE Average Composite Score (ACS)"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* quantitativeDetails.unit = $UCUM#{score} "score"
* quantitativeDetails.decimalPrecision = 2

* qualifiedInterval.category = #absolute
* qualifiedInterval.range.low.value = 0.0
* qualifiedInterval.range.high.value = 3.0
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#decrease
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.text = "Higher ACS indicates worse overall symptomatic adverse event burden"
