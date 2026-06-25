// ============================================================================
// WHODAS 2.0 12-Item ObservationDefinition
// ============================================================================
// One score definition for the WHO Disability Assessment Schedule 2.0,
// 12-item self-administered version.
//
// Simple scoring (implemented): sum of the 12 item scores (each 0-4), range
// 0-48, where a higher score indicates more disability. This is WHO's "simple
// scoring" method (scores are added without recoding or collapsing of
// categories). The corresponding calculated-expression FHIRPath would be
//   %resource.item.where(linkId.matches('^whodas-whodas12-q(01..12)$'))
//       .answer.value.ordinal().sum()
// but is not embedded in the Questionnaire because the WHODAS-12 items are not
// reproduced here for licensing reasons (see mii-qst-pro-whodas-whodas12).
//
// Complex / IRT-based scoring (deferred): WHO also defines a complex scoring
// method based on item-response theory that differentially weights items and
// rescales to 0-100. This is intentionally NOT implemented in this version and
// is recorded as future work.
//
// SNOMED: code 715823002 "WHODAS (World Health Organization Disability
// Assessment Schedule) 2.0 score" was obtained via web lookup but could NOT be
// verified against a terminology server during implementation (Snowstorm
// unavailable). Treat as provisional pending terminology-server confirmation.
// ============================================================================

Instance: mii-obsdef-pro-score-whodas12-simple-sum
InstanceOf: mii-pr-pro-score-blueprint
Title: "WHODAS 2.0 12-Item Simple Sum Score"
Description: "Sum of the 12 WHODAS 2.0 item scores (each 0-4), range 0-48. Higher scores indicate greater disability. WHO simple scoring method; complex IRT-based scoring deferred to future work."
Usage: #definition
* insert ObsDefVersion
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint)

* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#survey
// SNOMED code provisional / not server-verified - see header note
* code.coding[snomed] = $SCT#715823002 "WHODAS (World Health Organization Disability Assessment Schedule) 2.0 score"
* code.coding[mii] = $mii-cs-pro-score-catalogue#whodas12-simple-sum "WHODAS 2.0 12-Item Simple Sum Score (0-48)"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* quantitativeDetails.unit = $UCUM#{score} "score"
* quantitativeDetails.decimalPrecision = 0

* qualifiedInterval.category = #absolute
* qualifiedInterval.range.low.value = 0
* qualifiedInterval.range.high.value = 48
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#decrease
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.text = "Higher score indicates greater disability"
