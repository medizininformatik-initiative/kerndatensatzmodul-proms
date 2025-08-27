Instance: mii-qst-pro-phq-9
InstanceOf: mii-pr-pro-questionnaire
Title: "MII QST PRO PHQ-9"
Description: "Patient Health Questionnaire (PHQ-9)"
Usage: #definition

* url = $mii-qst-pro-phq-9
* status = #active
* experimental = true
* language = #de
* version = "0.1.0"
* code = $LNC#44249-1 "PHQ-9 quick depression assessment panel [Reported.PHQ]"

* extension[capabilities].extension[displayable].valueBoolean = true
* extension[capabilities].extension[collectable].valueBoolean = true
* extension[capabilities].extension[populatable].valueBoolean = true  // Can be pre-populated from existing responses
* extension[capabilities].extension[calculatable].valueBoolean = true
* extension[capabilities].extension[extractable].valueBoolean = true
* extension[capabilities].extension[domainAligned].valueBoolean = true

* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "rawScore"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.item.where(linkId.matches('^phq-phq9-q0[1-9]$')).answer.value.ordinal().sum()"

/* QuestionnaireResponses können nicht als Context übergeben werden (inv-1)
// SDC pre-population configuration for server-side calculation use case
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueCoding.system = "http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext"
* extension[=].extension[=].valueCoding.code = #patient
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #QuestionnaireResponse
* extension[=].extension[+].url = "description"
* extension[=].extension[=].valueString = "Optional: Pre-populate from completed PHQ-9 QuestionnaireResponse for server-side calculation"
*/

* item[0].linkId = "PHQ-9.Description"
* item[0].type = #display
* item[0].text = "Wie oft fühlten Sie sich im Verlauf der letzten 2 Wochen durch die folgenden Beschwerden beeinträchtigt?"
* item[0].text.extension[0].url = $hl7-translation
* item[0].text.extension[0].extension[0].url = "lang"
* item[0].text.extension[0].extension[0].valueCode = #en
* item[0].text.extension[0].extension[1].url = "content"
* item[0].text.extension[0].extension[1].valueString = "Over the last two weeks, how often have you been bothered by any of the following problems?"

* item[1].linkId = "phq-phq9-q01"
* item[1].type = #choice
* item[1].prefix = "1"
* item[1].code = $LNC#44250-9
* item[1].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[1].extension[=].valueExpression.language = #text/fhirpath
* item[1].extension[=].valueExpression.expression = "iif(%sourceResponse.exists(), %sourceResponse.item.where(linkId='phq-phq9-q01').answer.value, {})"
* item[1].text = "Wenig Interesse oder Freude an Ihren Tätigkeiten"
* item[1].text.extension[0].url = $hl7-translation
* item[1].text.extension[0].extension[0].url = "lang"
* item[1].text.extension[0].extension[0].valueCode = #en
* item[1].text.extension[0].extension[1].url = "content"
* item[1].text.extension[0].extension[1].valueString = "Little interest or pleasure in doing things"
* item[1].answerOption[0].valueCoding.system = $LNC
* item[1].answerOption[0].valueCoding.code = #LA6568-5
* item[1].answerOption[0].valueCoding.display = "Überhaupt nicht"
* item[1].answerOption[0].valueCoding.display.extension[0].url = $hl7-translation
* item[1].answerOption[0].valueCoding.display.extension[0].extension[0].url = "lang"
* item[1].answerOption[0].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[1].answerOption[0].valueCoding.display.extension[0].extension[1].url = "content"
* item[1].answerOption[0].valueCoding.display.extension[0].extension[1].valueString = "Not at all"
* item[1].answerOption[0].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[1].answerOption[0].extension.valueDecimal = 0
* item[1].answerOption[1].valueCoding.system = $LNC
* item[1].answerOption[1].valueCoding.code = #LA6569-3
* item[1].answerOption[1].valueCoding.display = "An einzelnen Tagen"
* item[1].answerOption[1].valueCoding.display.extension[0].url = $hl7-translation
* item[1].answerOption[1].valueCoding.display.extension[0].extension[0].url = "lang"
* item[1].answerOption[1].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[1].answerOption[1].valueCoding.display.extension[0].extension[1].url = "content"
* item[1].answerOption[1].valueCoding.display.extension[0].extension[1].valueString = "Serveral days"
* item[1].answerOption[1].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[1].answerOption[1].extension.valueDecimal = 1
* item[1].answerOption[2].valueCoding.system = $LNC
* item[1].answerOption[2].valueCoding.code = #LA6570-1
* item[1].answerOption[2].valueCoding.display = "An mehr als der Hälfte der Tage"
* item[1].answerOption[2].valueCoding.display.extension[0].url = $hl7-translation
* item[1].answerOption[2].valueCoding.display.extension[0].extension[0].url = "lang"
* item[1].answerOption[2].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[1].answerOption[2].valueCoding.display.extension[0].extension[1].url = "content"
* item[1].answerOption[2].valueCoding.display.extension[0].extension[1].valueString = "More than half the days"
* item[1].answerOption[2].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[1].answerOption[2].extension.valueDecimal = 2
* item[1].answerOption[3].valueCoding.system = $LNC
* item[1].answerOption[3].valueCoding.code = #LA6571-9
* item[1].answerOption[3].valueCoding.display = "Beinahe jeden Tag"
* item[1].answerOption[3].valueCoding.display.extension[0].url = $hl7-translation
* item[1].answerOption[3].valueCoding.display.extension[0].extension[0].url = "lang"
* item[1].answerOption[3].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[1].answerOption[3].valueCoding.display.extension[0].extension[1].url = "content"
* item[1].answerOption[3].valueCoding.display.extension[0].extension[1].valueString = "Nearly every day"
* item[1].answerOption[3].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[1].answerOption[3].extension.valueDecimal = 3

