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
* extension[capabilities].extension[calculatable].valueBoolean = false
* extension[capabilities].extension[extractable].valueBoolean = false
* extension[capabilities].extension[domainAligned].valueBoolean = true


// TODO: date, publisher, copyright, etc.
* contained[+] = MII_VS_PRO_BDI_BDI2_AnswerListShort
* contained[+] = MII_CS_PRO_BDI_BDI2_AnswerList


* item[+].linkId = "bdi-bdi2-q01"
* item[=].type = #choice
* item[=].answerValueSet = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-short"
* item[+].linkId = "bdi-bdi2-q02"
* item[=].type = #choice
* item[=].answerValueSet = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-short"
* item[+].linkId = "bdi-bdi2-q03"
* item[=].type = #choice
* item[+].linkId = "bdi-bdi2-q04"
* item[=].type = #choice
* item[+].linkId = "bdi-bdi2-q05"
* item[=].type = #choice
* item[+].linkId = "bdi-bdi2-q06"
* item[=].type = #choice
* item[+].linkId = "bdi-bdi2-q07"
* item[=].type = #choice
* item[+].linkId = "bdi-bdi2-q08"
* item[=].type = #choice
* item[+].linkId = "bdi-bdi2-q09"
* item[=].type = #choice
* item[+].linkId = "bdi-bdi2-q10"
* item[=].type = #choice
* item[+].linkId = "bdi-bdi2-q11"
* item[=].type = #choice
* item[+].linkId = "bdi-bdi2-q12"
* item[=].type = #choice
* item[+].linkId = "bdi-bdi2-q13"
* item[=].type = #choice
* item[+].linkId = "bdi-bdi2-q14"
* item[=].type = #choice
* item[+].linkId = "bdi-bdi2-q15"
* item[=].type = #choice
* item[+].linkId = "bdi-bdi2-q16"
* item[=].type = #choice
* item[+].linkId = "bdi-bdi2-q17"
* item[=].type = #choice
* item[+].linkId = "bdi-bdi2-q18"
* item[=].type = #choice
* item[+].linkId = "bdi-bdi2-q19"
* item[=].type = #choice
* item[+].linkId = "bdi-bdi2-q20"
* item[=].type = #choice
* item[+].linkId = "bdi-bdi2-q21"
* item[=].type = #choice
* item[+].linkId = "bdi-bdi2-score-total"
* item[=].type = #quantity
* item[=].extension[+].url = $sdc-questionnaire-calculated-expression
* item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].extension[=].valueExpression.expression = "%resource.item.where(type = 'choice').answer.value.weight().sum()"