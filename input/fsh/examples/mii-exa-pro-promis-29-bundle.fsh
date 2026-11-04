// ============================================================================
// PROMIS-29 Complete Extraction Workflow Bundle Example
// ============================================================================
// Demonstrates the complete SDC observation-based extraction pattern:
// Patient -> QuestionnaireResponse -> Extracted T-Score Observations
// ============================================================================

Instance: mii-exa-pro-promis-29-bundle
InstanceOf: Bundle
Title: "MII EXA PRO PROMIS-29 Bundle with Extracted Observations"
Description: "Example Bundle demonstrating PROMIS-29 QuestionnaireResponse with all extracted T-Score Observations and Pain Intensity observation. This bundle shows the complete SDC observation-based extraction workflow."
Usage: #example

* type = #collection
* timestamp = "2025-01-30T14:35:00Z"

// ============================================================================
// All Bundle entries (must be defined before inline instances)
// ============================================================================

// Entry 1: Patient
* entry[+].fullUrl = "urn:uuid:a1b2c3d4-e5f6-7890-abcd-ef1234567890"
* entry[=].resource = PatientExample1

// Entry 2: QuestionnaireResponse
* entry[+].fullUrl = "urn:uuid:b2c3d4e5-f6a7-8901-bcde-f12345678901"
* entry[=].resource = PROMIS29ResponseExample

// Entry 3: Physical Function T-Score Observation
* entry[+].fullUrl = "urn:uuid:c3d4e5f6-a7b8-9012-cdef-123456789012"
* entry[=].resource = ObsPhysicalFunctionTScore

// Entry 4: Anxiety T-Score Observation
* entry[+].fullUrl = "urn:uuid:d4e5f6a7-b8c9-0123-defa-234567890123"
* entry[=].resource = ObsAnxietyTScore

// Entry 5: Depression T-Score Observation
* entry[+].fullUrl = "urn:uuid:e5f6a7b8-c9d0-1234-efab-345678901234"
* entry[=].resource = ObsDepressionTScore

// Entry 6: Fatigue T-Score Observation
* entry[+].fullUrl = "urn:uuid:f6a7b8c9-d0e1-2345-fabc-456789012345"
* entry[=].resource = ObsFatigueTScore

// Entry 7: Sleep Disturbance T-Score Observation
* entry[+].fullUrl = "urn:uuid:a7b8c9d0-e1f2-3456-abcd-567890123456"
* entry[=].resource = ObsSleepTScore

// Entry 8: Social Function T-Score Observation
* entry[+].fullUrl = "urn:uuid:b8c9d0e1-f2a3-4567-bcde-678901234567"
* entry[=].resource = ObsSocialFunctionTScore

// Entry 9: Pain Interference T-Score Observation
* entry[+].fullUrl = "urn:uuid:c9d0e1f2-a3b4-5678-cdef-789012345678"
* entry[=].resource = ObsPainInterferenceTScore

// Entry 10: Pain Intensity Observation
* entry[+].fullUrl = "urn:uuid:d0e1f2a3-b4c5-6789-defa-890123456789"
* entry[=].resource = ObsPainIntensity

// ============================================================================
// Inline Instance 1: Patient
// ============================================================================

Instance: PatientExample1
InstanceOf: Patient
Usage: #inline
* id = "patient-example-1"
// FOREIGN canonical: the MetaProfile RuleSet stamps THIS module's version
// (canonical|2026.x.x) onto whatever it is given — correct for our own
// profiles, wrong for the person module's. Claim it unversioned instead.
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient"
* identifier[+].system = "http://example.org/fhir/sid/patients"
* identifier[=].value = "12345"
* name[+].family = "Mustermann"
* name[=].given = "Erika"
* gender = #female
* birthDate = "1985-03-15"

// ============================================================================
// Inline Instance 2: QuestionnaireResponse
// ============================================================================

Instance: PROMIS29ResponseExample
InstanceOf: MII_PR_PRO_QuestionnaireResponse
Usage: #inline
* language = #en
* id = "promis-29-response-1"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)

* insert QuestionnaireRef(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29)
* status = #completed
* subject = Reference(patient-example-1)
* authored = "2025-01-30T14:30:00Z"

// ===== PHYSICAL FUNCTION DOMAIN =====
// Moderate functional limitation (answers: 3, 3, 4, 3 -> raw score 13)

