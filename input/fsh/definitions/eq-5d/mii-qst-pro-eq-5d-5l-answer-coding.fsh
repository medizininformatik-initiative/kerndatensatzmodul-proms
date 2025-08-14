Instance: mii-qst-pro-euroqol-eq5d5l-answer-coding
InstanceOf: mii-pr-pro-questionnaire
Title: "MII QST PRO EQ-5D-5L"
Description: "MII QST PRO EuroQol Five Dimension Five Level (EQ-5D-5L) Questionnaire"
Usage: #definition

* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-euroqol-eq5d5l-answer-coding"
* status = #active
* experimental = true
* language = #de
* code[+] = $SCT#73041000052103 "EuroQoL five dimension five level questionnaire (assessment scale)"
* code[mii] = $mii-cs-pro-questionnaire-catalogue#euroqol-eq5d5l "EuroQol EQ-5D-5L Questionnaire"
* version = "0.1.0"
// TODO: date, publisher, copyright, etc.
* derivedFrom = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-euroqol-eq5d5l"

* contained[0] = MII_CS_PRO_EQ_5D_ValueSet // for testing

* extension[capabilities].extension[displayable].valueBoolean = true
* extension[capabilities].extension[collectable].valueBoolean = true
* extension[capabilities].extension[calculatable].valueBoolean = true
* extension[capabilities].extension[extractable].valueBoolean = true
* extension[capabilities].extension[domainAligned].valueBoolean = true

* item[+].linkId = "euroqol-eq5d5l-coded-instruction"
* item[=].type = #display
* item[=].text = "Bitte kreuzen Sie unter jeder Überschrift DAS Kästchen an, das Ihre Gesundheit HEUTE am besten beschreibt."
* item[=].text.extension[+].url = $hl7-translation
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #en
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "Under each heading, please tick the ONE box that best describes your health TODAY."

* item[+].linkId = "euroqol-eq5d5l-coded-q01-MO"
* item[=].type = #choice
* item[=].text = "BEWEGLICHKEIT / MOBILITÄT"
* item[=].text.extension[+].url = $hl7-translation
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #en
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "MOBILITY"
* item[=].answerOption[+].valueCoding = $mii-cs-pro-eq-5d-value-set#MO-1
* item[=].answerOption[=].extension.url = $hl7-questionnaire-option-prefix
* item[=].answerOption[=].extension.valueString = "1"
* item[=].answerOption[+].valueCoding = $mii-cs-pro-eq-5d-value-set#MO-2
* item[=].answerOption[=].extension.url = $hl7-questionnaire-option-prefix
* item[=].answerOption[=].extension.valueString = "2"
* item[=].answerOption[+].valueCoding = $mii-cs-pro-eq-5d-value-set#MO-3
* item[=].answerOption[=].extension.url = $hl7-questionnaire-option-prefix
* item[=].answerOption[=].extension.valueString = "3"
* item[=].answerOption[+].valueCoding = $mii-cs-pro-eq-5d-value-set#MO-4
* item[=].answerOption[=].extension.url = $hl7-questionnaire-option-prefix
* item[=].answerOption[=].extension.valueString = "4"
* item[=].answerOption[+].valueCoding = $mii-cs-pro-eq-5d-value-set#MO-5
* item[=].answerOption[=].extension.url = $hl7-questionnaire-option-prefix
* item[=].answerOption[=].extension.valueString = "5"
* item[=].required = true
* item[=].repeats = false

* item[+].linkId = "euroqol-eq5d5l-coded-q02-SC"
* item[=].type = #choice
* item[=].text = "FÜR SICH SELBST SORGEN"
* item[=].text.extension[+].url = $hl7-translation
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #en
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "SELF-CARE"
* item[=].answerOption[+].valueCoding = $mii-cs-pro-eq-5d-value-set#SC-1
* item[=].answerOption[=].extension.url = $hl7-questionnaire-option-prefix
* item[=].answerOption[=].extension.valueString = "1"
* item[=].answerOption[+].valueCoding = $mii-cs-pro-eq-5d-value-set#SC-2
* item[=].answerOption[=].extension.url = $hl7-questionnaire-option-prefix
* item[=].answerOption[=].extension.valueString = "2"
* item[=].answerOption[+].valueCoding = $mii-cs-pro-eq-5d-value-set#SC-3
* item[=].answerOption[=].extension.url = $hl7-questionnaire-option-prefix
* item[=].answerOption[=].extension.valueString = "3"
* item[=].answerOption[+].valueCoding = $mii-cs-pro-eq-5d-value-set#SC-4
* item[=].answerOption[=].extension.url = $hl7-questionnaire-option-prefix
* item[=].answerOption[=].extension.valueString = "4"
* item[=].answerOption[+].valueCoding = $mii-cs-pro-eq-5d-value-set#SC-5
* item[=].answerOption[=].extension.url = $hl7-questionnaire-option-prefix
* item[=].answerOption[=].extension.valueString = "5"
* item[=].required = true
* item[=].repeats = false

