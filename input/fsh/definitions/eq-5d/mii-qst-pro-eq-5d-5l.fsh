Instance: mii-qst-pro-eq-5d-5l
InstanceOf: mii-pr-pro-questionnaire
Title: "MII QST PRO EQ-5D-5L"
Description: "MII QST PRO EuroQol Five Dimension Five Level (EQ-5D-5L) Questionnaire"
Usage: #definition

* url = $mii-qst-pro-eq-5d-5l
* status = #active
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
* item[=].text.extension[+].url = $hl7-translation
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #en
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "MOBILITY"
* item[=].answerOption[+].valueString = "Ich habe keine Probleme herumzugehen"
* item[=].answerOption[=].valueString.extension[+].url = $hl7-translation
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "lang"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueCode = #en
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "content"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueString = "I have no problems in walking about"
* item[=].answerOption[=].extension.url = $hl7-ordinal-value
* item[=].answerOption[=].extension.valueDecimal = 1
* item[=].answerOption[+].valueString = "Ich habe leichte Probleme herumzugehen"
* item[=].answerOption[=].valueString.extension[+].url = $hl7-translation
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "lang"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueCode = #en
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "content"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueString = "I have slight problems in walking about"
* item[=].answerOption[=].extension.url = $hl7-ordinal-value
* item[=].answerOption[=].extension.valueDecimal = 2
* item[=].answerOption[+].valueString = "Ich habe mäßige Probleme herumzugehen"
* item[=].answerOption[=].valueString.extension[+].url = $hl7-translation
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "lang"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueCode = #en
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "content"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueString = "I have moderate problems in walking about"
* item[=].answerOption[=].extension.url = $hl7-ordinal-value
* item[=].answerOption[=].extension.valueDecimal = 3
* item[=].answerOption[+].valueString = "Ich habe große Probleme herumzugehen"
* item[=].answerOption[=].valueString.extension[+].url = $hl7-translation
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "lang"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueCode = #en
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "content"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueString = "I have severe problems in walking about"
* item[=].answerOption[=].extension.url = $hl7-ordinal-value
* item[=].answerOption[=].extension.valueDecimal = 4
* item[=].answerOption[+].valueString = "Ich bin nicht in der Lage herumzugehen"
* item[=].answerOption[=].valueString.extension[+].url = $hl7-translation
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "lang"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueCode = #en
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "content"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueString = "I am unable to walk about"
* item[=].answerOption[=].extension.url = $hl7-ordinal-value
* item[=].answerOption[=].extension.valueDecimal = 5
* item[=].answerOption[+].valueString = "Fehlender Wert"
* item[=].answerOption[=].valueString.extension[+].url = $hl7-translation
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "lang"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueCode = #en
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "content"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueString = "Missing value"
* item[=].answerOption[=].extension[+].url = $hl7-ordinal-value
* item[=].answerOption[=].extension[=].valueDecimal = 9
* item[=].answerOption[=].extension[+].url = $hl7-questionnaire-hidden
* item[=].answerOption[=].extension[=].valueBoolean = true
* item[=].initial[+].valueString = "Fehlender Wert"
* item[=].initial[=].valueString.extension[+].url = $hl7-translation
* item[=].initial[=].valueString.extension[=].extension[+].url = "lang"
* item[=].initial[=].valueString.extension[=].extension[=].valueCode = #en
* item[=].initial[=].valueString.extension[=].extension[+].url = "content"
* item[=].initial[=].valueString.extension[=].extension[=].valueString = "Missing value"
* item[=].required = true
* item[=].repeats = false

