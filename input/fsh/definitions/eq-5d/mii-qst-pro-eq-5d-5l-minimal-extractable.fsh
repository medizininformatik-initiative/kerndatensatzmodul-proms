Instance: mii-qst-pro-eq-5d-5l-minimal-extractable
InstanceOf: mii-pr-pro-questionnaire
Title: "MII QST PRO EQ-5D-5L"
Description: "MII QST PRO EuroQol Five Dimension Five Level (EQ-5D-5L) Questionnaire"
Usage: #definition

* url = $mii-qst-pro-euroqol-eq5d5l
* status = #active
* experimental = true
* language = #de
* code[snomed] = $SCT#73041000052103 "EuroQoL five dimension five level questionnaire (assessment scale)"
* code[mii] = $mii-cs-pro-questionnaire-catalogue#euroqol-eq5d5l "EuroQol EQ-5D-5L Questionnaire"
* version = "0.1.0"
// TODO: date, publisher, copyright, etc.


* item[+].linkId = "euroqol-eq5d5l-q01-MO"
* item[=].type = #choice
* item[=].text = "BEWEGLICHKEIT / MOBILITÄT"
* item[=].answerOption[+].valueString = "Ich habe keine Probleme herumzugehen"
* item[=].answerOption[=].extension.url = $hl7-ordinal-value
* item[=].answerOption[=].extension.valueDecimal = 1
* item[=].answerOption[+].valueString = "Ich habe leichte Probleme herumzugehen"
* item[=].answerOption[=].extension.url = $hl7-ordinal-value
* item[=].answerOption[=].extension.valueDecimal = 2
* item[=].answerOption[+].valueString = "Ich habe mäßige Probleme herumzugehen"
* item[=].answerOption[=].extension.url = $hl7-ordinal-value
* item[=].answerOption[=].extension.valueDecimal = 3
* item[=].answerOption[+].valueString = "Ich habe große Probleme herumzugehen"
* item[=].answerOption[=].extension.url = $hl7-ordinal-value
* item[=].answerOption[=].extension.valueDecimal = 4
* item[=].answerOption[+].valueString = "Ich bin nicht in der Lage herumzugehen"
* item[=].answerOption[=].extension.url = $hl7-ordinal-value
* item[=].answerOption[=].extension.valueDecimal = 5


* item[+].linkId = "euroqol-eq5d5l-q02-SC"
* item[=].type = #choice
* item[=].text = "FÜR SICH SELBST SORGEN"
* item[=].answerOption[+].valueString = "Ich habe keine Probleme, mich selbst zu waschen oder anzuziehen"
* item[=].answerOption[=].extension.url = $hl7-ordinal-value
* item[=].answerOption[=].extension.valueDecimal = 1
* item[=].answerOption[+].valueString = "Ich habe leichte Probleme, mich selbst zu waschen oder anzuziehen"
* item[=].answerOption[=].extension.url = $hl7-ordinal-value
* item[=].answerOption[=].extension.valueDecimal = 2
* item[=].answerOption[+].valueString = "Ich habe mäßige Probleme, mich selbst zu waschen oder anzuziehen"
* item[=].answerOption[=].extension.url = $hl7-ordinal-value
* item[=].answerOption[=].extension.valueDecimal = 3
* item[=].answerOption[+].valueString = "Ich habe große Probleme, mich selbst zu waschen oder anzuziehen"
* item[=].answerOption[=].extension.url = $hl7-ordinal-value
* item[=].answerOption[=].extension.valueDecimal = 4
* item[=].answerOption[+].valueString = "Ich bin nicht in der Lage, mich selbst zu waschen oder anzuziehen"
* item[=].answerOption[=].extension.url = $hl7-ordinal-value
* item[=].answerOption[=].extension.valueDecimal = 5

* item[+].linkId = "euroqol-eq5d5l-q03-UA"
* item[=].type = #choice
* item[=].text = "ALLTÄGLICHE TÄTIGKEITEN (z.B. Arbeit, Studium, Hausarbeit, Familien- / Freizeitaktivitäten)"
* item[=].text.extension[+].url = $hl7-translation
* item[=].answerOption[+].valueString = "Ich habe keine Probleme, meinen alltäglichen Tätigkeiten nachzugehen"
* item[=].answerOption[=].extension.url = $hl7-ordinal-value
* item[=].answerOption[=].extension.valueDecimal = 1
* item[=].answerOption[+].valueString = "Ich habe leichte Probleme, meinen alltäglichen Tätigkeiten nachzugehen"
* item[=].answerOption[=].extension.url = $hl7-ordinal-value
* item[=].answerOption[=].extension.valueDecimal = 2
* item[=].answerOption[+].valueString = "Ich habe mäßige Probleme, meinen alltäglichen Tätigkeiten nachzugehen"
* item[=].answerOption[=].extension.url = $hl7-ordinal-value
* item[=].answerOption[=].extension.valueDecimal = 3
* item[=].answerOption[+].valueString = "Ich habe große Probleme, meinen alltäglichen Tätigkeiten nachzugehen"
* item[=].answerOption[=].extension.url = $hl7-ordinal-value
* item[=].answerOption[=].extension.valueDecimal = 4
* item[=].answerOption[+].valueString = "Ich bin nicht in der Lage, meinen alltäglichen Tätigkeiten nachzugehen"
* item[=].answerOption[=].extension.url = $hl7-ordinal-value
* item[=].answerOption[=].extension.valueDecimal = 5


