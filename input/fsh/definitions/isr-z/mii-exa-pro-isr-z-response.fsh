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
* insert QuestionnaireRef(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-isr-z)
* item[+].linkId = "isr-z-q01" // "trifft ziemlich zu"
* item[=].text = "Ich leide unter meinen ständig wiederkehrenden, sinnlosen Gedanken oder Handlungen, gegen die ich mich aber nicht wehren kann (z.B. Hände waschen)."
* item[=].answer[0].valueCoding = $mii-cs-pro-isr-z-answers#trifft-ziemlich-zu "trifft ziemlich zu"

* item[+].linkId = "isr-z-q02" // "trifft kaum zu"
* item[=].text = "Ich leiste Widerstand gegen immer wiederkehrende, unsinnige Gedanken oder Handlungen, auch wenn mir das nicht immer gelingt."
* item[=].answer[0].valueCoding = $mii-cs-pro-isr-z-answers#trifft-kaum-zu "trifft kaum zu"

* item[+].linkId = "isr-z-q03" // "trifft deutlich zu"
* item[=].text = "Ich leide unter quälenden, sinnlosen Gedanken oder Handlungen, die mein normales Leben beeinträchtigen."
* item[=].answer[0].valueCoding = $mii-cs-pro-isr-z-answers#trifft-deutlich-zu "trifft deutlich zu"

// Berechneter Skalenwert: Mittelwert (2 + 1 + 3) / 3 = 2.0
* item[+].linkId = "isr-z-score-mean"
* item[=].text = "ISR-Z Skalenwert (Mittelwert der 3 Zwang-Items, Bereich 0-4)"
* item[=].answer[0].valueDecimal = 2.0
