Instance: mii-qst-pro-promis-depression-sf4a
InstanceOf: mii-pr-pro-questionnaire
Title: "MII QST PRO PROMIS Depression SF 4a (Adults)"
Description: "PROMIS Depression Short Form 4a - Adults - Item Bank v1.0"
Usage: #definition

* url = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-depression-sf4a"
* status = #active
* experimental = true
* language = #de
* version = "1.0.0"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Questionnaire.versionAlgorithm[x]"
* extension[=].valueCoding = http://hl7.org/fhir/version-algorithm#semver
* code = $LNC#76343-3 "PROMIS short form - emotional distress - depression 4a - version 1.0"

// Reference to PROMIS Depression Scoring Manual
* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueReference.reference = "https://www.healthmeasures.net/images/PROMIS/manuals/Scoring_Manuals_/PROMIS_Depression_Scoring_Manual.pdf"
* useContext[=].valueReference.display = "PROMIS Depression Scoring Manual"

* extension[capabilities].extension[displayable].valueBoolean = true
* extension[capabilities].extension[collectable].valueBoolean = true
* extension[capabilities].extension[calculatable].valueBoolean = true
* extension[capabilities].extension[extractable].valueBoolean = true
* extension[capabilities].extension[domainAligned].valueBoolean = true

/*
// Define variable for raw score calculation
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "rawScore"
* extension[=].extension[+].url = "expression"
* extension[=].extension[=].valueExpression.language = #text/fhirpath
* extension[=].extension[=].valueExpression.expression = "%resource.item.where(linkId.matches('^promis-eddep(04|06|29|05)$')).answer.value.weight().sum()"


* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "rawScore"
* extension[=].extension[+].url = "expression"
* extension[=].extension[=].valueExpression.language = #text/fhirpath
* extension[=].extension[=].valueExpression.expression = "%resource.item.where(linkId='promis-depression-score-raw').answer.valueDecimal"
*/

* item[+].linkId = "PROMIS-Depression.Description"
* item[=].type = #display
* item[=].text = "In den vergangenen 7 Tagen..."

// Item 1: I felt worthless
* item[+].linkId = "promis-eddep04"
* item[=].type = #choice
* item[=].code = $LNC#61953-6 "In the past 7 days - I felt worthless"
* item[=].text = "...fühlte ich mich wertlos"
* item[=].answerOption[0].valueCoding = $LNC#LA6270-8 "Never"
* item[=].answerOption[0].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[0].extension.valueDecimal = 1
* item[=].answerOption[1].valueCoding = $LNC#LA10066-1 "Rarely"
* item[=].answerOption[1].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[1].extension.valueDecimal = 2
* item[=].answerOption[2].valueCoding = $LNC#LA10082-8 "Sometimes"
* item[=].answerOption[2].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[2].extension.valueDecimal = 3
* item[=].answerOption[3].valueCoding = $LNC#LA10044-8 "Often"
* item[=].answerOption[3].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[3].extension.valueDecimal = 4
* item[=].answerOption[4].valueCoding = $LNC#LA9933-8 "Always"
* item[=].answerOption[4].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[4].extension.valueDecimal = 5

// Item 2: I felt helpless  
* item[+].linkId = "promis-eddep06"
* item[=].type = #choice
* item[=].code = $LNC#61955-1 "In the past 7 days - I felt helpless"
* item[=].text = "...fühlte ich mich hilflos"
* item[=].answerOption[0].valueCoding = $LNC#LA6270-8 "Never"
* item[=].answerOption[0].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[0].extension.valueDecimal = 1
* item[=].answerOption[1].valueCoding = $LNC#LA10066-1 "Rarely"
* item[=].answerOption[1].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[1].extension.valueDecimal = 2
* item[=].answerOption[2].valueCoding = $LNC#LA10082-8 "Sometimes"
* item[=].answerOption[2].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[2].extension.valueDecimal = 3
* item[=].answerOption[3].valueCoding = $LNC#LA10044-8 "Often"
* item[=].answerOption[3].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[3].extension.valueDecimal = 4
* item[=].answerOption[4].valueCoding = $LNC#LA9933-8 "Always"
* item[=].answerOption[4].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[4].extension.valueDecimal = 5

// Item 3: I felt depressed
* item[+].linkId = "promis-eddep29"
* item[=].type = #choice
* item[=].code = $LNC#61967-6 "In the past 7 days - I felt depressed"
* item[=].text = "...fühlte ich mich deprimiert"
* item[=].answerOption[0].valueCoding = $LNC#LA6270-8 "Never"
* item[=].answerOption[0].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[0].extension.valueDecimal = 1
* item[=].answerOption[1].valueCoding = $LNC#LA10066-1 "Rarely"
* item[=].answerOption[1].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[1].extension.valueDecimal = 2
* item[=].answerOption[2].valueCoding = $LNC#LA10082-8 "Sometimes"
* item[=].answerOption[2].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[2].extension.valueDecimal = 3
* item[=].answerOption[3].valueCoding = $LNC#LA10044-8 "Often"
* item[=].answerOption[3].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[3].extension.valueDecimal = 4
* item[=].answerOption[4].valueCoding = $LNC#LA9933-8 "Always"
* item[=].answerOption[4].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[4].extension.valueDecimal = 5

