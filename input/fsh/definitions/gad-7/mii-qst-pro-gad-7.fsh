Instance: mii-qst-pro-gad-7
InstanceOf: mii-pr-pro-questionnaire
Title: "MII QST PRO GAD-7"
Description: "Generalized Anxiety Disorder Scale-7 (GAD-7)"
Usage: #definition
* insert Version
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire)

* url = $mii-qst-pro-gad-7
* status = #active
* experimental = true
* language = #en
* code[+] = $LNC#69737-5 "Generalized anxiety disorder 7 item (GAD-7)"
* code[+] = $mii-cs-pro-questionnaire-catalogue#phq-gad7 "GAD-7 Questionnaire"

* extension[capabilities].extension[displayable].valueBoolean = true
* extension[capabilities].extension[collectable].valueBoolean = true
* extension[capabilities].extension[populatable].valueBoolean = true
* extension[capabilities].extension[calculatable].valueBoolean = true
* extension[capabilities].extension[extractable].valueBoolean = true
* extension[capabilities].extension[domainAligned].valueBoolean = true

// Variable for raw score calculation (used by total score and T-score)
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "rawScore"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.item.where(linkId.matches('^phq-gad7-q0[1-7]$')).answer.value.ordinal().sum()"

// ---- Display: Preamble ----
* item[0].linkId = "GAD-7.Description"
* item[0].type = #display
* item[0].text = "Over the last two weeks, how often have you been bothered by the following problems?"
* item[0].text.extension[0].url = $hl7-translation
* item[0].text.extension[0].extension[0].url = "lang"
* item[0].text.extension[0].extension[0].valueCode = #de
* item[0].text.extension[0].extension[1].url = "content"
* item[0].text.extension[0].extension[1].valueString = "Wie oft fühlten Sie sich im Verlauf der letzten 2 Wochen durch die folgenden Beschwerden beeinträchtigt?"

// ---- Item 1: Feeling nervous, anxious, or on edge ----
* item[1].linkId = "phq-gad7-q01"
* item[1].type = #choice
* item[1].prefix = "1"
* item[1].code = $LNC#69725-0
* item[1].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[1].extension[=].valueExpression.language = #text/fhirpath
* item[1].extension[=].valueExpression.expression = "iif(%sourceResponse.exists(), %sourceResponse.item.where(linkId='phq-gad7-q01').answer.value, {})"
* item[1].text = "Feeling nervous, anxious, or on edge"
* item[1].text.extension[0].url = $hl7-translation
* item[1].text.extension[0].extension[0].url = "lang"
* item[1].text.extension[0].extension[0].valueCode = #de
* item[1].text.extension[0].extension[1].url = "content"
* item[1].text.extension[0].extension[1].valueString = "Nervosität, Ängstlichkeit oder Anspannung"
* item[1].answerOption[0].valueCoding.system = $LNC
* item[1].answerOption[0].valueCoding.code = #LA6568-5
* item[1].answerOption[0].valueCoding.display = "Not at all"
* item[1].answerOption[0].valueCoding.display.extension[0].url = $hl7-translation
* item[1].answerOption[0].valueCoding.display.extension[0].extension[0].url = "lang"
* item[1].answerOption[0].valueCoding.display.extension[0].extension[0].valueCode = #de
* item[1].answerOption[0].valueCoding.display.extension[0].extension[1].url = "content"
* item[1].answerOption[0].valueCoding.display.extension[0].extension[1].valueString = "Überhaupt nicht"
* item[1].answerOption[0].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[1].answerOption[0].extension.valueDecimal = 0
* item[1].answerOption[1].valueCoding.system = $LNC
* item[1].answerOption[1].valueCoding.code = #LA6569-3
* item[1].answerOption[1].valueCoding.display = "Several days"
* item[1].answerOption[1].valueCoding.display.extension[0].url = $hl7-translation
* item[1].answerOption[1].valueCoding.display.extension[0].extension[0].url = "lang"
* item[1].answerOption[1].valueCoding.display.extension[0].extension[0].valueCode = #de
* item[1].answerOption[1].valueCoding.display.extension[0].extension[1].url = "content"
* item[1].answerOption[1].valueCoding.display.extension[0].extension[1].valueString = "An einzelnen Tagen"
* item[1].answerOption[1].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[1].answerOption[1].extension.valueDecimal = 1
* item[1].answerOption[2].valueCoding.system = $LNC
* item[1].answerOption[2].valueCoding.code = #LA6570-1
* item[1].answerOption[2].valueCoding.display = "More than half the days"
* item[1].answerOption[2].valueCoding.display.extension[0].url = $hl7-translation
* item[1].answerOption[2].valueCoding.display.extension[0].extension[0].url = "lang"
* item[1].answerOption[2].valueCoding.display.extension[0].extension[0].valueCode = #de
* item[1].answerOption[2].valueCoding.display.extension[0].extension[1].url = "content"
* item[1].answerOption[2].valueCoding.display.extension[0].extension[1].valueString = "An mehr als der Hälfte der Tage"
* item[1].answerOption[2].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[1].answerOption[2].extension.valueDecimal = 2
* item[1].answerOption[3].valueCoding.system = $LNC
* item[1].answerOption[3].valueCoding.code = #LA6571-9
* item[1].answerOption[3].valueCoding.display = "Nearly every day"
* item[1].answerOption[3].valueCoding.display.extension[0].url = $hl7-translation
* item[1].answerOption[3].valueCoding.display.extension[0].extension[0].url = "lang"
* item[1].answerOption[3].valueCoding.display.extension[0].extension[0].valueCode = #de
* item[1].answerOption[3].valueCoding.display.extension[0].extension[1].url = "content"
* item[1].answerOption[3].valueCoding.display.extension[0].extension[1].valueString = "Beinahe jeden Tag"
* item[1].answerOption[3].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[1].answerOption[3].extension.valueDecimal = 3

