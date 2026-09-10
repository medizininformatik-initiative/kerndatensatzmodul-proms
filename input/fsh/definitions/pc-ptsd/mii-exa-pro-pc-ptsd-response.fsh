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
* insert QuestionnaireRef(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-pc-ptsd)
* item[+].linkId = "pc-ptsd-q01" // Albträume / aufdringliche Gedanken
* item[=].text = "… Albträume davon hatten oder daran dachten, obwohl Sie es nicht wollten?"
* item[=].answer[0].valueCoding = $SCT#373066001 "Yes"

* item[+].linkId = "pc-ptsd-q02" // Vermeidung
* item[=].text = "… sich stark bemüht haben, nicht daran zu denken oder Situationen zu vermeiden, die Sie daran erinnern?"
* item[=].answer[0].valueCoding = $SCT#373066001 "Yes"

* item[+].linkId = "pc-ptsd-q03" // Übererregung / Hypervigilanz
* item[=].text = "...ständig auf der Hut, wachsam oder schreckhaft waren?"
* item[=].answer[0].valueCoding = $SCT#373067005 "No"

* item[+].linkId = "pc-ptsd-q04" // emotionale Taubheit / Rückzug
* item[=].text = "...sich abgestumpft und teilnahmslos gegenüber anderen, bei ihren Aktivitäten oder in Ihrem Umfeld fühlten?"
* item[=].answer[0].valueCoding = $SCT#373066001 "Yes"

// Calculated total score: 3 of 4
* item[+].linkId = "pc-ptsd-score-total"
* item[=].text = "PC-PTSD Summenwert (0-4)"
* item[=].answer[0].valueDecimal = 3
