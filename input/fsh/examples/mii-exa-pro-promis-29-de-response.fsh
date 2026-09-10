Instance: mii-exa-pro-promis-29-de-response
InstanceOf: MII_PR_PRO_QuestionnaireResponse
Title: "MII EXA PRO PROMIS-29 Response (German)"
Description: "Example QuestionnaireResponse for PROMIS-29 Profile v2.1 (German variant) - demonstrates response compatibility between language variants"
Usage: #example
* language = #de
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)

* insert QuestionnaireRef(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29-de)
* status = #completed
* subject = Reference(Patient/mii-exa-pro-patient)
* authored = "2025-01-30T14:30:00Z"

// ===== PHYSICAL FUNCTION DOMAIN =====
// Moderate functional limitation (answers: 3, 3, 4, 3 → raw score 13)

* item[+].linkId = "PROMIS-29.PhysicalFunction"
* item[=].text = "KÖRPERLICHE FUNKTION"
* item[=].item[+].linkId = "PROMIS-29.PhysicalFunction.Description"
* item[=].item[=].text = "Sind Sie zu folgenden Tätigkeiten imstande:"

// Item 1: Chores (vacuuming/yard work) - With some difficulty (3)
* item[=].item[+].linkId = "promis-pfa11"
* item[=].item[=].text = "Können Sie Hausarbeiten erledigen, z.B. Staubsaugen oder Gartenarbeit?"
* item[=].item[=].answer.valueCoding = $LNC#LA13920-6 "Mit einigen Schwierigkeiten"

// Item 2: Groceries up stairs - With some difficulty (3)
* item[=].item[+].linkId = "promis-pfa21"
* item[=].item[=].text = "Können Sie mit normaler Geschwindigkeit Treppen hoch- und runtergehen?"
* item[=].item[=].answer.valueCoding = $LNC#LA13920-6 "Mit einigen Schwierigkeiten"

// Item 3: One mile walk - With a little difficulty (4)
* item[=].item[+].linkId = "promis-pfa23"
* item[=].item[=].text = "Können Sie mindestens 15 Minuten lang spazieren gehen?"
* item[=].item[=].answer.valueCoding = $LNC#LA13918-0 "Mit geringen Schwierigkeiten"

// Item 4: Vigorous activities - With some difficulty (3)
* item[=].item[+].linkId = "promis-pfa53"
* item[=].item[=].text = "Können Sie Besorgungen machen und einkaufen gehen?"
* item[=].item[=].answer.valueCoding = $LNC#LA13920-6 "Mit einigen Schwierigkeiten"

// ===== ANXIETY DOMAIN =====
// Mild anxiety (answers: 2, 3, 2, 2 → raw score 9)

* item[+].linkId = "PROMIS-29.Anxiety"
* item[=].text = "ANGST"
* item[=].item[+].linkId = "PROMIS-29.Anxiety.Description"
* item[=].item[=].text = "In den letzten 7 Tagen:"

// Item 1: Fearful - Rarely (2)
* item[=].item[+].linkId = "promis-edanx01"
* item[=].item[=].text = "Ich fürchtete mich."
* item[=].item[=].answer.valueCoding = $LNC#LA10066-1 "Selten"

// Item 2: Difficulty focusing - Sometimes (3)
* item[=].item[+].linkId = "promis-edanx40"
* item[=].item[=].text = "Ich fand es schwer, auf etwas anderes zu achten als auf meine Angst."
* item[=].item[=].answer.valueCoding = $LNC#LA10082-8 "Manchmal"

// Item 3: Worries - Rarely (2)
* item[=].item[+].linkId = "promis-edanx41"
* item[=].item[=].text = "Meine Sorgen haben mich überwältigt."
* item[=].item[=].answer.valueCoding = $LNC#LA10066-1 "Selten"

// Item 4: Tense - Rarely (2)
* item[=].item[+].linkId = "promis-edanx53"
* item[=].item[=].text = "Ich fühlte mich unruhig."
* item[=].item[=].answer.valueCoding = $LNC#LA10066-1 "Selten"

// ===== DEPRESSION DOMAIN =====
// Moderate depression (answers: 3, 3, 4, 3 → raw score 13)

