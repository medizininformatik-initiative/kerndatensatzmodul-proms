Instance: mii-exa-pro-promis-29-de-response
InstanceOf: MII_PR_PRO_QuestionnaireResponse
Title: "MII EXA PRO PROMIS-29 Response (German)"
Description: "Example QuestionnaireResponse for PROMIS-29 Profile v2.1 (German variant) - demonstrates response compatibility between language variants"
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)

* questionnaire = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29-de"
* status = #completed
* subject = Reference(Patient/mii-exa-pro-patient)
* authored = "2025-01-30T14:30:00Z"

// ===== PHYSICAL FUNCTION DOMAIN =====
// Moderate functional limitation (answers: 3, 3, 4, 3 → raw score 13)

* item[+].linkId = "PROMIS-29.PhysicalFunction"
* item[=].item[+].linkId = "PROMIS-29.PhysicalFunction.Description"

// Item 1: Chores (vacuuming/yard work) - With some difficulty (3)
* item[=].item[+].linkId = "promis-pfa11"
* item[=].item[=].answer.valueCoding = $LNC#LA13920-6 "With some difficulty"

// Item 2: Groceries up stairs - With some difficulty (3)
* item[=].item[+].linkId = "promis-pfa21"
* item[=].item[=].answer.valueCoding = $LNC#LA13920-6 "With some difficulty"

// Item 3: One mile walk - With a little difficulty (4)
* item[=].item[+].linkId = "promis-pfa23"
* item[=].item[=].answer.valueCoding = $LNC#LA13918-0 "With a little difficulty"

// Item 4: Vigorous activities - With some difficulty (3)
* item[=].item[+].linkId = "promis-pfa53"
* item[=].item[=].answer.valueCoding = $LNC#LA13920-6 "With some difficulty"

// ===== ANXIETY DOMAIN =====
// Mild anxiety (answers: 2, 3, 2, 2 → raw score 9)

* item[+].linkId = "PROMIS-29.Anxiety"
* item[=].item[+].linkId = "PROMIS-29.Anxiety.Description"

// Item 1: Fearful - Rarely (2)
* item[=].item[+].linkId = "promis-edanx01"
* item[=].item[=].answer.valueCoding = $LNC#LA10066-1 "Rarely"

// Item 2: Difficulty focusing - Sometimes (3)
* item[=].item[+].linkId = "promis-edanx40"
* item[=].item[=].answer.valueCoding = $LNC#LA10082-8 "Sometimes"

// Item 3: Worries - Rarely (2)
* item[=].item[+].linkId = "promis-edanx41"
* item[=].item[=].answer.valueCoding = $LNC#LA10066-1 "Rarely"

// Item 4: Tense - Rarely (2)
* item[=].item[+].linkId = "promis-edanx53"
* item[=].item[=].answer.valueCoding = $LNC#LA10066-1 "Rarely"

// ===== DEPRESSION DOMAIN =====
// Moderate depression (answers: 3, 3, 4, 3 → raw score 13)

* item[+].linkId = "PROMIS-29.Depression"
* item[=].item[+].linkId = "PROMIS-29.Depression.Description"

// Item 1: Worthless - Sometimes (3)
* item[=].item[+].linkId = "promis-eddep04"
* item[=].item[=].answer.valueCoding = $LNC#LA10082-8 "Sometimes"

// Item 2: Helpless - Sometimes (3)
* item[=].item[+].linkId = "promis-eddep06"
* item[=].item[=].answer.valueCoding = $LNC#LA10082-8 "Sometimes"

// Item 3: Depressed - Often (4)
* item[=].item[+].linkId = "promis-eddep29"
* item[=].item[=].answer.valueCoding = $LNC#LA10044-8 "Often"

// Item 4: Hopeless - Sometimes (3)
* item[=].item[+].linkId = "promis-eddep41"
* item[=].item[=].answer.valueCoding = $LNC#LA10082-8 "Sometimes"

// ===== FATIGUE DOMAIN =====
// Significant fatigue (answers: 4, 4, 3, 4 → raw score 15)

* item[+].linkId = "PROMIS-29.Fatigue"
* item[=].item[+].linkId = "PROMIS-29.Fatigue.Description"

// Item 1: Run down - Often (4)
* item[=].item[+].linkId = "promis-hi7"
* item[=].item[=].answer.valueCoding = $LNC#LA10044-8 "Often"

// Item 2: Fatigued - Often (4)
* item[=].item[+].linkId = "promis-an3"
* item[=].item[=].answer.valueCoding = $LNC#LA10044-8 "Often"

// Item 3: Difficulty starting things - Somewhat (3)
* item[=].item[+].linkId = "promis-fatexp41"
* item[=].item[=].answer.valueCoding = $LNC#LA13909-9 "Somewhat"

// Item 4: Average fatigue - Quite a bit (4)
* item[=].item[+].linkId = "promis-fatexp40"
* item[=].item[=].answer.valueCoding = $LNC#LA13902-4 "Quite a bit"

// ===== SLEEP DISTURBANCE DOMAIN =====
// Moderate sleep problems (answers: 3, 3, 3, 2 → raw score 11)

* item[+].linkId = "PROMIS-29.Sleep"
* item[=].item[+].linkId = "PROMIS-29.Sleep.Description"

// Item 1: Sleep quality - Fair (3)
* item[=].item[+].linkId = "promis-sleep109"
* item[=].item[=].answer.valueCoding = $LNC#LA8968-5 "Fair"

