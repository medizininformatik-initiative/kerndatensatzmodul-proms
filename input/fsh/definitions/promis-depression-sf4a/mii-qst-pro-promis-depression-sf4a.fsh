Instance: mii-qst-pro-promis-depression-sf4a
InstanceOf: mii-pr-pro-questionnaire
Title: "MII QST PRO PROMIS Depression SF 4a (Adults)"
Description: "PROMIS Depression Short Form 4a - Adults - Item Bank v1.0"
Usage: #definition

* url = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-depression-sf4a"
* status = #active
* experimental = true
* language = #en
* version = "2026.0.0-ballot"
// versionAlgorithm is an R5 element - not available in R4
// * extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Questionnaire.versionAlgorithm[x]"
// * extension[=].valueCoding = http://hl7.org/fhir/version-algorithm#semver
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

// Define variable for raw score calculation
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "rawScore"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.item.where(linkId.matches('^promis-eddep(04|06|29|41)$')).answer.value.ordinal().sum()"

* item[+].linkId = "PROMIS-Depression.Description"
* item[=].type = #display
* item[=].text = "In the past 7 days..."
* item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #de
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "In den vergangenen 7 Tagen..."

// Item 1: I felt worthless
* item[+].linkId = "promis-eddep04"
* item[=].type = #choice
* item[=].code = $LNC#61953-6 "I felt worthless in past 7 days [PROMIS]"
* item[=].text = "I felt worthless"
* item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #de
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "...fühlte ich mich wertlos"
* item[=].answerOption[0].valueCoding = $LNC#LA6270-8 "Never"
* item[=].answerOption[0].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].answerOption[0].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[=].extension[=].valueString = "Nie"
* item[=].answerOption[0].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[0].extension.valueDecimal = 1
* item[=].answerOption[1].valueCoding = $LNC#LA10066-1 "Rarely"
* item[=].answerOption[1].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].answerOption[1].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[=].extension[=].valueString = "Selten"
* item[=].answerOption[1].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[1].extension.valueDecimal = 2
* item[=].answerOption[2].valueCoding = $LNC#LA10082-8 "Sometimes"
* item[=].answerOption[2].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].answerOption[2].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[=].extension[=].valueString = "Manchmal"
* item[=].answerOption[2].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[2].extension.valueDecimal = 3
* item[=].answerOption[3].valueCoding = $LNC#LA10044-8 "Often"
* item[=].answerOption[3].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].answerOption[3].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[=].extension[=].valueString = "Oft"
* item[=].answerOption[3].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[3].extension.valueDecimal = 4
* item[=].answerOption[4].valueCoding = $LNC#LA9933-8 "Always"
* item[=].answerOption[4].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[4].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].answerOption[4].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].answerOption[4].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].answerOption[4].valueCoding.display.extension[=].extension[=].valueString = "Immer"
* item[=].answerOption[4].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[4].extension.valueDecimal = 5

// Item 2: I felt helpless
* item[+].linkId = "promis-eddep06"
* item[=].type = #choice
* item[=].code = $LNC#61955-1 "I felt helpless in past 7 days [PROMIS]"
* item[=].text = "I felt helpless"
* item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #de
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "...fühlte ich mich hilflos"
* item[=].answerOption[0].valueCoding = $LNC#LA6270-8 "Never"
* item[=].answerOption[0].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].answerOption[0].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[=].extension[=].valueString = "Nie"
* item[=].answerOption[0].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[0].extension.valueDecimal = 1
* item[=].answerOption[1].valueCoding = $LNC#LA10066-1 "Rarely"
* item[=].answerOption[1].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].answerOption[1].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[=].extension[=].valueString = "Selten"
* item[=].answerOption[1].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[1].extension.valueDecimal = 2
* item[=].answerOption[2].valueCoding = $LNC#LA10082-8 "Sometimes"
* item[=].answerOption[2].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].answerOption[2].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[=].extension[=].valueString = "Manchmal"
* item[=].answerOption[2].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[2].extension.valueDecimal = 3
* item[=].answerOption[3].valueCoding = $LNC#LA10044-8 "Often"
* item[=].answerOption[3].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].answerOption[3].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[=].extension[=].valueString = "Oft"
* item[=].answerOption[3].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[3].extension.valueDecimal = 4
* item[=].answerOption[4].valueCoding = $LNC#LA9933-8 "Always"
* item[=].answerOption[4].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[4].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].answerOption[4].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].answerOption[4].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].answerOption[4].valueCoding.display.extension[=].extension[=].valueString = "Immer"
* item[=].answerOption[4].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[4].extension.valueDecimal = 5

