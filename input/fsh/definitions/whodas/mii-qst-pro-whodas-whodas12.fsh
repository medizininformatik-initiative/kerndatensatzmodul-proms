// ============================================================================
// WHODAS 2.0 12-Item (self-administered) - FULL questionnaire
// ============================================================================
// WHO Disability Assessment Schedule 2.0, 12-item version.
//
// 6 ICF-aligned domains (Cognition, Mobility, Self-care, Getting along,
// Life activities, Participation), 12 items, 30-day recall, 5-point response
// scale (0 keine ... 4 sehr starke/nicht möglich). Simple scoring: sum of the
// 12 item scores, range 0-48 (higher = more disability). Complex IRT-based
// scoring is deferred to future work.
//
// German (de-DE) primary content from the validated PCOR-MII Item Level
// Dictionary (MASTER_3EntitiesOverview.xlsx, "Item Level Dictionary" sheet).
// PCOR-MII classifies WHODAS-12 under Domain "Generic Health" / Category
// "Generic Health Status (GHS)" alongside PROMIS Global Health.
// Variable IDs WHODAS12_01..12 map to linkIds whodas-whodas12-q01..q12.
//
// FUTURE WORK (PCOR-MII): "...we will provide a conversion table how to score
// WHODAS 2.0 sum score on the PROMIS Generic Health Scale." => a planned
// WHODAS-12 sum -> PROMIS Generic/Global Health conversion (ConceptMap/CQL),
// not implemented in this version.
//
// Sources: WHO 2010 — Measuring Health and Disability: Manual for WHODAS 2.0
// (ISBN 9789241547598). German validation: Kirchberger et al. 2014
// (Population Health Metrics, doi:10.1186/s12963-014-0027-8, MONICA/KORA);
// Saltychev et al. 2021 (systematic review, PMID 31335215).
//
// !!! LICENSING - NOT FOR PUBLICATION UNTIL CONFIRMED !!!
// WHODAS 2.0 © World Health Organization 2010. WHO permits clinicians to
// reproduce WHODAS 2.0 for use with their own patients, but ANY electronic
// use - including inclusion in an electronic data capture system or
// reproduction "in any way" - requires WRITTEN PERMISSION from WHO via the
// WHO Classifications licensing process. The item text is embedded here for
// REVIEW/TESTING ONLY (per PCOR-MII direction, using their validated German
// dictionary). This resource must NOT be published until WHO licensing (or a
// CC0 equivalent) is confirmed.
// ============================================================================

// Shared 5-point answer scale (ordinal weights 0-4) for all 12 items.
// {index} is the item index, allowing reuse across all question items.
RuleSet: WhodasAnswers(index)
* item[{index}].answerOption[0].valueCoding = $mii-cs-pro-whodas-12#whodas12-answer-0 "keine"
* item[{index}].answerOption[0].extension.url = $hl7-ordinal-value
* item[{index}].answerOption[0].extension.valueDecimal = 0
* item[{index}].answerOption[1].valueCoding = $mii-cs-pro-whodas-12#whodas12-answer-1 "geringe"
* item[{index}].answerOption[1].extension.url = $hl7-ordinal-value
* item[{index}].answerOption[1].extension.valueDecimal = 1
* item[{index}].answerOption[2].valueCoding = $mii-cs-pro-whodas-12#whodas12-answer-2 "mäßige"
* item[{index}].answerOption[2].extension.url = $hl7-ordinal-value
* item[{index}].answerOption[2].extension.valueDecimal = 2
* item[{index}].answerOption[3].valueCoding = $mii-cs-pro-whodas-12#whodas12-answer-3 "starke"
* item[{index}].answerOption[3].extension.url = $hl7-ordinal-value
* item[{index}].answerOption[3].extension.valueDecimal = 3
* item[{index}].answerOption[4].valueCoding = $mii-cs-pro-whodas-12#whodas12-answer-4 "sehr starke/nicht möglich"
* item[{index}].answerOption[4].extension.url = $hl7-ordinal-value
* item[{index}].answerOption[4].extension.valueDecimal = 4