* item[+].linkId = "euroqol-eq5d5l-q04-PD"
* item[=].type = #choice
* item[=].text = "SCHMERZEN / KÖRPERLICHEN BESCHWERDEN"
* item[=].answerOption[+].valueString = "Ich habe keine Schmerzen oder Beschwerden"
* item[=].answerOption[=].extension.url = $hl7-ordinal-value
* item[=].answerOption[=].extension.valueDecimal = 1
* item[=].answerOption[+].valueString = "Ich habe leichte Schmerzen oder Beschwerden"
* item[=].answerOption[=].extension.url = $hl7-ordinal-value
* item[=].answerOption[=].extension.valueDecimal = 2
* item[=].answerOption[+].valueString = "Ich habe mäßige Schmerzen oder Beschwerden"
* item[=].answerOption[=].extension.url = $hl7-ordinal-value
* item[=].answerOption[=].extension.valueDecimal = 3
* item[=].answerOption[+].valueString = "Ich habe starke Schmerzen oder Beschwerden"
* item[=].answerOption[=].extension.url = $hl7-ordinal-value
* item[=].answerOption[=].extension.valueDecimal = 4
* item[=].answerOption[+].valueString = "Ich habe extreme Schmerzen oder Beschwerden"
* item[=].answerOption[=].extension.url = $hl7-ordinal-value
* item[=].answerOption[=].extension.valueDecimal = 5

* item[+].linkId = "euroqol-eq5d5l-q05-AD"
* item[=].type = #choice
* item[=].text = "ANGST / NIEDERGESCHLAGENHEIT"
* item[=].text.extension[+].url = $hl7-translation
* item[=].answerOption[+].valueString = "Ich bin nicht ängstlich oder deprimiert"
* item[=].answerOption[=].extension.url = $hl7-ordinal-value
* item[=].answerOption[=].extension.valueDecimal = 1
* item[=].answerOption[+].valueString = "Ich bin ein wenig ängstlich oder deprimiert"
* item[=].answerOption[=].extension.url = $hl7-ordinal-value
* item[=].answerOption[=].extension.valueDecimal = 2
* item[=].answerOption[+].valueString = "Ich bin mäßig ängstlich oder deprimiert"
* item[=].answerOption[=].extension.url = $hl7-ordinal-value
* item[=].answerOption[=].extension.valueDecimal = 3
* item[=].answerOption[+].valueString = "Ich bin sehr ängstlich oder deprimiert"
* item[=].answerOption[=].extension.url = $hl7-ordinal-value
* item[=].answerOption[=].extension.valueDecimal = 4
* item[=].answerOption[+].valueString = "Ich bin extrem ängstlich oder deprimiert"
* item[=].answerOption[=].extension.url = $hl7-ordinal-value
* item[=].answerOption[=].extension.valueDecimal = 5


// Individueller Gesundheitsindikator (Konkatenation der Antwortwerte)
* item[+].linkId = "euroqol-eq5d5l-score-profile"
* item[=].type = #string
* item[=].code = $SCT#405157008 "Personal health status"
* item[=].text = "Gesundheitszustand"
* item[=].extension[+].url = $sdc-questionnaire-observation-extract
* item[=].extension[=].valueBoolean = true
* item[=].extension[+].url = $sdc-questionnaire-observation-extract-category
* item[=].extension[=].valueCodeableConcept.coding.system = $hl7-observation-category
* item[=].extension[=].valueCodeableConcept.coding.code = #survey
* item[=].extension[+].url = $sdc-questionnaire-calculated-expression
* item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].extension[=].valueExpression.expression = "%resource.repeat(item).where(type = 'choice').item.answer.value.ordinal().aggregate($total & $this, '')"

// Populationsspezifischer Gesundheitsindikator (länderspezifisches EQ-5D Value Set)
* item[+].linkId = "euroqol-eq5d5l-score-index"
* item[=].type = #decimal
* item[=].code = $SCT#406222005 "Population health status"
* item[=].text = "Indexwert"
* item[=].extension[+].url = $hl7-min-value
* item[=].extension[=].valueDecimal = -0.661
* item[=].extension[+].url = $hl7-max-value
* item[=].extension[=].valueDecimal = 1
* item[=].extension[+].url = $sdc-questionnaire-observation-extract
* item[=].extension[=].valueBoolean = true
* item[=].extension[+].url = $hl7-questionnaire-unit
* item[=].extension[=].valueCoding.system = $UCUM
* item[=].extension[=].valueCoding.code = #{score}
* item[=].extension[+].url = $sdc-questionnaire-observation-extract-category
* item[=].extension[=].valueCodeableConcept.coding.system = $hl7-observation-category
* item[=].extension[=].valueCodeableConcept.coding.code = #survey

// Subjektive Beurteilung des Gesundheitszustands
* item[+].linkId = "euroqol-eq5d5l-q06-vas"
* item[=].type = #integer
* item[=].code = $SCT#446515003 "Health assessment questionnaire score"
* item[=].text = "IHRE GESUNDHEIT HEUTE"
* item[=].extension[+].url = $hl7-min-value
* item[=].extension[=].valueInteger = 0
* item[=].extension[+].url = $hl7-max-value
* item[=].extension[=].valueInteger = 100
* item[=].extension[+].url = $sdc-questionnaire-observation-extract
* item[=].extension[=].valueBoolean = true
* item[=].extension[+].url = $hl7-questionnaire-unit
* item[=].extension[=].valueCoding.system = $UCUM
* item[=].extension[=].valueCoding.code = #{score}
* item[=].extension[+].url = $sdc-questionnaire-observation-extract-category
* item[=].extension[=].valueCodeableConcept.coding.system = $hl7-observation-category
* item[=].extension[=].valueCodeableConcept.coding.code = #survey


//@Thimo TODO FHIRPath für Score