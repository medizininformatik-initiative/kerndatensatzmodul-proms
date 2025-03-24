Instance: mii-qst-pro-phq-9
InstanceOf: SDCQuestionnaireCommon
Title: "MII QST PRO PHQ-9"
Description: "Patient Health Questionnaire (PHQ-9)"
Usage: #definition

* url = $mii-qst-pro-phq-9
* status = #active
* experimental = true
* language = #de
* code = $LNC#44249-1 "PHQ-9 quick depression assessment panel [Reported.PHQ]"

* item[0].linkId = "PHQ-9.Description"
* item[0].type = #display
* item[0].text = "Wie oft fühlten Sie sich im Verlauf der letzten 2 Wochen durch die folgenden Beschwerden beeinträchtigt?"
* item[0].text.extension[0].url = $hl7-translation
* item[0].text.extension[0].extension[0].url = "lang"
* item[0].text.extension[0].extension[0].valueCode = #en
* item[0].text.extension[0].extension[1].url = "content"
* item[0].text.extension[0].extension[1].valueString = "Over the last two weeks, how often have you been bothered by any of the following problems?"

* item[1].linkId = "PHQ-9.1"
* item[1].type = #choice
* item[1].prefix = "1"
* item[1].code = $LNC#44250-9
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
* item[1].answerOption[0].extension.url = $hl7-ordinal-value
* item[1].answerOption[0].extension.valueDecimal = 0
* item[1].answerOption[1].valueCoding.system = $LNC
* item[1].answerOption[1].valueCoding.code = #LA6569-3
* item[1].answerOption[1].valueCoding.display = "An einzelnen Tagen"
* item[1].answerOption[1].valueCoding.display.extension[0].url = $hl7-translation
* item[1].answerOption[1].valueCoding.display.extension[0].extension[0].url = "lang"
* item[1].answerOption[1].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[1].answerOption[1].valueCoding.display.extension[0].extension[1].url = "content"
* item[1].answerOption[1].valueCoding.display.extension[0].extension[1].valueString = "Serveral days"
* item[1].answerOption[1].extension.url = $hl7-ordinal-value
* item[1].answerOption[1].extension.valueDecimal = 1
* item[1].answerOption[2].valueCoding.system = $LNC
* item[1].answerOption[2].valueCoding.code = #LA6570-1
* item[1].answerOption[2].valueCoding.display = "An mehr als der Hälfte der Tage"
* item[1].answerOption[2].valueCoding.display.extension[0].url = $hl7-translation
* item[1].answerOption[2].valueCoding.display.extension[0].extension[0].url = "lang"
* item[1].answerOption[2].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[1].answerOption[2].valueCoding.display.extension[0].extension[1].url = "content"
* item[1].answerOption[2].valueCoding.display.extension[0].extension[1].valueString = "More than half the days"
* item[1].answerOption[2].extension.url = $hl7-ordinal-value
* item[1].answerOption[2].extension.valueDecimal = 2
* item[1].answerOption[3].valueCoding.system = $LNC
* item[1].answerOption[3].valueCoding.code = #LA6571-9
* item[1].answerOption[3].valueCoding.display = "Beinahe jeden Tag"
* item[1].answerOption[3].valueCoding.display.extension[0].url = $hl7-translation
* item[1].answerOption[3].valueCoding.display.extension[0].extension[0].url = "lang"
* item[1].answerOption[3].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[1].answerOption[3].valueCoding.display.extension[0].extension[1].url = "content"
* item[1].answerOption[3].valueCoding.display.extension[0].extension[1].valueString = "Nearly every day"
* item[1].answerOption[3].extension.url = $hl7-ordinal-value
* item[1].answerOption[3].extension.valueDecimal = 3