Instance: mii-qst-pro-whodas-whodas12
InstanceOf: mii-pr-pro-questionnaire
Title: "MII QST PRO WHODAS 2.0 12-Item"
Description: "WHO Disability Assessment Schedule 2.0, 12-item self-administered version (WHODAS-12). German primary content from the validated PCOR-MII Item Level Dictionary. Item text embedded for review/testing only - inclusion of WHODAS 2.0 item text in an electronic system requires written permission from WHO; not for publication until licensing confirmed."
Usage: #definition
* insert Version
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire)

* url = $mii-qst-pro-whodas-whodas12
* status = #active
* experimental = true
* language = #de
* code[mii] = $mii-cs-pro-questionnaire-catalogue#whodas-whodas12 "WHODAS 2.0 12-Item (WHO Disability Assessment Schedule 2.0, self-administered)"

* copyright = "WHODAS 2.0 © World Health Organization 2010. Reproduced for review only. Electronic reproduction of the instrument requires written permission from WHO (https://www.who.int/standards/classifications/international-classification-of-functioning-disability-and-health/who-disability-assessment-schedule). NOT for publication until licensing is confirmed. German item content from the validated PCOR-MII Item Level Dictionary."

* extension[capabilities].extension[displayable].valueBoolean = true
* extension[capabilities].extension[collectable].valueBoolean = true
* extension[capabilities].extension[calculatable].valueBoolean = true
* extension[capabilities].extension[extractable].valueBoolean = true
* extension[capabilities].extension[domainAligned].valueBoolean = true

// FHIR variable for the simple-sum score calculation (all 12 items, ordinal 0-4)
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "simpleSum"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.item.where(linkId.matches('^whodas-whodas12-q(0[1-9]|1[0-2])$')).answer.value.ordinal().sum()"

// ============================================================================
// Display item: instructions / shared item stem
// ============================================================================

* item[0].linkId = "WHODAS12.Description"
* item[0].type = #display
* item[0].text = "Wie viele Schwierigkeiten hatten Sie in den letzten 30 Tagen:"

// ============================================================================
// Question items 1-12 (German primary; shared 5-point answer scale, weights 0-4)
// ============================================================================

// Q1 - Mobility
* item[1].linkId = "whodas-whodas12-q01"
* item[1].type = #choice
* item[1].prefix = "1"
* item[1].code = $mii-cs-pro-whodas-12#whodas12-q01
* item[1].text = "längere Zeit (ca. 30 min) zu stehen?"
* insert WhodasAnswers(1)

// Q2 - Life activities (household)
* item[2].linkId = "whodas-whodas12-q02"
* item[2].type = #choice
* item[2].prefix = "2"
* item[2].code = $mii-cs-pro-whodas-12#whodas12-q02
* item[2].text = "Ihren Haushaltspflichten nachzukommen?"
* insert WhodasAnswers(2)

// Q3 - Cognition (learning new tasks)
* item[3].linkId = "whodas-whodas12-q03"
* item[3].type = #choice
* item[3].prefix = "3"
* item[3].code = $mii-cs-pro-whodas-12#whodas12-q03
* item[3].text = "Neue Aufgaben zu lernen (z.B. erlernen an einen neuen Ort zu gelangen, den sie nicht kannten?)"
* insert WhodasAnswers(3)

// Q4 - Participation (community activities)
* item[4].linkId = "whodas-whodas12-q04"
* item[4].type = #choice
* item[4].prefix = "4"
* item[4].code = $mii-cs-pro-whodas-12#whodas12-q04
* item[4].text = "Wie viele Schwierigkeiten hatten Sie, an gesellschaftlichen Aktivitäten (wie z.B. Festlichkeiten, religiöse oder andere Aktivitäten) in der gleichen Art und Weise teilzunehmen, wie jeder andere?"
* insert WhodasAnswers(4)

