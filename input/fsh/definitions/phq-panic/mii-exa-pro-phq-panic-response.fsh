// PHQ-D Panikblock example: 3a yes, 3b yes, 3c no, 3d yes.
// Expected yes-count: 1 + 1 + 0 + 1 = 3 → screening negative (positive only at 4 of 4, see
// mii-obsdef-pro-score-phq-panic). Items 3b-3d are enabled because 3a = yes.
// Answers use the SNOMED CT yes/no codes declared in the questionnaire's answerOption
// (373066001 Yes / 373067005 No) per TC Terminologien best practice.

Instance: mii-exa-pro-phq-panic-response
InstanceOf: MII_PR_PRO_QuestionnaireResponse
Usage: #example
Title: "PHQ-D Panikblock Questionnaire Response Example"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)
* status = #completed
* language = #de
* subject = Reference(Patient/mii-exa-pro-patient)
* authored = "2026-11-05T09:30:00Z"
* insert QuestionnaireRef(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-panic)
* item[+].linkId = "phq-phq3a"
* item[=].text = "Hatten Sie in den letzten 4 Wochen eine Angstattacke (plötzliches Gefühl der Furcht oder Panik?)"
* item[=].answer[0].valueCoding = $SCT#373066001 "Yes"

* item[+].linkId = "phq-phq3b"
* item[=].text = "Ist dies bereits früher einmal vorgekommen?"
* item[=].answer[0].valueCoding = $SCT#373066001 "Yes"

* item[+].linkId = "phq-phq3c"
* item[=].text = "Treten manche dieser Anfälle völlig unerwartet auf - d.h. in Situationen, in denen Sie nicht damit rechnen, dass Sie angespannt oder beunruhigt reagieren?"
* item[=].answer[0].valueCoding = $SCT#373067005 "No"

* item[+].linkId = "phq-phq3d"
* item[=].text = "Empfinden Sie diese Anfälle als stark beeinträchtigend, und/oder haben Sie Angst vor erneuten Anfällen?"
* item[=].answer[0].valueCoding = $SCT#373066001 "Yes"

// Calculated yes-count: 3 of 4
* item[+].linkId = "phq-panic-score-count"
* item[=].text = "Anzahl der Ja-Antworten (0-4)"
* item[=].answer[0].valueDecimal = 3
