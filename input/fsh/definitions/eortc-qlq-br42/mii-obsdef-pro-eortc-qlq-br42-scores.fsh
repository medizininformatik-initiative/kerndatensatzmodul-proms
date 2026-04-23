// ============================================================================
// EORTC QLQ-BR42 ObservationDefinitions
// ============================================================================
// 13 score definitions (5 functional + 7 symptom + 1 single item)
// Scoring identical to QLQ-C30: linear transformation to 0-100
// Functional: higher = better. Symptom: higher = worse.
//
// Items with reverse scoring: Q44, Q45, Q46, Q71, Q72
// Conditional items: Q35 (if Q34 ≠ "Not at all"), Q46/Q69/Q70 (if sexually active)
// ============================================================================


// ---------------------------------------------------------------------------
// FUNCTIONAL SCALES
// ---------------------------------------------------------------------------

// Body Image (BI) — Q39-42, 4 items
Instance: mii-obsdef-pro-score-eortc-qlq-br42-bi
InstanceOf: mii-pr-pro-score-blueprint
Title: "EORTC QLQ-BR42 Body Image Score"
Description: "Body Image score (Q39-42). Functional scale: higher = better body image. Linear transformation 0-100."
Usage: #definition
* insert ObsDefVersion
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint)
* category.coding = $hl7-observation-category#survey
* code.coding[mii] = $mii-cs-pro-score-catalogue#eortc-qlq-br42-bi "EORTC QLQ-BR42 Body Image Score"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* quantitativeDetails.unit = $UCUM#{score} "score"
* quantitativeDetails.decimalPrecision = 1
* qualifiedInterval.category = #absolute
* qualifiedInterval.range.low.value = 0
* qualifiedInterval.range.high.value = 100
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#increase

// Future Perspective (FU) — Q43, 1 item
Instance: mii-obsdef-pro-score-eortc-qlq-br42-fu
InstanceOf: mii-pr-pro-score-blueprint
Title: "EORTC QLQ-BR42 Future Perspective Score"
Description: "Future Perspective score (Q43). Functional single item: higher = less worry about future health. Linear transformation 0-100."
Usage: #definition
* insert ObsDefVersion
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint)
* category.coding = $hl7-observation-category#survey
* code.coding[mii] = $mii-cs-pro-score-catalogue#eortc-qlq-br42-fu "EORTC QLQ-BR42 Future Perspective Score"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* quantitativeDetails.unit = $UCUM#{score} "score"
* quantitativeDetails.decimalPrecision = 1
* qualifiedInterval.category = #absolute
* qualifiedInterval.range.low.value = 0
* qualifiedInterval.range.high.value = 100
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#increase

// Sexual Functioning (SX) — Q44-45, 2 items, reverse scored
Instance: mii-obsdef-pro-score-eortc-qlq-br42-sx
InstanceOf: mii-pr-pro-score-blueprint
Title: "EORTC QLQ-BR42 Sexual Functioning Score"
Description: "Sexual Functioning score (Q44-45, reverse scored). Functional scale: higher = better sexual functioning. Linear transformation 0-100. Recall: past 4 weeks."
Usage: #definition
* insert ObsDefVersion
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint)
* category.coding = $hl7-observation-category#survey
* code.coding[mii] = $mii-cs-pro-score-catalogue#eortc-qlq-br42-sx "EORTC QLQ-BR42 Sexual Functioning Score"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* quantitativeDetails.unit = $UCUM#{score} "score"
* quantitativeDetails.decimalPrecision = 1
* qualifiedInterval.category = #absolute
* qualifiedInterval.range.low.value = 0
* qualifiedInterval.range.high.value = 100
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#increase

// Sexual Enjoyment (SE) — Q46, 1 item, reverse scored, conditional
Instance: mii-obsdef-pro-score-eortc-qlq-br42-se
InstanceOf: mii-pr-pro-score-blueprint
Title: "EORTC QLQ-BR42 Sexual Enjoyment Score"
Description: "Sexual Enjoyment score (Q46, reverse scored). Functional single item: higher = more enjoyment. Conditional: only if sexually active. Linear transformation 0-100."
Usage: #definition
* insert ObsDefVersion
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint)
* category.coding = $hl7-observation-category#survey
* code.coding[mii] = $mii-cs-pro-score-catalogue#eortc-qlq-br42-se "EORTC QLQ-BR42 Sexual Enjoyment Score"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* quantitativeDetails.unit = $UCUM#{score} "score"
* quantitativeDetails.decimalPrecision = 1
* qualifiedInterval.category = #absolute
* qualifiedInterval.range.low.value = 0
* qualifiedInterval.range.high.value = 100
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#increase