* item[+].linkId = "PROMIS-29.PhysicalFunction"
* item[=].text = "Physical Function"
* insert TranslationDE(item[=].text, [["Körperliche Funktion"]])

// Item 1: Chores (vacuuming/yard work) - With some difficulty (3)
* item[=].item[+].linkId = "promis-pfa11"
* item[=].item[=].text = "Are you able to do chores such as vacuuming or yard work?"
* insert TranslationDE(item[=].item[=].text, [["Können Sie Hausarbeiten erledigen, z.B. Staubsaugen oder Gartenarbeit?"]])
* item[=].item[=].answer.valueCoding = $LNC#LA13920-6 "With some difficulty"
* insert TranslationDE(item[=].item[=].answer.valueCoding.display, [["Mit einigen Schwierigkeiten"]])

// Item 2: Groceries up stairs - With some difficulty (3)
* item[=].item[+].linkId = "promis-pfa21"
* item[=].item[=].text = "Are you able to go up and down stairs at a normal pace?"
* insert TranslationDE(item[=].item[=].text, [["Können Sie mit normaler Geschwindigkeit Treppen hoch- und runtergehen?"]])
* item[=].item[=].answer.valueCoding = $LNC#LA13920-6 "With some difficulty"
* insert TranslationDE(item[=].item[=].answer.valueCoding.display, [["Mit einigen Schwierigkeiten"]])

// Item 3: One mile walk - With a little difficulty (4)
* item[=].item[+].linkId = "promis-pfa23"
* item[=].item[=].text = "Are you able to go for a walk of at least 15 minutes?"
* insert TranslationDE(item[=].item[=].text, [["Können Sie mindestens 15 Minuten lang spazieren gehen?"]])
* item[=].item[=].answer.valueCoding = $LNC#LA13918-0 "With a little difficulty"
* insert TranslationDE(item[=].item[=].answer.valueCoding.display, [["Mit geringen Schwierigkeiten"]])

// Item 4: Vigorous activities - With some difficulty (3)
* item[=].item[+].linkId = "promis-pfa53"
* item[=].item[=].text = "Are you able to run errands and shop?"
* insert TranslationDE(item[=].item[=].text, [["Können Sie Besorgungen machen und einkaufen gehen?"]])
* item[=].item[=].answer.valueCoding = $LNC#LA13920-6 "With some difficulty"
* insert TranslationDE(item[=].item[=].answer.valueCoding.display, [["Mit einigen Schwierigkeiten"]])

// ===== ANXIETY DOMAIN =====
// Mild anxiety (answers: 2, 3, 2, 2 -> raw score 9)

* item[+].linkId = "PROMIS-29.Anxiety"
* item[=].text = "Anxiety"
* insert TranslationDE(item[=].text, [["Angst"]])
* item[=].item[+].linkId = "PROMIS-29.Anxiety.Description"
* item[=].item[=].text = "In the past 7 days…"
* insert TranslationDE(item[=].item[=].text, [["In den letzten 7 Tagen:"]])

// Item 1: Fearful - Rarely (2)
* item[=].item[+].linkId = "promis-edanx01"
* item[=].item[=].text = "I felt fearful."
* insert TranslationDE(item[=].item[=].text, [["Ich fürchtete mich."]])
* item[=].item[=].answer.valueCoding = $LNC#LA10066-1 "Rarely"
* insert TranslationDE(item[=].item[=].answer.valueCoding.display, [["Selten"]])

// Item 2: Difficulty focusing - Sometimes (3)
* item[=].item[+].linkId = "promis-edanx40"
* item[=].item[=].text = "I found it hard to focus on anything other than my anxiety."
* insert TranslationDE(item[=].item[=].text, [["Ich fand es schwer, auf etwas anderes zu achten als auf meine Angst."]])
* item[=].item[=].answer.valueCoding = $LNC#LA10082-8 "Sometimes"
* insert TranslationDE(item[=].item[=].answer.valueCoding.display, [["Manchmal"]])

// Item 3: Worries - Rarely (2)
* item[=].item[+].linkId = "promis-edanx41"
* item[=].item[=].text = "My worries overwhelmed me."
* insert TranslationDE(item[=].item[=].text, [["Meine Sorgen haben mich überwältigt."]])
* item[=].item[=].answer.valueCoding = $LNC#LA10066-1 "Rarely"
* insert TranslationDE(item[=].item[=].answer.valueCoding.display, [["Selten"]])