* item[2].linkId = "PHQ-9.2"
* item[2].type = #choice
* item[2].prefix = "2"
* item[2].code = $LNC#44255-8
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
* item[2].answerOption[0].extension.url = $hl7-ordinal-value
* item[2].answerOption[0].extension.valueDecimal = 0
* item[2].answerOption[1].valueCoding.system = $LNC
* item[2].answerOption[1].valueCoding.code = #LA6569-3
* item[2].answerOption[1].valueCoding.display = "An einzelnen Tagen"
* item[2].answerOption[1].valueCoding.display.extension[0].url = $hl7-translation
* item[2].answerOption[1].valueCoding.display.extension[0].extension[0].url = "lang"
* item[2].answerOption[1].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[2].answerOption[1].valueCoding.display.extension[0].extension[1].url = "content"
* item[2].answerOption[1].valueCoding.display.extension[0].extension[1].valueString = "Serveral days"
* item[2].answerOption[1].extension.url = $hl7-ordinal-value
* item[2].answerOption[1].extension.valueDecimal = 1
* item[2].answerOption[2].valueCoding.system = $LNC
* item[2].answerOption[2].valueCoding.code = #LA6570-1
* item[2].answerOption[2].valueCoding.display = "An mehr als der Hälfte der Tage"
* item[2].answerOption[2].valueCoding.display.extension[0].url = $hl7-translation
* item[2].answerOption[2].valueCoding.display.extension[0].extension[0].url = "lang"
* item[2].answerOption[2].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[2].answerOption[2].valueCoding.display.extension[0].extension[1].url = "content"
* item[2].answerOption[2].valueCoding.display.extension[0].extension[1].valueString = "More than half the days"
* item[2].answerOption[2].extension.url = $hl7-ordinal-value
* item[2].answerOption[2].extension.valueDecimal = 2
* item[2].answerOption[3].valueCoding.system = $LNC
* item[2].answerOption[3].valueCoding.code = #LA6571-9
* item[2].answerOption[3].valueCoding.display = "Beinahe jeden Tag"
* item[2].answerOption[3].valueCoding.display.extension[0].url = $hl7-translation
* item[2].answerOption[3].valueCoding.display.extension[0].extension[0].url = "lang"
* item[2].answerOption[3].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[2].answerOption[3].valueCoding.display.extension[0].extension[1].url = "content"
* item[2].answerOption[3].valueCoding.display.extension[0].extension[1].valueString = "Nearly every day"
* item[2].answerOption[3].extension.url = $hl7-ordinal-value
* item[2].answerOption[3].extension.valueDecimal = 3

* item[3].linkId = "PHQ-9.3"
* item[3].type = #choice
* item[3].prefix = "3"
* item[3].code = $LNC#44259-0
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
* item[3].answerOption[0].extension.url = $hl7-ordinal-value
* item[3].answerOption[0].extension.valueDecimal = 0
* item[3].answerOption[1].valueCoding.system = $LNC
* item[3].answerOption[1].valueCoding.code = #LA6569-3
* item[3].answerOption[1].valueCoding.display = "An einzelnen Tagen"
* item[3].answerOption[1].valueCoding.display.extension[0].url = $hl7-translation
* item[3].answerOption[1].valueCoding.display.extension[0].extension[0].url = "lang"
* item[3].answerOption[1].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[3].answerOption[1].valueCoding.display.extension[0].extension[1].url = "content"
* item[3].answerOption[1].valueCoding.display.extension[0].extension[1].valueString = "Serveral days"
* item[3].answerOption[1].extension.url = $hl7-ordinal-value
* item[3].answerOption[1].extension.valueDecimal = 1
* item[3].answerOption[2].valueCoding.system = $LNC
* item[3].answerOption[2].valueCoding.code = #LA6570-1
* item[3].answerOption[2].valueCoding.display = "An mehr als der Hälfte der Tage"
* item[3].answerOption[2].valueCoding.display.extension[0].url = $hl7-translation
* item[3].answerOption[2].valueCoding.display.extension[0].extension[0].url = "lang"
* item[3].answerOption[2].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[3].answerOption[2].valueCoding.display.extension[0].extension[1].url = "content"
* item[3].answerOption[2].valueCoding.display.extension[0].extension[1].valueString = "More than half the days"
* item[3].answerOption[2].extension.url = $hl7-ordinal-value
* item[3].answerOption[2].extension.valueDecimal = 2
* item[3].answerOption[3].valueCoding.system = $LNC
* item[3].answerOption[3].valueCoding.code = #LA6571-9
* item[3].answerOption[3].valueCoding.display = "Beinahe jeden Tag"
* item[3].answerOption[3].valueCoding.display.extension[0].url = $hl7-translation
* item[3].answerOption[3].valueCoding.display.extension[0].extension[0].url = "lang"
* item[3].answerOption[3].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[3].answerOption[3].valueCoding.display.extension[0].extension[1].url = "content"
* item[3].answerOption[3].valueCoding.display.extension[0].extension[1].valueString = "Nearly every day"
* item[3].answerOption[3].extension.url = $hl7-ordinal-value
* item[3].answerOption[3].extension.valueDecimal = 3

