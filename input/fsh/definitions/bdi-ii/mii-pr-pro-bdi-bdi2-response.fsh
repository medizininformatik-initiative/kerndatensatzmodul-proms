Instance: mii-qr-pro-bdi-bdi2
InstanceOf: mii-pr-pro-questionnaire-response
Title: "MII QST PRO BDI-II"
Description: "MII QST PRO Beck Depression Inventory II (BDI-II) Questionnaire"
Usage: #definition
* questionnaire = $mii-qst-pro-bdi-bdi2
* status = #final
* subject.reference = "Patient/example-patient"
* authored = "2023-10-01T12:00:00Z"
//* url = $mii-qst-pro-bdi-bdi2


// Realistic moderate depression responses (total score = 19)
* item[+].linkId = "bdi-bdi2-q01" // Sadness
* item[=].answer.valueCoding = $mii-cs-pro-bdi-bdi2#bdi-bdi2-answer-1 // Score: 1

* item[+].linkId = "bdi-bdi2-q02" // Pessimism  
* item[=].answer.valueCoding = $mii-cs-pro-bdi-bdi2#bdi-bdi2-answer-1 // Score: 1

* item[+].linkId = "bdi-bdi2-q03" // Past Failure
* item[=].answer.valueCoding = $mii-cs-pro-bdi-bdi2#bdi-bdi2-answer-0 // Score: 0

* item[+].linkId = "bdi-bdi2-q04" // Loss of Pleasure
* item[=].answer.valueCoding = $mii-cs-pro-bdi-bdi2#bdi-bdi2-answer-2 // Score: 2

* item[+].linkId = "bdi-bdi2-q05" // Guilty Feelings
* item[=].answer.valueCoding = $mii-cs-pro-bdi-bdi2#bdi-bdi2-answer-1 // Score: 1

* item[+].linkId = "bdi-bdi2-q06" // Punishment Feelings
* item[=].answer.valueCoding = $mii-cs-pro-bdi-bdi2#bdi-bdi2-answer-0 // Score: 0

* item[+].linkId = "bdi-bdi2-q07" // Self-Dislike
* item[=].answer.valueCoding = $mii-cs-pro-bdi-bdi2#bdi-bdi2-answer-1 // Score: 1

* item[+].linkId = "bdi-bdi2-q08" // Self-Criticalness
* item[=].answer.valueCoding = $mii-cs-pro-bdi-bdi2#bdi-bdi2-answer-1 // Score: 1

* item[+].linkId = "bdi-bdi2-q09" // Suicidal Thoughts
* item[=].answer.valueCoding = $mii-cs-pro-bdi-bdi2#bdi-bdi2-answer-0 // Score: 0

* item[+].linkId = "bdi-bdi2-q10" // Crying
* item[=].answer.valueCoding = $mii-cs-pro-bdi-bdi2#bdi-bdi2-answer-1 // Score: 1

* item[+].linkId = "bdi-bdi2-q11" // Agitation
* item[=].answer.valueCoding = $mii-cs-pro-bdi-bdi2#bdi-bdi2-answer-0 // Score: 0

* item[+].linkId = "bdi-bdi2-q12" // Loss of Interest
* item[=].answer.valueCoding = $mii-cs-pro-bdi-bdi2#bdi-bdi2-answer-2 // Score: 2

* item[+].linkId = "bdi-bdi2-q13" // Indecisiveness
* item[=].answer.valueCoding = $mii-cs-pro-bdi-bdi2#bdi-bdi2-answer-1 // Score: 1

* item[+].linkId = "bdi-bdi2-q14" // Worthlessness
* item[=].answer.valueCoding = $mii-cs-pro-bdi-bdi2#bdi-bdi2-answer-1 // Score: 1

* item[+].linkId = "bdi-bdi2-q15" // Loss of Energy (uses long form)
* item[=].answer.valueCoding = $mii-cs-pro-bdi-bdi2#bdi-bdi2-answer-2a // Score: 2

* item[+].linkId = "bdi-bdi2-q16" // Sleep Changes
* item[=].answer.valueCoding = $mii-cs-pro-bdi-bdi2#bdi-bdi2-answer-1 // Score: 1

* item[+].linkId = "bdi-bdi2-q17" // Appetite Changes (uses long form)
* item[=].answer.valueCoding = $mii-cs-pro-bdi-bdi2#bdi-bdi2-answer-1a // Score: 1

* item[+].linkId = "bdi-bdi2-q18" // Concentration Difficulty
* item[=].answer.valueCoding = $mii-cs-pro-bdi-bdi2#bdi-bdi2-answer-2 // Score: 2

* item[+].linkId = "bdi-bdi2-q19" // Tiredness or Fatigue
* item[=].answer.valueCoding = $mii-cs-pro-bdi-bdi2#bdi-bdi2-answer-1 // Score: 1

* item[+].linkId = "bdi-bdi2-q20" // Loss of Interest in Sex
* item[=].answer.valueCoding = $mii-cs-pro-bdi-bdi2#bdi-bdi2-answer-0 // Score: 0

* item[+].linkId = "bdi-bdi2-q21" // Self-Assessment
* item[=].answer.valueCoding = $mii-cs-pro-bdi-bdi2#bdi-bdi2-answer-0 // Score: 0

// Total Score Item (calculated - should be 19)
* item[+].linkId = "bdi-bdi2-score-total"
* item[=].answer.valueQuantity.value = 19
* item[=].answer.valueQuantity.unit = "{score}"
* item[=].answer.valueQuantity.system = $UCUM
* item[=].answer.valueQuantity.code = #1