* item[+].linkId = "EQ-5D-5L.SC"
* item[=].type = #choice
* item[=].text = "FÜR SICH SELBST SORGEN"
* item[=].text.extension[+].url = $hl7-translation
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #en
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "SELF-CARE"
* item[=].answerOption[+].valueString = "Ich habe keine Probleme, mich selbst zu waschen oder anzuziehen"
* item[=].answerOption[=].valueString.extension[+].url = $hl7-translation
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "lang"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueCode = #en
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "content"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueString = "I have no problems washing or dressing myself"
* item[=].answerOption[=].extension.url = $hl7-ordinal-value
* item[=].answerOption[=].extension.valueDecimal = 1
* item[=].answerOption[+].valueString = "Ich habe leichte Probleme, mich selbst zu waschen oder anzuziehen"
* item[=].answerOption[=].valueString.extension[+].url = $hl7-translation
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "lang"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueCode = #en
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "content"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueString = "I have slight problems washing or dressing myself"
* item[=].answerOption[=].extension.url = $hl7-ordinal-value
* item[=].answerOption[=].extension.valueDecimal = 2
* item[=].answerOption[+].valueString = "Ich habe mäßige Probleme, mich selbst zu waschen oder anzuziehen"
* item[=].answerOption[=].valueString.extension[+].url = $hl7-translation
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "lang"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueCode = #en
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "content"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueString = "I have moderate problems washing or dressing myself"
* item[=].answerOption[=].extension.url = $hl7-ordinal-value
* item[=].answerOption[=].extension.valueDecimal = 3
* item[=].answerOption[+].valueString = "Ich habe große Probleme, mich selbst zu waschen oder anzuziehen"
* item[=].answerOption[=].valueString.extension[+].url = $hl7-translation
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "lang"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueCode = #en
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "content"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueString = "I have severe problems washing or dressing myself"
* item[=].answerOption[=].extension.url = $hl7-ordinal-value
* item[=].answerOption[=].extension.valueDecimal = 4
* item[=].answerOption[+].valueString = "Ich bin nicht in der Lage, mich selbst zu waschen oder anzuziehen"
* item[=].answerOption[=].valueString.extension[+].url = $hl7-translation
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "lang"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueCode = #en
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "content"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueString = "I am unable to wash or dress myself"
* item[=].answerOption[=].extension.url = $hl7-ordinal-value
* item[=].answerOption[=].extension.valueDecimal = 5
* item[=].answerOption[+].valueString = "Fehlender Wert"
* item[=].answerOption[=].valueString.extension[+].url = $hl7-translation
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "lang"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueCode = #en
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "content"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueString = "Missing value"
* item[=].answerOption[=].extension[+].url = $hl7-ordinal-value
* item[=].answerOption[=].extension[=].valueDecimal = 9
* item[=].answerOption[=].extension[+].url = $hl7-questionnaire-hidden
* item[=].answerOption[=].extension[=].valueBoolean = true
* item[=].initial[+].valueString = "Fehlender Wert"
* item[=].initial[=].valueString.extension[+].url = $hl7-translation
* item[=].initial[=].valueString.extension[=].extension[+].url = "lang"
* item[=].initial[=].valueString.extension[=].extension[=].valueCode = #en
* item[=].initial[=].valueString.extension[=].extension[+].url = "content"
* item[=].initial[=].valueString.extension[=].extension[=].valueString = "Missing value"
* item[=].required = true
* item[=].repeats = false

* item[+].linkId = "EQ-5D-5L.UA"
* item[=].type = #choice
* item[=].text = "ALLTÄGLICHE TÄTIGKEITEN (z.B. Arbeit, Studium, Hausarbeit, Familien- / Freizeitaktivitäten)"
* item[=].text.extension[+].url = $hl7-translation
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #en
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "USUAL ACTIVITIES (e.g. work, study, housework, family or leisure activities)"
* item[=].answerOption[+].valueString = "Ich habe keine Probleme, meinen alltäglichen Tätigkeiten nachzugehen"
* item[=].answerOption[=].valueString.extension[+].url = $hl7-translation
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "lang"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueCode = #en
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "content"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueString = "I have no problems doing my usual activities"
* item[=].answerOption[=].extension.url = $hl7-ordinal-value
* item[=].answerOption[=].extension.valueDecimal = 1
* item[=].answerOption[+].valueString = "Ich habe leichte Probleme, meinen alltäglichen Tätigkeiten nachzugehen"
* item[=].answerOption[=].valueString.extension[+].url = $hl7-translation
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "lang"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueCode = #en
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "content"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueString = "I have slight problems doing my usual activities"
* item[=].answerOption[=].extension.url = $hl7-ordinal-value
* item[=].answerOption[=].extension.valueDecimal = 2
* item[=].answerOption[+].valueString = "Ich habe mäßige Probleme, meinen alltäglichen Tätigkeiten nachzugehen"
* item[=].answerOption[=].valueString.extension[+].url = $hl7-translation
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "lang"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueCode = #en
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "content"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueString = "I have moderate problems doing my usual activities"
* item[=].answerOption[=].extension.url = $hl7-ordinal-value
* item[=].answerOption[=].extension.valueDecimal = 3
* item[=].answerOption[+].valueString = "Ich habe große Probleme, meinen alltäglichen Tätigkeiten nachzugehen"
* item[=].answerOption[=].valueString.extension[+].url = $hl7-translation
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "lang"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueCode = #en
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "content"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueString = "I have severe problems doing my usual activities"
* item[=].answerOption[=].extension.url = $hl7-ordinal-value
* item[=].answerOption[=].extension.valueDecimal = 4
* item[=].answerOption[+].valueString = "Ich bin nicht in der Lage, meinen alltäglichen Tätigkeiten nachzugehen"
* item[=].answerOption[=].valueString.extension[+].url = $hl7-translation
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "lang"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueCode = #en
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "content"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueString = "I am unable to do my usual activities"
* item[=].answerOption[=].extension.url = $hl7-ordinal-value
* item[=].answerOption[=].extension.valueDecimal = 5
* item[=].answerOption[+].valueString = "Fehlender Wert"
* item[=].answerOption[=].valueString.extension[+].url = $hl7-translation
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "lang"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueCode = #en
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "content"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueString = "Missing value"
* item[=].answerOption[=].extension[+].url = $hl7-ordinal-value
* item[=].answerOption[=].extension[=].valueDecimal = 9
* item[=].answerOption[=].extension[+].url = $hl7-questionnaire-hidden
* item[=].answerOption[=].extension[=].valueBoolean = true
* item[=].initial[+].valueString = "Fehlender Wert"
* item[=].initial[=].valueString.extension[+].url = $hl7-translation
* item[=].initial[=].valueString.extension[=].extension[+].url = "lang"
* item[=].initial[=].valueString.extension[=].extension[=].valueCode = #en
* item[=].initial[=].valueString.extension[=].extension[+].url = "content"
* item[=].initial[=].valueString.extension[=].extension[=].valueString = "Missing value"
* item[=].required = true
* item[=].repeats = false

