Instance: mii-qst-pro-bdi-bdi2
InstanceOf: mii-pr-pro-questionnaire
Title: "MII QST PRO BDI-II"
Description: "MII QST PRO Beck Depression Inventory II (BDI-II) Questionnaire"
Usage: #definition

* url = $mii-qst-pro-bdi-bdi2
* status = #active
* experimental = true
* language = #de
* code[+] = $LNC#89210-9 "Beck Depression Inventory II [BDI]"
* version = "0.1.0"

* extension[capabilities].extension[displayable].valueBoolean = false
* extension[capabilities].extension[collectable].valueBoolean = false
* extension[capabilities].extension[calculatable].valueBoolean = true
* extension[capabilities].extension[extractable].valueBoolean = true
* extension[capabilities].extension[domainAligned].valueBoolean = true

// IMPORTANT: This contains PLACEHOLDER TEXT for testing purposes only
// The actual BDI-II questions are copyrighted and require licensing
// DO NOT use this for clinical purposes - obtain proper licensing

* item[+].linkId = "BDI-II.LicenseNotice"
* item[=].type = #display
* item[=].text = "⚠️ TESTVERSION - PLACEHOLDER TEXT ONLY ⚠️ Diese Version enthält Platzhaltertexte für Testzwecke. Die echten BDI-II Fragen sind urheberrechtlich geschützt. Für klinische Anwendungen ist eine Lizenz erforderlich."

* item[+].linkId = "bdi-bdi2-q01"
* item[=].type = #choice
* item[=].text = "[TEST PLACEHOLDER: Question 1 about mood - NOT actual BDI-II text]"
* item[=].answerValueSet = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-short"
* item[+].linkId = "bdi-bdi2-q02"
* item[=].type = #choice
* item[=].text = "[TEST PLACEHOLDER: Question 2 about outlook - NOT actual BDI-II text]"
* item[=].answerValueSet = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-short"
* item[+].linkId = "bdi-bdi2-q03"
* item[=].type = #choice
* item[=].text = "[TEST PLACEHOLDER: Question 3 about experiences - NOT actual BDI-II text]"
* item[=].answerValueSet = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-short"
* item[+].linkId = "bdi-bdi2-q04"
* item[=].type = #choice
* item[=].text = "[TEST PLACEHOLDER: Question 4 about enjoyment - NOT actual BDI-II text]"
* item[=].answerValueSet = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-short"
* item[+].linkId = "bdi-bdi2-q05"
* item[=].type = #choice
* item[=].text = "[TEST PLACEHOLDER: Question 5 about feelings - NOT actual BDI-II text]"
* item[=].answerValueSet = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-short"
* item[+].linkId = "bdi-bdi2-q06"
* item[=].type = #choice
* item[=].answerValueSet = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-short"
* item[+].linkId = "bdi-bdi2-q07"
* item[=].type = #choice
* item[=].answerValueSet = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-short"
* item[+].linkId = "bdi-bdi2-q08"
* item[=].type = #choice
* item[=].answerValueSet = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-short"
* item[+].linkId = "bdi-bdi2-q09"
* item[=].type = #choice
* item[=].answerValueSet = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-short"
* item[+].linkId = "bdi-bdi2-q10"
* item[=].type = #choice
* item[=].text = "[TEST PLACEHOLDER: Question 10 about emotions - NOT actual BDI-II text]"
* item[=].answerValueSet = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-short"
* item[+].linkId = "bdi-bdi2-q11"
* item[=].type = #choice
* item[=].answerValueSet = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-short"
* item[+].linkId = "bdi-bdi2-q12"
* item[=].type = #choice
* item[=].answerValueSet = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-short"
* item[+].linkId = "bdi-bdi2-q13"
* item[=].type = #choice
* item[=].answerValueSet = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-short"
* item[+].linkId = "bdi-bdi2-q14"
* item[=].type = #choice
* item[=].answerValueSet = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-short"
* item[+].linkId = "bdi-bdi2-q15"
* item[=].type = #choice
* item[=].text = "[TEST PLACEHOLDER: Question 15 about energy (uses extended scale) - NOT actual BDI-II text]"
* item[=].answerValueSet = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-long"
* item[+].linkId = "bdi-bdi2-q16"
* item[=].type = #choice
* item[=].answerValueSet = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-short"
* item[+].linkId = "bdi-bdi2-q17"
* item[=].type = #choice
* item[=].text = "[TEST PLACEHOLDER: Question 17 about appetite (uses extended scale) - NOT actual BDI-II text]"
* item[=].answerValueSet = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-long"
* item[+].linkId = "bdi-bdi2-q18"
* item[=].type = #choice
* item[=].answerValueSet = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-short"
* item[+].linkId = "bdi-bdi2-q19"
* item[=].type = #choice
* item[=].answerValueSet = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-short"
* item[+].linkId = "bdi-bdi2-q20"
* item[=].type = #choice
* item[=].answerValueSet = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-short"
* item[+].linkId = "bdi-bdi2-q21"
* item[=].type = #choice
* item[=].text = "[TEST PLACEHOLDER: Question 21 about interests - NOT actual BDI-II text]"
* item[=].answerValueSet = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-short"

// Calculated total score
* item[+].linkId = "bdi-bdi2-score-total"
* item[=].text = "BDI-II Gesamtscore (0-63)"
* item[=].type = #quantity
* item[=].extension[+].url = $sdc-questionnaire-calculated-expression
* item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].extension[=].valueExpression.expression = "%resource.item.where(type = 'choice').answer.value.weight().sum()"