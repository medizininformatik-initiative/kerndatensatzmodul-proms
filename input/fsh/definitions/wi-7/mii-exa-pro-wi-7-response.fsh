// WI-7 example: three items answered "yes" (1, 4, 5), four answered "no" (2, 3, 6, 7).
// Expected sum: 1 + 0 + 0 + 1 + 1 + 0 + 0 = 3 → auffällig nach beiden dokumentierten Cut-offs
// (>= 1 und >= 2).
// Answers use the SNOMED CT yes/no codes declared in the questionnaire's answerOption
// (373066001 Yes / 373067005 No) per TC Terminologien best practice.

Instance: mii-exa-pro-wi-7-response
InstanceOf: MII_PR_PRO_QuestionnaireResponse
Usage: #example
Title: "WI-7 Questionnaire Response Example"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)
* status = #completed
* language = #de
* subject = Reference(Patient/mii-exa-pro-patient)
* authored = "2026-08-28T09:30:00Z"
* questionnaire = $mii-qst-pro-wi-7

* item[+].linkId = "wi7-q01" // Ernsthaft etwas nicht in Ordnung mit dem Körper
* item[=].answer[0].valueCoding = $SCT#373066001 "Yes"

* item[+].linkId = "wi7-q02" // Sorgen um die Gesundheit
* item[=].answer[0].valueCoding = $SCT#373067005 "No"

* item[+].linkId = "wi7-q03" // Ärztin/Arzt schwer glauben
* item[=].answer[0].valueCoding = $SCT#373067005 "No"

* item[+].linkId = "wi7-q04" // Sorgen um ernsthafte Krankheit
* item[=].answer[0].valueCoding = $SCT#373066001 "Yes"

* item[+].linkId = "wi7-q05" // Vielzahl von Schmerzen
* item[=].answer[0].valueCoding = $SCT#373066001 "Yes"

* item[+].linkId = "wi7-q06" // Sorgen bei Krankheit in den Medien
* item[=].answer[0].valueCoding = $SCT#373067005 "No"

* item[+].linkId = "wi7-q07" // Vielzahl unterschiedlicher Symptome
* item[=].answer[0].valueCoding = $SCT#373067005 "No"

// Calculated total score: 3 of 7
* item[+].linkId = "wi7-score-total"
* item[=].answer[0].valueDecimal = 3
