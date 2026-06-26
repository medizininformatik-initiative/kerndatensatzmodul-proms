Instance: mii-exa-pro-phq-9-response
InstanceOf: MII_PR_PRO_QuestionnaireResponse
Usage: #example
Title: "PHQ-9 Questionnaire Response Example"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)
* status = #completed
* language = #de
* subject = Reference(Patient/mii-exa-pro-patient)
* authored = "2023-10-01T12:00:00Z"
* questionnaire = $mii-qst-pro-phq-9

// Severe depression responses (score = 27)
* item[+].linkId = "phq-phq2a" // Little interest or pleasure
* item[=].answer[0].valueCoding = $LNC#LA6571-9 "Nearly every day"

* item[+].linkId = "phq-phq2b" // Feeling down, depressed
* item[=].answer[0].valueCoding = $LNC#LA6571-9 "Nearly every day"

* item[+].linkId = "phq-phq2c" // Sleep problems
* item[=].answer[0].valueCoding = $LNC#LA6571-9 "Nearly every day"

* item[+].linkId = "phq-phq2d" // Feeling tired
* item[=].answer[0].valueCoding = $LNC#LA6571-9 "Nearly every day"

* item[+].linkId = "phq-phq2e" // Poor appetite
* item[=].answer[0].valueCoding = $LNC#LA6571-9 "Nearly every day"

* item[+].linkId = "phq-phq2f" // Feeling bad about yourself
* item[=].answer[0].valueCoding = $LNC#LA6571-9 "Nearly every day"

* item[+].linkId = "phq-phq2g" // Trouble concentrating
* item[=].answer[0].valueCoding = $LNC#LA6571-9 "Nearly every day"

* item[+].linkId = "phq-phq2h" // Moving/speaking slowly
* item[=].answer[0].valueCoding = $LNC#LA6571-9 "Nearly every day"

* item[+].linkId = "phq-phq2i" // Thoughts of death
* item[=].answer[0].valueCoding = $LNC#LA6571-9 "Nearly every day"

// Total score: 9 questions × 3 points = 27 (severe depression)
// Note: Unit {score} is defined in the Questionnaire via questionnaire-unit extension
* item[+].linkId = "phq-phq9-score-total"
* item[=].answer[0].valueDecimal = 27

* item[+].linkId = "phq-phq9-difficulty" // Functional impairment
* item[=].answer[0].valueCoding = $LNC#LA6574-3 "Extremely difficult"
