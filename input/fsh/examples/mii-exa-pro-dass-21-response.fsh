// ============================================================================
// DASS-21 QuestionnaireResponse Example
// ============================================================================
// Mixed severity scenario:
//   Depression (Q3,5,10,13,16,17,21): 2+2+2+2+1+2+1 = 12 (severe, range 11-13)
//   Anxiety    (Q2,4,7,9,15,19,20):   1+1+0+1+1+0+1 = 5  (mild, range 4-5)
//   Stress     (Q1,6,8,11,12,14,18):  2+1+2+2+1+2+1 = 11 (moderate, range 10-12)
// ============================================================================

Instance: mii-exa-pro-dass-dass21-response-01
InstanceOf: mii-pr-pro-questionnaire-response
Title: "MII EXA PRO DASS-21 Response"
Description: "Complete DASS-21 QuestionnaireResponse example with mixed severity: Depression severe (12), Anxiety mild (5), Stress moderate (11)"
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)
* questionnaire = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-dass-dass21"
* status = #completed
* subject.reference = "Patient/mii-exa-pro-patient"
* authored = "2026-02-01"

// Q1 - Stress (value: 2)
* item[+].linkId = "dass-dass21-q01"
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-dass-21"
* item[=].answer.valueCoding.code = #dass-dass21-answer-2
* item[=].answer.valueCoding.display = "Applied to me to a considerable degree"

// Q2 - Anxiety (value: 1)
* item[+].linkId = "dass-dass21-q02"
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-dass-21"
* item[=].answer.valueCoding.code = #dass-dass21-answer-1
* item[=].answer.valueCoding.display = "Applied to me to some degree"

// Q3 - Depression (value: 2)
* item[+].linkId = "dass-dass21-q03"
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-dass-21"
* item[=].answer.valueCoding.code = #dass-dass21-answer-2
* item[=].answer.valueCoding.display = "Applied to me to a considerable degree"

// Q4 - Anxiety (value: 1)
* item[+].linkId = "dass-dass21-q04"
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-dass-21"
* item[=].answer.valueCoding.code = #dass-dass21-answer-1
* item[=].answer.valueCoding.display = "Applied to me to some degree"

// Q5 - Depression (value: 2)
* item[+].linkId = "dass-dass21-q05"
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-dass-21"
* item[=].answer.valueCoding.code = #dass-dass21-answer-2
* item[=].answer.valueCoding.display = "Applied to me to a considerable degree"

// Q6 - Stress (value: 1)
* item[+].linkId = "dass-dass21-q06"
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-dass-21"
* item[=].answer.valueCoding.code = #dass-dass21-answer-1
* item[=].answer.valueCoding.display = "Applied to me to some degree"

// Q7 - Anxiety (value: 0)
* item[+].linkId = "dass-dass21-q07"
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-dass-21"
* item[=].answer.valueCoding.code = #dass-dass21-answer-0
* item[=].answer.valueCoding.display = "Did not apply to me at all"

// Q8 - Stress (value: 2)
* item[+].linkId = "dass-dass21-q08"
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-dass-21"
* item[=].answer.valueCoding.code = #dass-dass21-answer-2
* item[=].answer.valueCoding.display = "Applied to me to a considerable degree"

// Q9 - Anxiety (value: 1)
* item[+].linkId = "dass-dass21-q09"
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-dass-21"
* item[=].answer.valueCoding.code = #dass-dass21-answer-1
* item[=].answer.valueCoding.display = "Applied to me to some degree"

// Q10 - Depression (value: 2)
* item[+].linkId = "dass-dass21-q10"
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-dass-21"
* item[=].answer.valueCoding.code = #dass-dass21-answer-2
* item[=].answer.valueCoding.display = "Applied to me to a considerable degree"

// Q11 - Stress (value: 2)
* item[+].linkId = "dass-dass21-q11"
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-dass-21"
* item[=].answer.valueCoding.code = #dass-dass21-answer-2
* item[=].answer.valueCoding.display = "Applied to me to a considerable degree"

// Q12 - Stress (value: 1)
* item[+].linkId = "dass-dass21-q12"
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-dass-21"
* item[=].answer.valueCoding.code = #dass-dass21-answer-1
* item[=].answer.valueCoding.display = "Applied to me to some degree"

// Q13 - Depression (value: 2)
* item[+].linkId = "dass-dass21-q13"
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-dass-21"
* item[=].answer.valueCoding.code = #dass-dass21-answer-2
* item[=].answer.valueCoding.display = "Applied to me to a considerable degree"