* item[+].linkId = "euroqol-eq5d5l-coded-q03-UA"
* item[=].type = #choice
* item[=].text = "ALLTÄGLICHE TÄTIGKEITEN (z.B. Arbeit, Studium, Hausarbeit, Familien- / Freizeitaktivitäten)"
* item[=].text.extension[+].url = $hl7-translation
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #en
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "USUAL ACTIVITIES (e.g. work, study, housework, family or leisure activities)"
* item[=].answerOption[+].valueCoding = $mii-cs-pro-eq-5d-value-set#UA-1
* item[=].answerOption[=].extension.url = $hl7-questionnaire-option-prefix
* item[=].answerOption[=].extension.valueString = "1"
* item[=].answerOption[+].valueCoding = $mii-cs-pro-eq-5d-value-set#UA-2
* item[=].answerOption[=].extension.url = $hl7-questionnaire-option-prefix
* item[=].answerOption[=].extension.valueString = "2"
* item[=].answerOption[+].valueCoding = $mii-cs-pro-eq-5d-value-set#UA-3
* item[=].answerOption[=].extension.url = $hl7-questionnaire-option-prefix
* item[=].answerOption[=].extension.valueString = "3"
* item[=].answerOption[+].valueCoding = $mii-cs-pro-eq-5d-value-set#UA-4
* item[=].answerOption[=].extension.url = $hl7-questionnaire-option-prefix
* item[=].answerOption[=].extension.valueString = "4"
* item[=].answerOption[+].valueCoding = $mii-cs-pro-eq-5d-value-set#UA-5
* item[=].answerOption[=].extension.url = $hl7-questionnaire-option-prefix
* item[=].answerOption[=].extension.valueString = "5"
* item[=].required = true
* item[=].repeats = false

* item[+].linkId = "euroqol-eq5d5l-coded-q04-PD"
* item[=].type = #choice
* item[=].text = "SCHMERZEN / KÖRPERLICHEN BESCHWERDEN"
* item[=].text.extension[+].url = $hl7-translation
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #en
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "PAIN / DISCOMFORT"
* item[=].answerOption[+].valueCoding = $mii-cs-pro-eq-5d-value-set#PD-1
* item[=].answerOption[=].extension.url = $hl7-questionnaire-option-prefix
* item[=].answerOption[=].extension.valueString = "1"
* item[=].answerOption[+].valueCoding = $mii-cs-pro-eq-5d-value-set#PD-2
* item[=].answerOption[=].extension.url = $hl7-questionnaire-option-prefix
* item[=].answerOption[=].extension.valueString = "2"
* item[=].answerOption[+].valueCoding = $mii-cs-pro-eq-5d-value-set#PD-3
* item[=].answerOption[=].extension.url = $hl7-questionnaire-option-prefix
* item[=].answerOption[=].extension.valueString = "3"
* item[=].answerOption[+].valueCoding = $mii-cs-pro-eq-5d-value-set#PD-4
* item[=].answerOption[=].extension.url = $hl7-questionnaire-option-prefix
* item[=].answerOption[=].extension.valueString = "4"
* item[=].answerOption[+].valueCoding = $mii-cs-pro-eq-5d-value-set#PD-5
* item[=].answerOption[=].extension.url = $hl7-questionnaire-option-prefix
* item[=].answerOption[=].extension.valueString = "5"
* item[=].required = true
* item[=].repeats = false

* item[+].linkId = "euroqol-eq5d5l-coded-q05-AD"
* item[=].type = #choice
* item[=].text = "ANGST / NIEDERGESCHLAGENHEIT"
* item[=].text.extension[+].url = $hl7-translation
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #en
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "ANXIETY / DEPRESSION"
* item[=].answerOption[+].valueCoding = $mii-cs-pro-eq-5d-value-set#AD-1
* item[=].answerOption[=].extension.url = $hl7-questionnaire-option-prefix
* item[=].answerOption[=].extension.valueString = "1"
* item[=].answerOption[+].valueCoding = $mii-cs-pro-eq-5d-value-set#AD-2
* item[=].answerOption[=].extension.url = $hl7-questionnaire-option-prefix
* item[=].answerOption[=].extension.valueString = "2"
* item[=].answerOption[+].valueCoding = $mii-cs-pro-eq-5d-value-set#AD-3
* item[=].answerOption[=].extension.url = $hl7-questionnaire-option-prefix
* item[=].answerOption[=].extension.valueString = "3"
* item[=].answerOption[+].valueCoding = $mii-cs-pro-eq-5d-value-set#AD-4
* item[=].answerOption[=].extension.url = $hl7-questionnaire-option-prefix
* item[=].answerOption[=].extension.valueString = "4"
* item[=].answerOption[+].valueCoding = $mii-cs-pro-eq-5d-value-set#AD-5
* item[=].answerOption[=].extension.url = $hl7-questionnaire-option-prefix
* item[=].answerOption[=].extension.valueString = "5"
* item[=].required = true
* item[=].repeats = false

