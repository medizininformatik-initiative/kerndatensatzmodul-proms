Instance: mii-qst-pro-eq-5d-5l
InstanceOf: SDCQuestionnaireCommon
Title: "MII QST PRO EQ-5D-5L"
Description: "MII QST PRO EuroQol Five Dimension Five Level (EQ-5D-5L) Questionnaire"
Usage: #definition

* extention[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* extention[=].valueUrl = "https://r4.ontoserver.csiro.au/fhir"
* url = $mii-qst-pro-eq-5d-5l
* status = #draft
* experimental = true
* language = #de
* code = $SCT#73041000052103 "EuroQoL five dimension five level questionnaire"
   
// TODO: date, publisher, copyright, etc.

* item[+].linkId = "EQ-5D-5L.IS"
* item[=].type = #display
* item[=].text = "Bitte kreuzen Sie unter jeder Überschrift DAS Kästchen an, das Ihre Gesundheit HEUTE am besten beschreibt."
* item[=].text.extension[+].url = $hl7-translation
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #en
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "Under each heading, please tick the ONE box that best describes your health TODAY."

* item[+].linkId = "EQ-5D-5L.MO"
* item[=].type = #choice
* item[=].text = "BEWEGLICHKEIT / MOBILITÄT"
* item[=].answerValueSet.extension[+].url = "binding-parameter"
* item[=].answerValueSet.extension[=].extension[+].url = "name"
* item[=].answerValueSet.extension[=].extension[=].valueString = "parameter-language"
* item[=].answerValueSet.extension[=].extension[+].url = "expression"
* item[=].answerValueSet.extension[=].extension[=].valueExpression.language = "text/fhirpath"
* item[=].answerValueSet.extension[=].extension[=].valueExpression.expression = "eq-5d-vs-coefficient-de-de"


// Populationsspezifischer Gesundheitsindikator (länderspezifisches EQ-5D Value Set)
* item[+].linkId = "EQ-5D-5L.IV"
* item[=].type = #decimal
* item[=].code = $SCT#406222005 "Population health status"
* item[=].text = "Indexwert"
* item[=].text.extension[+].url = $hl7-translation
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #en
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "Index Value (EQ Value)"
* item[=].text.extension[+].url = $hl7-min-value
* item[=].text.extension[=].valueDecimal = 0
* item[=].text.extension[+].url = $hl7-max-value
* item[=].text.extension[=].valueDecimal = 1
* item[=].extension[+].url = $sdc-questionnaire-observation-extract
* item[=].extension[=].valueBoolean = true
* item[=].extension[+].url = $hl7-questionnaire-unit
* item[=].extension[=].valueCoding.system = $UCUM
* item[=].extension[=].valueCoding.code = #{score}
* item[=].extension[+].url = $sdc-questionnaire-observation-extract-category
* item[=].extension[=].valueCodeableConcept.coding.system = $hl7-observation-category
* item[=].extension[=].valueCodeableConcept.coding.code = #survey
* item[=].readOnly = true


// Subjektive Beurteilung des Gesundheitszustands
* item[+].linkId = "EQ-VAS.HT"
* item[=].type = #integer
* item[=].code = $SCT#446515003 "Health assessment questionnaire score"
* item[=].text = "IHRE GESUNDHEIT HEUTE"
* item[=].text.extension[+].url = $hl7-translation
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #en
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "YOUR HEALTH TODAY"
* item[=].text.extension[+].url = $hl7-min-value
* item[=].text.extension[=].valueInteger = 0
* item[=].text.extension[+].url = $hl7-max-value
* item[=].text.extension[=].valueInteger = 100
* item[=].initial.valueInteger = 999
* item[=].extension[+].url = $sdc-questionnaire-observation-extract
* item[=].extension[=].valueBoolean = true
* item[=].extension[+].url = $hl7-questionnaire-unit
* item[=].extension[=].valueCoding.system = $UCUM
* item[=].extension[=].valueCoding.code = #{score}
* item[=].extension[+].url = $sdc-questionnaire-observation-extract-category
* item[=].extension[=].valueCodeableConcept.coding.system = $hl7-observation-category
* item[=].extension[=].valueCodeableConcept.coding.code = #survey
* item[=].required = true
* item[=].repeats = false