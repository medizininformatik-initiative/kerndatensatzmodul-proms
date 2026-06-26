// PHQ-15 example: all 15 items answered "Wenig beeinträchtigt" (ordinal = 1)
// Expected sum: 15 × 1 = 15 (medium somatic symptom burden per Kroenke 2002 thresholds)

Instance: mii-exa-pro-phq-15-response
InstanceOf: MII_PR_PRO_QuestionnaireResponse
Usage: #example
Title: "PHQ-15 Questionnaire Response Example"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)
* status = #completed
* language = #de
* subject = Reference(Patient/mii-exa-pro-patient)
* authored = "2024-03-15T10:00:00Z"
* questionnaire = $mii-qst-pro-phq-15

// All 15 items: "Bothered a little" (ordinal 1) → sum = 15
* item[+].linkId = "phq-phq1a" // Stomach pain
* item[=].answer[0].valueCoding = $mii-cs-pro-phq-15-answers#bothered-a-little "Bothered a little"

* item[+].linkId = "phq-phq1b" // Back pain
* item[=].answer[0].valueCoding = $mii-cs-pro-phq-15-answers#bothered-a-little "Bothered a little"

* item[+].linkId = "phq-phq1c" // Pain in arms, legs, or joints
* item[=].answer[0].valueCoding = $mii-cs-pro-phq-15-answers#bothered-a-little "Bothered a little"

* item[+].linkId = "phq-phq1d" // Menstrual cramps
* item[=].answer[0].valueCoding = $mii-cs-pro-phq-15-answers#bothered-a-little "Bothered a little"

* item[+].linkId = "phq-phq1e" // Pain during sexual intercourse
* item[=].answer[0].valueCoding = $mii-cs-pro-phq-15-answers#bothered-a-little "Bothered a little"

* item[+].linkId = "phq-phq1f" // Headaches
* item[=].answer[0].valueCoding = $mii-cs-pro-phq-15-answers#bothered-a-little "Bothered a little"

* item[+].linkId = "phq-phq1g" // Chest pain
* item[=].answer[0].valueCoding = $mii-cs-pro-phq-15-answers#bothered-a-little "Bothered a little"

* item[+].linkId = "phq-phq1h" // Dizziness
* item[=].answer[0].valueCoding = $mii-cs-pro-phq-15-answers#bothered-a-little "Bothered a little"

* item[+].linkId = "phq-phq1i" // Fainting spells
* item[=].answer[0].valueCoding = $mii-cs-pro-phq-15-answers#bothered-a-little "Bothered a little"

* item[+].linkId = "phq-phq1j" // Feeling your heart pound or race
* item[=].answer[0].valueCoding = $mii-cs-pro-phq-15-answers#bothered-a-little "Bothered a little"

* item[+].linkId = "phq-phq1k" // Shortness of breath
* item[=].answer[0].valueCoding = $mii-cs-pro-phq-15-answers#bothered-a-little "Bothered a little"

* item[+].linkId = "phq-phq1l" // Constipation, loose bowels, or diarrhea
* item[=].answer[0].valueCoding = $mii-cs-pro-phq-15-answers#bothered-a-little "Bothered a little"

* item[+].linkId = "phq-phq1m" // Nausea, gas, or indigestion
* item[=].answer[0].valueCoding = $mii-cs-pro-phq-15-answers#bothered-a-little "Bothered a little"

* item[+].linkId = "phq-phq2d" // Feeling tired or having low energy
* item[=].answer[0].valueCoding = $mii-cs-pro-phq-15-answers#bothered-a-little "Bothered a little"

* item[+].linkId = "phq-phq2c" // Trouble sleeping
* item[=].answer[0].valueCoding = $mii-cs-pro-phq-15-answers#bothered-a-little "Bothered a little"

// Calculated total score: 15 items × 1 = 15
* item[+].linkId = "phq-phq15-score-total"
* item[=].answer[0].valueDecimal = 15

// Score Observation: PHQ-15 total score extracted from QuestionnaireResponse above
Instance: mii-exa-pro-phq-15-observation
InstanceOf: MII_PR_PRO_Score_Instance
Usage: #example
Title: "PHQ-15 Score Observation Example"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance)
* status = #final
* subject = Reference(Patient/mii-exa-pro-patient)
* effectiveDateTime = "2024-03-15T10:00:00Z"
* code = $LNC#70273-8 "Patient Health Questionnaire 15 item (PHQ-15) total score [Reported]"
* derivedFrom = Reference(mii-exa-pro-phq-15-response)
* valueQuantity.value = 15
* valueQuantity.code = #{score}
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