// Q14 - Stress (value: 2)
* item[+].linkId = "dass-dass21-q14"
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-dass-21"
* item[=].answer.valueCoding.code = #dass-dass21-answer-2
* item[=].answer.valueCoding.display = "Applied to me to a considerable degree"

// Q15 - Anxiety (value: 1)
* item[+].linkId = "dass-dass21-q15"
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-dass-21"
* item[=].answer.valueCoding.code = #dass-dass21-answer-1
* item[=].answer.valueCoding.display = "Applied to me to some degree"

// Q16 - Depression (value: 1)
* item[+].linkId = "dass-dass21-q16"
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-dass-21"
* item[=].answer.valueCoding.code = #dass-dass21-answer-1
* item[=].answer.valueCoding.display = "Applied to me to some degree"

// Q17 - Depression (value: 2)
* item[+].linkId = "dass-dass21-q17"
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-dass-21"
* item[=].answer.valueCoding.code = #dass-dass21-answer-2
* item[=].answer.valueCoding.display = "Applied to me to a considerable degree"

// Q18 - Stress (value: 1)
* item[+].linkId = "dass-dass21-q18"
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-dass-21"
* item[=].answer.valueCoding.code = #dass-dass21-answer-1
* item[=].answer.valueCoding.display = "Applied to me to some degree"

// Q19 - Anxiety (value: 0)
* item[+].linkId = "dass-dass21-q19"
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-dass-21"
* item[=].answer.valueCoding.code = #dass-dass21-answer-0
* item[=].answer.valueCoding.display = "Did not apply to me at all"

// Q20 - Anxiety (value: 1)
* item[+].linkId = "dass-dass21-q20"
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-dass-21"
* item[=].answer.valueCoding.code = #dass-dass21-answer-1
* item[=].answer.valueCoding.display = "Applied to me to some degree"

// Q21 - Depression (value: 1)
* item[+].linkId = "dass-dass21-q21"
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-dass-21"
* item[=].answer.valueCoding.code = #dass-dass21-answer-1
* item[=].answer.valueCoding.display = "Applied to me to some degree"

// ===== Raw Subscale Scores =====

// Depression Raw Score: 2+2+2+2+1+2+1 = 12
* item[+].linkId = "dass-dass21-score-raw-depression"
* item[=].answer.valueDecimal = 12

// Anxiety Raw Score: 1+1+0+1+1+0+1 = 5
* item[+].linkId = "dass-dass21-score-raw-anxiety"
* item[=].answer.valueDecimal = 5

// Stress Raw Score: 2+1+2+2+1+2+1 = 11
* item[+].linkId = "dass-dass21-score-raw-stress"
* item[=].answer.valueDecimal = 11

// ===== DASS-42 Equivalent Scores (raw * 2) =====

// Depression Equivalent: 12 * 2 = 24
* item[+].linkId = "dass-dass21-score-equiv-depression"
* item[=].answer.valueDecimal = 24

// Anxiety Equivalent: 5 * 2 = 10
* item[+].linkId = "dass-dass21-score-equiv-anxiety"
* item[=].answer.valueDecimal = 10

// Stress Equivalent: 11 * 2 = 22
* item[+].linkId = "dass-dass21-score-equiv-stress"
* item[=].answer.valueDecimal = 22


// ============================================================================
// DASS-21 Score Observation Examples
// ============================================================================

// ===== DEPRESSION RAW SCORE =====
Instance: mii-exa-pro-dass-dass21-score-depression-raw
InstanceOf: mii-pr-pro-score-instance
Title: "DASS-21 Depression Raw Score Observation"
Description: "DASS-21 Depression subscale raw score observation (severe: 12)"
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance)
* status = #final
* category.coding = $hl7-observation-category#survey "Survey"
* code.coding[+] = $SCT#416954004 "Depression anxiety stress scales depression score"
* code.coding[+].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue"
* code.coding[=].code = #dass21-depression-raw
* code.coding[=].display = "DASS-21 Depression Raw Score"
* subject.reference = "Patient/mii-exa-pro-patient"
* effectiveDateTime = "2026-02-01"
* valueQuantity.value = 12
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}
* derivedFrom.reference = "QuestionnaireResponse/mii-exa-pro-dass-dass21-response-01"