// ---- Item 2: Not being able to stop or control worrying ----
* item[2].linkId = "phq-gad7-q02"
* item[2].type = #choice
* item[2].prefix = "2"
* item[2].code = $LNC#68509-9
* item[2].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[2].extension[=].valueExpression.language = #text/fhirpath
* item[2].extension[=].valueExpression.expression = "iif(%sourceResponse.exists(), %sourceResponse.item.where(linkId='phq-gad7-q02').answer.value, {})"
* item[2].text = "Not being able to stop or control worrying"
* item[2].text.extension[0].url = $hl7-translation
* item[2].text.extension[0].extension[0].url = "lang"
* item[2].text.extension[0].extension[0].valueCode = #de
* item[2].text.extension[0].extension[1].url = "content"
* item[2].text.extension[0].extension[1].valueString = "Nicht in der Lage sein, Sorgen zu stoppen oder zu kontrollieren"
* item[2].answerOption[0].valueCoding.system = $LNC
* item[2].answerOption[0].valueCoding.code = #LA6568-5
* item[2].answerOption[0].valueCoding.display = "Not at all"
* item[2].answerOption[0].valueCoding.display.extension[0].url = $hl7-translation
* item[2].answerOption[0].valueCoding.display.extension[0].extension[0].url = "lang"
* item[2].answerOption[0].valueCoding.display.extension[0].extension[0].valueCode = #de
* item[2].answerOption[0].valueCoding.display.extension[0].extension[1].url = "content"
* item[2].answerOption[0].valueCoding.display.extension[0].extension[1].valueString = "Überhaupt nicht"
* item[2].answerOption[0].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[2].answerOption[0].extension.valueDecimal = 0
* item[2].answerOption[1].valueCoding.system = $LNC
* item[2].answerOption[1].valueCoding.code = #LA6569-3
* item[2].answerOption[1].valueCoding.display = "Several days"
* item[2].answerOption[1].valueCoding.display.extension[0].url = $hl7-translation
* item[2].answerOption[1].valueCoding.display.extension[0].extension[0].url = "lang"
* item[2].answerOption[1].valueCoding.display.extension[0].extension[0].valueCode = #de
* item[2].answerOption[1].valueCoding.display.extension[0].extension[1].url = "content"
* item[2].answerOption[1].valueCoding.display.extension[0].extension[1].valueString = "An einzelnen Tagen"
* item[2].answerOption[1].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[2].answerOption[1].extension.valueDecimal = 1
* item[2].answerOption[2].valueCoding.system = $LNC
* item[2].answerOption[2].valueCoding.code = #LA6570-1
* item[2].answerOption[2].valueCoding.display = "More than half the days"
* item[2].answerOption[2].valueCoding.display.extension[0].url = $hl7-translation
* item[2].answerOption[2].valueCoding.display.extension[0].extension[0].url = "lang"
* item[2].answerOption[2].valueCoding.display.extension[0].extension[0].valueCode = #de
* item[2].answerOption[2].valueCoding.display.extension[0].extension[1].url = "content"
* item[2].answerOption[2].valueCoding.display.extension[0].extension[1].valueString = "An mehr als der Hälfte der Tage"
* item[2].answerOption[2].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[2].answerOption[2].extension.valueDecimal = 2
* item[2].answerOption[3].valueCoding.system = $LNC
* item[2].answerOption[3].valueCoding.code = #LA6571-9
* item[2].answerOption[3].valueCoding.display = "Nearly every day"
* item[2].answerOption[3].valueCoding.display.extension[0].url = $hl7-translation
* item[2].answerOption[3].valueCoding.display.extension[0].extension[0].url = "lang"
* item[2].answerOption[3].valueCoding.display.extension[0].extension[0].valueCode = #de
* item[2].answerOption[3].valueCoding.display.extension[0].extension[1].url = "content"
* item[2].answerOption[3].valueCoding.display.extension[0].extension[1].valueString = "Beinahe jeden Tag"
* item[2].answerOption[3].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[2].answerOption[3].extension.valueDecimal = 3

