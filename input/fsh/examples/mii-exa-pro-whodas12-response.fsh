// ============================================================================
// WHODAS 2.0 12-Item QuestionnaireResponse Example
// ============================================================================
// Verification scenario: every one of the 12 items answered "Moderate" (ordinal 2).
//   Simple sum = 12 items × 2 = 24 (range 0-48).
// The score item (whodas-whodas12-score-simple-sum) therefore carries 24, and
// the score Observation below mirrors that value.
// ============================================================================

Instance: mii-exa-pro-whodas12-response-01
InstanceOf: mii-pr-pro-questionnaire-response
Title: "MII EXA PRO WHODAS 2.0 12-Item Response"
Description: "Complete WHODAS-12 QuestionnaireResponse example. All 12 items answered 'Moderate' (ordinal 2); simple sum = 24."
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)
* insert QuestionnaireRef(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-whodas-whodas12)
* status = #completed
// A German patient answering the German rendering of the form: the answer
// displays below are the German designations, so the resource declares its
// language. Without it the QR inherits the IG default (en since the template
// migration) and the validator flags every German display as Wrong Display.
* language = #en
* subject.reference = "Patient/mii-exa-pro-patient"
* authored = "2026-02-01"

// Q1 (value: 2)
* item[+].linkId = "whodas-whodas12-q01"
* item[=].text = "Standing for long periods such as 30 minutes?"
* insert TranslationDE(item[=].text, [["längere Zeit (ca. 30 min) zu stehen?"]])
* item[=].answer.valueCoding = $mii-cs-pro-whodas-12#whodas12-answer-2 "Moderate"
* insert TranslationDE(item[=].answer.valueCoding.display, [["mäßige"]])

// Q2 (value: 2)
* item[+].linkId = "whodas-whodas12-q02"
* item[=].text = "Taking care of your household responsibilities?"
* insert TranslationDE(item[=].text, [["Ihren Haushaltspflichten nachzukommen?"]])
* item[=].answer.valueCoding = $mii-cs-pro-whodas-12#whodas12-answer-2 "Moderate"
* insert TranslationDE(item[=].answer.valueCoding.display, [["mäßige"]])

// Q3 (value: 2)
* item[+].linkId = "whodas-whodas12-q03"
* item[=].text = "Learning a new task, for example, learning how to get to a new place?"
* insert TranslationDE(item[=].text, [["Neue Aufgaben zu lernen (z.B. erlernen an einen neuen Ort zu gelangen, den sie nicht kannten?)"]])
* item[=].answer.valueCoding = $mii-cs-pro-whodas-12#whodas12-answer-2 "Moderate"
* insert TranslationDE(item[=].answer.valueCoding.display, [["mäßige"]])

// Q4 (value: 2)
* item[+].linkId = "whodas-whodas12-q04"
* item[=].text = "Joining in community activities (for example, festivities, religious or other activities) in the same way as anyone else can?"
* insert TranslationDE(item[=].text, [["Wie viele Schwierigkeiten hatten Sie, an gesellschaftlichen Aktivitäten (wie z.B. Festlichkeiten, religiöse oder andere Aktivitäten) in der gleichen Art und Weise teilzunehmen, wie jeder andere?"]])
* item[=].answer.valueCoding = $mii-cs-pro-whodas-12#whodas12-answer-2 "Moderate"
* insert TranslationDE(item[=].answer.valueCoding.display, [["mäßige"]])

// Q5 (value: 2)
* item[+].linkId = "whodas-whodas12-q05"
* item[=].text = "How much have you been emotionally affected by your health problems?"
* insert TranslationDE(item[=].text, [["Wie sehr wurden Sie durch Ihren gesundheitlichen Zustand emotional belastet?"]])
* item[=].answer.valueCoding = $mii-cs-pro-whodas-12#whodas12-answer-2 "Moderate"
* insert TranslationDE(item[=].answer.valueCoding.display, [["mäßige"]])

// Q6 (value: 2)
* item[+].linkId = "whodas-whodas12-q06"
* item[=].text = "Concentrating on doing something for ten minutes?"
* insert TranslationDE(item[=].text, [["Sich auf etwas für 10 Minuten zu konzentrieren?"]])
* item[=].answer.valueCoding = $mii-cs-pro-whodas-12#whodas12-answer-2 "Moderate"
* insert TranslationDE(item[=].answer.valueCoding.display, [["mäßige"]])

