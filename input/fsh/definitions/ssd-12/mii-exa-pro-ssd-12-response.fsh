// SSD-12 example: all twelve items answered "manchmal" (sometimes, ordinal 2).
// Expected sum: 12 x 2 = 24 (of 48).
//
// Display text uses the German designation ("manchmal"), not the CS's English base display
// ("Sometimes") — matching the mii-cs-pro-phq-15-answers convention (English display + German
// designation on the CodeSystem, German designation used as valueCoding.display in German-context
// examples/instances). The Java validator (German locale) expects the coding's display to match
// the designation preferred for the resource's language, not the base display.

Instance: mii-exa-pro-ssd-12-response
InstanceOf: MII_PR_PRO_QuestionnaireResponse
Usage: #example
Title: "SSD-12 Questionnaire Response Example"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)
* status = #completed
* language = #de
* subject = Reference(Patient/mii-exa-pro-patient)
* authored = "2026-08-31T09:30:00Z"
* questionnaire = $mii-qst-pro-ssd-12

* item[+].linkId = "ssd12-q01"
* item[=].answer[0].valueCoding = $mii-cs-pro-ssd-12-answers#sometimes "manchmal"

* item[+].linkId = "ssd12-q02"
* item[=].answer[0].valueCoding = $mii-cs-pro-ssd-12-answers#sometimes "manchmal"

* item[+].linkId = "ssd12-q03"
* item[=].answer[0].valueCoding = $mii-cs-pro-ssd-12-answers#sometimes "manchmal"

* item[+].linkId = "ssd12-q04"
* item[=].answer[0].valueCoding = $mii-cs-pro-ssd-12-answers#sometimes "manchmal"

* item[+].linkId = "ssd12-q05"
* item[=].answer[0].valueCoding = $mii-cs-pro-ssd-12-answers#sometimes "manchmal"

* item[+].linkId = "ssd12-q06"
* item[=].answer[0].valueCoding = $mii-cs-pro-ssd-12-answers#sometimes "manchmal"

* item[+].linkId = "ssd12-q07"
* item[=].answer[0].valueCoding = $mii-cs-pro-ssd-12-answers#sometimes "manchmal"

* item[+].linkId = "ssd12-q08"
* item[=].answer[0].valueCoding = $mii-cs-pro-ssd-12-answers#sometimes "manchmal"

* item[+].linkId = "ssd12-q09"
* item[=].answer[0].valueCoding = $mii-cs-pro-ssd-12-answers#sometimes "manchmal"

* item[+].linkId = "ssd12-q10"
* item[=].answer[0].valueCoding = $mii-cs-pro-ssd-12-answers#sometimes "manchmal"

* item[+].linkId = "ssd12-q11"
* item[=].answer[0].valueCoding = $mii-cs-pro-ssd-12-answers#sometimes "manchmal"

* item[+].linkId = "ssd12-q12"
* item[=].answer[0].valueCoding = $mii-cs-pro-ssd-12-answers#sometimes "manchmal"

// Calculated total score: 24 of 48
* item[+].linkId = "ssd12-score-total"
* item[=].answer[0].valueDecimal = 24