// Breast Satisfaction (BS) — Q71-72, 2 items, reverse scored, NEW
Instance: mii-obsdef-pro-score-eortc-qlq-br42-bs
InstanceOf: mii-pr-pro-score-blueprint
Title: "EORTC QLQ-BR42 Breast Satisfaction Score"
Description: "Breast Satisfaction score (Q71-72, reverse scored). Functional scale: higher = more satisfied. New in BR42. Linear transformation 0-100."
Usage: #definition
* insert ObsDefVersion
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint)
* category.coding = $hl7-observation-category#survey
* code.coding[mii] = $mii-cs-pro-score-catalogue#eortc-qlq-br42-bs "EORTC QLQ-BR42 Breast Satisfaction Score"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* quantitativeDetails.unit = $UCUM#{score} "score"
* quantitativeDetails.decimalPrecision = 1
* qualifiedInterval.category = #absolute
* qualifiedInterval.range.low.value = 0
* qualifiedInterval.range.high.value = 100
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#increase


// ---------------------------------------------------------------------------
// SYMPTOM SCALES
// ---------------------------------------------------------------------------

// Systemic Therapy Side Effects (SYS) — Q31-34, Q36-38, 7 items
Instance: mii-obsdef-pro-score-eortc-qlq-br42-sys
InstanceOf: mii-pr-pro-score-blueprint
Title: "EORTC QLQ-BR42 Systemic Therapy Side Effects Score"
Description: "Systemic Therapy Side Effects score (Q31-34, Q36-38). Symptom scale: higher = worse side effects. Linear transformation 0-100."
Usage: #definition
* insert ObsDefVersion
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint)
* category.coding = $hl7-observation-category#survey
* code.coding[mii] = $mii-cs-pro-score-catalogue#eortc-qlq-br42-sys "EORTC QLQ-BR42 Systemic Therapy Side Effects Score"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* quantitativeDetails.unit = $UCUM#{score} "score"
* quantitativeDetails.decimalPrecision = 1
* qualifiedInterval.category = #absolute
* qualifiedInterval.range.low.value = 0
* qualifiedInterval.range.high.value = 100
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#decrease

// Upset by Hair Loss (HU) — Q35, 1 item, conditional
Instance: mii-obsdef-pro-score-eortc-qlq-br42-hu
InstanceOf: mii-pr-pro-score-blueprint
Title: "EORTC QLQ-BR42 Upset by Hair Loss Score"
Description: "Upset by Hair Loss score (Q35). Symptom single item: higher = more upset. Conditional: only if Q34 ≠ 'Not at all'. Linear transformation 0-100."
Usage: #definition
* insert ObsDefVersion
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint)
* category.coding = $hl7-observation-category#survey
* code.coding[mii] = $mii-cs-pro-score-catalogue#eortc-qlq-br42-hu "EORTC QLQ-BR42 Upset by Hair Loss Score"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* quantitativeDetails.unit = $UCUM#{score} "score"
* quantitativeDetails.decimalPrecision = 1
* qualifiedInterval.category = #absolute
* qualifiedInterval.range.low.value = 0
* qualifiedInterval.range.high.value = 100
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#decrease

// Arm Symptoms (ARM) — Q47-49, 3 items
Instance: mii-obsdef-pro-score-eortc-qlq-br42-arm
InstanceOf: mii-pr-pro-score-blueprint
Title: "EORTC QLQ-BR42 Arm Symptoms Score"
Description: "Arm Symptoms score (Q47-49). Symptom scale: higher = worse symptoms. Linear transformation 0-100."
Usage: #definition
* insert ObsDefVersion
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint)
* category.coding = $hl7-observation-category#survey
* code.coding[mii] = $mii-cs-pro-score-catalogue#eortc-qlq-br42-arm "EORTC QLQ-BR42 Arm Symptoms Score"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* quantitativeDetails.unit = $UCUM#{score} "score"
* quantitativeDetails.decimalPrecision = 1
* qualifiedInterval.category = #absolute
* qualifiedInterval.range.low.value = 0
* qualifiedInterval.range.high.value = 100
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#decrease

