// ISR-Z example: Item 1 "trifft ziemlich zu" (2), Item 2 "trifft kaum zu" (1), Item 3
// "trifft deutlich zu" (3).
// Erwarteter Skalenwert (MITTELWERT, keine Summe): (2 + 1 + 3) / 3 = 2.0

Instance: mii-exa-pro-isr-z-response
InstanceOf: MII_PR_PRO_QuestionnaireResponse
Usage: #example
Title: "ISR-Z Questionnaire Response Example"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)
* status = #completed
* language = #de
* subject = Reference(Patient/mii-exa-pro-patient)
* authored = "2026-08-28T09:30:00Z"
* questionnaire = $mii-qst-pro-isr-z

* item[+].linkId = "isr-z-q01" // "trifft ziemlich zu"
* item[=].answer[0].valueCoding = $mii-cs-pro-isr-z-answers#trifft-ziemlich-zu "trifft ziemlich zu"

* item[+].linkId = "isr-z-q02" // "trifft kaum zu"
* item[=].answer[0].valueCoding = $mii-cs-pro-isr-z-answers#trifft-kaum-zu "trifft kaum zu"

* item[+].linkId = "isr-z-q03" // "trifft deutlich zu"
* item[=].answer[0].valueCoding = $mii-cs-pro-isr-z-answers#trifft-deutlich-zu "trifft deutlich zu"

// Berechneter Skalenwert: Mittelwert (2 + 1 + 3) / 3 = 2.0
* item[+].linkId = "isr-z-score-mean"
* item[=].answer[0].valueDecimal = 2.0