// Item 4: Tense - Rarely (2)
* item[=].item[+].linkId = "promis-edanx53"
* item[=].item[=].text = "I felt uneasy."
* insert TranslationDE(item[=].item[=].text, [["Ich fühlte mich unruhig."]])
* item[=].item[=].answer.valueCoding = $LNC#LA10066-1 "Rarely"
* insert TranslationDE(item[=].item[=].answer.valueCoding.display, [["Selten"]])

// ===== DEPRESSION DOMAIN =====
// Moderate depression (answers: 3, 3, 4, 3 -> raw score 13)

* item[+].linkId = "PROMIS-29.Depression"
* item[=].text = "Depression"
* insert TranslationDE(item[=].text, [["Depression"]])
* item[=].item[+].linkId = "PROMIS-29.Depression.Description"
* item[=].item[=].text = "In the past 7 days…"
* insert TranslationDE(item[=].item[=].text, [["In den letzten 7 Tagen:"]])

// Item 1: Worthless - Sometimes (3)
* item[=].item[+].linkId = "promis-eddep04"
* item[=].item[=].text = "I felt worthless."
* insert TranslationDE(item[=].item[=].text, [["Ich fühlte mich wertlos."]])
* item[=].item[=].answer.valueCoding = $LNC#LA10082-8 "Sometimes"
* insert TranslationDE(item[=].item[=].answer.valueCoding.display, [["Manchmal"]])

// Item 2: Helpless - Sometimes (3)
* item[=].item[+].linkId = "promis-eddep06"
* item[=].item[=].text = "I felt helpless."
* insert TranslationDE(item[=].item[=].text, [["Ich fühlte mich hilflos."]])
* item[=].item[=].answer.valueCoding = $LNC#LA10082-8 "Sometimes"
* insert TranslationDE(item[=].item[=].answer.valueCoding.display, [["Manchmal"]])

// Item 3: Depressed - Often (4)
* item[=].item[+].linkId = "promis-eddep29"
* item[=].item[=].text = "I felt depressed."
* insert TranslationDE(item[=].item[=].text, [["Ich fühlte mich niedergeschlagen."]])
* item[=].item[=].answer.valueCoding = $LNC#LA10044-8 "Often"
* insert TranslationDE(item[=].item[=].answer.valueCoding.display, [["Oft"]])

// Item 4: Hopeless - Sometimes (3)
* item[=].item[+].linkId = "promis-eddep41"
* item[=].item[=].text = "I felt hopeless."
* insert TranslationDE(item[=].item[=].text, [["Ich fühlte mich hoffnungslos."]])
* item[=].item[=].answer.valueCoding = $LNC#LA10082-8 "Sometimes"
* insert TranslationDE(item[=].item[=].answer.valueCoding.display, [["Manchmal"]])

// ===== FATIGUE DOMAIN =====
// Significant fatigue (answers: 4, 4, 3, 4 -> raw score 15)

* item[+].linkId = "PROMIS-29.Fatigue"
* item[=].text = "Fatigue"
* insert TranslationDE(item[=].text, [["Erschöpfung"]])
* item[=].item[+].linkId = "PROMIS-29.Fatigue.Description"
* item[=].item[=].text = "In the past 7 days…"
* insert TranslationDE(item[=].item[=].text, [["In den letzten 7 Tagen:"]])

// Item 1: Run down - Often (4)
* item[=].item[+].linkId = "promis-hi7"
* item[=].item[=].text = "I feel fatigued."
* insert TranslationDE(item[=].item[=].text, [["Ich bin erschöpft."]])
* item[=].item[=].answer.valueCoding = $LNC#LA13902-4 "Quite a bit"
* insert TranslationDE(item[=].item[=].answer.valueCoding.display, [["Ziemlich"]])

// Item 2: Fatigued - Often (4)
* item[=].item[+].linkId = "promis-an3"
* item[=].item[=].text = "I have trouble starting things because I am tired."
* insert TranslationDE(item[=].item[=].text, [["Es fällt mir schwer, etwas anzufangen, weil ich müde bin."]])
* item[=].item[=].answer.valueCoding = $LNC#LA13902-4 "Quite a bit"
* insert TranslationDE(item[=].item[=].answer.valueCoding.display, [["Ziemlich"]])

