Instance: mii-exa-pro-gad-7-response
InstanceOf: MII_PR_PRO_QuestionnaireResponse
Usage: #example
Title: "GAD-7 Questionnaire Response Example"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)
* status = #completed
* language = #de
* subject = Reference(Patient/mii-exa-pro-patient)
* authored = "2024-03-15T10:30:00Z"
* questionnaire = $mii-qst-pro-gad-7

// Moderate anxiety responses (score = 13)
* item[+].linkId = "phq-gad7-q01" // Feeling nervous, anxious, or on edge
* item[=].answer[0].valueCoding = $LNC#LA6570-1 "More than half the days"

* item[+].linkId = "phq-gad7-q02" // Not being able to stop or control worrying
* item[=].answer[0].valueCoding = $LNC#LA6571-9 "Nearly every day"

* item[+].linkId = "phq-gad7-q03" // Worrying too much about different things
* item[=].answer[0].valueCoding = $LNC#LA6570-1 "More than half the days"

* item[+].linkId = "phq-gad7-q04" // Trouble relaxing
* item[=].answer[0].valueCoding = $LNC#LA6569-3 "Several days"

* item[+].linkId = "phq-gad7-q05" // Being so restless that it is hard to sit still
* item[=].answer[0].valueCoding = $LNC#LA6570-1 "More than half the days"

* item[+].linkId = "phq-gad7-q06" // Becoming easily annoyed or irritable
* item[=].answer[0].valueCoding = $LNC#LA6569-3 "Several days"

* item[+].linkId = "phq-gad7-q07" // Feeling afraid, as if something awful might happen
* item[=].answer[0].valueCoding = $LNC#LA6570-1 "More than half the days"

// Total score: 2+3+2+1+2+1+2 = 13 (moderate anxiety)
* item[+].linkId = "phq-gad7-score-total"
* item[=].answer[0].valueDecimal = 13

// PROMIS Anxiety T-Score (from PROsetta Stone crosswalk: score 13 → 63.5)
* item[+].linkId = "phq-gad7-promis-tscore"
* item[=].answer[0].valueDecimal = 63.5