// Breast Symptoms (BR) — Q50-53, 4 items
Instance: mii-obsdef-pro-score-eortc-qlq-br42-br
InstanceOf: mii-pr-pro-score-blueprint
Title: "EORTC QLQ-BR42 Breast Symptoms Score"
Description: "Breast Symptoms score (Q50-53). Symptom scale: higher = worse symptoms. Linear transformation 0-100."
Usage: #definition
* insert ObsDefVersion
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint)
* category.coding = $hl7-observation-category#survey
* code.coding[mii] = $mii-cs-pro-score-catalogue#eortc-qlq-br42-br "EORTC QLQ-BR42 Breast Symptoms Score"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* quantitativeDetails.unit = $UCUM#{score} "score"
* quantitativeDetails.decimalPrecision = 1
* qualifiedInterval.category = #absolute
* qualifiedInterval.range.low.value = 0
* qualifiedInterval.range.high.value = 100
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#decrease

// Endocrine Therapy Symptoms (ET) — Q54-56, Q63-66, 7 items, NEW
Instance: mii-obsdef-pro-score-eortc-qlq-br42-et
InstanceOf: mii-pr-pro-score-blueprint
Title: "EORTC QLQ-BR42 Endocrine Therapy Symptoms Score"
Description: "Endocrine Therapy Symptoms score (Q54-56, Q63-66). Symptom scale: higher = worse symptoms. New in BR42 (7 items, reduced from 10 in BR45). Linear transformation 0-100."
Usage: #definition
* insert ObsDefVersion
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint)
* category.coding = $hl7-observation-category#survey
* code.coding[mii] = $mii-cs-pro-score-catalogue#eortc-qlq-br42-et "EORTC QLQ-BR42 Endocrine Therapy Symptoms Score"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* quantitativeDetails.unit = $UCUM#{score} "score"
* quantitativeDetails.decimalPrecision = 1
* qualifiedInterval.category = #absolute
* qualifiedInterval.range.low.value = 0
* qualifiedInterval.range.high.value = 100
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#decrease

// Skin Mucosis Symptoms (SM) — Q57-62, 6 items, NEW
Instance: mii-obsdef-pro-score-eortc-qlq-br42-sm
InstanceOf: mii-pr-pro-score-blueprint
Title: "EORTC QLQ-BR42 Skin Mucosis Symptoms Score"
Description: "Skin/Mucosis Symptoms score (Q57-62). Symptom scale: higher = worse symptoms. New in BR42. Linear transformation 0-100."
Usage: #definition
* insert ObsDefVersion
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint)
* category.coding = $hl7-observation-category#survey
* code.coding[mii] = $mii-cs-pro-score-catalogue#eortc-qlq-br42-sm "EORTC QLQ-BR42 Skin Mucosis Symptoms Score"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* quantitativeDetails.unit = $UCUM#{score} "score"
* quantitativeDetails.decimalPrecision = 1
* qualifiedInterval.category = #absolute
* qualifiedInterval.range.low.value = 0
* qualifiedInterval.range.high.value = 100
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#decrease

// Endocrine Sexual Symptoms (ES) — Q68-70, 3 items, NEW
Instance: mii-obsdef-pro-score-eortc-qlq-br42-es
InstanceOf: mii-pr-pro-score-blueprint
Title: "EORTC QLQ-BR42 Endocrine Sexual Symptoms Score"
Description: "Endocrine Sexual Symptoms score (Q68-70). Symptom scale: higher = worse symptoms. New in BR42. Q69-70 conditional on sexual activity. Linear transformation 0-100."
Usage: #definition
* insert ObsDefVersion
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint)
* category.coding = $hl7-observation-category#survey
* code.coding[mii] = $mii-cs-pro-score-catalogue#eortc-qlq-br42-es "EORTC QLQ-BR42 Endocrine Sexual Symptoms Score"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* quantitativeDetails.unit = $UCUM#{score} "score"
* quantitativeDetails.decimalPrecision = 1
* qualifiedInterval.category = #absolute
* qualifiedInterval.range.low.value = 0
* qualifiedInterval.range.high.value = 100
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#decrease

// Weight Gain (WG) — Q67, 1 item, NEW
Instance: mii-obsdef-pro-score-eortc-qlq-br42-wg
InstanceOf: mii-pr-pro-score-blueprint
Title: "EORTC QLQ-BR42 Weight Gain Score"
Description: "Weight Gain score (Q67). Symptom single item: higher = more weight gain. New in BR42. Linear transformation 0-100."
Usage: #definition
* insert ObsDefVersion
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint)
* category.coding = $hl7-observation-category#survey
* code.coding[mii] = $mii-cs-pro-score-catalogue#eortc-qlq-br42-wg "EORTC QLQ-BR42 Weight Gain Score"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* quantitativeDetails.unit = $UCUM#{score} "score"
* quantitativeDetails.decimalPrecision = 1
* qualifiedInterval.category = #absolute
* qualifiedInterval.range.low.value = 0
* qualifiedInterval.range.high.value = 100
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#decrease
