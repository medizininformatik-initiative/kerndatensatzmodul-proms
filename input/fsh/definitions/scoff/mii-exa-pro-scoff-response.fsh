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
* language = #en
* subject = Reference(Patient/mii-exa-pro-patient)
* authored = "2026-08-28T09:30:00Z"
* insert QuestionnaireRef(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-scoff)
* item[+].linkId = "scoff-q01" // Sick — Erbrechen bei Völlegefühl
* item[=].text = "Do you make yourself Sick because you feel uncomfortably full?"
* insert TranslationDE(item[=].text, [["Übergeben Sie sich, wenn Sie sich unangenehm voll fühlen?"]])
* item[=].answer[0].valueCoding = $SCT#373066001 "Yes"
* insert TranslationDE(item[=].answer[0].valueCoding.display, [["Ja"]])

* item[+].linkId = "scoff-q02" // Control — Kontrollverlust über das Essen
* item[=].text = "Do you worry you have lost Control over how much you eat?"
* insert TranslationDE(item[=].text, [["Machen Sie sich Sorgen, weil Sie manchmal nicht mit dem Essen aufhören können?"]])
* item[=].answer[0].valueCoding = $SCT#373066001 "Yes"
* insert TranslationDE(item[=].answer[0].valueCoding.display, [["Ja"]])

* item[+].linkId = "scoff-q03" // One stone — Gewichtsverlust
* item[=].text = "Have you recently lost more than One stone in a 3 month period?"
* insert TranslationDE(item[=].text, [["Haben Sie in der letzten Zeit mehr als 6 kg in 3 Monaten abgenommen?"]])
* item[=].answer[0].valueCoding = $SCT#373067005 "No"
* insert TranslationDE(item[=].answer[0].valueCoding.display, [["Nein"]])

* item[+].linkId = "scoff-q04" // Fat — Körperschemastörung
* item[=].text = "Do you believe yourself to be Fat when others say you are too thin?"
* insert TranslationDE(item[=].text, [["Finden Sie sich zu dick, während andere Sie zu dünn finden?"]])
* item[=].answer[0].valueCoding = $SCT#373067005 "No"
* insert TranslationDE(item[=].answer[0].valueCoding.display, [["Nein"]])

* item[+].linkId = "scoff-q05" // Food — Essen dominiert das Leben
* item[=].text = "Would you say that Food dominates your life?"
* insert TranslationDE(item[=].text, [["Würden Sie sagen, dass Essen Ihr Leben sehr beeinflusst?"]])
* item[=].answer[0].valueCoding = $SCT#373066001 "Yes"
* insert TranslationDE(item[=].answer[0].valueCoding.display, [["Ja"]])

// Calculated total score: 3 of 5
* item[+].linkId = "scoff-score-total"
* item[=].text = "SCOFF Total Score (0-5)"
* insert TranslationDE(item[=].text, [["SCOFF Summenwert (0-5)"]])
* item[=].answer[0].valueDecimal = 3