// Item 3: I felt depressed
* item[+].linkId = "promis-eddep29"
* item[=].type = #choice
* item[=].code = $LNC#61967-6 "I felt depressed in past 7 days [PROMIS]"
* item[=].text = "I felt depressed"
* item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #de
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "...fühlte ich mich deprimiert"
* item[=].answerOption[0].valueCoding = $LNC#LA6270-8 "Never"
* item[=].answerOption[0].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].answerOption[0].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[=].extension[=].valueString = "Nie"
* item[=].answerOption[0].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[0].extension.valueDecimal = 1
* item[=].answerOption[1].valueCoding = $LNC#LA10066-1 "Rarely"
* item[=].answerOption[1].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].answerOption[1].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[=].extension[=].valueString = "Selten"
* item[=].answerOption[1].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[1].extension.valueDecimal = 2
* item[=].answerOption[2].valueCoding = $LNC#LA10082-8 "Sometimes"
* item[=].answerOption[2].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].answerOption[2].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[=].extension[=].valueString = "Manchmal"
* item[=].answerOption[2].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[2].extension.valueDecimal = 3
* item[=].answerOption[3].valueCoding = $LNC#LA10044-8 "Often"
* item[=].answerOption[3].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].answerOption[3].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[=].extension[=].valueString = "Oft"
* item[=].answerOption[3].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[3].extension.valueDecimal = 4
* item[=].answerOption[4].valueCoding = $LNC#LA9933-8 "Always"
* item[=].answerOption[4].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[4].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].answerOption[4].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].answerOption[4].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].answerOption[4].valueCoding.display.extension[=].extension[=].valueString = "Immer"
* item[=].answerOption[4].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[4].extension.valueDecimal = 5

// Item 4: I felt hopeless
* item[+].linkId = "promis-eddep41"
* item[=].type = #choice
* item[=].code = $LNC#61973-4 "I felt hopeless in past 7 days [PROMIS]"
* item[=].text = "I felt hopeless"
* item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #de
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "...fühlte ich mich hoffnungslos"
* item[=].answerOption[0].valueCoding = $LNC#LA6270-8 "Never"
* item[=].answerOption[0].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].answerOption[0].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[=].extension[=].valueString = "Nie"
* item[=].answerOption[0].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[0].extension.valueDecimal = 1
* item[=].answerOption[1].valueCoding = $LNC#LA10066-1 "Rarely"
* item[=].answerOption[1].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].answerOption[1].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[=].extension[=].valueString = "Selten"
* item[=].answerOption[1].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[1].extension.valueDecimal = 2
* item[=].answerOption[2].valueCoding = $LNC#LA10082-8 "Sometimes"
* item[=].answerOption[2].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].answerOption[2].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[=].extension[=].valueString = "Manchmal"
* item[=].answerOption[2].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[2].extension.valueDecimal = 3
* item[=].answerOption[3].valueCoding = $LNC#LA10044-8 "Often"
* item[=].answerOption[3].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].answerOption[3].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[=].extension[=].valueString = "Oft"
* item[=].answerOption[3].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[3].extension.valueDecimal = 4
* item[=].answerOption[4].valueCoding = $LNC#LA9933-8 "Always"
* item[=].answerOption[4].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[4].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].answerOption[4].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].answerOption[4].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].answerOption[4].valueCoding.display.extension[=].extension[=].valueString = "Immer"
* item[=].answerOption[4].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
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
* item[=].extension[=].valueExpression.expression = "%rawScore"
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
* item[=].extension[=].valueExpression.expression = "iif(%rawScore=4, 41.0, iif(%rawScore=5, 49.0, iif(%rawScore=6, 51.8, iif(%rawScore=7, 53.9, iif(%rawScore=8, 55.7, iif(%rawScore=9, 57.3, iif(%rawScore=10, 58.9, iif(%rawScore=11, 60.5, iif(%rawScore=12, 62.2, iif(%rawScore=13, 63.9, iif(%rawScore=14, 65.7, iif(%rawScore=15, 67.5, iif(%rawScore=16, 69.4, iif(%rawScore=17, 71.2, iif(%rawScore=18, 73.3, iif(%rawScore=19, 75.7, iif(%rawScore=20, 79.4, {})))))))))))))))))"
* item[=].extension[+].url = $sdc-questionnaire-observation-extract
* item[=].extension[=].valueBoolean = true