// ---- Item 3: Worrying too much about different things ----
* item[3].linkId = "phq-gad7-q03"
* item[3].type = #choice
* item[3].prefix = "3"
* item[3].code = $LNC#69733-4
* item[3].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[3].extension[=].valueExpression.language = #text/fhirpath
* item[3].extension[=].valueExpression.expression = "iif(%sourceResponse.exists(), %sourceResponse.item.where(linkId='phq-gad7-q03').answer.value, {})"
* item[3].text = "Worrying too much about different things"
* item[3].text.extension[0].url = $hl7-translation
* item[3].text.extension[0].extension[0].url = "lang"
* item[3].text.extension[0].extension[0].valueCode = #de
* item[3].text.extension[0].extension[1].url = "content"
* item[3].text.extension[0].extension[1].valueString = "Übermäßige Sorgen bezüglich verschiedener Angelegenheiten"
* item[3].answerOption[0].valueCoding.system = $LNC
* item[3].answerOption[0].valueCoding.code = #LA6568-5
* item[3].answerOption[0].valueCoding.display = "Not at all"
* item[3].answerOption[0].valueCoding.display.extension[0].url = $hl7-translation
* item[3].answerOption[0].valueCoding.display.extension[0].extension[0].url = "lang"
* item[3].answerOption[0].valueCoding.display.extension[0].extension[0].valueCode = #de
* item[3].answerOption[0].valueCoding.display.extension[0].extension[1].url = "content"
* item[3].answerOption[0].valueCoding.display.extension[0].extension[1].valueString = "Überhaupt nicht"
* item[3].answerOption[0].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[3].answerOption[0].extension.valueDecimal = 0
* item[3].answerOption[1].valueCoding.system = $LNC
* item[3].answerOption[1].valueCoding.code = #LA6569-3
* item[3].answerOption[1].valueCoding.display = "Several days"
* item[3].answerOption[1].valueCoding.display.extension[0].url = $hl7-translation
* item[3].answerOption[1].valueCoding.display.extension[0].extension[0].url = "lang"
* item[3].answerOption[1].valueCoding.display.extension[0].extension[0].valueCode = #de
* item[3].answerOption[1].valueCoding.display.extension[0].extension[1].url = "content"
* item[3].answerOption[1].valueCoding.display.extension[0].extension[1].valueString = "An einzelnen Tagen"
* item[3].answerOption[1].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[3].answerOption[1].extension.valueDecimal = 1
* item[3].answerOption[2].valueCoding.system = $LNC
* item[3].answerOption[2].valueCoding.code = #LA6570-1
* item[3].answerOption[2].valueCoding.display = "More than half the days"
* item[3].answerOption[2].valueCoding.display.extension[0].url = $hl7-translation
* item[3].answerOption[2].valueCoding.display.extension[0].extension[0].url = "lang"
* item[3].answerOption[2].valueCoding.display.extension[0].extension[0].valueCode = #de
* item[3].answerOption[2].valueCoding.display.extension[0].extension[1].url = "content"
* item[3].answerOption[2].valueCoding.display.extension[0].extension[1].valueString = "An mehr als der Hälfte der Tage"
* item[3].answerOption[2].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[3].answerOption[2].extension.valueDecimal = 2
* item[3].answerOption[3].valueCoding.system = $LNC
* item[3].answerOption[3].valueCoding.code = #LA6571-9
* item[3].answerOption[3].valueCoding.display = "Nearly every day"
* item[3].answerOption[3].valueCoding.display.extension[0].url = $hl7-translation
* item[3].answerOption[3].valueCoding.display.extension[0].extension[0].url = "lang"
* item[3].answerOption[3].valueCoding.display.extension[0].extension[0].valueCode = #de
* item[3].answerOption[3].valueCoding.display.extension[0].extension[1].url = "content"
* item[3].answerOption[3].valueCoding.display.extension[0].extension[1].valueString = "Beinahe jeden Tag"
* item[3].answerOption[3].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[3].answerOption[3].extension.valueDecimal = 3

