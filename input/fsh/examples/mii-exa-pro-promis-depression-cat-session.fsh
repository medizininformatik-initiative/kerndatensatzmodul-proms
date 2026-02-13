// ============================================================================
// Example: Completed PROMIS Depression CAT Session
// ============================================================================
// Demonstrates a CAT session where 6 items were administered before the
// stopping criterion (SE < 0.30) was met. The CAT engine selected items
// adaptively to maximize information at the respondent's estimated theta.
// ============================================================================

Instance: mii-exa-pro-promis-depression-cat-response
InstanceOf: MII_PR_PRO_QuestionnaireResponse
Title: "MII EXA PRO PROMIS Depression CAT Response (Completed)"
Description: "Example completed adaptive QuestionnaireResponse from a PROMIS Depression CAT session (6 items administered)"
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)

* questionnaire = $mii-qst-pro-promis-depression-cat
* status = #completed
* subject = Reference(Patient/mii-exa-pro-patient)
* authored = "2024-03-10T14:20:00Z"

// Item 1 (CAT selected first - high information at prior): I felt worthless - Sometimes (3)
* item[+].linkId = "promis-eddep04"
* item[=].answer.valueCoding = $LNC#LA10082-8 "Sometimes"

// Item 2 (CAT selected): I felt depressed - Often (4)
* item[+].linkId = "promis-eddep21"
* item[=].answer.valueCoding = $LNC#LA10044-8 "Often"

// Item 3 (CAT selected): I felt hopeless - Sometimes (3)
* item[+].linkId = "promis-eddep28"
* item[=].answer.valueCoding = $LNC#LA10082-8 "Sometimes"

// Item 4 (CAT selected): I felt sad - Often (4)
* item[+].linkId = "promis-eddep17"
* item[=].answer.valueCoding = $LNC#LA10044-8 "Often"

// Item 5 (CAT selected): I felt helpless - Sometimes (3)
* item[+].linkId = "promis-eddep06"
* item[=].answer.valueCoding = $LNC#LA10082-8 "Sometimes"

// Item 6 (CAT selected - SE threshold met after this): I felt like a failure - Rarely (2)
* item[+].linkId = "promis-eddep19"
* item[=].answer.valueCoding = $LNC#LA10066-1 "Rarely"

// --------------------------------------------------------------------------

Instance: mii-exa-pro-promis-depression-cat-tscore
InstanceOf: MII_PR_PRO_PROMIS_Depression_CAT_T_Score
Title: "MII EXA PRO PROMIS Depression CAT T-Score"
Description: "Example T-Score observation derived from a PROMIS Depression CAT session (T=61.4, SE=0.28, 6 items)"
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-promis-depression-cat-t-score)

* status = #final
* category = $hl7-observation-category#survey "Survey"
* code.coding[loinc] = $LNC#77861-3 "PROMIS emotional distress - depression - version 1.0 Tscore"
* code.coding[mii] = $mii-cs-pro-score-catalogue#promis-depression-cat-tscore "PROMIS Depression CAT T-Score"

* subject = Reference(Patient/mii-exa-pro-patient)
* effectiveDateTime = "2024-03-10T14:20:00Z"

* method.text = "Computer Adaptive Testing (Graded Response Model, EAP estimation)"

* valueQuantity.value = 61.4
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}

* derivedFrom = Reference(QuestionnaireResponse/mii-exa-pro-promis-depression-cat-response)

// Standard Error of theta estimate (stopping criterion: SE < 0.30)
* component[standardError].code = $mii-cs-pro-score-catalogue#promis-depression-cat-se "PROMIS Depression CAT Standard Error"
* component[standardError].valueQuantity.value = 0.28
* component[standardError].valueQuantity.unit = "{score}"
* component[standardError].valueQuantity.system = $UCUM
* component[standardError].valueQuantity.code = #{score}

// Number of items administered
* component[itemCount].code = $LNC#94100-0 "Number of items used"
* component[itemCount].valueInteger = 6