// Item 3: Difficulty starting things - Somewhat (3)
* item[=].item[+].linkId = "promis-fatexp41"
* item[=].item[=].text = "How run-down did you feel on average?"
* insert TranslationDE(item[=].item[=].text, [["Wie ausgelaugt fühlten Sie sich im Allgemeinen?"]])
* item[=].item[=].answer.valueCoding = $LNC#LA13909-9 "Somewhat"
* insert TranslationDE(item[=].item[=].answer.valueCoding.display, [["Mäßig"]])

// Item 4: Average fatigue - Quite a bit (4)
* item[=].item[+].linkId = "promis-fatexp40"
* item[=].item[=].text = "How fatigued were you on average?"
* insert TranslationDE(item[=].item[=].text, [["Wie erschöpft waren Sie im Allgemeinen?"]])
* item[=].item[=].answer.valueCoding = $LNC#LA13902-4 "Quite a bit"
* insert TranslationDE(item[=].item[=].answer.valueCoding.display, [["Ziemlich"]])

// ===== SLEEP DISTURBANCE DOMAIN =====
// Moderate sleep problems (answers: 3, 3, 3, 2 -> raw score 11)

* item[+].linkId = "PROMIS-29.Sleep"
* item[=].text = "Sleep Disturbance"
* insert TranslationDE(item[=].text, [["Schlafstörungen"]])
* item[=].item[+].linkId = "PROMIS-29.Sleep.Description"
* item[=].item[=].text = "In the past 7 days…"
* insert TranslationDE(item[=].item[=].text, [["In den letzten 7 Tagen:"]])

// Item 1: Sleep quality - Fair (3)
* item[=].item[+].linkId = "promis-sleep109"
* item[=].item[=].text = "My sleep quality was..."
* insert TranslationDE(item[=].item[=].text, [["Meine Schlafqualität war ..."]])
* item[=].item[=].answer.valueCoding = $LNC#LA8968-5 "Fair"
* insert TranslationDE(item[=].item[=].answer.valueCoding.display, [["Mäßig"]])

// Item 2: Difficulty falling asleep - Sometimes (3)
* item[=].item[+].linkId = "promis-sleep116"
* item[=].item[=].text = "My sleep was refreshing."
* insert TranslationDE(item[=].item[=].text, [["Mein Schlaf war erfrischend."]])
* item[=].item[=].answer.valueCoding = $LNC#LA13909-9 "Somewhat"
* insert TranslationDE(item[=].item[=].answer.valueCoding.display, [["Mäßig"]])

// Item 3: Refreshing sleep - Sometimes (3)
* item[=].item[+].linkId = "promis-sleep20"
* item[=].item[=].text = "I had a problem with my sleep."
* insert TranslationDE(item[=].item[=].text, [["Ich hatte Schlafprobleme."]])
* item[=].item[=].answer.valueCoding = $LNC#LA13909-9 "Somewhat"
* insert TranslationDE(item[=].item[=].answer.valueCoding.display, [["Mäßig"]])

// Item 4: Sleep problem - Rarely (2)
* item[=].item[+].linkId = "promis-sleep44"
* item[=].item[=].text = "I had difficulty falling asleep."
* insert TranslationDE(item[=].item[=].text, [["Ich hatte Schwierigkeiten einzuschlafen."]])
* item[=].item[=].answer.valueCoding = $LNC#LA13863-8 "A little bit"
* insert TranslationDE(item[=].item[=].answer.valueCoding.display, [["Ein wenig"]])

// ===== SOCIAL FUNCTION DOMAIN =====
// Some social limitation (answers: 3, 2, 3, 3 -> raw score 11)

* item[+].linkId = "PROMIS-29.Social"
* item[=].text = "Ability to Participate in Social Roles and Activities"
* insert TranslationDE(item[=].text, [["Soziale Teilhabe"]])

// Item 1: Social activities - Sometimes (3)
* item[=].item[+].linkId = "promis-srpper23-caps"
* item[=].item[=].text = "I have trouble doing all of my usual work (include work at home)."
* insert TranslationDE(item[=].item[=].text, [["Es fällt mir schwer, meine gewohnte Arbeit zu erledigen (einschließlich der Arbeit zu Hause)."]])
* item[=].item[=].answer.valueCoding = $LNC#LA10082-8 "Sometimes"
* insert TranslationDE(item[=].item[=].answer.valueCoding.display, [["Manchmal"]])