// ---- Item 4: Trouble relaxing ----
* item[4].linkId = "phq-gad7-q04"
* item[4].type = #choice
* item[4].prefix = "4"
* item[4].code = $LNC#69734-2
* item[4].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[4].extension[=].valueExpression.language = #text/fhirpath
* item[4].extension[=].valueExpression.expression = "iif(%sourceResponse.exists(), %sourceResponse.item.where(linkId='phq-gad7-q04').answer.value, {})"
* item[4].text = "Trouble relaxing"
* item[4].text.extension[0].url = $hl7-translation
* item[4].text.extension[0].extension[0].url = "lang"
* item[4].text.extension[0].extension[0].valueCode = #de
* item[4].text.extension[0].extension[1].url = "content"
* item[4].text.extension[0].extension[1].valueString = "Schwierigkeiten, sich zu entspannen"
* item[4].answerOption[0].valueCoding.system = $LNC
* item[4].answerOption[0].valueCoding.code = #LA6568-5
* item[4].answerOption[0].valueCoding.display = "Not at all"
* item[4].answerOption[0].valueCoding.display.extension[0].url = $hl7-translation
* item[4].answerOption[0].valueCoding.display.extension[0].extension[0].url = "lang"
* item[4].answerOption[0].valueCoding.display.extension[0].extension[0].valueCode = #de
* item[4].answerOption[0].valueCoding.display.extension[0].extension[1].url = "content"
* item[4].answerOption[0].valueCoding.display.extension[0].extension[1].valueString = "Überhaupt nicht"
* item[4].answerOption[0].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[4].answerOption[0].extension.valueDecimal = 0
* item[4].answerOption[1].valueCoding.system = $LNC
* item[4].answerOption[1].valueCoding.code = #LA6569-3
* item[4].answerOption[1].valueCoding.display = "Several days"
* item[4].answerOption[1].valueCoding.display.extension[0].url = $hl7-translation
* item[4].answerOption[1].valueCoding.display.extension[0].extension[0].url = "lang"
* item[4].answerOption[1].valueCoding.display.extension[0].extension[0].valueCode = #de
* item[4].answerOption[1].valueCoding.display.extension[0].extension[1].url = "content"
* item[4].answerOption[1].valueCoding.display.extension[0].extension[1].valueString = "An einzelnen Tagen"
* item[4].answerOption[1].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[4].answerOption[1].extension.valueDecimal = 1
* item[4].answerOption[2].valueCoding.system = $LNC
* item[4].answerOption[2].valueCoding.code = #LA6570-1
* item[4].answerOption[2].valueCoding.display = "More than half the days"
* item[4].answerOption[2].valueCoding.display.extension[0].url = $hl7-translation
* item[4].answerOption[2].valueCoding.display.extension[0].extension[0].url = "lang"
* item[4].answerOption[2].valueCoding.display.extension[0].extension[0].valueCode = #de
* item[4].answerOption[2].valueCoding.display.extension[0].extension[1].url = "content"
* item[4].answerOption[2].valueCoding.display.extension[0].extension[1].valueString = "An mehr als der Hälfte der Tage"
* item[4].answerOption[2].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[4].answerOption[2].extension.valueDecimal = 2
* item[4].answerOption[3].valueCoding.system = $LNC
* item[4].answerOption[3].valueCoding.code = #LA6571-9
* item[4].answerOption[3].valueCoding.display = "Nearly every day"
* item[4].answerOption[3].valueCoding.display.extension[0].url = $hl7-translation
* item[4].answerOption[3].valueCoding.display.extension[0].extension[0].url = "lang"
* item[4].answerOption[3].valueCoding.display.extension[0].extension[0].valueCode = #de
* item[4].answerOption[3].valueCoding.display.extension[0].extension[1].url = "content"
* item[4].answerOption[3].valueCoding.display.extension[0].extension[1].valueString = "Beinahe jeden Tag"
* item[4].answerOption[3].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[4].answerOption[3].extension.valueDecimal = 3