* item[2].linkId = "phq-phq9-q02"
* item[2].type = #choice
* item[2].prefix = "2"
* item[2].code = $LNC#44255-8
* item[2].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[2].extension[=].valueExpression.language = #text/fhirpath
* item[2].extension[=].valueExpression.expression = "iif(%sourceResponse.exists(), %sourceResponse.item.where(linkId='phq-phq9-q02').answer.value, {})"
* item[2].text = "Niedergeschlagenheit, Schwermut oder Hoffnungslosigkeit"
* item[2].text.extension[0].url = $hl7-translation
* item[2].text.extension[0].extension[0].url = "lang"
* item[2].text.extension[0].extension[0].valueCode = #en
* item[2].text.extension[0].extension[1].url = "content"
* item[2].text.extension[0].extension[1].valueString = "Feeling down, depressed, or hopeless"
* item[2].answerOption[0].valueCoding.system = $LNC
* item[2].answerOption[0].valueCoding.code = #LA6568-5
* item[2].answerOption[0].valueCoding.display = "Überhaupt nicht"
* item[2].answerOption[0].valueCoding.display.extension[0].url = $hl7-translation
* item[2].answerOption[0].valueCoding.display.extension[0].extension[0].url = "lang"
* item[2].answerOption[0].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[2].answerOption[0].valueCoding.display.extension[0].extension[1].url = "content"
* item[2].answerOption[0].valueCoding.display.extension[0].extension[1].valueString = "Not at all"
* item[2].answerOption[0].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[2].answerOption[0].extension.valueDecimal = 0
* item[2].answerOption[1].valueCoding.system = $LNC
* item[2].answerOption[1].valueCoding.code = #LA6569-3
* item[2].answerOption[1].valueCoding.display = "An einzelnen Tagen"
* item[2].answerOption[1].valueCoding.display.extension[0].url = $hl7-translation
* item[2].answerOption[1].valueCoding.display.extension[0].extension[0].url = "lang"
* item[2].answerOption[1].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[2].answerOption[1].valueCoding.display.extension[0].extension[1].url = "content"
* item[2].answerOption[1].valueCoding.display.extension[0].extension[1].valueString = "Serveral days"
* item[2].answerOption[1].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[2].answerOption[1].extension.valueDecimal = 1
* item[2].answerOption[2].valueCoding.system = $LNC
* item[2].answerOption[2].valueCoding.code = #LA6570-1
* item[2].answerOption[2].valueCoding.display = "An mehr als der Hälfte der Tage"
* item[2].answerOption[2].valueCoding.display.extension[0].url = $hl7-translation
* item[2].answerOption[2].valueCoding.display.extension[0].extension[0].url = "lang"
* item[2].answerOption[2].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[2].answerOption[2].valueCoding.display.extension[0].extension[1].url = "content"
* item[2].answerOption[2].valueCoding.display.extension[0].extension[1].valueString = "More than half the days"
* item[2].answerOption[2].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[2].answerOption[2].extension.valueDecimal = 2
* item[2].answerOption[3].valueCoding.system = $LNC
* item[2].answerOption[3].valueCoding.code = #LA6571-9
* item[2].answerOption[3].valueCoding.display = "Beinahe jeden Tag"
* item[2].answerOption[3].valueCoding.display.extension[0].url = $hl7-translation
* item[2].answerOption[3].valueCoding.display.extension[0].extension[0].url = "lang"
* item[2].answerOption[3].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[2].answerOption[3].valueCoding.display.extension[0].extension[1].url = "content"
* item[2].answerOption[3].valueCoding.display.extension[0].extension[1].valueString = "Nearly every day"
* item[2].answerOption[3].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[2].answerOption[3].extension.valueDecimal = 3