// Item 4: Leisure activities - Sometimes (3)
* item[=].item[+].linkId = "promis-srpper11-caps"
* item[=].item[=].text = "I have trouble doing all of my regular leisure activities with others."
* insert TranslationDE(item[=].item[=].text, [["Es fällt mir schwer, allen meinen regelmäßigen Freizeitaktivitäten mit anderen nachzugehen."]])
* item[=].item[=].answer.valueCoding = $LNC#LA10082-8 "Sometimes"
* insert TranslationDE(item[=].item[=].answer.valueCoding.display, [["Manchmal"]])

// Item 2: Family activities - Rarely (2)
* item[=].item[+].linkId = "promis-srpper18-caps"
* item[=].item[=].text = "I have trouble doing all of the family activities that I want to do."
* insert TranslationDE(item[=].item[=].text, [["Es fällt mir schwer, allen Aktivitäten nachzugehen, die ich mit meiner Familie machen möchte."]])
* item[=].item[=].answer.valueCoding = $LNC#LA10066-1 "Rarely"
* insert TranslationDE(item[=].item[=].answer.valueCoding.display, [["Selten"]])

// Item 3: Work activities - Sometimes (3)
* item[=].item[+].linkId = "promis-srpper46-caps"
* item[=].item[=].text = "I have trouble doing all of the activities with friends that I want to do."
* insert TranslationDE(item[=].item[=].text, [["Es fällt mir schwer, allen Aktivitäten nachzugehen, die ich mit Freunden machen möchte."]])
* item[=].item[=].answer.valueCoding = $LNC#LA10082-8 "Sometimes"
* insert TranslationDE(item[=].item[=].answer.valueCoding.display, [["Manchmal"]])

// ===== PAIN INTERFERENCE DOMAIN =====
// Moderate pain interference (answers: 3, 3, 2, 3 -> raw score 11)

* item[+].linkId = "PROMIS-29.PainInterference"
* item[=].text = "Pain Interference"
* insert TranslationDE(item[=].text, [["Schmerzbedingte Beeinträchtigung"]])
* item[=].item[+].linkId = "PROMIS-29.PainInterference.Description"
* item[=].item[=].text = "In the past 7 days…"
* insert TranslationDE(item[=].item[=].text, [["In den letzten 7 Tagen:"]])

// Item 1: Day-to-day activities - Somewhat (3)
* item[=].item[+].linkId = "promis-painin9"
* item[=].item[=].text = "How much did pain interfere with your day to day activities?"
* insert TranslationDE(item[=].item[=].text, [["Wie sehr beeinträchtigten Schmerzen Ihre Alltagsaktivitäten?"]])
* item[=].item[=].answer.valueCoding = $LNC#LA13909-9 "Somewhat"
* insert TranslationDE(item[=].item[=].answer.valueCoding.display, [["Mäßig"]])

// Item 2: Work activities - Somewhat (3)
* item[=].item[+].linkId = "promis-painin22"
* item[=].item[=].text = "How much did pain interfere with work around the home?"
* insert TranslationDE(item[=].item[=].text, [["Wie sehr beeinträchtigten Schmerzen Ihre häuslichen Tätigkeiten?"]])
* item[=].item[=].answer.valueCoding = $LNC#LA13909-9 "Somewhat"
* insert TranslationDE(item[=].item[=].answer.valueCoding.display, [["Mäßig"]])

// Item 3: Household chores - A little bit (2)
* item[=].item[+].linkId = "promis-painin31"
* item[=].item[=].text = "How much did pain interfere with your ability to participate in social activities?"
* insert TranslationDE(item[=].item[=].text, [["Wie sehr beeinträchtigten Schmerzen Ihre Fähigkeit, an sozialen Aktivitäten teilzunehmen?"]])
* item[=].item[=].answer.valueCoding = $LNC#LA13863-8 "A little bit"
* insert TranslationDE(item[=].item[=].answer.valueCoding.display, [["Ein wenig"]])

// Item 4: Social activities - Somewhat (3)
* item[=].item[+].linkId = "promis-painin34"
* item[=].item[=].text = "How much did pain interfere with your household chores?"
* insert TranslationDE(item[=].item[=].text, [["Wie sehr beeinträchtigten Schmerzen Sie bei Ihrer Hausarbeit?"]])
* item[=].item[=].answer.valueCoding = $LNC#LA13909-9 "Somewhat"
* insert TranslationDE(item[=].item[=].answer.valueCoding.display, [["Mäßig"]])