// ---- Item 5: Being so restless that it is hard to sit still ----
* item[5].linkId = "phq-gad7-q05"
* item[5].type = #choice
* item[5].prefix = "5"
* item[5].code = $LNC#69735-9
* item[5].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[5].extension[=].valueExpression.language = #text/fhirpath
* item[5].extension[=].valueExpression.expression = "iif(%sourceResponse.exists(), %sourceResponse.item.where(linkId='phq-gad7-q05').answer.value, {})"
* item[5].text = "Being so restless that it is hard to sit still"
* item[5].text.extension[0].url = $hl7-translation
* item[5].text.extension[0].extension[0].url = "lang"
* item[5].text.extension[0].extension[0].valueCode = #de
* item[5].text.extension[0].extension[1].url = "content"
* item[5].text.extension[0].extension[1].valueString = "Rastlosigkeit, so dass Stillsitzen schwer fällt"
* item[5].answerOption[0].valueCoding.system = $LNC
* item[5].answerOption[0].valueCoding.code = #LA6568-5
* item[5].answerOption[0].valueCoding.display = "Not at all"
* item[5].answerOption[0].valueCoding.display.extension[0].url = $hl7-translation
* item[5].answerOption[0].valueCoding.display.extension[0].extension[0].url = "lang"
* item[5].answerOption[0].valueCoding.display.extension[0].extension[0].valueCode = #de
* item[5].answerOption[0].valueCoding.display.extension[0].extension[1].url = "content"
* item[5].answerOption[0].valueCoding.display.extension[0].extension[1].valueString = "Überhaupt nicht"
* item[5].answerOption[0].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[5].answerOption[0].extension.valueDecimal = 0
* item[5].answerOption[1].valueCoding.system = $LNC
* item[5].answerOption[1].valueCoding.code = #LA6569-3
* item[5].answerOption[1].valueCoding.display = "Several days"
* item[5].answerOption[1].valueCoding.display.extension[0].url = $hl7-translation
* item[5].answerOption[1].valueCoding.display.extension[0].extension[0].url = "lang"
* item[5].answerOption[1].valueCoding.display.extension[0].extension[0].valueCode = #de
* item[5].answerOption[1].valueCoding.display.extension[0].extension[1].url = "content"
* item[5].answerOption[1].valueCoding.display.extension[0].extension[1].valueString = "An einzelnen Tagen"
* item[5].answerOption[1].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[5].answerOption[1].extension.valueDecimal = 1
* item[5].answerOption[2].valueCoding.system = $LNC
* item[5].answerOption[2].valueCoding.code = #LA6570-1
* item[5].answerOption[2].valueCoding.display = "More than half the days"
* item[5].answerOption[2].valueCoding.display.extension[0].url = $hl7-translation
* item[5].answerOption[2].valueCoding.display.extension[0].extension[0].url = "lang"
* item[5].answerOption[2].valueCoding.display.extension[0].extension[0].valueCode = #de
* item[5].answerOption[2].valueCoding.display.extension[0].extension[1].url = "content"
* item[5].answerOption[2].valueCoding.display.extension[0].extension[1].valueString = "An mehr als der Hälfte der Tage"
* item[5].answerOption[2].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[5].answerOption[2].extension.valueDecimal = 2
* item[5].answerOption[3].valueCoding.system = $LNC
* item[5].answerOption[3].valueCoding.code = #LA6571-9
* item[5].answerOption[3].valueCoding.display = "Nearly every day"
* item[5].answerOption[3].valueCoding.display.extension[0].url = $hl7-translation
* item[5].answerOption[3].valueCoding.display.extension[0].extension[0].url = "lang"
* item[5].answerOption[3].valueCoding.display.extension[0].extension[0].valueCode = #de
* item[5].answerOption[3].valueCoding.display.extension[0].extension[1].url = "content"
* item[5].answerOption[3].valueCoding.display.extension[0].extension[1].valueString = "Beinahe jeden Tag"
* item[5].answerOption[3].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[5].answerOption[3].extension.valueDecimal = 3

