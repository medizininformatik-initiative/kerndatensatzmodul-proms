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
* language = #en
* subject = Reference(Patient/mii-exa-pro-patient)
* authored = "2026-08-28T09:30:00Z"
* insert QuestionnaireRef(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-wi-7)
* item[+].linkId = "wi7-q01" // Ernsthaft etwas nicht in Ordnung mit dem Körper
* item[=].text = "Do you think there is something seriously wrong with your body?"
* insert TranslationDE(item[=].text, [["Denken Sie, dass mit Ihrem Körper ernsthaft etwas nicht in Ordnung ist?"]])
* item[=].answer[0].valueCoding = $SCT#373066001 "Yes"
* insert TranslationDE(item[=].answer[0].valueCoding.display, [["Ja"]])

* item[+].linkId = "wi7-q02" // Sorgen um die Gesundheit
* item[=].text = "Do you worry a lot about your health?"
* insert TranslationDE(item[=].text, [["Machen Sie sich viel Sorgen um Ihre Gesundheit?"]])
* item[=].answer[0].valueCoding = $SCT#373067005 "No"
* insert TranslationDE(item[=].answer[0].valueCoding.display, [["Nein"]])

* item[+].linkId = "wi7-q03" // Ärztin/Arzt schwer glauben
* item[=].text = "Is it hard for you to believe the doctor when he tells you there is nothing to worry about?"
* insert TranslationDE(item[=].text, [["Können Sie der Ärztin/dem Arzt nur schwer glauben, wenn sie/er sagt, dass kein Grund zur Besorgnis besteht?"]])
* item[=].answer[0].valueCoding = $SCT#373067005 "No"
* insert TranslationDE(item[=].answer[0].valueCoding.display, [["Nein"]])

* item[+].linkId = "wi7-q04" // Sorgen um ernsthafte Krankheit
* item[=].text = "Do you often worry about the possibility that you have a serious illness?"
* insert TranslationDE(item[=].text, [["Machen Sie sich oft Sorgen, möglicherweise eine ernsthafte Krankheit zu haben?"]])
* item[=].answer[0].valueCoding = $SCT#373066001 "Yes"
* insert TranslationDE(item[=].answer[0].valueCoding.display, [["Ja"]])

* item[+].linkId = "wi7-q05" // Vielzahl von Schmerzen
* item[=].text = "Are you bothered by many different pains and aches?"
* insert TranslationDE(item[=].text, [["Werden Sie durch eine Vielzahl von Schmerzen geplagt?"]])
* item[=].answer[0].valueCoding = $SCT#373066001 "Yes"
* insert TranslationDE(item[=].answer[0].valueCoding.display, [["Ja"]])

* item[+].linkId = "wi7-q06" // Sorgen bei Krankheit in den Medien
* item[=].text = "If disease is brought to your attention (e.g., on TV, radio, the newspapers, or by someone you know), do you worry about getting it yourself?"
* insert TranslationDE(item[=].text, [["Wenn Sie auf eine Krankheit aufmerksam gemacht werden (durch Fernsehen, Zeitung oder einen Bekannten), machen Sie sich dann Sorgen, dass Sie diese Krankheit auch bekommen?"]])
* item[=].answer[0].valueCoding = $SCT#373067005 "No"
* insert TranslationDE(item[=].answer[0].valueCoding.display, [["Nein"]])

* item[+].linkId = "wi7-q07" // Vielzahl unterschiedlicher Symptome
* item[=].text = "Do you find that you are bothered by many different symptoms?"
* insert TranslationDE(item[=].text, [["Finden Sie, dass Sie von einer Vielzahl unterschiedlicher Symptome geplagt werden?"]])
* item[=].answer[0].valueCoding = $SCT#373067005 "No"
* insert TranslationDE(item[=].answer[0].valueCoding.display, [["Nein"]])

// Calculated total score: 3 of 7
* item[+].linkId = "wi7-score-total"
* item[=].text = "WI-7 Total Score (0-7)"
* insert TranslationDE(item[=].text, [["WI-7 Summenwert (0-7)"]])
* item[=].answer[0].valueDecimal = 3
