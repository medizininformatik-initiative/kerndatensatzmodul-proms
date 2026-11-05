// ABQ example (metadata-only): 16 Antworten mit den neutralen Stufen-Codes.
// Summe der Stufen-Gewichte = 33 (Bereich 16-64). Keine Original-Antwortbezeichnungen.

Instance: mii-exa-pro-abq-response
InstanceOf: MII_PR_PRO_QuestionnaireResponse
Usage: #example
Title: "ABQ Questionnaire Response Example"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)
* status = #completed
* language = #de
* subject = Reference(Patient/mii-exa-pro-patient)
* authored = "2026-11-05T09:30:00Z"
* insert QuestionnaireRef(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-abq)
* item[+].linkId = "abq-q01"
* item[=].text = "ABQ Item 01 (Stufe 1-4)"
* item[=].answer[0].valueCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-abq-answers#stufe-1 "Stufe 1"
* item[+].linkId = "abq-q02"
* item[=].text = "ABQ Item 02 (Stufe 1-4)"
* item[=].answer[0].valueCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-abq-answers#stufe-2 "Stufe 2"
* item[+].linkId = "abq-q03"
* item[=].text = "ABQ Item 03 (Stufe 1-4)"
* item[=].answer[0].valueCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-abq-answers#stufe-2 "Stufe 2"
* item[+].linkId = "abq-q04"
* item[=].text = "ABQ Item 04 (Stufe 1-4)"
* item[=].answer[0].valueCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-abq-answers#stufe-3 "Stufe 3"
* item[+].linkId = "abq-q05"
* item[=].text = "ABQ Item 05 (Stufe 1-4)"
* item[=].answer[0].valueCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-abq-answers#stufe-1 "Stufe 1"
* item[+].linkId = "abq-q06"
* item[=].text = "ABQ Item 06 (Stufe 1-4)"
* item[=].answer[0].valueCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-abq-answers#stufe-2 "Stufe 2"
* item[+].linkId = "abq-q07"
* item[=].text = "ABQ Item 07 (Stufe 1-4)"
* item[=].answer[0].valueCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-abq-answers#stufe-4 "Stufe 4"
* item[+].linkId = "abq-q08"
* item[=].text = "ABQ Item 08 (Stufe 1-4)"
* item[=].answer[0].valueCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-abq-answers#stufe-1 "Stufe 1"
* item[+].linkId = "abq-q09"
* item[=].text = "ABQ Item 09 (Stufe 1-4)"
* item[=].answer[0].valueCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-abq-answers#stufe-2 "Stufe 2"
* item[+].linkId = "abq-q10"
* item[=].text = "ABQ Item 10 (Stufe 1-4)"
* item[=].answer[0].valueCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-abq-answers#stufe-3 "Stufe 3"
* item[+].linkId = "abq-q11"
* item[=].text = "ABQ Item 11 (Stufe 1-4)"
* item[=].answer[0].valueCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-abq-answers#stufe-2 "Stufe 2"
* item[+].linkId = "abq-q12"
* item[=].text = "ABQ Item 12 (Stufe 1-4)"
* item[=].answer[0].valueCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-abq-answers#stufe-1 "Stufe 1"
* item[+].linkId = "abq-q13"
* item[=].text = "ABQ Item 13 (Stufe 1-4)"
* item[=].answer[0].valueCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-abq-answers#stufe-2 "Stufe 2"
* item[+].linkId = "abq-q14"
* item[=].text = "ABQ Item 14 (Stufe 1-4)"
* item[=].answer[0].valueCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-abq-answers#stufe-3 "Stufe 3"
* item[+].linkId = "abq-q15"
* item[=].text = "ABQ Item 15 (Stufe 1-4)"
* item[=].answer[0].valueCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-abq-answers#stufe-2 "Stufe 2"
* item[+].linkId = "abq-q16"
* item[=].text = "ABQ Item 16 (Stufe 1-4)"
* item[=].answer[0].valueCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-abq-answers#stufe-2 "Stufe 2"

* item[+].linkId = "abq-score-total"
* item[=].text = "ABQ Summenwert (16-64)"
* item[=].answer[0].valueDecimal = 33