// ---- Item 6: Becoming easily annoyed or irritable ----
* item[6].linkId = "phq-gad7-q06"
* item[6].type = #choice
* item[6].prefix = "6"
* item[6].code = $LNC#69689-8
* item[6].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[6].extension[=].valueExpression.language = #text/fhirpath
* item[6].extension[=].valueExpression.expression = "iif(%sourceResponse.exists(), %sourceResponse.item.where(linkId='phq-gad7-q06').answer.value, {})"
* item[6].text = "Becoming easily annoyed or irritable"
* item[6].text.extension[0].url = $hl7-translation
* item[6].text.extension[0].extension[0].url = "lang"
* item[6].text.extension[0].extension[0].valueCode = #de
* item[6].text.extension[0].extension[1].url = "content"
* item[6].text.extension[0].extension[1].valueString = "Schnelle Verärgerung oder Gereiztheit"
* item[6].answerOption[0].valueCoding.system = $LNC
* item[6].answerOption[0].valueCoding.code = #LA6568-5
* item[6].answerOption[0].valueCoding.display = "Not at all"
* item[6].answerOption[0].valueCoding.display.extension[0].url = $hl7-translation
* item[6].answerOption[0].valueCoding.display.extension[0].extension[0].url = "lang"
* item[6].answerOption[0].valueCoding.display.extension[0].extension[0].valueCode = #de
* item[6].answerOption[0].valueCoding.display.extension[0].extension[1].url = "content"
* item[6].answerOption[0].valueCoding.display.extension[0].extension[1].valueString = "Überhaupt nicht"
* item[6].answerOption[0].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[6].answerOption[0].extension.valueDecimal = 0
* item[6].answerOption[1].valueCoding.system = $LNC
* item[6].answerOption[1].valueCoding.code = #LA6569-3
* item[6].answerOption[1].valueCoding.display = "Several days"
* item[6].answerOption[1].valueCoding.display.extension[0].url = $hl7-translation
* item[6].answerOption[1].valueCoding.display.extension[0].extension[0].url = "lang"
* item[6].answerOption[1].valueCoding.display.extension[0].extension[0].valueCode = #de
* item[6].answerOption[1].valueCoding.display.extension[0].extension[1].url = "content"
* item[6].answerOption[1].valueCoding.display.extension[0].extension[1].valueString = "An einzelnen Tagen"
* item[6].answerOption[1].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[6].answerOption[1].extension.valueDecimal = 1
* item[6].answerOption[2].valueCoding.system = $LNC
* item[6].answerOption[2].valueCoding.code = #LA6570-1
* item[6].answerOption[2].valueCoding.display = "More than half the days"
* item[6].answerOption[2].valueCoding.display.extension[0].url = $hl7-translation
* item[6].answerOption[2].valueCoding.display.extension[0].extension[0].url = "lang"
* item[6].answerOption[2].valueCoding.display.extension[0].extension[0].valueCode = #de
* item[6].answerOption[2].valueCoding.display.extension[0].extension[1].url = "content"
* item[6].answerOption[2].valueCoding.display.extension[0].extension[1].valueString = "An mehr als der Hälfte der Tage"
* item[6].answerOption[2].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[6].answerOption[2].extension.valueDecimal = 2
* item[6].answerOption[3].valueCoding.system = $LNC
* item[6].answerOption[3].valueCoding.code = #LA6571-9
* item[6].answerOption[3].valueCoding.display = "Nearly every day"
* item[6].answerOption[3].valueCoding.display.extension[0].url = $hl7-translation
* item[6].answerOption[3].valueCoding.display.extension[0].extension[0].url = "lang"
* item[6].answerOption[3].valueCoding.display.extension[0].extension[0].valueCode = #de
* item[6].answerOption[3].valueCoding.display.extension[0].extension[1].url = "content"
* item[6].answerOption[3].valueCoding.display.extension[0].extension[1].valueString = "Beinahe jeden Tag"
* item[6].answerOption[3].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[6].answerOption[3].extension.valueDecimal = 3