// Individueller Gesundheitsindikator (Konkatenation der Antwortwerte)
* item[+].linkId = "euroqol-eq5d5l-coded-score-profile"
* item[=].type = #decimal
* item[=].code = $SCT#405157008 "Personal health status"
* item[=].text = "Gesundheitszustand"
* item[=].text.extension[+].url = $hl7-translation
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #en
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "Health State"
* item[=].readOnly = true

// Populationsspezifischer Gesundheitsindikator (länderspezifisches EQ-5D Value Set)
//* item[+].linkId = "euroqol-eq5d5l-coded-score-index"
//* item[=].type = #decimal
//* item[=].code = $SCT#406222005 "Population health status"
//* item[=].text = "Indexwert"
//* item[=].text.extension[+].url = $hl7-translation
//* item[=].text.extension[=].extension[+].url = "lang"
//* item[=].text.extension[=].extension[=].valueCode = #en
//* item[=].text.extension[=].extension[+].url = "content"
//* item[=].text.extension[=].extension[=].valueString = "Index Value (EQ Value)"
//* item[=].extension[+].url = $hl7-min-value
//* item[=].extension[=].valueString = "0"
//* item[=].extension[+].url = $hl7-max-value
//* item[=].extension[=].valueString = "1"
//* item[=].extension[+].url = $sdc-questionnaire-observation-extract
//* item[=].extension[=].valueBoolean = true
//* item[=].extension[+].url = $hl7-questionnaire-unit
//* item[=].extension[=].valueCoding.system = $UCUM
//* item[=].extension[=].valueCoding.code = #{score}
//* item[=].extension[+].url = $sdc-questionnaire-observation-extract-category
//* item[=].extension[=].valueCodeableConcept.coding.system = $hl7-observation-category
//* item[=].extension[=].valueCodeableConcept.coding.code = #survey
//* item[=].readOnly = true

* item[+].linkId = "euroqol-eq5d5l-coded-vas-instruction"
* item[=].type = #display
* item[=].text = "
    Wir wollen herausfinden, wie gut oder schlecht Ihre Gesundheit HEUTE ist.\n
    Die Skala is mit Zahlen von 0 bis 100 versehen.\n
    100 ist die beste Gesundheit, die Sie sich vorstellen können.\n
    0 (Null) ist die schlechteste Gesundheit, die Sie sich vorstellen können.\n
    Bitte kreuzen Sie den Punkt auf der Skala an, der Ihre Gesundheit HEUTE am besten beschreibt.\n
    Jetzt tragen Sie bitte die Zahl, die Sie auf der Skala angekreuzt haben, in das Kästchen unten ein."
* item[=].text.extension[+].url = $hl7-translation
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #en
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "
    We would like to know how good or bad your health is TODAY.\n
    This scale is numbered from 0 to 100.\n
    100 means the best health you can imagine.\n
    0 means the worst health you can imagine.\n
    Please mark an X on the scale to indicate how your health is TODAY.\n
    Now, write the number you marked on the scale in the box below."

// Subjektive Beurteilung des Gesundheitszustands
* item[+].linkId = "euroqol-eq5d5l-coded-vas"
* item[=].type = #integer
* item[=].code = $SCT#446515003 "Health assessment questionnaire score"
* item[=].text = "IHRE GESUNDHEIT HEUTE"
* item[=].text.extension[+].url = $hl7-translation
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #en
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "YOUR HEALTH TODAY"
* item[=].extension[+].url = $hl7-min-value
* item[=].extension[=].valueInteger = 0
* item[=].extension[+].url = $hl7-max-value
* item[=].extension[=].valueInteger = 100
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


// TODO: SCoring auf FHIR Path anpassen
// ObsDef und Obs Profil EQ-5D-Index
// ObsDef und Obs Profil für EQ-5D-5L VAS
// Profil für EQ-5D-5L QuestionnaireResponse
// generell IDs glattziehen 