* item[+].linkId = "EQ-5D-5L.PD"
* item[=].type = #choice
* item[=].text = "SCHMERZEN / KÖRPERLICHEN BESCHWERDEN"
* item[=].text.extension[+].url = $hl7-translation
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #en
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "PAIN / DISCOMFORT"
* item[=].answerOption[+].valueString = "Ich habe keine Schmerzen oder Beschwerden"
* item[=].answerOption[=].valueString.extension[+].url = $hl7-translation
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "lang"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueCode = #en
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "content"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueString = "I have no pain or discomfort"
* item[=].answerOption[=].extension.url = $hl7-ordinal-value
* item[=].answerOption[=].extension.valueDecimal = 1
* item[=].answerOption[+].valueString = "Ich habe leichte Schmerzen oder Beschwerden"
* item[=].answerOption[=].valueString.extension[+].url = $hl7-translation
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "lang"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueCode = #en
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "content"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueString = "I have slight pain or discomfort"
* item[=].answerOption[=].extension.url = $hl7-ordinal-value
* item[=].answerOption[=].extension.valueDecimal = 2
* item[=].answerOption[+].valueString = "Ich habe mäßige Schmerzen oder Beschwerden"
* item[=].answerOption[=].valueString.extension[+].url = $hl7-translation
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "lang"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueCode = #en
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "content"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueString = "I have moderate pain or discomfort"
* item[=].answerOption[=].extension.url = $hl7-ordinal-value
* item[=].answerOption[=].extension.valueDecimal = 3
* item[=].answerOption[+].valueString = "Ich habe starke Schmerzen oder Beschwerden"
* item[=].answerOption[=].valueString.extension[+].url = $hl7-translation
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "lang"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueCode = #en
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "content"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueString = "I have severe pain or discomfort"
* item[=].answerOption[=].extension.url = $hl7-ordinal-value
* item[=].answerOption[=].extension.valueDecimal = 4
* item[=].answerOption[+].valueString = "Ich habe extreme Schmerzen oder Beschwerden"
* item[=].answerOption[=].valueString.extension[+].url = $hl7-translation
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "lang"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueCode = #en
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "content"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueString = "I have extreme pain or discomfort"
* item[=].answerOption[=].extension.url = $hl7-ordinal-value
* item[=].answerOption[=].extension.valueDecimal = 5
* item[=].answerOption[+].valueString = "Fehlender Wert"
* item[=].answerOption[=].valueString.extension[+].url = $hl7-translation
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "lang"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueCode = #en
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "content"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueString = "Missing value"
* item[=].answerOption[=].extension[+].url = $hl7-ordinal-value
* item[=].answerOption[=].extension[=].valueDecimal = 9
* item[=].answerOption[=].extension[+].url = $hl7-questionnaire-hidden
* item[=].answerOption[=].extension[=].valueBoolean = true
* item[=].initial[+].valueString = "Fehlender Wert"
* item[=].initial[=].valueString.extension[+].url = $hl7-translation
* item[=].initial[=].valueString.extension[=].extension[+].url = "lang"
* item[=].initial[=].valueString.extension[=].extension[=].valueCode = #en
* item[=].initial[=].valueString.extension[=].extension[+].url = "content"
* item[=].initial[=].valueString.extension[=].extension[=].valueString = "Missing value"
* item[=].required = true
* item[=].repeats = false