// Item 2: Difficulty falling asleep - Sometimes (3)
* item[=].item[+].linkId = "promis-sleep116"
* item[=].item[=].answer.valueCoding = $LNC#LA10082-8 "Sometimes"

// Item 3: Refreshing sleep - Sometimes (3)
* item[=].item[+].linkId = "promis-sleep20"
* item[=].item[=].answer.valueCoding = $LNC#LA10082-8 "Sometimes"

// Item 4: Sleep problem - Rarely (2)
* item[=].item[+].linkId = "promis-sleep44"
* item[=].item[=].answer.valueCoding = $LNC#LA10066-1 "Rarely"

// ===== SOCIAL FUNCTION DOMAIN =====
// Some social limitation (answers: 3, 2, 3, 3 → raw score 11)

* item[+].linkId = "PROMIS-29.Social"
* item[=].item[+].linkId = "PROMIS-29.Social.Description"

// Item 1: Social activities - Sometimes (3)
* item[=].item[+].linkId = "promis-srpper11-caps"
* item[=].item[=].answer.valueCoding = $LNC#LA10082-8 "Sometimes"

// Item 2: Family activities - Rarely (2)
* item[=].item[+].linkId = "promis-srpper18-caps"
* item[=].item[=].answer.valueCoding = $LNC#LA10066-1 "Rarely"

// Item 3: Work activities - Sometimes (3)
* item[=].item[+].linkId = "promis-srpper23-caps"
* item[=].item[=].answer.valueCoding = $LNC#LA10082-8 "Sometimes"

// Item 4: Leisure activities - Sometimes (3)
* item[=].item[+].linkId = "promis-srpper46-caps"
* item[=].item[=].answer.valueCoding = $LNC#LA10082-8 "Sometimes"

// ===== PAIN INTERFERENCE DOMAIN =====
// Moderate pain interference (answers: 3, 3, 2, 3 → raw score 11)

* item[+].linkId = "PROMIS-29.PainInterference"
* item[=].item[+].linkId = "PROMIS-29.PainInterference.Description"

// Item 1: Day-to-day activities - Somewhat (3)
* item[=].item[+].linkId = "promis-painin9"
* item[=].item[=].answer.valueCoding = $LNC#LA13909-9 "Somewhat"

// Item 2: Work activities - Somewhat (3)
* item[=].item[+].linkId = "promis-painin22"
* item[=].item[=].answer.valueCoding = $LNC#LA13909-9 "Somewhat"

// Item 3: Household chores - A little bit (2)
* item[=].item[+].linkId = "promis-painin31"
* item[=].item[=].answer.valueCoding = $LNC#LA13863-8 "A little bit"

// Item 4: Social activities - Somewhat (3)
* item[=].item[+].linkId = "promis-painin34"
* item[=].item[=].answer.valueCoding = $LNC#LA13909-9 "Somewhat"

// ===== PAIN INTENSITY =====

* item[+].linkId = "PROMIS-29.PainIntensity"

// Pain intensity scale 0-10: moderate pain level
* item[=].item[+].linkId = "promis-global07"
* item[=].item[=].answer.valueInteger = 5

// ===== CALCULATED SCORES =====

* item[+].linkId = "PROMIS-29.Scores"

// Physical Function Scores (raw=13 → T-score=42.6)
* item[=].item[+].linkId = "promis-29-physical-function-raw"
* item[=].item[=].answer.valueDecimal = 13

* item[=].item[+].linkId = "promis-29-physical-function-tscore"
* item[=].item[=].answer.valueDecimal = 42.6

// Anxiety Scores (raw=9 → T-score=56.8)
* item[=].item[+].linkId = "promis-29-anxiety-raw"
* item[=].item[=].answer.valueDecimal = 9

* item[=].item[+].linkId = "promis-29-anxiety-tscore"
* item[=].item[=].answer.valueDecimal = 56.8

// Depression Scores (raw=13 → T-score=63.9)
* item[=].item[+].linkId = "promis-29-depression-raw"
* item[=].item[=].answer.valueDecimal = 13

* item[=].item[+].linkId = "promis-29-depression-tscore"
* item[=].item[=].answer.valueDecimal = 63.9

// Fatigue Scores (raw=15 → T-score=64.9)
* item[=].item[+].linkId = "promis-29-fatigue-raw"
* item[=].item[=].answer.valueDecimal = 15

* item[=].item[+].linkId = "promis-29-fatigue-tscore"
* item[=].item[=].answer.valueDecimal = 64.9

// Sleep Disturbance Scores (raw=11 → T-score=53.6)
* item[=].item[+].linkId = "promis-29-sleep-raw"
* item[=].item[=].answer.valueDecimal = 11

* item[=].item[+].linkId = "promis-29-sleep-tscore"
* item[=].item[=].answer.valueDecimal = 53.6

// Social Function Scores (raw=11 → T-score=39.7)
* item[=].item[+].linkId = "promis-29-social-raw"
* item[=].item[=].answer.valueDecimal = 11

* item[=].item[+].linkId = "promis-29-social-tscore"
* item[=].item[=].answer.valueDecimal = 39.7

// Pain Interference Scores (raw=11 → T-score=60.9)
* item[=].item[+].linkId = "promis-29-pain-interference-raw"
* item[=].item[=].answer.valueDecimal = 11

* item[=].item[+].linkId = "promis-29-pain-interference-tscore"
* item[=].item[=].answer.valueDecimal = 60.9
