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
* version = "2026.0.0-ballot"

* extension[capabilities].extension[displayable].valueBoolean = false
* extension[capabilities].extension[collectable].valueBoolean = false
* extension[capabilities].extension[populatable].valueBoolean = true  // Can receive BDI-II responses for scoring
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

// Define variable for BDI-II sum score (used by both raw score and T-score)
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "bdiScore"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.item.where(type = 'choice').answer.value.ordinal().sum()"

// Calculated total score
* item[+].linkId = "bdi-bdi2-score-total"
* item[=].text = "BDI-II Gesamtscore (0-63)"
* item[=].type = #decimal
* item[=].code = $LNC#89209-1 "Beck Depression Inventory II total score [BDI]"
* item[=].extension[+].url = $sdc-questionnaire-calculated-expression
* item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].extension[=].valueExpression.expression = "%bdiScore"
* item[=].extension[+].url = $sdc-questionnaire-observation-extract
* item[=].extension[=].valueBoolean = true
* item[=].extension[+].url = $hl7-questionnaire-unit
* item[=].extension[=].valueCoding.system = $UCUM
* item[=].extension[=].valueCoding.code = #{score}

// PROMIS Depression T-Score (derived from BDI-II via PROsetta Stone crosswalk)
* item[+].linkId = "bdi-bdi2-promis-tscore"
* item[=].text = "PROMIS Depression T-Score (abgeleitet von BDI-II)"
* item[=].type = #decimal
* item[=].code = $LNC#77861-3 "PROMIS emotional distress - depression - version 1.0 Tscore"
* item[=].readOnly = true
* item[=].extension[+].url = $sdc-questionnaire-calculated-expression
* item[=].extension[=].valueExpression.language = #text/fhirpath
// PROsetta Stone BDI-II to PROMIS Depression crosswalk table
// Source: https://www.prosettastone.org/LinkingTables/Documents/PROMIS%20Depression%20and%20BDI-II%20Linking%20Table.pdf
* item[=].extension[=].valueExpression.expression = "
  iif(%bdiScore = 0, 38.2,
  iif(%bdiScore = 1, 41.2,
  iif(%bdiScore = 2, 43.5,
  iif(%bdiScore = 3, 45.3,
  iif(%bdiScore = 4, 46.9,
  iif(%bdiScore = 5, 48.4,
  iif(%bdiScore = 6, 49.7,
  iif(%bdiScore = 7, 51.0,
  iif(%bdiScore = 8, 52.2,
  iif(%bdiScore = 9, 53.3,
  iif(%bdiScore = 10, 54.4,
  iif(%bdiScore = 11, 55.4,
  iif(%bdiScore = 12, 56.4,
  iif(%bdiScore = 13, 57.3,
  iif(%bdiScore = 14, 58.2,
  iif(%bdiScore = 15, 59.1,
  iif(%bdiScore = 16, 59.9,
  iif(%bdiScore = 17, 60.7,
  iif(%bdiScore = 18, 61.5,
  iif(%bdiScore = 19, 62.2,
  iif(%bdiScore = 20, 62.9,
  iif(%bdiScore = 21, 63.6,
  iif(%bdiScore = 22, 64.3,
  iif(%bdiScore = 23, 65.0,
  iif(%bdiScore = 24, 65.6,
  iif(%bdiScore = 25, 66.2,
  iif(%bdiScore = 26, 66.8,
  iif(%bdiScore = 27, 67.4,
  iif(%bdiScore = 28, 68.0,
  iif(%bdiScore = 29, 68.6,
  iif(%bdiScore = 30, 69.1,
  iif(%bdiScore = 31, 69.7,
  iif(%bdiScore = 32, 70.2,
  iif(%bdiScore = 33, 70.7,
  iif(%bdiScore = 34, 71.2,
  iif(%bdiScore = 35, 71.8,
  iif(%bdiScore = 36, 72.3,
  iif(%bdiScore = 37, 72.8,
  iif(%bdiScore = 38, 73.3,
  iif(%bdiScore = 39, 73.8,
  iif(%bdiScore = 40, 74.3,
  iif(%bdiScore = 41, 74.8,
  iif(%bdiScore = 42, 75.3,
  iif(%bdiScore = 43, 75.8,
  iif(%bdiScore = 44, 76.3,
  iif(%bdiScore = 45, 76.9,
  iif(%bdiScore = 46, 77.4,
  iif(%bdiScore = 47, 77.9,
  iif(%bdiScore = 48, 78.5,
  iif(%bdiScore = 49, 79.0,
  iif(%bdiScore = 50, 79.6,
  iif(%bdiScore = 51, 80.1,
  iif(%bdiScore = 52, 80.7,
  iif(%bdiScore = 53, 81.3,
  iif(%bdiScore = 54, 81.9,
  iif(%bdiScore = 55, 82.5,
  iif(%bdiScore = 56, 83.2,
  iif(%bdiScore = 57, 83.8,
  iif(%bdiScore = 58, 84.5,
  iif(%bdiScore = 59, 85.3,
  iif(%bdiScore = 60, 86.0,
  iif(%bdiScore = 61, 86.9,
  iif(%bdiScore = 62, 87.8,
  iif(%bdiScore = 63, 88.8, 88.8)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
"
* item[=].extension[+].url = $sdc-questionnaire-observation-extract
* item[=].extension[=].valueBoolean = true
* item[=].extension[+].url = $hl7-questionnaire-unit
* item[=].extension[=].valueCoding.system = $UCUM
* item[=].extension[=].valueCoding.code = #{score}
/* Validationerror - allowed = e:Resource
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-citation"
* item[=].extension[=].valueString = "PROsetta Stone® BDI-II to PROMIS Depression Crosswalk Table. Available at: https://www.prosettastone.org/LinkingTables/Documents/PROMIS%20Depression%20and%20BDI-II%20Linking%20Table.pdf"
*/