* item[+].linkId = "PROMIS-29.Depression"
* item[=].text = "DEPRESSION"
* item[=].item[+].linkId = "PROMIS-29.Depression.Description"
* item[=].item[=].text = "In den letzten 7 Tagen:"

// Item 1: Worthless - Sometimes (3)
* item[=].item[+].linkId = "promis-eddep04"
* item[=].item[=].text = "Ich fühlte mich wertlos."
* item[=].item[=].answer.valueCoding = $LNC#LA10082-8 "Manchmal"

// Item 2: Helpless - Sometimes (3)
* item[=].item[+].linkId = "promis-eddep06"
* item[=].item[=].text = "Ich fühlte mich hilflos."
* item[=].item[=].answer.valueCoding = $LNC#LA10082-8 "Manchmal"

// Item 3: Depressed - Often (4)
* item[=].item[+].linkId = "promis-eddep29"
* item[=].item[=].text = "Ich fühlte mich niedergeschlagen."
* item[=].item[=].answer.valueCoding = $LNC#LA10044-8 "Oft"

// Item 4: Hopeless - Sometimes (3)
* item[=].item[+].linkId = "promis-eddep41"
* item[=].item[=].text = "Ich fühlte mich hoffnungslos."
* item[=].item[=].answer.valueCoding = $LNC#LA10082-8 "Manchmal"

// ===== FATIGUE DOMAIN =====
// Significant fatigue (answers: 4, 4, 3, 4 → raw score 15)

* item[+].linkId = "PROMIS-29.Fatigue"
* item[=].text = "ERSCHÖPFUNG"
* item[=].item[+].linkId = "PROMIS-29.Fatigue.Description"
* item[=].item[=].text = "In den letzten 7 Tagen:"

// Item 1: Run down - Often (4)
* item[=].item[+].linkId = "promis-hi7"
* item[=].item[=].text = "Ich bin erschöpft."
* item[=].item[=].answer.valueCoding = $LNC#LA13902-4 "Ziemlich"

// Item 2: Fatigued - Often (4)
* item[=].item[+].linkId = "promis-an3"
* item[=].item[=].text = "Es fällt mir schwer, etwas anzufangen, weil ich müde bin."
* item[=].item[=].answer.valueCoding = $LNC#LA13902-4 "Ziemlich"

// Item 3: Difficulty starting things - Somewhat (3)
* item[=].item[+].linkId = "promis-fatexp41"
* item[=].item[=].text = "Wie ausgelaugt fühlten Sie sich im Allgemeinen?"
* item[=].item[=].answer.valueCoding = $LNC#LA13909-9 "Mäßig"

// Item 4: Average fatigue - Quite a bit (4)
* item[=].item[+].linkId = "promis-fatexp40"
* item[=].item[=].text = "Wie erschöpft waren Sie im Allgemeinen?"
* item[=].item[=].answer.valueCoding = $LNC#LA13902-4 "Ziemlich"

// ===== SLEEP DISTURBANCE DOMAIN =====
// Moderate sleep problems (answers: 3, 3, 3, 2 → raw score 11)

* item[+].linkId = "PROMIS-29.Sleep"
* item[=].text = "SCHLAFSTÖRUNGEN"
* item[=].item[+].linkId = "PROMIS-29.Sleep.Description"
* item[=].item[=].text = "In den letzten 7 Tagen:"

// Item 1: Sleep quality - Fair (3)
* item[=].item[+].linkId = "promis-sleep109"
* item[=].item[=].text = "Meine Schlafqualität war ..."
* item[=].item[=].answer.valueCoding = $LNC#LA8968-5 "Mäßig"

// Item 2: Difficulty falling asleep - Sometimes (3)
* item[=].item[+].linkId = "promis-sleep116"
* item[=].item[=].text = "Mein Schlaf war erfrischend."
* item[=].item[=].answer.valueCoding = $LNC#LA13909-9 "Mäßig"

// Item 3: Refreshing sleep - Sometimes (3)
* item[=].item[+].linkId = "promis-sleep20"
* item[=].item[=].text = "Ich hatte Schlafprobleme."
* item[=].item[=].answer.valueCoding = $LNC#LA13909-9 "Mäßig"