* item[+].linkId = "EQ-5D-5L.AD"
* item[=].type = #choice
* item[=].text = "ANGST / NIEDERGESCHLAGENHEIT"
* item[=].text.extension[+].url = $hl7-translation
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #en
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "ANXIETY / DEPRESSION"
* item[=].answerOption[+].valueString = "Ich bin nicht ängstlich oder deprimiert"
* item[=].answerOption[=].valueString.extension[+].url = $hl7-translation
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "lang"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueCode = #en
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "content"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueString = "I am not anxious or depressed"
* item[=].answerOption[=].extension.url = $hl7-ordinal-value
* item[=].answerOption[=].extension.valueDecimal = 1
* item[=].answerOption[+].valueString = "Ich bin ein wenig ängstlich oder deprimiert"
* item[=].answerOption[=].valueString.extension[+].url = $hl7-translation
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "lang"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueCode = #en
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "content"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueString = "I am slightly anxious or depressed"
* item[=].answerOption[=].extension.url = $hl7-ordinal-value
* item[=].answerOption[=].extension.valueDecimal = 2
* item[=].answerOption[+].valueString = "Ich bin mäßig ängstlich oder deprimiert"
* item[=].answerOption[=].valueString.extension[+].url = $hl7-translation
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "lang"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueCode = #en
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "content"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueString = "I am moderately anxious or depressed"
* item[=].answerOption[=].extension.url = $hl7-ordinal-value
* item[=].answerOption[=].extension.valueDecimal = 3
* item[=].answerOption[+].valueString = "Ich bin sehr ängstlich oder deprimiert"
* item[=].answerOption[=].valueString.extension[+].url = $hl7-translation
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "lang"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueCode = #en
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "content"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueString = "I am severely anxious or depressed"
* item[=].answerOption[=].extension.url = $hl7-ordinal-value
* item[=].answerOption[=].extension.valueDecimal = 4
* item[=].answerOption[+].valueString = "Ich bin extrem ängstlich oder deprimiert"
* item[=].answerOption[=].valueString.extension[+].url = $hl7-translation
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "lang"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueCode = #en
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "content"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueString = "I am extremely anxious or depressed"
* item[=].answerOption[=].extension.url = $hl7-ordinal-value
* item[=].answerOption[=].extension.valueDecimal = 5
* item[=].answerOption[+].valueString = "Fehlender Wert"
* item[=].answerOption[=].valueString.extension[+].url = $hl7-translation
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "lang"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueCode = #en
* item[=].answerOption[=].valueString.extension[=].extension[+].url = "content"
* item[=].answerOption[=].valueString.extension[=].extension[=].valueString = "Missing value"
* item[=].answerOption[=].extension[+].url = $hl7-ordinal-value
* item[=].answerOption[=].extension[=].valueDecimal = 9
* item[=].answerOption[=].extension[+].url = $hl7-questionnaire-hidden
* item[=].answerOption[=].extension[=].valueBoolean = true
* item[=].initial[+].valueString = "Fehlender Wert"
* item[=].initial[=].valueString.extension[+].url = $hl7-translation
* item[=].initial[=].valueString.extension[=].extension[+].url = "lang"
* item[=].initial[=].valueString.extension[=].extension[=].valueCode = #en
* item[=].initial[=].valueString.extension[=].extension[+].url = "content"
* item[=].initial[=].valueString.extension[=].extension[=].valueString = "Missing value"
* item[=].required = true
* item[=].repeats = false

// Individueller Gesundheitsindikator (Konkatenation der Antwortwerte)
* item[+].linkId = "EQ-5D-5L.HS"
* item[=].type = #integer
* item[=].code = $SCT#405157008 "Personal health status"
* item[=].text = "Gesundheitszustand"
* item[=].text.extension[0].url = $hl7-translation
* item[=].text.extension[0].extension[0].url = "lang"
* item[=].text.extension[0].extension[0].valueCode = #en
* item[=].text.extension[0].extension[1].url = "content"
* item[=].text.extension[0].extension[1].valueString = "Health State"
* item[=].extension[+].url = $sdc-questionnaire-observation-extract
* item[=].extension[=].valueBoolean = true
* item[=].extension[+].url = $hl7-questionnaire-unit
* item[=].extension[=].valueCoding.system = $UCUM
* item[=].extension[=].valueCoding.code = #{score}
* item[=].extension[+].url = $sdc-questionnaire-observation-extract-category
* item[=].extension[=].valueCodeableConcept.coding.system = $hl7-observation-category
* item[=].extension[=].valueCodeableConcept.coding.code = #survey
* item[=].extension[+].url = $sdc-questionnaire-calculated-expression
* item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].extension[=].valueExpression.expression = "%resource.item.where(type = 'choice').answer.value.ordinal().aggregate($total & $this, '')"
* item[=].readOnly = true

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

* item[+].linkId = "EQ-VAS.IS"
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


//@Thimo TODO FHIRPath für Score