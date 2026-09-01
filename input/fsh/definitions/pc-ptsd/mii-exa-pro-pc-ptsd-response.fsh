// PC-PTSD example: three items answered "ja" (1, 2, 4), one answered "nein" (3).
// Expected sum: 1 + 1 + 0 + 1 = 3 → screening positive (verbreiteter Cut-off >= 3, siehe
// mii-obsdef-pro-score-pc-ptsd).
// Answers use the SNOMED CT yes/no codes declared in the questionnaire's answerOption
// (373066001 Yes / 373067005 No) per TC Terminologien best practice.

Instance: mii-exa-pro-pc-ptsd-response
InstanceOf: MII_PR_PRO_QuestionnaireResponse
Usage: #example
Title: "PC-PTSD Questionnaire Response Example"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)
* status = #completed
* language = #de
* subject = Reference(Patient/mii-exa-pro-patient)
* authored = "2026-08-28T09:30:00Z"
* questionnaire = $mii-qst-pro-pc-ptsd

* item[+].linkId = "pc-ptsd-q01" // Albträume / aufdringliche Gedanken
* item[=].answer[0].valueCoding = $SCT#373066001 "Yes"

* item[+].linkId = "pc-ptsd-q02" // Vermeidung
* item[=].answer[0].valueCoding = $SCT#373066001 "Yes"

* item[+].linkId = "pc-ptsd-q03" // Übererregung / Hypervigilanz
* item[=].answer[0].valueCoding = $SCT#373067005 "No"

* item[+].linkId = "pc-ptsd-q04" // emotionale Taubheit / Rückzug
* item[=].answer[0].valueCoding = $SCT#373066001 "Yes"

// Calculated total score: 3 of 4
* item[+].linkId = "pc-ptsd-score-total"
* item[=].answer[0].valueDecimal = 3
