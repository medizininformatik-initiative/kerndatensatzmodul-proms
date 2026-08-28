// SCOFF example: three items answered "yes" (1, 2, 5), two answered "no" (3, 4).
// Expected sum: 1 + 1 + 0 + 0 + 1 = 3 → screening positive (cut-off >= 2).
// Answers use the SNOMED CT yes/no codes declared in the questionnaire's answerOption
// (373066001 Yes / 373067005 No) per TC Terminologien best practice.

Instance: mii-exa-pro-scoff-response
InstanceOf: MII_PR_PRO_QuestionnaireResponse
Usage: #example
Title: "SCOFF Questionnaire Response Example"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)
* status = #completed
* language = #de
* subject = Reference(Patient/mii-exa-pro-patient)
* authored = "2026-08-28T09:30:00Z"
* questionnaire = $mii-qst-pro-scoff

* item[+].linkId = "scoff-q01" // Sick — Erbrechen bei Völlegefühl
* item[=].answer[0].valueCoding = $SCT#373066001 "Yes"

* item[+].linkId = "scoff-q02" // Control — Kontrollverlust über das Essen
* item[=].answer[0].valueCoding = $SCT#373066001 "Yes"

* item[+].linkId = "scoff-q03" // One stone — Gewichtsverlust
* item[=].answer[0].valueCoding = $SCT#373067005 "No"

* item[+].linkId = "scoff-q04" // Fat — Körperschemastörung
* item[=].answer[0].valueCoding = $SCT#373067005 "No"

* item[+].linkId = "scoff-q05" // Food — Essen dominiert das Leben
* item[=].answer[0].valueCoding = $SCT#373066001 "Yes"

// Calculated total score: 3 of 5
* item[+].linkId = "scoff-score-total"
* item[=].answer[0].valueDecimal = 3