// ---- Item 7: Feeling afraid, as if something awful might happen ----
* item[7].linkId = "phq-gad7-q07"
* item[7].type = #choice
* item[7].prefix = "7"
* item[7].code = $LNC#69736-7
* item[7].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[7].extension[=].valueExpression.language = #text/fhirpath
* item[7].extension[=].valueExpression.expression = "iif(%sourceResponse.exists(), %sourceResponse.item.where(linkId='phq-gad7-q07').answer.value, {})"
* item[7].text = "Feeling afraid, as if something awful might happen"
* item[7].text.extension[0].url = $hl7-translation
* item[7].text.extension[0].extension[0].url = "lang"
* item[7].text.extension[0].extension[0].valueCode = #de
* item[7].text.extension[0].extension[1].url = "content"
* item[7].text.extension[0].extension[1].valueString = "Gefühl der Angst, so als würde etwas Schlimmes passieren"
* item[7].answerOption[0].valueCoding.system = $LNC
* item[7].answerOption[0].valueCoding.code = #LA6568-5
* item[7].answerOption[0].valueCoding.display = "Not at all"
* item[7].answerOption[0].valueCoding.display.extension[0].url = $hl7-translation
* item[7].answerOption[0].valueCoding.display.extension[0].extension[0].url = "lang"
* item[7].answerOption[0].valueCoding.display.extension[0].extension[0].valueCode = #de
* item[7].answerOption[0].valueCoding.display.extension[0].extension[1].url = "content"
* item[7].answerOption[0].valueCoding.display.extension[0].extension[1].valueString = "Überhaupt nicht"
* item[7].answerOption[0].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[7].answerOption[0].extension.valueDecimal = 0
* item[7].answerOption[1].valueCoding.system = $LNC
* item[7].answerOption[1].valueCoding.code = #LA6569-3
* item[7].answerOption[1].valueCoding.display = "Several days"
* item[7].answerOption[1].valueCoding.display.extension[0].url = $hl7-translation
* item[7].answerOption[1].valueCoding.display.extension[0].extension[0].url = "lang"
* item[7].answerOption[1].valueCoding.display.extension[0].extension[0].valueCode = #de
* item[7].answerOption[1].valueCoding.display.extension[0].extension[1].url = "content"
* item[7].answerOption[1].valueCoding.display.extension[0].extension[1].valueString = "An einzelnen Tagen"
* item[7].answerOption[1].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[7].answerOption[1].extension.valueDecimal = 1
* item[7].answerOption[2].valueCoding.system = $LNC
* item[7].answerOption[2].valueCoding.code = #LA6570-1
* item[7].answerOption[2].valueCoding.display = "More than half the days"
* item[7].answerOption[2].valueCoding.display.extension[0].url = $hl7-translation
* item[7].answerOption[2].valueCoding.display.extension[0].extension[0].url = "lang"
* item[7].answerOption[2].valueCoding.display.extension[0].extension[0].valueCode = #de
* item[7].answerOption[2].valueCoding.display.extension[0].extension[1].url = "content"
* item[7].answerOption[2].valueCoding.display.extension[0].extension[1].valueString = "An mehr als der Hälfte der Tage"
* item[7].answerOption[2].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[7].answerOption[2].extension.valueDecimal = 2
* item[7].answerOption[3].valueCoding.system = $LNC
* item[7].answerOption[3].valueCoding.code = #LA6571-9
* item[7].answerOption[3].valueCoding.display = "Nearly every day"
* item[7].answerOption[3].valueCoding.display.extension[0].url = $hl7-translation
* item[7].answerOption[3].valueCoding.display.extension[0].extension[0].url = "lang"
* item[7].answerOption[3].valueCoding.display.extension[0].extension[0].valueCode = #de
* item[7].answerOption[3].valueCoding.display.extension[0].extension[1].url = "content"
* item[7].answerOption[3].valueCoding.display.extension[0].extension[1].valueString = "Beinahe jeden Tag"
* item[7].answerOption[3].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[7].answerOption[3].extension.valueDecimal = 3

