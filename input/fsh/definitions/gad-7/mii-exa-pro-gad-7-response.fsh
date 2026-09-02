// GAD-7-Beispiel: Items 1-3 mit "An einzelnen Tagen" (1), Items 4-5 mit
// "An mehr als der Hälfte der Tage" (2), Items 6-7 mit "Überhaupt nicht" (0).
// Erwartete Summe: 1+1+1+2+2+0+0 = 7 (leichte Angstsymptomatik, Bereich 5-9).

Instance: mii-exa-pro-gad-7-response
InstanceOf: MII_PR_PRO_QuestionnaireResponse
Usage: #example
Title: "GAD-7 Questionnaire Response Example"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)
* status = #completed
* language = #de
* subject = Reference(Patient/mii-exa-pro-patient)
* authored = "2026-09-02T10:00:00Z"
* questionnaire = $mii-qst-pro-gad-7

* item[+].linkId = "phq-phq5a"
* item[=].answer[0].valueCoding = $LNC#LA6569-3 "An einzelnen Tagen"
* item[+].linkId = "phq-phq5b"
* item[=].answer[0].valueCoding = $LNC#LA6569-3 "An einzelnen Tagen"
* item[+].linkId = "phq-phq5c"
* item[=].answer[0].valueCoding = $LNC#LA6569-3 "An einzelnen Tagen"
* item[+].linkId = "phq-phq5d"
* item[=].answer[0].valueCoding = $LNC#LA6570-1 "An mehr als der Hälfte der Tage"
* item[+].linkId = "phq-phq5e"
* item[=].answer[0].valueCoding = $LNC#LA6570-1 "An mehr als der Hälfte der Tage"
* item[+].linkId = "phq-phq5f"
* item[=].answer[0].valueCoding = $LNC#LA6568-5 "Überhaupt nicht"
* item[+].linkId = "phq-phq5g"
* item[=].answer[0].valueCoding = $LNC#LA6568-5 "Überhaupt nicht"

// Berechneter Summenwert: 7 von 21
* item[+].linkId = "phq-gad7-score-total"
* item[=].answer[0].valueDecimal = 7