// Item 4: Sleep problem - Rarely (2)
* item[=].item[+].linkId = "promis-sleep44"
* item[=].item[=].text = "Ich hatte Schwierigkeiten einzuschlafen."
* item[=].item[=].answer.valueCoding = $LNC#LA13863-8 "Ein wenig"

// ===== SOCIAL FUNCTION DOMAIN =====
// Some social limitation (answers: 3, 2, 3, 3 → raw score 11)

* item[+].linkId = "PROMIS-29.Social"
* item[=].text = "SOZIALE TEILHABE"
* item[=].item[+].linkId = "PROMIS-29.Social.Description"
* item[=].item[=].text = "In den letzten 7 Tagen:"

// Item 1: Social activities - Sometimes (3)
* item[=].item[+].linkId = "promis-srpper11-caps"
* item[=].item[=].text = "Es fällt mir schwer, allen meinen regelmäßigen Freizeitaktivitäten mit anderen nachzugehen."
* item[=].item[=].answer.valueCoding = $LNC#LA10082-8 "Manchmal"

// Item 2: Family activities - Rarely (2)
* item[=].item[+].linkId = "promis-srpper18-caps"
* item[=].item[=].text = "Es fällt mir schwer, allen Aktivitäten nachzugehen, die ich mit meiner Familie machen möchte."
* item[=].item[=].answer.valueCoding = $LNC#LA10066-1 "Selten"

// Item 3: Work activities - Sometimes (3)
* item[=].item[+].linkId = "promis-srpper23-caps"
* item[=].item[=].text = "Es fällt mir schwer, meine gewohnte Arbeit zu erledigen (einschließlich der Arbeit zu Hause)."
* item[=].item[=].answer.valueCoding = $LNC#LA10082-8 "Manchmal"

// Item 4: Leisure activities - Sometimes (3)
* item[=].item[+].linkId = "promis-srpper46-caps"
* item[=].item[=].text = "Es fällt mir schwer, allen Aktivitäten nachzugehen, die ich mit Freunden machen möchte."
* item[=].item[=].answer.valueCoding = $LNC#LA10082-8 "Manchmal"

// ===== PAIN INTERFERENCE DOMAIN =====
// Moderate pain interference (answers: 3, 3, 2, 3 → raw score 11)

* item[+].linkId = "PROMIS-29.PainInterference"
* item[=].text = "SCHMERZBEDINGTE BEEINTRÄCHTIGUNG"
* item[=].item[+].linkId = "PROMIS-29.PainInterference.Description"
* item[=].item[=].text = "In den letzten 7 Tagen: Inwieweit beeinträchtigten Schmerzen..."

// Item 1: Day-to-day activities - Somewhat (3)
* item[=].item[+].linkId = "promis-painin9"
* item[=].item[=].text = "Wie sehr beeinträchtigten Schmerzen Ihre Alltagsaktivitäten?"
* item[=].item[=].answer.valueCoding = $LNC#LA13909-9 "Mäßig"

// Item 2: Work activities - Somewhat (3)
* item[=].item[+].linkId = "promis-painin22"
* item[=].item[=].text = "Wie sehr beeinträchtigten Schmerzen Ihre häuslichen Tätigkeiten?"
* item[=].item[=].answer.valueCoding = $LNC#LA13909-9 "Mäßig"

// Item 3: Household chores - A little bit (2)
* item[=].item[+].linkId = "promis-painin31"
* item[=].item[=].text = "Wie sehr beeinträchtigten Schmerzen Ihre Fähigkeit, an sozialen Aktivitäten teilzunehmen?"
* item[=].item[=].answer.valueCoding = $LNC#LA13863-8 "Ein wenig"

// Item 4: Social activities - Somewhat (3)
* item[=].item[+].linkId = "promis-painin34"
* item[=].item[=].text = "Wie sehr beeinträchtigten Schmerzen Sie bei Ihrer Hausarbeit?"
* item[=].item[=].answer.valueCoding = $LNC#LA13909-9 "Mäßig"