// ===== ANXIETY RAW SCORE =====
Instance: mii-exa-pro-dass-dass21-score-anxiety-raw
InstanceOf: mii-pr-pro-score-instance
Title: "DASS-21 Anxiety Raw Score Observation"
Description: "DASS-21 Anxiety subscale raw score observation (mild: 5)"
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance)
* status = #final
* category.coding = $hl7-observation-category#survey "Survey"
* code.coding[+].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue"
* code.coding[=].code = #dass21-anxiety-raw
* code.coding[=].display = "DASS-21 Anxiety Raw Score"
* subject.reference = "Patient/mii-exa-pro-patient"
* effectiveDateTime = "2026-02-01"
* valueQuantity.value = 5
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}
* derivedFrom.reference = "QuestionnaireResponse/mii-exa-pro-dass-dass21-response-01"

// ===== STRESS RAW SCORE =====
Instance: mii-exa-pro-dass-dass21-score-stress-raw
InstanceOf: mii-pr-pro-score-instance
Title: "DASS-21 Stress Raw Score Observation"
Description: "DASS-21 Stress subscale raw score observation (moderate: 11)"
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance)
* status = #final
* category.coding = $hl7-observation-category#survey "Survey"
* code.coding[+] = $SCT#416767005 "Depression anxiety stress scales stress score"
* code.coding[+].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue"
* code.coding[=].code = #dass21-stress-raw
* code.coding[=].display = "DASS-21 Stress Raw Score"
* subject.reference = "Patient/mii-exa-pro-patient"
* effectiveDateTime = "2026-02-01"
* valueQuantity.value = 11
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}
* derivedFrom.reference = "QuestionnaireResponse/mii-exa-pro-dass-dass21-response-01"

// ===== DEPRESSION DASS-42 EQUIVALENT SCORE =====
Instance: mii-exa-pro-dass-dass21-score-depression-equiv
InstanceOf: mii-pr-pro-score-instance
Title: "DASS-21 Depression DASS-42 Equivalent Score Observation"
Description: "DASS-21 Depression subscale DASS-42 equivalent score observation (raw 12 * 2 = 24)"
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance)
* status = #final
* category.coding = $hl7-observation-category#survey "Survey"
* code.coding[+] = $SCT#416954004 "Depression anxiety stress scales depression score"
* code.coding[+].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue"
* code.coding[=].code = #dass21-depression-equiv
* code.coding[=].display = "DASS-21 Depression DASS-42 Equivalent Score"
* subject.reference = "Patient/mii-exa-pro-patient"
* effectiveDateTime = "2026-02-01"
* valueQuantity.value = 24
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}
* derivedFrom.reference = "QuestionnaireResponse/mii-exa-pro-dass-dass21-response-01"

// ===== ANXIETY DASS-42 EQUIVALENT SCORE =====
Instance: mii-exa-pro-dass-dass21-score-anxiety-equiv
InstanceOf: mii-pr-pro-score-instance
Title: "DASS-21 Anxiety DASS-42 Equivalent Score Observation"
Description: "DASS-21 Anxiety subscale DASS-42 equivalent score observation (raw 5 * 2 = 10)"
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance)
* status = #final
* category.coding = $hl7-observation-category#survey "Survey"
* code.coding[+].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue"
* code.coding[=].code = #dass21-anxiety-equiv
* code.coding[=].display = "DASS-21 Anxiety DASS-42 Equivalent Score"
* subject.reference = "Patient/mii-exa-pro-patient"
* effectiveDateTime = "2026-02-01"
* valueQuantity.value = 10
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}
* derivedFrom.reference = "QuestionnaireResponse/mii-exa-pro-dass-dass21-response-01"

// ===== STRESS DASS-42 EQUIVALENT SCORE =====
Instance: mii-exa-pro-dass-dass21-score-stress-equiv
InstanceOf: mii-pr-pro-score-instance
Title: "DASS-21 Stress DASS-42 Equivalent Score Observation"
Description: "DASS-21 Stress subscale DASS-42 equivalent score observation (raw 11 * 2 = 22)"
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance)
* status = #final
* category.coding = $hl7-observation-category#survey "Survey"
* code.coding[+] = $SCT#416767005 "Depression anxiety stress scales stress score"
* code.coding[+].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue"
* code.coding[=].code = #dass21-stress-equiv
* code.coding[=].display = "DASS-21 Stress DASS-42 Equivalent Score"
* subject.reference = "Patient/mii-exa-pro-patient"
* effectiveDateTime = "2026-02-01"
* valueQuantity.value = 22
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}
* derivedFrom.reference = "QuestionnaireResponse/mii-exa-pro-dass-dass21-response-01"
