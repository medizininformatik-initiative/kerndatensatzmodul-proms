Instance: mii-exa-pro-bdi-bdi2
InstanceOf: mii-pr-pro-questionnaire-response
Title: "MII EXA PRO BDI-II"
Description: "MII EXA PRO Beck Depression Inventory II (BDI-II) Questionnaire"
Usage: #example
* language = #de
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)
* insert QuestionnaireRef(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-bdi-bdi2)
* status = #completed
* subject.reference = "Patient/mii-exa-pro-patient"
* authored = "2023-10-01T12:00:00Z"
//* url = $mii-qst-pro-bdi-bdi2


// Realistic moderate depression responses (total score = 19)
* item[+].linkId = "bdi-bdi2-q01" // Sadness
* item[=].text = "[TEST PLACEHOLDER: Question 1 about mood - NOT actual BDI-II text]"
* item[=].answer.valueCoding = $mii-cs-pro-bdi-bdi2#bdi-bdi2-answer-1 "1 point"

* item[+].linkId = "bdi-bdi2-q02" // Pessimism  
* item[=].text = "[TEST PLACEHOLDER: Question 2 about outlook - NOT actual BDI-II text]"
* item[=].answer.valueCoding = $mii-cs-pro-bdi-bdi2#bdi-bdi2-answer-1 "1 point"

* item[+].linkId = "bdi-bdi2-q03" // Past Failure
* item[=].text = "[TEST PLACEHOLDER: Question 3 about experiences - NOT actual BDI-II text]"
* item[=].answer.valueCoding = $mii-cs-pro-bdi-bdi2#bdi-bdi2-answer-0 "0 points"

* item[+].linkId = "bdi-bdi2-q04" // Loss of Pleasure
* item[=].text = "[TEST PLACEHOLDER: Question 4 about enjoyment - NOT actual BDI-II text]"
* item[=].answer.valueCoding = $mii-cs-pro-bdi-bdi2#bdi-bdi2-answer-2 "2 points"

* item[+].linkId = "bdi-bdi2-q05" // Guilty Feelings
* item[=].text = "[TEST PLACEHOLDER: Question 5 about feelings - NOT actual BDI-II text]"
* item[=].answer.valueCoding = $mii-cs-pro-bdi-bdi2#bdi-bdi2-answer-1 "1 point"

* item[+].linkId = "bdi-bdi2-q06" // Punishment Feelings
* item[=].answer.valueCoding = $mii-cs-pro-bdi-bdi2#bdi-bdi2-answer-0 "0 points"

* item[+].linkId = "bdi-bdi2-q07" // Self-Dislike
* item[=].answer.valueCoding = $mii-cs-pro-bdi-bdi2#bdi-bdi2-answer-1 "1 point"

* item[+].linkId = "bdi-bdi2-q08" // Self-Criticalness
* item[=].answer.valueCoding = $mii-cs-pro-bdi-bdi2#bdi-bdi2-answer-1 "1 point"

* item[+].linkId = "bdi-bdi2-q09" // Suicidal Thoughts
* item[=].answer.valueCoding = $mii-cs-pro-bdi-bdi2#bdi-bdi2-answer-0 "0 points"

* item[+].linkId = "bdi-bdi2-q10" // Crying
* item[=].text = "[TEST PLACEHOLDER: Question 10 about emotions - NOT actual BDI-II text]"
* item[=].answer.valueCoding = $mii-cs-pro-bdi-bdi2#bdi-bdi2-answer-1 "1 point"

* item[+].linkId = "bdi-bdi2-q11" // Agitation
* item[=].answer.valueCoding = $mii-cs-pro-bdi-bdi2#bdi-bdi2-answer-0 "0 points"

* item[+].linkId = "bdi-bdi2-q12" // Loss of Interest
* item[=].answer.valueCoding = $mii-cs-pro-bdi-bdi2#bdi-bdi2-answer-2 "2 points"

* item[+].linkId = "bdi-bdi2-q13" // Indecisiveness
* item[=].answer.valueCoding = $mii-cs-pro-bdi-bdi2#bdi-bdi2-answer-1 "1 point"

* item[+].linkId = "bdi-bdi2-q14" // Worthlessness
* item[=].answer.valueCoding = $mii-cs-pro-bdi-bdi2#bdi-bdi2-answer-1 "1 point"

* item[+].linkId = "bdi-bdi2-q15" // Loss of Energy (uses long form)
* item[=].text = "[TEST PLACEHOLDER: Question 15 about energy (uses extended scale) - NOT actual BDI-II text]"
* item[=].answer.valueCoding = $mii-cs-pro-bdi-bdi2#bdi-bdi2-answer-2a "2 points (variant a)"

* item[+].linkId = "bdi-bdi2-q16" // Sleep Changes
* item[=].answer.valueCoding = $mii-cs-pro-bdi-bdi2#bdi-bdi2-answer-1 "1 point"

* item[+].linkId = "bdi-bdi2-q17" // Appetite Changes (uses long form)
* item[=].text = "[TEST PLACEHOLDER: Question 17 about appetite (uses extended scale) - NOT actual BDI-II text]"
* item[=].answer.valueCoding = $mii-cs-pro-bdi-bdi2#bdi-bdi2-answer-1a "1 point (variant a)"

* item[+].linkId = "bdi-bdi2-q18" // Concentration Difficulty
* item[=].answer.valueCoding = $mii-cs-pro-bdi-bdi2#bdi-bdi2-answer-2 "2 points"

* item[+].linkId = "bdi-bdi2-q19" // Tiredness or Fatigue
* item[=].answer.valueCoding = $mii-cs-pro-bdi-bdi2#bdi-bdi2-answer-1 "1 point"

* item[+].linkId = "bdi-bdi2-q20" // Loss of Interest in Sex
* item[=].answer.valueCoding = $mii-cs-pro-bdi-bdi2#bdi-bdi2-answer-0 "0 points"

* item[+].linkId = "bdi-bdi2-q21" // Self-Assessment
* item[=].text = "[TEST PLACEHOLDER: Question 21 about interests - NOT actual BDI-II text]"
* item[=].answer.valueCoding = $mii-cs-pro-bdi-bdi2#bdi-bdi2-answer-0 "0 points"

// Total Score Item (calculated - should be 19)
* item[+].linkId = "bdi-bdi2-score-total"
* item[=].text = "BDI-II Gesamtscore (0-63)"
* item[=].answer.valueDecimal = 19