* item[4].linkId = "PHQ-9.4"
* item[4].type = #choice
* item[4].prefix = "4"
* item[4].code = $LNC#44254-1
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
* item[4].answerOption[0].extension.url = $hl7-ordinal-value
* item[4].answerOption[0].extension.valueDecimal = 0
* item[4].answerOption[1].valueCoding.system = $LNC
* item[4].answerOption[1].valueCoding.code = #LA6569-3
* item[4].answerOption[1].valueCoding.display = "An einzelnen Tagen"
* item[4].answerOption[1].valueCoding.display.extension[0].url = $hl7-translation
* item[4].answerOption[1].valueCoding.display.extension[0].extension[0].url = "lang"
* item[4].answerOption[1].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[4].answerOption[1].valueCoding.display.extension[0].extension[1].url = "content"
* item[4].answerOption[1].valueCoding.display.extension[0].extension[1].valueString = "Serveral days"
* item[4].answerOption[1].extension.url = $hl7-ordinal-value
* item[4].answerOption[1].extension.valueDecimal = 1
* item[4].answerOption[2].valueCoding.system = $LNC
* item[4].answerOption[2].valueCoding.code = #LA6570-1
* item[4].answerOption[2].valueCoding.display = "An mehr als der Hälfte der Tage"
* item[4].answerOption[2].valueCoding.display.extension[0].url = $hl7-translation
* item[4].answerOption[2].valueCoding.display.extension[0].extension[0].url = "lang"
* item[4].answerOption[2].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[4].answerOption[2].valueCoding.display.extension[0].extension[1].url = "content"
* item[4].answerOption[2].valueCoding.display.extension[0].extension[1].valueString = "More than half the days"
* item[4].answerOption[2].extension.url = $hl7-ordinal-value
* item[4].answerOption[2].extension.valueDecimal = 2
* item[4].answerOption[3].valueCoding.system = $LNC
* item[4].answerOption[3].valueCoding.code = #LA6571-9
* item[4].answerOption[3].valueCoding.display = "Beinahe jeden Tag"
* item[4].answerOption[3].valueCoding.display.extension[0].url = $hl7-translation
* item[4].answerOption[3].valueCoding.display.extension[0].extension[0].url = "lang"
* item[4].answerOption[3].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[4].answerOption[3].valueCoding.display.extension[0].extension[1].url = "content"
* item[4].answerOption[3].valueCoding.display.extension[0].extension[1].valueString = "Nearly every day"
* item[4].answerOption[3].extension.url = $hl7-ordinal-value
* item[4].answerOption[3].extension.valueDecimal = 3

* item[5].linkId = "PHQ-9.5"
* item[5].type = #choice
* item[5].prefix = "5"
* item[5].code = $LNC#44251-7
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
* item[5].answerOption[0].extension.url = $hl7-ordinal-value
* item[5].answerOption[0].extension.valueDecimal = 0
* item[5].answerOption[1].valueCoding.system = $LNC
* item[5].answerOption[1].valueCoding.code = #LA6569-3
* item[5].answerOption[1].valueCoding.display = "An einzelnen Tagen"
* item[5].answerOption[1].valueCoding.display.extension[0].url = $hl7-translation
* item[5].answerOption[1].valueCoding.display.extension[0].extension[0].url = "lang"
* item[5].answerOption[1].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[5].answerOption[1].valueCoding.display.extension[0].extension[1].url = "content"
* item[5].answerOption[1].valueCoding.display.extension[0].extension[1].valueString = "Serveral days"
* item[5].answerOption[1].extension.url = $hl7-ordinal-value
* item[5].answerOption[1].extension.valueDecimal = 1
* item[5].answerOption[2].valueCoding.system = $LNC
* item[5].answerOption[2].valueCoding.code = #LA6570-1
* item[5].answerOption[2].valueCoding.display = "An mehr als der Hälfte der Tage"
* item[5].answerOption[2].valueCoding.display.extension[0].url = $hl7-translation
* item[5].answerOption[2].valueCoding.display.extension[0].extension[0].url = "lang"
* item[5].answerOption[2].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[5].answerOption[2].valueCoding.display.extension[0].extension[1].url = "content"
* item[5].answerOption[2].valueCoding.display.extension[0].extension[1].valueString = "More than half the days"
* item[5].answerOption[2].extension.url = $hl7-ordinal-value
* item[5].answerOption[2].extension.valueDecimal = 2
* item[5].answerOption[3].valueCoding.system = $LNC
* item[5].answerOption[3].valueCoding.code = #LA6571-9
* item[5].answerOption[3].valueCoding.display = "Beinahe jeden Tag"
* item[5].answerOption[3].valueCoding.display.extension[0].url = $hl7-translation
* item[5].answerOption[3].valueCoding.display.extension[0].extension[0].url = "lang"
* item[5].answerOption[3].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[5].answerOption[3].valueCoding.display.extension[0].extension[1].url = "content"
* item[5].answerOption[3].valueCoding.display.extension[0].extension[1].valueString = "Nearly every day"
* item[5].answerOption[3].extension.url = $hl7-ordinal-value
* item[5].answerOption[3].extension.valueDecimal = 3