* item[3].linkId = "phq-phq9-q03"
* item[3].type = #choice
* item[3].prefix = "3"
* item[3].code = $LNC#44259-0
* item[3].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[3].extension[=].valueExpression.language = #text/fhirpath
* item[3].extension[=].valueExpression.expression = "iif(%sourceResponse.exists(), %sourceResponse.item.where(linkId='phq-phq9-q03').answer.value, {})"
* item[3].text = "Schwierigkeiten ein- oder durchzuschlafen oder vermehrter Schlaf"
* item[3].text.extension[0].url = $hl7-translation
* item[3].text.extension[0].extension[0].url = "lang"
* item[3].text.extension[0].extension[0].valueCode = #en
* item[3].text.extension[0].extension[1].url = "content"
* item[3].text.extension[0].extension[1].valueString = "Trouble falling or staying asleep, or sleeping too much"
* item[3].answerOption[0].valueCoding.system = $LNC
* item[3].answerOption[0].valueCoding.code = #LA6568-5
* item[3].answerOption[0].valueCoding.display = "Überhaupt nicht"
* item[3].answerOption[0].valueCoding.display.extension[0].url = $hl7-translation
* item[3].answerOption[0].valueCoding.display.extension[0].extension[0].url = "lang"
* item[3].answerOption[0].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[3].answerOption[0].valueCoding.display.extension[0].extension[1].url = "content"
* item[3].answerOption[0].valueCoding.display.extension[0].extension[1].valueString = "Not at all"
* item[3].answerOption[0].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[3].answerOption[0].extension.valueDecimal = 0
* item[3].answerOption[1].valueCoding.system = $LNC
* item[3].answerOption[1].valueCoding.code = #LA6569-3
* item[3].answerOption[1].valueCoding.display = "An einzelnen Tagen"
* item[3].answerOption[1].valueCoding.display.extension[0].url = $hl7-translation
* item[3].answerOption[1].valueCoding.display.extension[0].extension[0].url = "lang"
* item[3].answerOption[1].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[3].answerOption[1].valueCoding.display.extension[0].extension[1].url = "content"
* item[3].answerOption[1].valueCoding.display.extension[0].extension[1].valueString = "Serveral days"
* item[3].answerOption[1].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[3].answerOption[1].extension.valueDecimal = 1
* item[3].answerOption[2].valueCoding.system = $LNC
* item[3].answerOption[2].valueCoding.code = #LA6570-1
* item[3].answerOption[2].valueCoding.display = "An mehr als der Hälfte der Tage"
* item[3].answerOption[2].valueCoding.display.extension[0].url = $hl7-translation
* item[3].answerOption[2].valueCoding.display.extension[0].extension[0].url = "lang"
* item[3].answerOption[2].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[3].answerOption[2].valueCoding.display.extension[0].extension[1].url = "content"
* item[3].answerOption[2].valueCoding.display.extension[0].extension[1].valueString = "More than half the days"
* item[3].answerOption[2].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[3].answerOption[2].extension.valueDecimal = 2
* item[3].answerOption[3].valueCoding.system = $LNC
* item[3].answerOption[3].valueCoding.code = #LA6571-9
* item[3].answerOption[3].valueCoding.display = "Beinahe jeden Tag"
* item[3].answerOption[3].valueCoding.display.extension[0].url = $hl7-translation
* item[3].answerOption[3].valueCoding.display.extension[0].extension[0].url = "lang"
* item[3].answerOption[3].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[3].answerOption[3].valueCoding.display.extension[0].extension[1].url = "content"
* item[3].answerOption[3].valueCoding.display.extension[0].extension[1].valueString = "Nearly every day"
* item[3].answerOption[3].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[3].answerOption[3].extension.valueDecimal = 3

* item[4].linkId = "phq-phq9-q04"
* item[4].type = #choice
* item[4].prefix = "4"
* item[4].code = $LNC#44254-1
* item[4].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[4].extension[=].valueExpression.language = #text/fhirpath
* item[4].extension[=].valueExpression.expression = "iif(%sourceResponse.exists(), %sourceResponse.item.where(linkId='phq-phq9-q04').answer.value, {})"
* item[4].text = "Müdigkeit oder Gefühl, keine Energie zu haben"
* item[4].text.extension[0].url = $hl7-translation
* item[4].text.extension[0].extension[0].url = "lang"
* item[4].text.extension[0].extension[0].valueCode = #en
* item[4].text.extension[0].extension[1].url = "content"
* item[4].text.extension[0].extension[1].valueString = "Feeling tired or having little energy"
* item[4].answerOption[0].valueCoding.system = $LNC
* item[4].answerOption[0].valueCoding.code = #LA6568-5
* item[4].answerOption[0].valueCoding.display = "Überhaupt nicht"
* item[4].answerOption[0].valueCoding.display.extension[0].url = $hl7-translation
* item[4].answerOption[0].valueCoding.display.extension[0].extension[0].url = "lang"
* item[4].answerOption[0].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[4].answerOption[0].valueCoding.display.extension[0].extension[1].url = "content"
* item[4].answerOption[0].valueCoding.display.extension[0].extension[1].valueString = "Not at all"
* item[4].answerOption[0].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[4].answerOption[0].extension.valueDecimal = 0
* item[4].answerOption[1].valueCoding.system = $LNC
* item[4].answerOption[1].valueCoding.code = #LA6569-3
* item[4].answerOption[1].valueCoding.display = "An einzelnen Tagen"
* item[4].answerOption[1].valueCoding.display.extension[0].url = $hl7-translation
* item[4].answerOption[1].valueCoding.display.extension[0].extension[0].url = "lang"
* item[4].answerOption[1].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[4].answerOption[1].valueCoding.display.extension[0].extension[1].url = "content"
* item[4].answerOption[1].valueCoding.display.extension[0].extension[1].valueString = "Serveral days"
* item[4].answerOption[1].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[4].answerOption[1].extension.valueDecimal = 1
* item[4].answerOption[2].valueCoding.system = $LNC
* item[4].answerOption[2].valueCoding.code = #LA6570-1
* item[4].answerOption[2].valueCoding.display = "An mehr als der Hälfte der Tage"
* item[4].answerOption[2].valueCoding.display.extension[0].url = $hl7-translation
* item[4].answerOption[2].valueCoding.display.extension[0].extension[0].url = "lang"
* item[4].answerOption[2].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[4].answerOption[2].valueCoding.display.extension[0].extension[1].url = "content"
* item[4].answerOption[2].valueCoding.display.extension[0].extension[1].valueString = "More than half the days"
* item[4].answerOption[2].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[4].answerOption[2].extension.valueDecimal = 2
* item[4].answerOption[3].valueCoding.system = $LNC
* item[4].answerOption[3].valueCoding.code = #LA6571-9
* item[4].answerOption[3].valueCoding.display = "Beinahe jeden Tag"
* item[4].answerOption[3].valueCoding.display.extension[0].url = $hl7-translation
* item[4].answerOption[3].valueCoding.display.extension[0].extension[0].url = "lang"
* item[4].answerOption[3].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[4].answerOption[3].valueCoding.display.extension[0].extension[1].url = "content"
* item[4].answerOption[3].valueCoding.display.extension[0].extension[1].valueString = "Nearly every day"
* item[4].answerOption[3].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[4].answerOption[3].extension.valueDecimal = 3