// ===== PAIN INTENSITY =====

* item[+].linkId = "PROMIS-29.PainIntensity"
* item[=].text = "Pain Intensity"
* insert TranslationDE(item[=].text, [["Schmerzintensität"]])

// Pain intensity scale 0-10: moderate pain level
* item[=].item[+].linkId = "promis-global07"
* item[=].item[=].text = "How would you rate your pain on average?"
* insert TranslationDE(item[=].item[=].text, [["Wie würden Sie Ihre Schmerzen im Allgemeinen einschätzen?"]])
* item[=].item[=].answer.valueInteger = 5

// ===== CALCULATED SCORES =====

* item[+].linkId = "PROMIS-29.Scores"
* item[=].text = "Domain Scores"
* insert TranslationDE(item[=].text, [["Bereichs-Bewertungen"]])

// Physical Function Scores (raw=13 -> T-score=42.6)
* item[=].item[+].linkId = "promis-29-physical-function-raw"
* item[=].item[=].text = "PROMIS-29 Physical Function - Raw Score"
* insert TranslationDE(item[=].item[=].text, [["PROMIS-29 Körperliche Funktion - Rohwert"]])
* item[=].item[=].answer.valueDecimal = 13

* item[=].item[+].linkId = "promis-29-physical-function-tscore"
* item[=].item[=].text = "PROMIS-29 Physical Function - T-Score"
* insert TranslationDE(item[=].item[=].text, [["PROMIS-29 Körperliche Funktion - T-Score"]])
* item[=].item[=].answer.valueDecimal = 42.6

// Anxiety Scores (raw=9 -> T-score=56.8)
* item[=].item[+].linkId = "promis-29-anxiety-raw"
* item[=].item[=].text = "PROMIS-29 Anxiety - Raw Score"
* insert TranslationDE(item[=].item[=].text, [["PROMIS-29 Angst - Rohwert"]])
* item[=].item[=].answer.valueDecimal = 9

* item[=].item[+].linkId = "promis-29-anxiety-tscore"
* item[=].item[=].text = "PROMIS-29 Anxiety - T-Score"
* insert TranslationDE(item[=].item[=].text, [["PROMIS-29 Angst - T-Score"]])
* item[=].item[=].answer.valueDecimal = 56.8

// Depression Scores (raw=13 -> T-score=63.9)
* item[=].item[+].linkId = "promis-29-depression-raw"
* item[=].item[=].text = "PROMIS-29 Depression - Raw Score"
* insert TranslationDE(item[=].item[=].text, [["PROMIS-29 Depression - Rohwert"]])
* item[=].item[=].answer.valueDecimal = 13

* item[=].item[+].linkId = "promis-29-depression-tscore"
* item[=].item[=].text = "PROMIS-29 Depression - T-Score"
* insert TranslationDE(item[=].item[=].text, [["PROMIS-29 Depression - T-Score"]])
* item[=].item[=].answer.valueDecimal = 63.9

// Fatigue Scores (raw=15 -> T-score=64.9)
* item[=].item[+].linkId = "promis-29-fatigue-raw"
* item[=].item[=].text = "PROMIS-29 Fatigue - Raw Score"
* insert TranslationDE(item[=].item[=].text, [["PROMIS-29 Erschöpfung - Rohwert"]])
* item[=].item[=].answer.valueDecimal = 15

* item[=].item[+].linkId = "promis-29-fatigue-tscore"
* item[=].item[=].text = "PROMIS-29 Fatigue - T-Score"
* insert TranslationDE(item[=].item[=].text, [["PROMIS-29 Erschöpfung - T-Score"]])
* item[=].item[=].answer.valueDecimal = 64.9

// Sleep Disturbance Scores (raw=11 -> T-score=53.6)
* item[=].item[+].linkId = "promis-29-sleep-raw"
* item[=].item[=].text = "PROMIS-29 Sleep Disturbance - Raw Score"
* insert TranslationDE(item[=].item[=].text, [["PROMIS-29 Schlafstörungen - Rohwert"]])
* item[=].item[=].answer.valueDecimal = 11