* item[6].linkId = "PHQ-9.6"
* item[6].type = #choice
* item[6].prefix = "6"
* item[6].code = $LNC#44258-2
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
* item[6].answerOption[0].extension.url = $hl7-ordinal-value
* item[6].answerOption[0].extension.valueDecimal = 0
* item[6].answerOption[1].valueCoding.system = $LNC
* item[6].answerOption[1].valueCoding.code = #LA6569-3
* item[6].answerOption[1].valueCoding.display = "An einzelnen Tagen"
* item[6].answerOption[1].valueCoding.display.extension[0].url = $hl7-translation
* item[6].answerOption[1].valueCoding.display.extension[0].extension[0].url = "lang"
* item[6].answerOption[1].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[6].answerOption[1].valueCoding.display.extension[0].extension[1].url = "content"
* item[6].answerOption[1].valueCoding.display.extension[0].extension[1].valueString = "Serveral days"
* item[6].answerOption[1].extension.url = $hl7-ordinal-value
* item[6].answerOption[1].extension.valueDecimal = 1
* item[6].answerOption[2].valueCoding.system = $LNC
* item[6].answerOption[2].valueCoding.code = #LA6570-1
* item[6].answerOption[2].valueCoding.display = "An mehr als der Hälfte der Tage"
* item[6].answerOption[2].valueCoding.display.extension[0].url = $hl7-translation
* item[6].answerOption[2].valueCoding.display.extension[0].extension[0].url = "lang"
* item[6].answerOption[2].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[6].answerOption[2].valueCoding.display.extension[0].extension[1].url = "content"
* item[6].answerOption[2].valueCoding.display.extension[0].extension[1].valueString = "More than half the days"
* item[6].answerOption[2].extension.url = $hl7-ordinal-value
* item[6].answerOption[2].extension.valueDecimal = 2
* item[6].answerOption[3].valueCoding.system = $LNC
* item[6].answerOption[3].valueCoding.code = #LA6571-9
* item[6].answerOption[3].valueCoding.display = "Beinahe jeden Tag"
* item[6].answerOption[3].valueCoding.display.extension[0].url = $hl7-translation
* item[6].answerOption[3].valueCoding.display.extension[0].extension[0].url = "lang"
* item[6].answerOption[3].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[6].answerOption[3].valueCoding.display.extension[0].extension[1].url = "content"
* item[6].answerOption[3].valueCoding.display.extension[0].extension[1].valueString = "Nearly every day"
* item[6].answerOption[3].extension.url = $hl7-ordinal-value
* item[6].answerOption[3].extension.valueDecimal = 3