* item[5].linkId = "phq-phq9-q05"
* item[5].type = #choice
* item[5].prefix = "5"
* item[5].code = $LNC#44251-7
* item[5].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[5].extension[=].valueExpression.language = #text/fhirpath
* item[5].extension[=].valueExpression.expression = "iif(%sourceResponse.exists(), %sourceResponse.item.where(linkId='phq-phq9-q05').answer.value, {})"
* item[5].text = "Verminderter Appetit oder übermäßiges Bedürfnis zu essen"
* item[5].text.extension[0].url = $hl7-translation
* item[5].text.extension[0].extension[0].url = "lang"
* item[5].text.extension[0].extension[0].valueCode = #en
* item[5].text.extension[0].extension[1].url = "content"
* item[5].text.extension[0].extension[1].valueString = "Poor appetite or overeating"
* item[5].answerOption[0].valueCoding.system = $LNC
* item[5].answerOption[0].valueCoding.code = #LA6568-5
* item[5].answerOption[0].valueCoding.display = "Überhaupt nicht"
* item[5].answerOption[0].valueCoding.display.extension[0].url = $hl7-translation
* item[5].answerOption[0].valueCoding.display.extension[0].extension[0].url = "lang"
* item[5].answerOption[0].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[5].answerOption[0].valueCoding.display.extension[0].extension[1].url = "content"
* item[5].answerOption[0].valueCoding.display.extension[0].extension[1].valueString = "Not at all"
* item[5].answerOption[0].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[5].answerOption[0].extension.valueDecimal = 0
* item[5].answerOption[1].valueCoding.system = $LNC
* item[5].answerOption[1].valueCoding.code = #LA6569-3
* item[5].answerOption[1].valueCoding.display = "An einzelnen Tagen"
* item[5].answerOption[1].valueCoding.display.extension[0].url = $hl7-translation
* item[5].answerOption[1].valueCoding.display.extension[0].extension[0].url = "lang"
* item[5].answerOption[1].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[5].answerOption[1].valueCoding.display.extension[0].extension[1].url = "content"
* item[5].answerOption[1].valueCoding.display.extension[0].extension[1].valueString = "Serveral days"
* item[5].answerOption[1].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[5].answerOption[1].extension.valueDecimal = 1
* item[5].answerOption[2].valueCoding.system = $LNC
* item[5].answerOption[2].valueCoding.code = #LA6570-1
* item[5].answerOption[2].valueCoding.display = "An mehr als der Hälfte der Tage"
* item[5].answerOption[2].valueCoding.display.extension[0].url = $hl7-translation
* item[5].answerOption[2].valueCoding.display.extension[0].extension[0].url = "lang"
* item[5].answerOption[2].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[5].answerOption[2].valueCoding.display.extension[0].extension[1].url = "content"
* item[5].answerOption[2].valueCoding.display.extension[0].extension[1].valueString = "More than half the days"
* item[5].answerOption[2].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[5].answerOption[2].extension.valueDecimal = 2
* item[5].answerOption[3].valueCoding.system = $LNC
* item[5].answerOption[3].valueCoding.code = #LA6571-9
* item[5].answerOption[3].valueCoding.display = "Beinahe jeden Tag"
* item[5].answerOption[3].valueCoding.display.extension[0].url = $hl7-translation
* item[5].answerOption[3].valueCoding.display.extension[0].extension[0].url = "lang"
* item[5].answerOption[3].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[5].answerOption[3].valueCoding.display.extension[0].extension[1].url = "content"
* item[5].answerOption[3].valueCoding.display.extension[0].extension[1].valueString = "Nearly every day"
* item[5].answerOption[3].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[5].answerOption[3].extension.valueDecimal = 3

