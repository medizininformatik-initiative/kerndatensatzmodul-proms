// PHQ-15 example: all 15 items answered "Wenig beeinträchtigt" (ordinal = 1)
// Expected sum: 15 × 1 = 15 (medium somatic symptom burden per Kroenke 2002 thresholds)

Instance: mii-exa-pro-phq-15-response
InstanceOf: MII_PR_PRO_QuestionnaireResponse
Usage: #example
Title: "PHQ-15 Questionnaire Response Example"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)
* status = #completed
* language = #en
* subject = Reference(Patient/mii-exa-pro-patient)
* authored = "2024-03-15T10:00:00Z"
* insert QuestionnaireRef(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-15)
// All 15 items: "Bothered a little" (ordinal 1) → sum = 15
* item[+].linkId = "phq-phq1a" // Stomach pain
* item[=].text = "Stomach pain"
* insert TranslationDE(item[=].text, [["Bauchschmerzen"]])
* item[=].answer[0].valueCoding = $mii-cs-pro-phq-15-answers#bothered-a-little "Bothered a little"
* insert TranslationDE(item[=].answer[0].valueCoding.display, [["Wenig beeinträchtigt"]])

* item[+].linkId = "phq-phq1b" // Back pain
* item[=].text = "Back pain"
* insert TranslationDE(item[=].text, [["Rückenschmerzen"]])
* item[=].answer[0].valueCoding = $mii-cs-pro-phq-15-answers#bothered-a-little "Bothered a little"
* insert TranslationDE(item[=].answer[0].valueCoding.display, [["Wenig beeinträchtigt"]])

* item[+].linkId = "phq-phq1c" // Pain in arms, legs, or joints
* item[=].text = "Pain in your arms, legs, or joints (knees, hips, etc.)"
* insert TranslationDE(item[=].text, [["Schmerzen in Armen, Beinen oder Gelenken (Knie, Hüften, usw.)"]])
* item[=].answer[0].valueCoding = $mii-cs-pro-phq-15-answers#bothered-a-little "Bothered a little"
* insert TranslationDE(item[=].answer[0].valueCoding.display, [["Wenig beeinträchtigt"]])

* item[+].linkId = "phq-phq1d" // Menstrual cramps
* item[=].text = "Menstrual cramps or other problems with your periods"
* insert TranslationDE(item[=].text, [["Menstruationsschmerzen oder andere Probleme mit der Menstruation"]])
* item[=].answer[0].valueCoding = $mii-cs-pro-phq-15-answers#bothered-a-little "Bothered a little"
* insert TranslationDE(item[=].answer[0].valueCoding.display, [["Wenig beeinträchtigt"]])

* item[+].linkId = "phq-phq1e" // Pain during sexual intercourse
* item[=].text = "Pain or problems during sexual intercourse"
* insert TranslationDE(item[=].text, [["Schmerzen oder Probleme beim Geschlechtsverkehr"]])
* item[=].answer[0].valueCoding = $mii-cs-pro-phq-15-answers#bothered-a-little "Bothered a little"
* insert TranslationDE(item[=].answer[0].valueCoding.display, [["Wenig beeinträchtigt"]])

* item[+].linkId = "phq-phq1f" // Headaches
* item[=].text = "Headaches"
* insert TranslationDE(item[=].text, [["Kopfschmerzen"]])
* item[=].answer[0].valueCoding = $mii-cs-pro-phq-15-answers#bothered-a-little "Bothered a little"
* insert TranslationDE(item[=].answer[0].valueCoding.display, [["Wenig beeinträchtigt"]])

* item[+].linkId = "phq-phq1g" // Chest pain
* item[=].text = "Chest pain"
* insert TranslationDE(item[=].text, [["Schmerzen im Brustbereich"]])
* item[=].answer[0].valueCoding = $mii-cs-pro-phq-15-answers#bothered-a-little "Bothered a little"
* insert TranslationDE(item[=].answer[0].valueCoding.display, [["Wenig beeinträchtigt"]])

* item[+].linkId = "phq-phq1h" // Dizziness
* item[=].text = "Dizziness"
* insert TranslationDE(item[=].text, [["Schwindel"]])
* item[=].answer[0].valueCoding = $mii-cs-pro-phq-15-answers#bothered-a-little "Bothered a little"
* insert TranslationDE(item[=].answer[0].valueCoding.display, [["Wenig beeinträchtigt"]])