* item[=].item[+].linkId = "promis-29-sleep-tscore"
* item[=].item[=].text = "PROMIS-29 Sleep Disturbance - T-Score"
* insert TranslationDE(item[=].item[=].text, [["PROMIS-29 Schlafstörungen - T-Score"]])
* item[=].item[=].answer.valueDecimal = 53.6

// Social Function Scores (raw=11 -> T-score=39.7)
* item[=].item[+].linkId = "promis-29-social-raw"
* item[=].item[=].text = "PROMIS-29 Social Roles and Activities - Raw Score"
* insert TranslationDE(item[=].item[=].text, [["PROMIS-29 Soziale Teilhabe - Rohwert"]])
* item[=].item[=].answer.valueDecimal = 11

* item[=].item[+].linkId = "promis-29-social-tscore"
* item[=].item[=].text = "PROMIS-29 Social Roles and Activities - T-Score"
* insert TranslationDE(item[=].item[=].text, [["PROMIS-29 Soziale Teilhabe - T-Score"]])
* item[=].item[=].answer.valueDecimal = 39.7

// Pain Interference Scores (raw=11 -> T-score=60.9)
* item[=].item[+].linkId = "promis-29-pain-interference-raw"
* item[=].item[=].text = "PROMIS-29 Pain Interference - Raw Score"
* insert TranslationDE(item[=].item[=].text, [["PROMIS-29 Schmerzbedingte Beeinträchtigung - Rohwert"]])
* item[=].item[=].answer.valueDecimal = 11

* item[=].item[+].linkId = "promis-29-pain-interference-tscore"
* item[=].item[=].text = "PROMIS-29 Pain Interference - T-Score"
* insert TranslationDE(item[=].item[=].text, [["PROMIS-29 Schmerzbedingte Beeinträchtigung - T-Score"]])
* item[=].item[=].answer.valueDecimal = 60.9

// ============================================================================
// Inline Instance 3: Physical Function T-Score Observation
// ============================================================================

Instance: ObsPhysicalFunctionTScore
InstanceOf: MII_PR_PRO_PROMIS_29_Physical_Function_TScore
Usage: #inline
* id = "obs-promis-29-physical-function-tscore"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-promis-29-physical-function-tscore)

* status = #final
* code = $LNC#91721-1 "PROMIS physical function - version 2.0 T-score"
* subject = Reference(patient-example-1)
* effectiveDateTime = "2025-01-30T14:30:00Z"

* valueQuantity.value = 42.6
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}

* method.text = "PROMIS-29 Profile v2.1"

* extension[instantiatesCanonical].url = "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical"
* extension[instantiatesCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-29-physical-function-tscore"

* derivedFrom = Reference(promis-29-response-1)

// ============================================================================
// Inline Instance 4: Anxiety T-Score Observation
// ============================================================================

Instance: ObsAnxietyTScore
InstanceOf: MII_PR_PRO_PROMIS_29_Anxiety_TScore
Usage: #inline
* id = "obs-promis-29-anxiety-tscore"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-promis-29-anxiety-tscore)

* status = #final
* code = $LNC#77862-1 "PROMIS emotional distress - anxiety - version 1.0 Tscore"
* subject = Reference(patient-example-1)
* effectiveDateTime = "2025-01-30T14:30:00Z"

* valueQuantity.value = 56.8
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}

* method.text = "PROMIS-29 Profile v2.1"

* extension[instantiatesCanonical].url = "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical"
* extension[instantiatesCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-29-anxiety-tscore"

* derivedFrom = Reference(promis-29-response-1)

// ============================================================================
// Inline Instance 5: Depression T-Score Observation
// ============================================================================

Instance: ObsDepressionTScore
InstanceOf: MII_PR_PRO_PROMIS_29_Depression_TScore
Usage: #inline
* id = "obs-promis-29-depression-tscore"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-promis-29-depression-tscore)

* status = #final
* code = $LNC#77861-3 "PROMIS emotional distress - depression - version 1.0 Tscore"
* subject = Reference(patient-example-1)
* effectiveDateTime = "2025-01-30T14:30:00Z"

* valueQuantity.value = 63.9
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}

* method.text = "PROMIS-29 Profile v2.1"