* item[6].linkId = "phq-phq9-q06"
* item[6].type = #choice
* item[6].prefix = "6"
* item[6].code = $LNC#44258-2
* item[6].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[6].extension[=].valueExpression.language = #text/fhirpath
* item[6].extension[=].valueExpression.expression = "iif(%sourceResponse.exists(), %sourceResponse.item.where(linkId='phq-phq9-q06').answer.value, {})"
* item[6].text = "Schlechte Meinung von sich selbst; Gefühl, ein Versager zu sein oder die Familie enttäuscht zu haben"
* item[6].text.extension[0].url = $hl7-translation
* item[6].text.extension[0].extension[0].url = "lang"
* item[6].text.extension[0].extension[0].valueCode = #en
* item[6].text.extension[0].extension[1].url = "content"
* item[6].text.extension[0].extension[1].valueString = "Feeling bad about yourself - or that you are a failure or have let yourself or your family down"
* item[6].answerOption[0].valueCoding.system = $LNC
* item[6].answerOption[0].valueCoding.code = #LA6568-5
* item[6].answerOption[0].valueCoding.display = "Überhaupt nicht"
* item[6].answerOption[0].valueCoding.display.extension[0].url = $hl7-translation
* item[6].answerOption[0].valueCoding.display.extension[0].extension[0].url = "lang"
* item[6].answerOption[0].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[6].answerOption[0].valueCoding.display.extension[0].extension[1].url = "content"
* item[6].answerOption[0].valueCoding.display.extension[0].extension[1].valueString = "Not at all"
* item[6].answerOption[0].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[6].answerOption[0].extension.valueDecimal = 0
* item[6].answerOption[1].valueCoding.system = $LNC
* item[6].answerOption[1].valueCoding.code = #LA6569-3
* item[6].answerOption[1].valueCoding.display = "An einzelnen Tagen"
* item[6].answerOption[1].valueCoding.display.extension[0].url = $hl7-translation
* item[6].answerOption[1].valueCoding.display.extension[0].extension[0].url = "lang"
* item[6].answerOption[1].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[6].answerOption[1].valueCoding.display.extension[0].extension[1].url = "content"
* item[6].answerOption[1].valueCoding.display.extension[0].extension[1].valueString = "Serveral days"
* item[6].answerOption[1].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[6].answerOption[1].extension.valueDecimal = 1
* item[6].answerOption[2].valueCoding.system = $LNC
* item[6].answerOption[2].valueCoding.code = #LA6570-1
* item[6].answerOption[2].valueCoding.display = "An mehr als der Hälfte der Tage"
* item[6].answerOption[2].valueCoding.display.extension[0].url = $hl7-translation
* item[6].answerOption[2].valueCoding.display.extension[0].extension[0].url = "lang"
* item[6].answerOption[2].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[6].answerOption[2].valueCoding.display.extension[0].extension[1].url = "content"
* item[6].answerOption[2].valueCoding.display.extension[0].extension[1].valueString = "More than half the days"
* item[6].answerOption[2].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[6].answerOption[2].extension.valueDecimal = 2
* item[6].answerOption[3].valueCoding.system = $LNC
* item[6].answerOption[3].valueCoding.code = #LA6571-9
* item[6].answerOption[3].valueCoding.display = "Beinahe jeden Tag"
* item[6].answerOption[3].valueCoding.display.extension[0].url = $hl7-translation
* item[6].answerOption[3].valueCoding.display.extension[0].extension[0].url = "lang"
* item[6].answerOption[3].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[6].answerOption[3].valueCoding.display.extension[0].extension[1].url = "content"
* item[6].answerOption[3].valueCoding.display.extension[0].extension[1].valueString = "Nearly every day"
* item[6].answerOption[3].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[6].answerOption[3].extension.valueDecimal = 3

* item[7].linkId = "phq-phq9-q07"
* item[7].type = #choice
* item[7].prefix = "7"
* item[7].code = $LNC#44252-5
* item[7].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[7].extension[=].valueExpression.language = #text/fhirpath
* item[7].extension[=].valueExpression.expression = "iif(%sourceResponse.exists(), %sourceResponse.item.where(linkId='phq-phq9-q07').answer.value, {})"
* item[7].text = "Schwierigkeiten, sich auf etwas zu konzentrieren, z.B. beim Zeitunglesen oder Fernsehen"
* item[7].text.extension[0].url = $hl7-translation
* item[7].text.extension[0].extension[0].url = "lang"
* item[7].text.extension[0].extension[0].valueCode = #en
* item[7].text.extension[0].extension[1].url = "content"
* item[7].text.extension[0].extension[1].valueString = "Trouble concentrating on things, such as reading the newspaper or watching television"
* item[7].answerOption[0].valueCoding.system = $LNC
* item[7].answerOption[0].valueCoding.code = #LA6568-5
* item[7].answerOption[0].valueCoding.display = "Überhaupt nicht"
* item[7].answerOption[0].valueCoding.display.extension[0].url = $hl7-translation
* item[7].answerOption[0].valueCoding.display.extension[0].extension[0].url = "lang"
* item[7].answerOption[0].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[7].answerOption[0].valueCoding.display.extension[0].extension[1].url = "content"
* item[7].answerOption[0].valueCoding.display.extension[0].extension[1].valueString = "Not at all"
* item[7].answerOption[0].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[7].answerOption[0].extension.valueDecimal = 0
* item[7].answerOption[1].valueCoding.system = $LNC
* item[7].answerOption[1].valueCoding.code = #LA6569-3
* item[7].answerOption[1].valueCoding.display = "An einzelnen Tagen"
* item[7].answerOption[1].valueCoding.display.extension[0].url = $hl7-translation
* item[7].answerOption[1].valueCoding.display.extension[0].extension[0].url = "lang"
* item[7].answerOption[1].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[7].answerOption[1].valueCoding.display.extension[0].extension[1].url = "content"
* item[7].answerOption[1].valueCoding.display.extension[0].extension[1].valueString = "Serveral days"
* item[7].answerOption[1].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[7].answerOption[1].extension.valueDecimal = 1
* item[7].answerOption[2].valueCoding.system = $LNC
* item[7].answerOption[2].valueCoding.code = #LA6570-1
* item[7].answerOption[2].valueCoding.display = "An mehr als der Hälfte der Tage"
* item[7].answerOption[2].valueCoding.display.extension[0].url = $hl7-translation
* item[7].answerOption[2].valueCoding.display.extension[0].extension[0].url = "lang"
* item[7].answerOption[2].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[7].answerOption[2].valueCoding.display.extension[0].extension[1].url = "content"
* item[7].answerOption[2].valueCoding.display.extension[0].extension[1].valueString = "More than half the days"
* item[7].answerOption[2].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[7].answerOption[2].extension.valueDecimal = 2
* item[7].answerOption[3].valueCoding.system = $LNC
* item[7].answerOption[3].valueCoding.code = #LA6571-9
* item[7].answerOption[3].valueCoding.display = "Beinahe jeden Tag"
* item[7].answerOption[3].valueCoding.display.extension[0].url = $hl7-translation
* item[7].answerOption[3].valueCoding.display.extension[0].extension[0].url = "lang"
* item[7].answerOption[3].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[7].answerOption[3].valueCoding.display.extension[0].extension[1].url = "content"
* item[7].answerOption[3].valueCoding.display.extension[0].extension[1].valueString = "Nearly every day"
* item[7].answerOption[3].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[7].answerOption[3].extension.valueDecimal = 3

