// ============================================================================
// DASS-21 ObservationDefinitions
// ============================================================================
// 6 score definitions for the Depression Anxiety Stress Scales - Short Form:
//   - 3 raw scores (Depression, Anxiety, Stress) with DASS-21 ranges (0-21)
//   - 3 DASS-42 equivalent scores (×2 multiplication) with ranges (0-42)
//
// Cut-off values per Lovibond & Lovibond (1995) manual.
// ============================================================================

// ---------------------------------------------------------------------------
// 1. DASS-21 Depression Raw Score
// ---------------------------------------------------------------------------
Instance: mii-obsdef-pro-score-dass21-depression-raw
InstanceOf: mii-pr-pro-score-blueprint
Title: "MII ObsDef PRO Score DASS-21 Depression Raw"
Description: "Depression Anxiety Stress Scales - Short Form (DASS-21) Depression subscale raw score. Sum of 7 depression items (items 3, 5, 10, 13, 16, 17, 21), each scored 0-3. Cut-offs (DASS-21): Normal 0-4, Mild 5-6, Moderate 7-10, Severe 11-13, Extremely severe 14+."
Usage: #definition
* insert ObsDefVersion
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint)

* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code.coding[snomed] = $SCT#416954004 "Depression anxiety stress scales depression score"
* code.coding[mii] = $mii-cs-pro-score-catalogue#dass21-depression-raw "DASS-21 Depression Raw Score"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* quantitativeDetails.unit = $UCUM#1
* quantitativeDetails.decimalPrecision = 0

* qualifiedInterval.category = #absolute
* qualifiedInterval.range.low.value = 0
* qualifiedInterval.range.high.value = 21
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#decrease
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.text = "Higher score indicates worse depression severity"


// ---------------------------------------------------------------------------
// 2. DASS-21 Anxiety Raw Score
// ---------------------------------------------------------------------------
Instance: mii-obsdef-pro-score-dass21-anxiety-raw
InstanceOf: mii-pr-pro-score-blueprint
Title: "MII ObsDef PRO Score DASS-21 Anxiety Raw"
Description: "Depression Anxiety Stress Scales - Short Form (DASS-21) Anxiety subscale raw score. Sum of 7 anxiety items (items 2, 4, 7, 9, 15, 19, 20), each scored 0-3. Cut-offs (DASS-21): Normal 0-3, Mild 4-5, Moderate 6-7, Severe 8-9, Extremely severe 10+."
Usage: #definition
* insert ObsDefVersion
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint)

* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code.coding[mii] = $mii-cs-pro-score-catalogue#dass21-anxiety-raw "DASS-21 Anxiety Raw Score"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* quantitativeDetails.unit = $UCUM#1
* quantitativeDetails.decimalPrecision = 0

* qualifiedInterval.category = #absolute
* qualifiedInterval.range.low.value = 0
* qualifiedInterval.range.high.value = 21
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#decrease
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.text = "Higher score indicates worse anxiety severity"


// ---------------------------------------------------------------------------
// 3. DASS-21 Stress Raw Score
// ---------------------------------------------------------------------------
Instance: mii-obsdef-pro-score-dass21-stress-raw
InstanceOf: mii-pr-pro-score-blueprint
Title: "MII ObsDef PRO Score DASS-21 Stress Raw"
Description: "Depression Anxiety Stress Scales - Short Form (DASS-21) Stress subscale raw score. Sum of 7 stress items (items 1, 6, 8, 11, 12, 14, 18), each scored 0-3. Cut-offs (DASS-21): Normal 0-7, Mild 8-9, Moderate 10-12, Severe 13-16, Extremely severe 17+."
Usage: #definition
* insert ObsDefVersion
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint)

* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code.coding[snomed] = $SCT#416767005 "Depression anxiety stress scales stress score"
* code.coding[mii] = $mii-cs-pro-score-catalogue#dass21-stress-raw "DASS-21 Stress Raw Score"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* quantitativeDetails.unit = $UCUM#1
* quantitativeDetails.decimalPrecision = 0

