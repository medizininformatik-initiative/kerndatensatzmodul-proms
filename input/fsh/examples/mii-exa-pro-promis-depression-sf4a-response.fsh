Instance: mii-exa-pro-promis-depression-sf4a-response
InstanceOf: MII_PR_PRO_QuestionnaireResponse
Title: "MII EXA PRO PROMIS Depression SF 4a Response"
Description: "Example QuestionnaireResponse for PROMIS Depression Short Form 4a"
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)

* questionnaire = $mii-qst-pro-promis-depression-sf4a
* status = #completed
* subject = Reference(Patient/mii-exa-pro-patient)
* authored = "2024-01-15T10:30:00Z"

// Item 1: I felt worthless - Sometimes (3)
* item[+].linkId = "promis-eddep04"
* item[=].answer.valueCoding = $LNC#LA10082-8 "Sometimes"

// Item 2: I felt helpless - Rarely (2)  
* item[+].linkId = "promis-eddep06"
* item[=].answer.valueCoding = $LNC#LA10066-1 "Rarely"

// Item 3: I felt depressed - Often (4)
* item[+].linkId = "promis-eddep29"
* item[=].answer.valueCoding = $LNC#LA10044-8 "Often"

// Item 4: I felt hopeless - Sometimes (3)
* item[+].linkId = "promis-eddep41"
* item[=].answer.valueCoding = $LNC#LA10082-8 "Sometimes"

// Raw Score: 3+2+4+3 = 12
* item[+].linkId = "promis-depression-score-raw"
* item[=].answer.valueDecimal = 12

// T-Score: Raw score 12 = T-score 62.2
* item[+].linkId = "promis-depression-score-tscore"
* item[=].answer.valueDecimal = 62.2