* item[8].linkId = "phq-phq9-q08"
* item[8].type = #choice
* item[8].prefix = "8"
* item[8].code = $LNC#44253-3
* item[8].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[8].extension[=].valueExpression.language = #text/fhirpath
* item[8].extension[=].valueExpression.expression = "iif(%sourceResponse.exists(), %sourceResponse.item.where(linkId='phq-phq9-q08').answer.value, {})"
* item[8].text = "Waren Ihre Bewegungen oder Ihre Sprache so verlangsamt, dass es auch anderen auffallen würde? Oder waren Sie im Gegenteil „zappelig“ oder ruhelos und hatten dadurch einen stärkeren Bewegungsdrang als sonst?"
* item[8].text.extension[0].url = $hl7-translation
* item[8].text.extension[0].extension[0].url = "lang"
* item[8].text.extension[0].extension[0].valueCode = #en
* item[8].text.extension[0].extension[1].url = "content"
* item[8].text.extension[0].extension[1].valueString = "Moving or speaking so slowly that other people could have noticed? Or the opposite — being so fidgety or restless that you have been moving around a lot more than usual"
* item[8].answerOption[0].valueCoding.system = $LNC
* item[8].answerOption[0].valueCoding.code = #LA6568-5
* item[8].answerOption[0].valueCoding.display = "Überhaupt nicht"
* item[8].answerOption[0].valueCoding.display.extension[0].url = $hl7-translation
* item[8].answerOption[0].valueCoding.display.extension[0].extension[0].url = "lang"
* item[8].answerOption[0].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[8].answerOption[0].valueCoding.display.extension[0].extension[1].url = "content"
* item[8].answerOption[0].valueCoding.display.extension[0].extension[1].valueString = "Not at all"
* item[8].answerOption[0].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[8].answerOption[0].extension.valueDecimal = 0
* item[8].answerOption[1].valueCoding.system = $LNC
* item[8].answerOption[1].valueCoding.code = #LA6569-3
* item[8].answerOption[1].valueCoding.display = "An einzelnen Tagen"
* item[8].answerOption[1].valueCoding.display.extension[0].url = $hl7-translation
* item[8].answerOption[1].valueCoding.display.extension[0].extension[0].url = "lang"
* item[8].answerOption[1].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[8].answerOption[1].valueCoding.display.extension[0].extension[1].url = "content"
* item[8].answerOption[1].valueCoding.display.extension[0].extension[1].valueString = "Serveral days"
* item[8].answerOption[1].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[8].answerOption[1].extension.valueDecimal = 1
* item[8].answerOption[2].valueCoding.system = $LNC
* item[8].answerOption[2].valueCoding.code = #LA6570-1
* item[8].answerOption[2].valueCoding.display = "An mehr als der Hälfte der Tage"
* item[8].answerOption[2].valueCoding.display.extension[0].url = $hl7-translation
* item[8].answerOption[2].valueCoding.display.extension[0].extension[0].url = "lang"
* item[8].answerOption[2].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[8].answerOption[2].valueCoding.display.extension[0].extension[1].url = "content"
* item[8].answerOption[2].valueCoding.display.extension[0].extension[1].valueString = "More than half the days"
* item[8].answerOption[2].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[8].answerOption[2].extension.valueDecimal = 2
* item[8].answerOption[3].valueCoding.system = $LNC
* item[8].answerOption[3].valueCoding.code = #LA6571-9
* item[8].answerOption[3].valueCoding.display = "Beinahe jeden Tag"
* item[8].answerOption[3].valueCoding.display.extension[0].url = $hl7-translation
* item[8].answerOption[3].valueCoding.display.extension[0].extension[0].url = "lang"
* item[8].answerOption[3].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[8].answerOption[3].valueCoding.display.extension[0].extension[1].url = "content"
* item[8].answerOption[3].valueCoding.display.extension[0].extension[1].valueString = "Nearly every day"
* item[8].answerOption[3].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[8].answerOption[3].extension.valueDecimal = 3