* item[7].linkId = "PHQ-9.7"
* item[7].type = #choice
* item[7].prefix = "7"
* item[7].code = $LNC#44252-5
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
* item[7].answerOption[0].extension.url = $hl7-ordinal-value
* item[7].answerOption[0].extension.valueDecimal = 0
* item[7].answerOption[1].valueCoding.system = $LNC
* item[7].answerOption[1].valueCoding.code = #LA6569-3
* item[7].answerOption[1].valueCoding.display = "An einzelnen Tagen"
* item[7].answerOption[1].valueCoding.display.extension[0].url = $hl7-translation
* item[7].answerOption[1].valueCoding.display.extension[0].extension[0].url = "lang"
* item[7].answerOption[1].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[7].answerOption[1].valueCoding.display.extension[0].extension[1].url = "content"
* item[7].answerOption[1].valueCoding.display.extension[0].extension[1].valueString = "Serveral days"
* item[7].answerOption[1].extension.url = $hl7-ordinal-value
* item[7].answerOption[1].extension.valueDecimal = 1
* item[7].answerOption[2].valueCoding.system = $LNC
* item[7].answerOption[2].valueCoding.code = #LA6570-1
* item[7].answerOption[2].valueCoding.display = "An mehr als der Hälfte der Tage"
* item[7].answerOption[2].valueCoding.display.extension[0].url = $hl7-translation
* item[7].answerOption[2].valueCoding.display.extension[0].extension[0].url = "lang"
* item[7].answerOption[2].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[7].answerOption[2].valueCoding.display.extension[0].extension[1].url = "content"
* item[7].answerOption[2].valueCoding.display.extension[0].extension[1].valueString = "More than half the days"
* item[7].answerOption[2].extension.url = $hl7-ordinal-value
* item[7].answerOption[2].extension.valueDecimal = 2
* item[7].answerOption[3].valueCoding.system = $LNC
* item[7].answerOption[3].valueCoding.code = #LA6571-9
* item[7].answerOption[3].valueCoding.display = "Beinahe jeden Tag"
* item[7].answerOption[3].valueCoding.display.extension[0].url = $hl7-translation
* item[7].answerOption[3].valueCoding.display.extension[0].extension[0].url = "lang"
* item[7].answerOption[3].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[7].answerOption[3].valueCoding.display.extension[0].extension[1].url = "content"
* item[7].answerOption[3].valueCoding.display.extension[0].extension[1].valueString = "Nearly every day"
* item[7].answerOption[3].extension.url = $hl7-ordinal-value
* item[7].answerOption[3].extension.valueDecimal = 3

* item[8].linkId = "PHQ-9.8"
* item[8].type = #choice
* item[8].prefix = "8"
* item[8].code = $LNC#44253-3
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
* item[8].answerOption[0].extension.url = $hl7-ordinal-value
* item[8].answerOption[0].extension.valueDecimal = 0
* item[8].answerOption[1].valueCoding.system = $LNC
* item[8].answerOption[1].valueCoding.code = #LA6569-3
* item[8].answerOption[1].valueCoding.display = "An einzelnen Tagen"
* item[8].answerOption[1].valueCoding.display.extension[0].url = $hl7-translation
* item[8].answerOption[1].valueCoding.display.extension[0].extension[0].url = "lang"
* item[8].answerOption[1].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[8].answerOption[1].valueCoding.display.extension[0].extension[1].url = "content"
* item[8].answerOption[1].valueCoding.display.extension[0].extension[1].valueString = "Serveral days"
* item[8].answerOption[1].extension.url = $hl7-ordinal-value
* item[8].answerOption[1].extension.valueDecimal = 1
* item[8].answerOption[2].valueCoding.system = $LNC
* item[8].answerOption[2].valueCoding.code = #LA6570-1
* item[8].answerOption[2].valueCoding.display = "An mehr als der Hälfte der Tage"
* item[8].answerOption[2].valueCoding.display.extension[0].url = $hl7-translation
* item[8].answerOption[2].valueCoding.display.extension[0].extension[0].url = "lang"
* item[8].answerOption[2].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[8].answerOption[2].valueCoding.display.extension[0].extension[1].url = "content"
* item[8].answerOption[2].valueCoding.display.extension[0].extension[1].valueString = "More than half the days"
* item[8].answerOption[2].extension.url = $hl7-ordinal-value
* item[8].answerOption[2].extension.valueDecimal = 2
* item[8].answerOption[3].valueCoding.system = $LNC
* item[8].answerOption[3].valueCoding.code = #LA6571-9
* item[8].answerOption[3].valueCoding.display = "Beinahe jeden Tag"
* item[8].answerOption[3].valueCoding.display.extension[0].url = $hl7-translation
* item[8].answerOption[3].valueCoding.display.extension[0].extension[0].url = "lang"
* item[8].answerOption[3].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[8].answerOption[3].valueCoding.display.extension[0].extension[1].url = "content"
* item[8].answerOption[3].valueCoding.display.extension[0].extension[1].valueString = "Nearly every day"
* item[8].answerOption[3].extension.url = $hl7-ordinal-value
* item[8].answerOption[3].extension.valueDecimal = 3

