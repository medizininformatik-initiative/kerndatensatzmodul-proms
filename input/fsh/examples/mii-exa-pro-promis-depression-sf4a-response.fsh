Instance: mii-exa-pro-promis-depression-sf4a-response
InstanceOf: MII_PR_PRO_QuestionnaireResponse
Title: "MII EXA PRO PROMIS Depression SF 4a Response"
Description: "Example QuestionnaireResponse for PROMIS Depression Short Form 4a"
Usage: #example
* language = #en
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)

* insert QuestionnaireRef(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-depression-sf4a)
* status = #completed
* subject = Reference(Patient/mii-exa-pro-patient)
* authored = "2024-01-15T10:30:00Z"

// Item 1: I felt worthless - Sometimes (3)
* item[+].linkId = "promis-eddep04"
* item[=].text = "I felt worthless"
* insert TranslationDE(item[=].text, [["...fühlte ich mich wertlos"]])
* item[=].answer.valueCoding = $LNC#LA10082-8 "Sometimes"
* insert TranslationDE(item[=].answer.valueCoding.display, [["Manchmal"]])

// Item 2: I felt helpless - Rarely (2)  
* item[+].linkId = "promis-eddep06"
* item[=].text = "I felt helpless"
* insert TranslationDE(item[=].text, [["...fühlte ich mich hilflos"]])
* item[=].answer.valueCoding = $LNC#LA10066-1 "Rarely"
* insert TranslationDE(item[=].answer.valueCoding.display, [["Selten"]])

// Item 3: I felt depressed - Often (4)
* item[+].linkId = "promis-eddep29"
* item[=].text = "I felt depressed"
* insert TranslationDE(item[=].text, [["...fühlte ich mich deprimiert"]])
* item[=].answer.valueCoding = $LNC#LA10044-8 "Often"
* insert TranslationDE(item[=].answer.valueCoding.display, [["Oft"]])

// Item 4: I felt hopeless - Sometimes (3)
* item[+].linkId = "promis-eddep41"
* item[=].text = "I felt hopeless"
* insert TranslationDE(item[=].text, [["...fühlte ich mich hoffnungslos"]])
* item[=].answer.valueCoding = $LNC#LA10082-8 "Sometimes"
* insert TranslationDE(item[=].answer.valueCoding.display, [["Manchmal"]])

// Raw Score: 3+2+4+3 = 12
* item[+].linkId = "promis-depression-score-raw"
* item[=].text = "PROMIS Depression Raw Score"
* insert TranslationDE(item[=].text, [["Rohwert (Summenscore)"]])
* item[=].answer.valueDecimal = 12

// T-Score: Raw score 12 = T-score 62.2
* item[+].linkId = "promis-depression-score-tscore"
* item[=].text = "PROMIS Depression T-Score"
* insert TranslationDE(item[=].text, [["T-Score"]])
* item[=].answer.valueDecimal = 62.2