// ---- GAD-7 Total Score (calculated, extractable) ----
* item[8].linkId = "phq-gad7-score-total"
* item[8].type = #decimal
* item[8].prefix = "Auswertung"
* item[8].code = $LNC#70274-6 "Generalized anxiety disorder 7 item (GAD-7) total score [Reported.PHQ]"
* item[8].readOnly = true
* item[8].extension[0].url = $sdc-questionnaire-calculated-expression
* item[8].extension[0].valueExpression.name = "Scoreberechnung"
* item[8].extension[0].valueExpression.language = #text/fhirpath
* item[8].extension[0].valueExpression.expression = "%rawScore"
* item[8].text = "GAD-7 Total Score"
* item[8].text.extension[0].url = $hl7-translation
* item[8].text.extension[0].extension[0].url = "lang"
* item[8].text.extension[0].extension[0].valueCode = #de
* item[8].text.extension[0].extension[1].url = "content"
* item[8].text.extension[0].extension[1].valueString = "GAD-7 Gesamtwert"
* item[8].extension[1].url = $sdc-questionnaire-observation-extract
* item[8].extension[1].valueBoolean = true
* item[8].extension[2].url = $hl7-questionnaire-unit
* item[8].extension[2].valueCoding.system = $UCUM
* item[8].extension[2].valueCoding.code = #{score}
* item[8].extension[3].url = $sdc-questionnaire-observation-extract-category
* item[8].extension[3].valueCodeableConcept.coding.system = $hl7-observation-category
* item[8].extension[3].valueCodeableConcept.coding.code = #survey

// ---- PROMIS Anxiety T-Score (derived from GAD-7 via PROsetta Stone crosswalk) ----
* item[9].linkId = "phq-gad7-promis-tscore"
* item[9].type = #decimal
* item[9].prefix = "T-Score"
* item[9].code = $LNC#77862-1 "PROMIS emotional distress - anxiety - version 1.0 Tscore"
* item[9].readOnly = true
* item[9].extension[0].url = $sdc-questionnaire-calculated-expression
* item[9].extension[0].valueExpression.name = "promis-anxiety-tscore-mapping"
* item[9].extension[0].valueExpression.language = #text/fhirpath
* item[9].extension[0].valueExpression.expression = "iif(%rawScore = 0, 33.8, iif(%rawScore = 1, 40.3, iif(%rawScore = 2, 44.0, iif(%rawScore = 3, 46.8, iif(%rawScore = 4, 49.2, iif(%rawScore = 5, 51.3, iif(%rawScore = 6, 53.2, iif(%rawScore = 7, 54.9, iif(%rawScore = 8, 56.6, iif(%rawScore = 9, 58.1, iif(%rawScore = 10, 59.6, iif(%rawScore = 11, 61.0, iif(%rawScore = 12, 62.3, iif(%rawScore = 13, 63.5, iif(%rawScore = 14, 64.8, iif(%rawScore = 15, 66.0, iif(%rawScore = 16, 67.2, iif(%rawScore = 17, 68.5, iif(%rawScore = 18, 69.8, iif(%rawScore = 19, 71.2, iif(%rawScore = 20, 72.8, 75.7)))))))))))))))))))))"
* item[9].text = "PROMIS Anxiety T-Score (derived from GAD-7)"
* item[9].text.extension[0].url = $hl7-translation
* item[9].text.extension[0].extension[0].url = "lang"
* item[9].text.extension[0].extension[0].valueCode = #de
* item[9].text.extension[0].extension[1].url = "content"
* item[9].text.extension[0].extension[1].valueString = "PROMIS Angst T-Score (abgeleitet von GAD-7)"
* item[9].extension[1].url = $sdc-questionnaire-observation-extract
* item[9].extension[1].valueBoolean = true
* item[9].extension[2].url = $hl7-questionnaire-unit
* item[9].extension[2].valueCoding.system = $UCUM
* item[9].extension[2].valueCoding.code = #{score}
* item[9].extension[3].url = $sdc-questionnaire-observation-extract-category
* item[9].extension[3].valueCodeableConcept.coding.system = $hl7-observation-category
* item[9].extension[3].valueCodeableConcept.coding.code = #survey
// Reference: PROsetta Stone® GAD-7 to PROMIS Anxiety Crosswalk Table. Available at: https://www.prosettastone.org