* item[9].linkId = "PHQ-9.9"
* item[9].type = #choice
* item[9].prefix = "9"
* item[9].code = $LNC#44260-8
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
* item[9].answerOption[0].extension.url = $hl7-ordinal-value
* item[9].answerOption[0].extension.valueDecimal = 0
* item[9].answerOption[1].valueCoding.system = $LNC
* item[9].answerOption[1].valueCoding.code = #LA6569-3
* item[9].answerOption[1].valueCoding.display = "An einzelnen Tagen"
* item[9].answerOption[1].valueCoding.display.extension[0].url = $hl7-translation
* item[9].answerOption[1].valueCoding.display.extension[0].extension[0].url = "lang"
* item[9].answerOption[1].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[9].answerOption[1].valueCoding.display.extension[0].extension[1].url = "content"
* item[9].answerOption[1].valueCoding.display.extension[0].extension[1].valueString = "Serveral days"
* item[9].answerOption[1].extension.url = $hl7-ordinal-value
* item[9].answerOption[1].extension.valueDecimal = 1
* item[9].answerOption[2].valueCoding.system = $LNC
* item[9].answerOption[2].valueCoding.code = #LA6570-1
* item[9].answerOption[2].valueCoding.display = "An mehr als der Hälfte der Tage"
* item[9].answerOption[2].valueCoding.display.extension[0].url = $hl7-translation
* item[9].answerOption[2].valueCoding.display.extension[0].extension[0].url = "lang"
* item[9].answerOption[2].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[9].answerOption[2].valueCoding.display.extension[0].extension[1].url = "content"
* item[9].answerOption[2].valueCoding.display.extension[0].extension[1].valueString = "More than half the days"
* item[9].answerOption[2].extension.url = $hl7-ordinal-value
* item[9].answerOption[2].extension.valueDecimal = 2
* item[9].answerOption[3].valueCoding.system = $LNC
* item[9].answerOption[3].valueCoding.code = #LA6571-9
* item[9].answerOption[3].valueCoding.display = "Beinahe jeden Tag"
* item[9].answerOption[3].valueCoding.display.extension[0].url = $hl7-translation
* item[9].answerOption[3].valueCoding.display.extension[0].extension[0].url = "lang"
* item[9].answerOption[3].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[9].answerOption[3].valueCoding.display.extension[0].extension[1].url = "content"
* item[9].answerOption[3].valueCoding.display.extension[0].extension[1].valueString = "Nearly every day"
* item[9].answerOption[3].extension.url = $hl7-ordinal-value
* item[9].answerOption[3].extension.valueDecimal = 3

* item[11].linkId = "PHQ-9.10"
* item[11].type = #choice
* item[11].prefix = "10"
* item[11].code = $LNC#69722-7
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

* item[10].linkId = "PHQ-9.Score"
* item[10].type = #quantity
* item[10].prefix = "Auswertung"
* item[10].code = $LNC#44261-6 "Patient Health Questionnaire 9 item (PHQ-9) total score [Reported]"
* item[10].text = "Gesamtwert"
* item[10].text.extension[0].url = $hl7-translation
* item[10].text.extension[0].extension[0].url = "lang"
* item[10].text.extension[0].extension[0].valueCode = #en
* item[10].text.extension[0].extension[1].url = "content"
* item[10].text.extension[0].extension[1].valueString = "Total Score"
* item[10].text.extension[1].url = $sdc-questionnaire-observation-extract
* item[10].text.extension[1].valueBoolean = true
* item[10].text.extension[2].url = $hl7-questionnaire-unit
* item[10].text.extension[2].valueCoding.system = $UCUM
* item[10].text.extension[2].valueCoding.code = #{score}
* item[10].text.extension[3].url = $sdc-questionnaire-observation-extract-category
* item[10].text.extension[3].valueCodeableConcept.coding.system = $hl7-observation-category
* item[10].text.extension[3].valueCodeableConcept.coding.code = #survey