* item[9].linkId = "phq-phq9-q09"
* item[9].type = #choice
* item[9].prefix = "9"
* item[9].code = $LNC#44260-8
* item[9].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[9].extension[=].valueExpression.language = #text/fhirpath
* item[9].extension[=].valueExpression.expression = "iif(%sourceResponse.exists(), %sourceResponse.item.where(linkId='phq-phq9-q09').answer.value, {})"
* item[9].text = "Gedanken, dass Sie lieber tot wären oder sich Leid zufügen möchten"
* item[9].text.extension[0].url = $hl7-translation
* item[9].text.extension[0].extension[0].url = "lang"
* item[9].text.extension[0].extension[0].valueCode = #en
* item[9].text.extension[0].extension[1].url = "content"
* item[9].text.extension[0].extension[1].valueString = "Thoughts that you would be better off dead or of hurting yourself in some way"
* item[9].answerOption[0].valueCoding.system = $LNC
* item[9].answerOption[0].valueCoding.code = #LA6568-5
* item[9].answerOption[0].valueCoding.display = "Überhaupt nicht"
* item[9].answerOption[0].valueCoding.display.extension[0].url = $hl7-translation
* item[9].answerOption[0].valueCoding.display.extension[0].extension[0].url = "lang"
* item[9].answerOption[0].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[9].answerOption[0].valueCoding.display.extension[0].extension[1].url = "content"
* item[9].answerOption[0].valueCoding.display.extension[0].extension[1].valueString = "Not at all"
* item[9].answerOption[0].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[9].answerOption[0].extension.valueDecimal = 0
* item[9].answerOption[1].valueCoding.system = $LNC
* item[9].answerOption[1].valueCoding.code = #LA6569-3
* item[9].answerOption[1].valueCoding.display = "An einzelnen Tagen"
* item[9].answerOption[1].valueCoding.display.extension[0].url = $hl7-translation
* item[9].answerOption[1].valueCoding.display.extension[0].extension[0].url = "lang"
* item[9].answerOption[1].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[9].answerOption[1].valueCoding.display.extension[0].extension[1].url = "content"
* item[9].answerOption[1].valueCoding.display.extension[0].extension[1].valueString = "Serveral days"
* item[9].answerOption[1].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[9].answerOption[1].extension.valueDecimal = 1
* item[9].answerOption[2].valueCoding.system = $LNC
* item[9].answerOption[2].valueCoding.code = #LA6570-1
* item[9].answerOption[2].valueCoding.display = "An mehr als der Hälfte der Tage"
* item[9].answerOption[2].valueCoding.display.extension[0].url = $hl7-translation
* item[9].answerOption[2].valueCoding.display.extension[0].extension[0].url = "lang"
* item[9].answerOption[2].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[9].answerOption[2].valueCoding.display.extension[0].extension[1].url = "content"
* item[9].answerOption[2].valueCoding.display.extension[0].extension[1].valueString = "More than half the days"
* item[9].answerOption[2].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[9].answerOption[2].extension.valueDecimal = 2
* item[9].answerOption[3].valueCoding.system = $LNC
* item[9].answerOption[3].valueCoding.code = #LA6571-9
* item[9].answerOption[3].valueCoding.display = "Beinahe jeden Tag"
* item[9].answerOption[3].valueCoding.display.extension[0].url = $hl7-translation
* item[9].answerOption[3].valueCoding.display.extension[0].extension[0].url = "lang"
* item[9].answerOption[3].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[9].answerOption[3].valueCoding.display.extension[0].extension[1].url = "content"
* item[9].answerOption[3].valueCoding.display.extension[0].extension[1].valueString = "Nearly every day"
* item[9].answerOption[3].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[9].answerOption[3].extension.valueDecimal = 3

* item[11].linkId = "phq-phq9-q10"
* item[11].type = #choice
* item[11].prefix = "10"
* item[11].code = $LNC#69722-7
* item[11].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[11].extension[=].valueExpression.language = #text/fhirpath
* item[11].extension[=].valueExpression.expression = "iif(%sourceResponse.exists(), %sourceResponse.item.where(linkId='phq-phq9-q10').answer.value, {})"
* item[11].text = "Wenn eines oder mehrere dieser Probleme bei Ihnen vorliegen, geben Sie bitte an, wie sehr diese Probleme es Ihnen erschwert haben, Ihre Arbeit zu erledigen, Ihren Haushalt zu regeln oder mit anderen Menschen zurecht zu kommen"
* item[11].text.extension[0].url = $hl7-translation
* item[11].text.extension[0].extension[0].url = "lang"
* item[11].text.extension[0].extension[0].valueCode = #en
* item[11].text.extension[0].extension[1].url = "content"
* item[11].text.extension[0].extension[1].valueString = "If you checked off any problems, how difficult have these problems made it for you to do your work, take care of things at home, or get along with other people?"
* item[11].answerOption[0].valueCoding.system = $LNC
* item[11].answerOption[0].valueCoding.code = #LA6572-7
* item[11].answerOption[0].valueCoding.display = "Überhaupt nicht erschwert"
* item[11].answerOption[0].valueCoding.display.extension[0].url = $hl7-translation
* item[11].answerOption[0].valueCoding.display.extension[0].extension[0].url = "lang"
* item[11].answerOption[0].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[11].answerOption[0].valueCoding.display.extension[0].extension[1].url = "content"
* item[11].answerOption[0].valueCoding.display.extension[0].extension[1].valueString = "Not difficult at all"
* item[11].answerOption[1].valueCoding.system = $LNC
* item[11].answerOption[1].valueCoding.code = #LA6573-5
* item[11].answerOption[1].valueCoding.display = "Etwas erschwert"
* item[11].answerOption[1].valueCoding.display.extension[0].url = $hl7-translation
* item[11].answerOption[1].valueCoding.display.extension[0].extension[0].url = "lang"
* item[11].answerOption[1].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[11].answerOption[1].valueCoding.display.extension[0].extension[1].url = "content"
* item[11].answerOption[1].valueCoding.display.extension[0].extension[1].valueString = "Somewhat difficult"
* item[11].answerOption[2].valueCoding.system = $LNC
* item[11].answerOption[2].valueCoding.code = #LA6575-0
* item[11].answerOption[2].valueCoding.display = "Relativ stark erschwert"
* item[11].answerOption[2].valueCoding.display.extension[0].url = $hl7-translation
* item[11].answerOption[2].valueCoding.display.extension[0].extension[0].url = "lang"
* item[11].answerOption[2].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[11].answerOption[2].valueCoding.display.extension[0].extension[1].url = "content"
* item[11].answerOption[2].valueCoding.display.extension[0].extension[1].valueString = "Very difficult"
* item[11].answerOption[3].valueCoding.system = $LNC
* item[11].answerOption[3].valueCoding.code = #LA6574-3
* item[11].answerOption[3].valueCoding.display = "Sehr stark erschwert"
* item[11].answerOption[3].valueCoding.display.extension[0].url = $hl7-translation
* item[11].answerOption[3].valueCoding.display.extension[0].extension[0].url = "lang"
* item[11].answerOption[3].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[11].answerOption[3].valueCoding.display.extension[0].extension[1].url = "content"
* item[11].answerOption[3].valueCoding.display.extension[0].extension[1].valueString = "Extremely difficult"

