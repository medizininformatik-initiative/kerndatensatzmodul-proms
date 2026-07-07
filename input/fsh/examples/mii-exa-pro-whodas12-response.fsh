// ============================================================================
// WHODAS 2.0 12-Item QuestionnaireResponse Example
// ============================================================================
// Verification scenario: every one of the 12 items answered "Moderate" (ordinal 2).
//   Simple sum = 12 items × 2 = 24 (range 0-48).
// The score item (whodas-whodas12-score-simple-sum) therefore carries 24, and
// the score Observation below mirrors that value.
// ============================================================================

Instance: mii-exa-pro-whodas12-response-01
InstanceOf: mii-pr-pro-questionnaire-response
Title: "MII EXA PRO WHODAS 2.0 12-Item Response"
Description: "Complete WHODAS-12 QuestionnaireResponse example. All 12 items answered 'Moderate' (ordinal 2); simple sum = 24."
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)
* questionnaire = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-whodas-whodas12"
* status = #completed
* subject.reference = "Patient/mii-exa-pro-patient"
* authored = "2026-02-01"

// Q1 (value: 2)
* item[+].linkId = "whodas-whodas12-q01"
* item[=].answer.valueCoding = $mii-cs-pro-whodas-12#whodas12-answer-2 "mäßige"

// Q2 (value: 2)
* item[+].linkId = "whodas-whodas12-q02"
* item[=].answer.valueCoding = $mii-cs-pro-whodas-12#whodas12-answer-2 "mäßige"

// Q3 (value: 2)
* item[+].linkId = "whodas-whodas12-q03"
* item[=].answer.valueCoding = $mii-cs-pro-whodas-12#whodas12-answer-2 "mäßige"

// Q4 (value: 2)
* item[+].linkId = "whodas-whodas12-q04"
* item[=].answer.valueCoding = $mii-cs-pro-whodas-12#whodas12-answer-2 "mäßige"

// Q5 (value: 2)
* item[+].linkId = "whodas-whodas12-q05"
* item[=].answer.valueCoding = $mii-cs-pro-whodas-12#whodas12-answer-2 "mäßige"

// Q6 (value: 2)
* item[+].linkId = "whodas-whodas12-q06"
* item[=].answer.valueCoding = $mii-cs-pro-whodas-12#whodas12-answer-2 "mäßige"

// Q7 (value: 2)
* item[+].linkId = "whodas-whodas12-q07"
* item[=].answer.valueCoding = $mii-cs-pro-whodas-12#whodas12-answer-2 "mäßige"

// Q8 (value: 2)
* item[+].linkId = "whodas-whodas12-q08"
* item[=].answer.valueCoding = $mii-cs-pro-whodas-12#whodas12-answer-2 "mäßige"

// Q9 (value: 2)
* item[+].linkId = "whodas-whodas12-q09"
* item[=].answer.valueCoding = $mii-cs-pro-whodas-12#whodas12-answer-2 "mäßige"

// Q10 (value: 2)
* item[+].linkId = "whodas-whodas12-q10"
* item[=].answer.valueCoding = $mii-cs-pro-whodas-12#whodas12-answer-2 "mäßige"

// Q11 (value: 2)
* item[+].linkId = "whodas-whodas12-q11"
* item[=].answer.valueCoding = $mii-cs-pro-whodas-12#whodas12-answer-2 "mäßige"

// Q12 (value: 2)
* item[+].linkId = "whodas-whodas12-q12"
* item[=].answer.valueCoding = $mii-cs-pro-whodas-12#whodas12-answer-2 "mäßige"

// ===== Simple Sum Score: 12 × 2 = 24 =====
* item[+].linkId = "whodas-whodas12-score-simple-sum"
* item[=].answer.valueDecimal = 24


// ============================================================================
// WHODAS-12 Score Observation Example (mirrors the calculated simple sum)
// ============================================================================

Instance: mii-exa-pro-whodas12-score-simple-sum
InstanceOf: mii-pr-pro-observation-whodas12
Title: "WHODAS 2.0 12-Item Simple Sum Score Observation"
Description: "WHODAS-12 simple sum score observation (all items 'Moderate': 12 × 2 = 24)."
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-whodas12)
* status = #final
* category.coding = $hl7-observation-category#survey "Survey"
* code.coding[+] = $SCT#715823002 "WHODAS (World Health Organization Disability Assessment Schedule) 2.0 score"
* code.coding[+].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue"
* code.coding[=].code = #whodas12-simple-sum
* code.coding[=].display = "WHODAS 2.0 12-Item Simple Sum Score (0-48)"
* subject.reference = "Patient/mii-exa-pro-patient"
* effectiveDateTime = "2026-02-01"
* valueQuantity.value = 24
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}
* derivedFrom.reference = "QuestionnaireResponse/mii-exa-pro-whodas12-response-01"