// ===== PAIN INTENSITY =====

* item[+].linkId = "PROMIS-29.PainIntensity"
* item[=].text = "SCHMERZINTENSITÄT"

// Pain intensity scale 0-10: moderate pain level
* item[=].item[+].linkId = "promis-global07"
* item[=].item[=].text = "Wie würden Sie Ihre Schmerzen im Allgemeinen einschätzen?"
* item[=].item[=].answer.valueInteger = 5

// ===== CALCULATED SCORES =====

* item[+].linkId = "PROMIS-29.Scores"
* item[=].text = "BEREICHS-BEWERTUNGEN"

// Physical Function Scores (raw=13 → T-score=42.6)
* item[=].item[+].linkId = "promis-29-physical-function-raw"
* item[=].item[=].text = "PROMIS-29 Körperliche Funktion - Rohwert"
* item[=].item[=].answer.valueDecimal = 13

* item[=].item[+].linkId = "promis-29-physical-function-tscore"
* item[=].item[=].text = "PROMIS-29 Körperliche Funktion - T-Score"
* item[=].item[=].answer.valueDecimal = 42.6

// Anxiety Scores (raw=9 → T-score=56.8)
* item[=].item[+].linkId = "promis-29-anxiety-raw"
* item[=].item[=].text = "PROMIS-29 Angst - Rohwert"
* item[=].item[=].answer.valueDecimal = 9

* item[=].item[+].linkId = "promis-29-anxiety-tscore"
* item[=].item[=].text = "PROMIS-29 Angst - T-Score"
* item[=].item[=].answer.valueDecimal = 56.8

// Depression Scores (raw=13 → T-score=63.9)
* item[=].item[+].linkId = "promis-29-depression-raw"
* item[=].item[=].text = "PROMIS-29 Depression - Rohwert"
* item[=].item[=].answer.valueDecimal = 13

* item[=].item[+].linkId = "promis-29-depression-tscore"
* item[=].item[=].text = "PROMIS-29 Depression - T-Score"
* item[=].item[=].answer.valueDecimal = 63.9

// Fatigue Scores (raw=15 → T-score=64.9)
* item[=].item[+].linkId = "promis-29-fatigue-raw"
* item[=].item[=].text = "PROMIS-29 Erschöpfung - Rohwert"
* item[=].item[=].answer.valueDecimal = 15

* item[=].item[+].linkId = "promis-29-fatigue-tscore"
* item[=].item[=].text = "PROMIS-29 Erschöpfung - T-Score"
* item[=].item[=].answer.valueDecimal = 64.9

// Sleep Disturbance Scores (raw=11 → T-score=53.6)
* item[=].item[+].linkId = "promis-29-sleep-raw"
* item[=].item[=].text = "PROMIS-29 Schlafstörungen - Rohwert"
* item[=].item[=].answer.valueDecimal = 11

* item[=].item[+].linkId = "promis-29-sleep-tscore"
* item[=].item[=].text = "PROMIS-29 Schlafstörungen - T-Score"
* item[=].item[=].answer.valueDecimal = 53.6

// Social Function Scores (raw=11 → T-score=39.7)
* item[=].item[+].linkId = "promis-29-social-raw"
* item[=].item[=].text = "PROMIS-29 Soziale Teilhabe - Rohwert"
* item[=].item[=].answer.valueDecimal = 11

* item[=].item[+].linkId = "promis-29-social-tscore"
* item[=].item[=].text = "PROMIS-29 Soziale Teilhabe - T-Score"
* item[=].item[=].answer.valueDecimal = 39.7

// Pain Interference Scores (raw=11 → T-score=60.9)
* item[=].item[+].linkId = "promis-29-pain-interference-raw"
* item[=].item[=].text = "PROMIS-29 Schmerzbedingte Beeinträchtigung - Rohwert"
* item[=].item[=].answer.valueDecimal = 11

* item[=].item[+].linkId = "promis-29-pain-interference-tscore"
* item[=].item[=].text = "PROMIS-29 Schmerzbedingte Beeinträchtigung - T-Score"
* item[=].item[=].answer.valueDecimal = 60.9