* qualifiedInterval.category = #absolute
* qualifiedInterval.range.low.value = 0
* qualifiedInterval.range.high.value = 21
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#decrease
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.text = "Higher score indicates worse stress severity"


// ---------------------------------------------------------------------------
// 4. DASS-21 Depression DASS-42 Equivalent Score
// ---------------------------------------------------------------------------
Instance: mii-obsdef-pro-score-dass21-depression-equiv
InstanceOf: mii-pr-pro-score-blueprint
Title: "MII ObsDef PRO Score DASS-21 Depression DASS-42 Equivalent"
Description: "Depression Anxiety Stress Scales - Short Form (DASS-21) Depression subscale score multiplied by 2 to produce a DASS-42 equivalent score. This allows comparison with published DASS-42 normative data and severity cut-offs."
Usage: #definition
* insert ObsDefVersion
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint)

* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code.coding[snomed] = $SCT#416954004 "Depression anxiety stress scales depression score"
* code.coding[mii] = $mii-cs-pro-score-catalogue#dass21-depression-equiv "DASS-21 Depression DASS-42 Equivalent Score"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* quantitativeDetails.unit = $UCUM#1
* quantitativeDetails.decimalPrecision = 0

* qualifiedInterval.category = #absolute
* qualifiedInterval.range.low.value = 0
* qualifiedInterval.range.high.value = 42
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#decrease
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.text = "Higher score indicates worse depression severity (DASS-42 equivalent = DASS-21 raw × 2)"


// ---------------------------------------------------------------------------
// 5. DASS-21 Anxiety DASS-42 Equivalent Score
// ---------------------------------------------------------------------------
Instance: mii-obsdef-pro-score-dass21-anxiety-equiv
InstanceOf: mii-pr-pro-score-blueprint
Title: "MII ObsDef PRO Score DASS-21 Anxiety DASS-42 Equivalent"
Description: "Depression Anxiety Stress Scales - Short Form (DASS-21) Anxiety subscale score multiplied by 2 to produce a DASS-42 equivalent score. This allows comparison with published DASS-42 normative data and severity cut-offs."
Usage: #definition
* insert ObsDefVersion
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint)

* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code.coding[mii] = $mii-cs-pro-score-catalogue#dass21-anxiety-equiv "DASS-21 Anxiety DASS-42 Equivalent Score"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* quantitativeDetails.unit = $UCUM#1
* quantitativeDetails.decimalPrecision = 0

* qualifiedInterval.category = #absolute
* qualifiedInterval.range.low.value = 0
* qualifiedInterval.range.high.value = 42
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#decrease
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.text = "Higher score indicates worse anxiety severity (DASS-42 equivalent = DASS-21 raw × 2)"


// ---------------------------------------------------------------------------
// 6. DASS-21 Stress DASS-42 Equivalent Score
// ---------------------------------------------------------------------------
Instance: mii-obsdef-pro-score-dass21-stress-equiv
InstanceOf: mii-pr-pro-score-blueprint
Title: "MII ObsDef PRO Score DASS-21 Stress DASS-42 Equivalent"
Description: "Depression Anxiety Stress Scales - Short Form (DASS-21) Stress subscale score multiplied by 2 to produce a DASS-42 equivalent score. This allows comparison with published DASS-42 normative data and severity cut-offs."
Usage: #definition
* insert ObsDefVersion
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint)

* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code.coding[snomed] = $SCT#416767005 "Depression anxiety stress scales stress score"
* code.coding[mii] = $mii-cs-pro-score-catalogue#dass21-stress-equiv "DASS-21 Stress DASS-42 Equivalent Score"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* quantitativeDetails.unit = $UCUM#1
* quantitativeDetails.decimalPrecision = 0

* qualifiedInterval.category = #absolute
* qualifiedInterval.range.low.value = 0
* qualifiedInterval.range.high.value = 42
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#decrease
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.text = "Higher score indicates worse stress severity (DASS-42 equivalent = DASS-21 raw × 2)"
