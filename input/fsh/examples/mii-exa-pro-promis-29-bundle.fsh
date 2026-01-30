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
* entry[+].fullUrl = "urn:uuid:patient-example-1"
* entry[=].resource = PatientExample1

// Entry 2: QuestionnaireResponse
* entry[+].fullUrl = "urn:uuid:promis-29-response-1"
* entry[=].resource = PROMIS29ResponseExample

// Entry 3: Physical Function T-Score Observation
* entry[+].fullUrl = "urn:uuid:obs-promis-29-physical-function-tscore"
* entry[=].resource = ObsPhysicalFunctionTScore

// Entry 4: Anxiety T-Score Observation
* entry[+].fullUrl = "urn:uuid:obs-promis-29-anxiety-tscore"
* entry[=].resource = ObsAnxietyTScore

// Entry 5: Depression T-Score Observation
* entry[+].fullUrl = "urn:uuid:obs-promis-29-depression-tscore"
* entry[=].resource = ObsDepressionTScore

// Entry 6: Fatigue T-Score Observation
* entry[+].fullUrl = "urn:uuid:obs-promis-29-fatigue-tscore"
* entry[=].resource = ObsFatigueTScore

// Entry 7: Sleep Disturbance T-Score Observation
* entry[+].fullUrl = "urn:uuid:obs-promis-29-sleep-tscore"
* entry[=].resource = ObsSleepTScore

// Entry 8: Social Function T-Score Observation
* entry[+].fullUrl = "urn:uuid:obs-promis-29-social-tscore"
* entry[=].resource = ObsSocialFunctionTScore

// Entry 9: Pain Interference T-Score Observation
* entry[+].fullUrl = "urn:uuid:obs-promis-29-pain-interference-tscore"
* entry[=].resource = ObsPainInterferenceTScore

// Entry 10: Pain Intensity Observation
* entry[+].fullUrl = "urn:uuid:obs-promis-29-pain-intensity"
* entry[=].resource = ObsPainIntensity

// ============================================================================
// Inline Instance 1: Patient
// ============================================================================

Instance: PatientExample1
InstanceOf: Patient
Usage: #inline
* id = "patient-example-1"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient)
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
* id = "promis-29-response-1"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)

* questionnaire = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29"
* status = #completed
* subject = Reference(patient-example-1)
* authored = "2025-01-30T14:30:00Z"

// ===== PHYSICAL FUNCTION DOMAIN =====
// Moderate functional limitation (answers: 3, 3, 4, 3 -> raw score 13)

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
// Mild anxiety (answers: 2, 3, 2, 2 -> raw score 9)

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
// Moderate depression (answers: 3, 3, 4, 3 -> raw score 13)

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
// Significant fatigue (answers: 4, 4, 3, 4 -> raw score 15)

* item[+].linkId = "PROMIS-29.Fatigue"
* item[=].item[+].linkId = "PROMIS-29.Fatigue.Description"

// Item 1: Run down - Often (4)
* item[=].item[+].linkId = "promis-hi7"
* item[=].item[=].answer.valueCoding = $LNC#LA10044-8 "Often"

// Item 2: Fatigued - Often (4)
* item[=].item[+].linkId = "promis-an3"
* item[=].item[=].answer.valueCoding = $LNC#LA10044-8 "Often"

// Item 3: Difficulty starting things - Sometimes (3)
* item[=].item[+].linkId = "promis-fatexp41"
* item[=].item[=].answer.valueCoding = $LNC#LA10082-8 "Sometimes"

// Item 4: Average fatigue - Often (4)
* item[=].item[+].linkId = "promis-fatexp40"
* item[=].item[=].answer.valueCoding = $LNC#LA10044-8 "Often"

// ===== SLEEP DISTURBANCE DOMAIN =====
// Moderate sleep problems (answers: 3, 3, 3, 2 -> raw score 11)

* item[+].linkId = "PROMIS-29.Sleep"
* item[=].item[+].linkId = "PROMIS-29.Sleep.Description"

// Item 1: Sleep quality - Sometimes (3)
* item[=].item[+].linkId = "promis-sleep109"
* item[=].item[=].answer.valueCoding = $LNC#LA10082-8 "Sometimes"

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
// Some social limitation (answers: 3, 2, 3, 3 -> raw score 11)

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
// Moderate pain interference (answers: 3, 3, 2, 3 -> raw score 11)

* item[+].linkId = "PROMIS-29.Pain"
* item[=].item[+].linkId = "PROMIS-29.Pain.Description"

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
* item[=].item[+].linkId = "PROMIS-29.PainIntensity.Description"

// Pain intensity scale 0-10: moderate pain level
* item[=].item[+].linkId = "promis-painintens-21"
* item[=].item[=].answer.valueInteger = 5

// ===== CALCULATED SCORES =====

* item[+].linkId = "PROMIS-29.Scores"

// Physical Function Scores (raw=13 -> T-score=42.6)
* item[=].item[+].linkId = "promis-29-physical-function-raw"
* item[=].item[=].answer.valueDecimal = 13

* item[=].item[+].linkId = "promis-29-physical-function-tscore"
* item[=].item[=].answer.valueDecimal = 42.6

// Anxiety Scores (raw=9 -> T-score=56.8)
* item[=].item[+].linkId = "promis-29-anxiety-raw"
* item[=].item[=].answer.valueDecimal = 9

* item[=].item[+].linkId = "promis-29-anxiety-tscore"
* item[=].item[=].answer.valueDecimal = 56.8

// Depression Scores (raw=13 -> T-score=63.9)
* item[=].item[+].linkId = "promis-29-depression-raw"
* item[=].item[=].answer.valueDecimal = 13

* item[=].item[+].linkId = "promis-29-depression-tscore"
* item[=].item[=].answer.valueDecimal = 63.9

// Fatigue Scores (raw=15 -> T-score=64.9)
* item[=].item[+].linkId = "promis-29-fatigue-raw"
* item[=].item[=].answer.valueDecimal = 15

* item[=].item[+].linkId = "promis-29-fatigue-tscore"
* item[=].item[=].answer.valueDecimal = 64.9

// Sleep Disturbance Scores (raw=11 -> T-score=53.6)
* item[=].item[+].linkId = "promis-29-sleep-raw"
* item[=].item[=].answer.valueDecimal = 11

* item[=].item[+].linkId = "promis-29-sleep-tscore"
* item[=].item[=].answer.valueDecimal = 53.6

// Social Function Scores (raw=11 -> T-score=39.7)
* item[=].item[+].linkId = "promis-29-social-raw"
* item[=].item[=].answer.valueDecimal = 11

* item[=].item[+].linkId = "promis-29-social-tscore"
* item[=].item[=].answer.valueDecimal = 39.7

// Pain Interference Scores (raw=11 -> T-score=60.9)
* item[=].item[+].linkId = "promis-29-pain-interference-raw"
* item[=].item[=].answer.valueDecimal = 11

* item[=].item[+].linkId = "promis-29-pain-interference-tscore"
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
* code = $LNC#71967-4 "PROMIS-29 Anxiety score T-score"
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
* code = $LNC#75261-8 "How intense was your average pain in the past 7 days [PROMIS]"
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