// Item 4: I felt hopeless
* item[+].linkId = "promis-eddep05"
* item[=].type = #choice
* item[=].code = $LNC#61973-4 "In the past 7 days - I felt hopeless"
* item[=].text = "...fühlte ich mich hoffnungslos"
* item[=].answerOption[0].valueCoding = $LNC#LA6270-8 "Never"
* item[=].answerOption[0].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[0].extension.valueDecimal = 1
* item[=].answerOption[1].valueCoding = $LNC#LA10066-1 "Rarely"
* item[=].answerOption[1].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[1].extension.valueDecimal = 2
* item[=].answerOption[2].valueCoding = $LNC#LA10082-8 "Sometimes"
* item[=].answerOption[2].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[2].extension.valueDecimal = 3
* item[=].answerOption[3].valueCoding = $LNC#LA10044-8 "Often"
* item[=].answerOption[3].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[3].extension.valueDecimal = 4
* item[=].answerOption[4].valueCoding = $LNC#LA9933-8 "Always"
* item[=].answerOption[4].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[4].extension.valueDecimal = 5

// Raw Score Item
* item[+].linkId = "promis-depression-score-raw"
* item[=].type = #decimal
* item[=].code = $LNC#77821-7 "PROMIS short form - emotional distress - depression 4a - version 1.0 raw score"
* item[=].text = "PROMIS Depression Raw Score"
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].extension[=].valueCoding = $UCUM#{score} "score"
* item[=].readOnly = true
* item[=].extension[+].url = $sdc-questionnaire-calculated-expression
* item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].extension[=].valueExpression.expression = "%resource.item.where(linkId.matches('^promis-eddep(04|06|29|05)$')).answer.value.weight().sum()"
* item[=].extension[+].url = $sdc-questionnaire-observation-extract
* item[=].extension[=].valueBoolean = true


// T-Score Item
* item[+].linkId = "promis-depression-score-tscore"
* item[=].type = #decimal
* item[=].code = $LNC#77861-3 "PROMIS emotional distress - depression - version 1.0 T-score"
* item[=].text = "PROMIS Depression T-Score"
* item[=].readOnly = true
* item[=].extension[+].url = $sdc-questionnaire-calculated-expression
* item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].extension[=].valueExpression.expression = "iif(%resource.item.where(linkId='promis-depression-score-raw').answer.valueDecimal=4, 41.0, iif(%resource.item.where(linkId='promis-depression-score-raw').answer.valueDecimal=5, 49.0, iif(%resource.item.where(linkId='promis-depression-score-raw').answer.valueDecimal=6, 51.8, iif(%resource.item.where(linkId='promis-depression-score-raw').answer.valueDecimal=7, 53.9, iif(%resource.item.where(linkId='promis-depression-score-raw').answer.valueDecimal=8, 55.7, iif(%resource.item.where(linkId='promis-depression-score-raw').answer.valueDecimal=9, 57.3, iif(%resource.item.where(linkId='promis-depression-score-raw').answer.valueDecimal=10, 58.9, iif(%resource.item.where(linkId='promis-depression-score-raw').answer.valueDecimal=11, 60.5, iif(%resource.item.where(linkId='promis-depression-score-raw').answer.valueDecimal=12, 62.2, iif(%resource.item.where(linkId='promis-depression-score-raw').answer.valueDecimal=13, 63.9, iif(%resource.item.where(linkId='promis-depression-score-raw').answer.valueDecimal=14, 65.7, iif(%resource.item.where(linkId='promis-depression-score-raw').answer.valueDecimal=15, 67.5, iif(%resource.item.where(linkId='promis-depression-score-raw').answer.valueDecimal=16, 69.4, iif(%resource.item.where(linkId='promis-depression-score-raw').answer.valueDecimal=17, 71.2, iif(%resource.item.where(linkId='promis-depression-score-raw').answer.valueDecimal=18, 73.3, iif(%resource.item.where(linkId='promis-depression-score-raw').answer.valueDecimal=19, 75.7, iif(%resource.item.where(linkId='promis-depression-score-raw').answer.valueDecimal=20, 79.4, {})))))))))))))))))"
* item[=].extension[+].url = $sdc-questionnaire-observation-extract
* item[=].extension[=].valueBoolean = true
* item[=].readOnly = true