// Define variable for PHQ-9 sum score (used by both raw score and T-score)
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "phq9Score"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.item.where(linkId.matches('^phq-phq9-q0[1-9]$')).answer.value.ordinal().sum()"

* item[10].linkId = "phq-phq9-score-total"
* item[10].type = #decimal
* item[10].prefix = "Auswertung"
* item[10].code = $LNC#44261-6 "Patient Health Questionnaire 9 item (PHQ-9) total score [Reported]"
* item[10].readOnly = true
* item[10].extension[0].url = $sdc-questionnaire-calculated-expression
* item[10].extension[0].valueExpression.name = "Scoreberechnung"
* item[10].extension[0].valueExpression.language = #text/fhirpath
* item[10].extension[0].valueExpression.expression = "%phq9Score"
* item[10].text = "PHQ-9 Gesamtwert"
* item[10].text.extension[0].url = $hl7-translation
* item[10].text.extension[0].extension[0].url = "lang"
* item[10].text.extension[0].extension[0].valueCode = #en
* item[10].text.extension[0].extension[1].url = "content"
* item[10].text.extension[0].extension[1].valueString = "PHQ-9 Total Score"
* item[10].extension[1].url = $sdc-questionnaire-observation-extract
* item[10].extension[1].valueBoolean = true
* item[10].extension[2].url = $hl7-questionnaire-unit
* item[10].extension[2].valueCoding.system = $UCUM
* item[10].extension[2].valueCoding.code = #{score}
* item[10].extension[3].url = $sdc-questionnaire-observation-extract-category
* item[10].extension[3].valueCodeableConcept.coding.system = $hl7-observation-category
* item[10].extension[3].valueCodeableConcept.coding.code = #survey


// PROMIS Depression T-Score (derived from PHQ-9 via PROsetta Stone crosswalk)
* item[12].linkId = "phq-phq9-promis-tscore"
* item[12].type = #decimal
* item[12].prefix = "T-Score"
* item[12].code = $LNC#77861-3 "PROMIS depression T-score"
* item[12].readOnly = true
* item[12].extension[0].url = $sdc-questionnaire-calculated-expression
* item[12].extension[0].valueExpression.name = "promis-tscore-mapping"
* item[12].extension[0].valueExpression.language = #text/fhirpath
* item[12].extension[0].valueExpression.expression = "iif(%phq9Score = 0, 37.4, iif(%phq9Score = 1, 42.7, iif(%phq9Score = 2, 45.9, iif(%phq9Score = 3, 48.3, iif(%phq9Score = 4, 50.5, iif(%phq9Score = 5, 52.5, iif(%phq9Score = 6, 54.2, iif(%phq9Score = 7, 55.8, iif(%phq9Score = 8, 57.2, iif(%phq9Score = 9, 58.6, iif(%phq9Score = 10, 59.9, iif(%phq9Score = 11, 61.1, iif(%phq9Score = 12, 62.3, iif(%phq9Score = 13, 63.5, iif(%phq9Score = 14, 64.7, iif(%phq9Score = 15, 65.8, iif(%phq9Score = 16, 66.9, iif(%phq9Score = 17, 68.0, iif(%phq9Score = 18, 69.2, iif(%phq9Score = 19, 70.3, iif(%phq9Score = 20, 71.5, iif(%phq9Score = 21, 72.7, iif(%phq9Score = 22, 74.0, iif(%phq9Score = 23, 75.3, iif(%phq9Score = 24, 76.7, iif(%phq9Score = 25, 78.3, iif(%phq9Score = 26, 80.0, iif(%phq9Score = 27, 82.3, 82.3))))))))))))))))))))))))))))"
* item[12].text = "PROMIS Depression T-Score (abgeleitet von PHQ-9)"
* item[12].text.extension[0].url = $hl7-translation
* item[12].text.extension[0].extension[0].url = "lang"
* item[12].text.extension[0].extension[0].valueCode = #en
* item[12].text.extension[0].extension[1].url = "content"
* item[12].text.extension[0].extension[1].valueString = "PROMIS Depression T-Score (derived from PHQ-9)"
* item[12].extension[1].url = $sdc-questionnaire-observation-extract
* item[12].extension[1].valueBoolean = true
* item[12].extension[2].url = $hl7-questionnaire-unit
* item[12].extension[2].valueCoding.system = $UCUM
* item[12].extension[2].valueCoding.code = #{score}
* item[12].extension[3].url = $sdc-questionnaire-observation-extract-category
* item[12].extension[3].valueCodeableConcept.coding.system = $hl7-observation-category
* item[12].extension[3].valueCodeableConcept.coding.code = #survey
* item[12].extension[4].url = "http://hl7.org/fhir/StructureDefinition/cqf-citation"
* item[12].extension[4].valueString = "PROsetta Stone® PHQ-9 to PROMIS Depression Crosswalk Table. Available at: https://www.prosettastone.org"