* item[+].linkId = "phq-phq1i" // Fainting spells
* item[=].text = "Fainting spells"
* insert TranslationDE(item[=].text, [["Ohnmachtsanfälle"]])
* item[=].answer[0].valueCoding = $mii-cs-pro-phq-15-answers#bothered-a-little "Bothered a little"
* insert TranslationDE(item[=].answer[0].valueCoding.display, [["Wenig beeinträchtigt"]])

* item[+].linkId = "phq-phq1j" // Feeling your heart pound or race
* item[=].text = "Feeling your heart pound or race"
* insert TranslationDE(item[=].text, [["Herzklopfen oder Herzrasen"]])
* item[=].answer[0].valueCoding = $mii-cs-pro-phq-15-answers#bothered-a-little "Bothered a little"
* insert TranslationDE(item[=].answer[0].valueCoding.display, [["Wenig beeinträchtigt"]])

* item[+].linkId = "phq-phq1k" // Shortness of breath
* item[=].text = "Shortness of breath"
* insert TranslationDE(item[=].text, [["Kurzatmigkeit"]])
* item[=].answer[0].valueCoding = $mii-cs-pro-phq-15-answers#bothered-a-little "Bothered a little"
* insert TranslationDE(item[=].answer[0].valueCoding.display, [["Wenig beeinträchtigt"]])

* item[+].linkId = "phq-phq1l" // Constipation, loose bowels, or diarrhea
* item[=].text = "Constipation, loose bowels, or diarrhea"
* insert TranslationDE(item[=].text, [["Verstopfung, nervöser Darm oder Durchfall"]])
* item[=].answer[0].valueCoding = $mii-cs-pro-phq-15-answers#bothered-a-little "Bothered a little"
* insert TranslationDE(item[=].answer[0].valueCoding.display, [["Wenig beeinträchtigt"]])

* item[+].linkId = "phq-phq1m" // Nausea, gas, or indigestion
* item[=].text = "Nausea, gas, or indigestion"
* insert TranslationDE(item[=].text, [["Übelkeit, Blähungen oder Verdauungsbeschwerden"]])
* item[=].answer[0].valueCoding = $mii-cs-pro-phq-15-answers#bothered-a-little "Bothered a little"
* insert TranslationDE(item[=].answer[0].valueCoding.display, [["Wenig beeinträchtigt"]])

* item[+].linkId = "phq-phq2d" // Feeling tired or having low energy
* item[=].text = "Feeling tired or having low energy"
* insert TranslationDE(item[=].text, [["Müdigkeit oder Gefühl, keine Energie zu haben"]])
* item[=].answer[0].valueCoding = $mii-cs-pro-phq-15-answers#bothered-a-little "Bothered a little"
* insert TranslationDE(item[=].answer[0].valueCoding.display, [["Wenig beeinträchtigt"]])

* item[+].linkId = "phq-phq2c" // Trouble sleeping
* item[=].text = "Trouble sleeping"
* insert TranslationDE(item[=].text, [["Schwierigkeiten ein- oder durchzuschlafen oder vermehrter Schlaf"]])
* item[=].answer[0].valueCoding = $mii-cs-pro-phq-15-answers#bothered-a-little "Bothered a little"
* insert TranslationDE(item[=].answer[0].valueCoding.display, [["Wenig beeinträchtigt"]])

// Calculated total score: 15 items × 1 = 15
* item[+].linkId = "phq-phq15-score-total"
* item[=].text = "PHQ-15 Total Score (0–30)"
* insert TranslationDE(item[=].text, [["PHQ-15 Summenwert (0–30)"]])
* item[=].answer[0].valueDecimal = 15

// Score Observation: PHQ-15 total score extracted from QuestionnaireResponse above
Instance: mii-exa-pro-phq-15-observation
InstanceOf: MII_PR_PRO_Observation_PHQ_15
Usage: #example
Title: "PHQ-15 Score Observation Example"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-phq-15)
* status = #final
* subject = Reference(Patient/mii-exa-pro-patient)
* effectiveDateTime = "2024-03-15T10:00:00Z"
* code = $LNC#70273-8 "Patient Health Questionnaire 15 item (PHQ-15) total score [Reported]"
* derivedFrom = Reference(mii-exa-pro-phq-15-response)
* valueQuantity.value = 15
* valueQuantity.code = #{score}
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
