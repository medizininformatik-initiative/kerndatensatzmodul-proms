Instance: mii-exa-pro-phq-9-response
InstanceOf: MII_PR_PRO_QuestionnaireResponse
Usage: #example
Title: "PHQ-9 Questionnaire Response Example"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)
* status = #completed
* language = #de
* subject = Reference(Patient/example-patient)
* authored = "2023-10-01T12:00:00Z"
* questionnaire = $mii-qst-pro-phq-9

// Severe depression responses (score = 27)
* item[+].linkId = "phq-phq9-q01" // Little interest or pleasure
* item[=].answer[0].valueCoding = $LNC#LA6571-9 "Nearly every day"

* item[+].linkId = "phq-phq9-q02" // Feeling down, depressed
* item[=].answer[0].valueCoding = $LNC#LA6571-9 "Nearly every day"

* item[+].linkId = "phq-phq9-q03" // Sleep problems
* item[=].answer[0].valueCoding = $LNC#LA6571-9 "Nearly every day"

* item[+].linkId = "phq-phq9-q04" // Feeling tired
* item[=].answer[0].valueCoding = $LNC#LA6571-9 "Nearly every day"

* item[+].linkId = "phq-phq9-q05" // Poor appetite
* item[=].answer[0].valueCoding = $LNC#LA6571-9 "Nearly every day"

* item[+].linkId = "phq-phq9-q06" // Feeling bad about yourself
* item[=].answer[0].valueCoding = $LNC#LA6571-9 "Nearly every day"

* item[+].linkId = "phq-phq9-q07" // Trouble concentrating
* item[=].answer[0].valueCoding = $LNC#LA6571-9 "Nearly every day"

* item[+].linkId = "phq-phq9-q08" // Moving/speaking slowly
* item[=].answer[0].valueCoding = $LNC#LA6571-9 "Nearly every day"

* item[+].linkId = "phq-phq9-q09" // Thoughts of death
* item[=].answer[0].valueCoding = $LNC#LA6571-9 "Nearly every day"

// Total score: 9 questions × 3 points = 27 (severe depression)
// Note: Unit {score} is defined in the Questionnaire via questionnaire-unit extension
* item[+].linkId = "phq-phq9-score-total"
* item[=].answer[0].valueDecimal = 27

* item[+].linkId = "phq-phq9-q10" // Functional impairment
* item[=].answer[0].valueCoding = $LNC#LA6574-3 "Extremely difficult"