// Q7 (value: 2)
* item[+].linkId = "whodas-whodas12-q07"
* item[=].text = "Walking a long distance such as a kilometre?"
* insert TranslationDE(item[=].text, [["Eine längere Strecke (ca. einen Kilometer) zu Fuß zu gehen?"]])
* item[=].answer.valueCoding = $mii-cs-pro-whodas-12#whodas12-answer-2 "Moderate"
* insert TranslationDE(item[=].answer.valueCoding.display, [["mäßige"]])

// Q8 (value: 2)
* item[+].linkId = "whodas-whodas12-q08"
* item[=].text = "Washing your whole body?"
* insert TranslationDE(item[=].text, [["Ihren gesamten Körper zu waschen?"]])
* item[=].answer.valueCoding = $mii-cs-pro-whodas-12#whodas12-answer-2 "Moderate"
* insert TranslationDE(item[=].answer.valueCoding.display, [["mäßige"]])

// Q9 (value: 2)
* item[+].linkId = "whodas-whodas12-q09"
* item[=].text = "Getting dressed?"
* insert TranslationDE(item[=].text, [["sich anzuziehen?"]])
* item[=].answer.valueCoding = $mii-cs-pro-whodas-12#whodas12-answer-2 "Moderate"
* insert TranslationDE(item[=].answer.valueCoding.display, [["mäßige"]])

// Q10 (value: 2)
* item[+].linkId = "whodas-whodas12-q10"
* item[=].text = "Dealing with people you do not know?"
* insert TranslationDE(item[=].text, [["Im Umgang mit anderen Personen, die Sie nicht kennen?"]])
* item[=].answer.valueCoding = $mii-cs-pro-whodas-12#whodas12-answer-2 "Moderate"
* insert TranslationDE(item[=].answer.valueCoding.display, [["mäßige"]])

// Q11 (value: 2)
* item[+].linkId = "whodas-whodas12-q11"
* item[=].text = "Maintaining a friendship?"
* insert TranslationDE(item[=].text, [["Eine Freundschaft aufrechtzuerhalten?"]])
* item[=].answer.valueCoding = $mii-cs-pro-whodas-12#whodas12-answer-2 "Moderate"
* insert TranslationDE(item[=].answer.valueCoding.display, [["mäßige"]])

// Q12 (value: 2)
* item[+].linkId = "whodas-whodas12-q12"
* item[=].text = "Your day-to-day work/school?"
* insert TranslationDE(item[=].text, [["Bei der Bewältigung des Arbeits-/Schulalltags?"]])
* item[=].answer.valueCoding = $mii-cs-pro-whodas-12#whodas12-answer-2 "Moderate"
* insert TranslationDE(item[=].answer.valueCoding.display, [["mäßige"]])

// ===== Simple Sum Score: 12 × 2 = 24 =====
* item[+].linkId = "whodas-whodas12-score-simple-sum"
* item[=].text = "WHODAS 2.0 12-Item simple sum score (0-48)"
* insert TranslationDE(item[=].text, [["WHODAS 2.0 12-Item Summenwert (Simple Sum, 0-48)"]])
* item[=].answer.valueDecimal = 24


// ============================================================================
// WHODAS-12 Score Observation Example (mirrors the calculated simple sum)
// ============================================================================

Instance: mii-exa-pro-whodas12-score-simple-sum
InstanceOf: mii-pr-pro-observation-whodas12
Title: "WHODAS 2.0 12-Item Simple Sum Score Observation"
Description: "WHODAS-12 simple sum score observation (all items 'Moderate': 12 × 2 = 24)."
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-whodas12)
* status = #final
* category.coding = $hl7-observation-category#survey "Survey"
* code.coding[+] = $SCT#715823002 "WHODAS (World Health Organization Disability Assessment Schedule) 2.0 score"
* code.coding[+].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue"
* code.coding[=].code = #whodas12-simple-sum
* code.coding[=].display = "WHODAS 2.0 12-Item Simple Sum Score (0-48)"
* subject.reference = "Patient/mii-exa-pro-patient"
* effectiveDateTime = "2026-02-01"
* valueQuantity.value = 24
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}
* derivedFrom.reference = "QuestionnaireResponse/mii-exa-pro-whodas12-response-01"