// Q5 - Participation (emotional impact of health condition)
* item[5].linkId = "whodas-whodas12-q05"
* item[5].type = #choice
* item[5].prefix = "5"
* item[5].code = $mii-cs-pro-whodas-12#whodas12-q05
* item[5].text = "Wie sehr wurden Sie durch Ihren gesundheitlichen Zustand emotional belastet?"
* insert WhodasAnswers(5)

// Q6 - Cognition (concentrating)
* item[6].linkId = "whodas-whodas12-q06"
* item[6].type = #choice
* item[6].prefix = "6"
* item[6].code = $mii-cs-pro-whodas-12#whodas12-q06
* item[6].text = "Sich auf etwas für 10 Minuten zu konzentrieren?"
* insert WhodasAnswers(6)

// Q7 - Mobility (walking a long distance)
* item[7].linkId = "whodas-whodas12-q07"
* item[7].type = #choice
* item[7].prefix = "7"
* item[7].code = $mii-cs-pro-whodas-12#whodas12-q07
* item[7].text = "Eine längere Strecke (ca. einen Kilometer) zu Fuß zu gehen?"
* insert WhodasAnswers(7)

// Q8 - Self-care (washing whole body)
* item[8].linkId = "whodas-whodas12-q08"
* item[8].type = #choice
* item[8].prefix = "8"
* item[8].code = $mii-cs-pro-whodas-12#whodas12-q08
* item[8].text = "Ihren gesamten Körper zu waschen?"
* insert WhodasAnswers(8)

// Q9 - Self-care (getting dressed)
* item[9].linkId = "whodas-whodas12-q09"
* item[9].type = #choice
* item[9].prefix = "9"
* item[9].code = $mii-cs-pro-whodas-12#whodas12-q09
* item[9].text = "sich anzuziehen?"
* insert WhodasAnswers(9)

// Q10 - Getting along (dealing with strangers)
* item[10].linkId = "whodas-whodas12-q10"
* item[10].type = #choice
* item[10].prefix = "10"
* item[10].code = $mii-cs-pro-whodas-12#whodas12-q10
* item[10].text = "Im Umgang mit anderen Personen, die Sie nicht kennen?"
* insert WhodasAnswers(10)

// Q11 - Getting along (maintaining a friendship)
* item[11].linkId = "whodas-whodas12-q11"
* item[11].type = #choice
* item[11].prefix = "11"
* item[11].code = $mii-cs-pro-whodas-12#whodas12-q11
* item[11].text = "Eine Freundschaft aufrechtzuerhalten?"
* insert WhodasAnswers(11)

// Q12 - Life activities (work/school)
* item[12].linkId = "whodas-whodas12-q12"
* item[12].type = #choice
* item[12].prefix = "12"
* item[12].code = $mii-cs-pro-whodas-12#whodas12-q12
* item[12].text = "Bei der Bewältigung des Arbeits-/Schulalltags?"
* insert WhodasAnswers(12)

// ============================================================================
// Score item: WHODAS-12 simple sum (0-48)
// ============================================================================

* item[13].linkId = "whodas-whodas12-score-simple-sum"
* item[13].type = #decimal
* item[13].prefix = "Summenwert"
* item[13].readOnly = true
* item[13].text = "WHODAS 2.0 12-Item Summenwert (Simple Sum, 0-48)"
* item[13].extension[0].url = $sdc-questionnaire-calculated-expression
* item[13].extension[0].valueExpression.name = "whodas12SimpleSum"
* item[13].extension[0].valueExpression.language = #text/fhirpath
* item[13].extension[0].valueExpression.expression = "%simpleSum"
* item[13].extension[1].url = $sdc-questionnaire-observation-extract
* item[13].extension[1].valueBoolean = true
* item[13].extension[2].url = $hl7-questionnaire-unit
* item[13].extension[2].valueCoding.system = $UCUM
* item[13].extension[2].valueCoding.code = #{score}
* item[13].extension[3].url = $sdc-questionnaire-observation-extract-category
* item[13].extension[3].valueCodeableConcept.coding.system = $hl7-observation-category
* item[13].extension[3].valueCodeableConcept.coding.code = #survey