* extension[instantiatesCanonical].url = "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical"
* extension[instantiatesCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-29-depression-tscore"

* derivedFrom = Reference(promis-29-response-1)

// ============================================================================
// Inline Instance 6: Fatigue T-Score Observation
// ============================================================================

Instance: ObsFatigueTScore
InstanceOf: MII_PR_PRO_PROMIS_29_Fatigue_TScore
Usage: #inline
* id = "obs-promis-29-fatigue-tscore"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-promis-29-fatigue-tscore)

* status = #final
* code = $LNC#77864-7 "PROMIS fatigue - version 1.0 Tscore"
* subject = Reference(patient-example-1)
* effectiveDateTime = "2025-01-30T14:30:00Z"

* valueQuantity.value = 64.9
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}

* method.text = "PROMIS-29 Profile v2.1"

* extension[instantiatesCanonical].url = "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical"
* extension[instantiatesCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-29-fatigue-tscore"

* derivedFrom = Reference(promis-29-response-1)

// ============================================================================
// Inline Instance 7: Sleep Disturbance T-Score Observation
// ============================================================================

Instance: ObsSleepTScore
InstanceOf: MII_PR_PRO_PROMIS_29_Sleep_Disturbance_TScore
Usage: #inline
* id = "obs-promis-29-sleep-tscore"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-promis-29-sleep-disturbance-tscore)

* status = #final
* code = $LNC#77860-5 "PROMIS sleep disturbance - version 1.0 Tscore"
* subject = Reference(patient-example-1)
* effectiveDateTime = "2025-01-30T14:30:00Z"

* valueQuantity.value = 53.6
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}

* method.text = "PROMIS-29 Profile v2.1"

* extension[instantiatesCanonical].url = "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical"
* extension[instantiatesCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-29-sleep-disturbance-tscore"

* derivedFrom = Reference(promis-29-response-1)

// ============================================================================
// Inline Instance 8: Social Function T-Score Observation
// ============================================================================

Instance: ObsSocialFunctionTScore
InstanceOf: MII_PR_PRO_PROMIS_29_Social_Function_TScore
Usage: #inline
* id = "obs-promis-29-social-tscore"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-promis-29-social-function-tscore)

* status = #final
* code = $LNC#77854-8 "PROMIS ability to participate in social roles and activities - version 2.0 Tscore"
* subject = Reference(patient-example-1)
* effectiveDateTime = "2025-01-30T14:30:00Z"

* valueQuantity.value = 39.7
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}

* method.text = "PROMIS-29 Profile v2.1"

* extension[instantiatesCanonical].url = "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical"
* extension[instantiatesCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-29-social-function-tscore"

* derivedFrom = Reference(promis-29-response-1)

// ============================================================================
// Inline Instance 9: Pain Interference T-Score Observation
// ============================================================================

Instance: ObsPainInterferenceTScore
InstanceOf: MII_PR_PRO_PROMIS_29_Pain_Interference_TScore
Usage: #inline
* id = "obs-promis-29-pain-interference-tscore"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-promis-29-pain-interference-tscore)

* status = #final
* code = $LNC#77865-4 "PROMIS pain interference - version 1.0 Tscore"
* subject = Reference(patient-example-1)
* effectiveDateTime = "2025-01-30T14:30:00Z"

* valueQuantity.value = 60.9
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}

* method.text = "PROMIS-29 Profile v2.1"

* extension[instantiatesCanonical].url = "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical"
* extension[instantiatesCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-29-pain-interference-tscore"

* derivedFrom = Reference(promis-29-response-1)

// ============================================================================
// Inline Instance 10: Pain Intensity Observation
// ============================================================================

Instance: ObsPainIntensity
InstanceOf: MII_PR_PRO_PROMIS_29_Pain_Intensity
Usage: #inline
* id = "obs-promis-29-pain-intensity"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-promis-29-pain-intensity)

* status = #final
* code = $LNC#61583-1 "How would you rate your pain on average in past 7 days [PROMIS]"
* subject = Reference(patient-example-1)
* effectiveDateTime = "2025-01-30T14:30:00Z"

* valueQuantity.value = 5
* valueQuantity.unit = "1"
* valueQuantity.system = $UCUM
* valueQuantity.code = #1

* method.text = "PROMIS-29 Profile v2.1 - Pain Intensity single item"

* extension[instantiatesCanonical].url = "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical"
* extension[instantiatesCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-29-pain-intensity"

* derivedFrom = Reference(promis-29-response-1)
