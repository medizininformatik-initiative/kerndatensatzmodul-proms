// SCOFF-Beispiel: drei Items mit "ja" (Items 1, 2, 5), zwei mit "nein" (Items 3, 4).
// Erwartete Summe: 1 + 1 + 0 + 0 + 1 = 3 → auffälliges Screening (Cut-off >= 2).

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

* item[+].linkId = "scoff-q01" // Erbrechen bei Völlegefühl
* item[=].answer[0].valueCoding = $mii-cs-pro-yes-no-answers#yes "ja"

* item[+].linkId = "scoff-q02" // Kontrollverlust über das Essen
* item[=].answer[0].valueCoding = $mii-cs-pro-yes-no-answers#yes "ja"

* item[+].linkId = "scoff-q03" // Gewichtsverlust > 6 kg / 3 Monate
* item[=].answer[0].valueCoding = $mii-cs-pro-yes-no-answers#no "nein"

* item[+].linkId = "scoff-q04" // Körperschemastörung
* item[=].answer[0].valueCoding = $mii-cs-pro-yes-no-answers#no "nein"

* item[+].linkId = "scoff-q05" // Essen dominiert das Leben
* item[=].answer[0].valueCoding = $mii-cs-pro-yes-no-answers#yes "ja"

// Berechneter Summenwert: 3 von 5
* item[+].linkId = "scoff-score-total"
* item[=].answer[0].valueDecimal = 3
