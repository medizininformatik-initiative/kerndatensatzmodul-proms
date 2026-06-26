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

// All 15 items: "Wenig beeinträchtigt" (ordinal 1) → sum = 15
* item[+].linkId = "phq-phq15-q01" // Bauchschmerzen
* item[=].answer[0].valueCoding = $mii-cs-pro-phq-15-answers#bothered-a-little "Wenig beeinträchtigt"

* item[+].linkId = "phq-phq15-q02" // Rückenschmerzen
* item[=].answer[0].valueCoding = $mii-cs-pro-phq-15-answers#bothered-a-little "Wenig beeinträchtigt"

* item[+].linkId = "phq-phq15-q03" // Schmerzen in Armen, Beinen oder Gelenken
* item[=].answer[0].valueCoding = $mii-cs-pro-phq-15-answers#bothered-a-little "Wenig beeinträchtigt"

* item[+].linkId = "phq-phq15-q04" // Menstruationsschmerzen
* item[=].answer[0].valueCoding = $mii-cs-pro-phq-15-answers#bothered-a-little "Wenig beeinträchtigt"

* item[+].linkId = "phq-phq15-q05" // Schmerzen beim Geschlechtsverkehr
* item[=].answer[0].valueCoding = $mii-cs-pro-phq-15-answers#bothered-a-little "Wenig beeinträchtigt"

* item[+].linkId = "phq-phq15-q06" // Kopfschmerzen
* item[=].answer[0].valueCoding = $mii-cs-pro-phq-15-answers#bothered-a-little "Wenig beeinträchtigt"

* item[+].linkId = "phq-phq15-q07" // Schmerzen im Brustbereich
* item[=].answer[0].valueCoding = $mii-cs-pro-phq-15-answers#bothered-a-little "Wenig beeinträchtigt"

* item[+].linkId = "phq-phq15-q08" // Schwindel
* item[=].answer[0].valueCoding = $mii-cs-pro-phq-15-answers#bothered-a-little "Wenig beeinträchtigt"

* item[+].linkId = "phq-phq15-q09" // Ohnmachtsanfälle
* item[=].answer[0].valueCoding = $mii-cs-pro-phq-15-answers#bothered-a-little "Wenig beeinträchtigt"

* item[+].linkId = "phq-phq15-q10" // Herzklopfen oder Herzrasen
* item[=].answer[0].valueCoding = $mii-cs-pro-phq-15-answers#bothered-a-little "Wenig beeinträchtigt"

* item[+].linkId = "phq-phq15-q11" // Kurzatmigkeit
* item[=].answer[0].valueCoding = $mii-cs-pro-phq-15-answers#bothered-a-little "Wenig beeinträchtigt"

* item[+].linkId = "phq-phq15-q12" // Verstopfung, nervöser Darm oder Durchfall
* item[=].answer[0].valueCoding = $mii-cs-pro-phq-15-answers#bothered-a-little "Wenig beeinträchtigt"

* item[+].linkId = "phq-phq15-q13" // Übelkeit, Blähungen oder Verdauungsbeschwerden
* item[=].answer[0].valueCoding = $mii-cs-pro-phq-15-answers#bothered-a-little "Wenig beeinträchtigt"

* item[+].linkId = "phq-phq15-q14" // Müdigkeit oder keine Energie
* item[=].answer[0].valueCoding = $mii-cs-pro-phq-15-answers#bothered-a-little "Wenig beeinträchtigt"

* item[+].linkId = "phq-phq15-q15" // Schlafprobleme
* item[=].answer[0].valueCoding = $mii-cs-pro-phq-15-answers#bothered-a-little "Wenig beeinträchtigt"

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
