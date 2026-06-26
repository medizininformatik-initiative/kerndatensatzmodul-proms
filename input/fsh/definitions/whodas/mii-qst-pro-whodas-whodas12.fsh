// ============================================================================
// WHODAS 2.0 12-Item (self-administered) - FULL questionnaire
// ============================================================================
// WHO Disability Assessment Schedule 2.0, 12-item version.
//
// 6 ICF-aligned domains (Cognition, Mobility, Self-care, Getting along,
// Life activities, Participation), 12 items, 30-day recall, 5-point response
// scale (0 None ... 4 Extreme or cannot do). Simple scoring: sum of the 12
// item scores, range 0-48 (higher = more disability). Complex IRT-based
// scoring is deferred to future work.
//
// Language: English primary with German (de) translations (repo convention).
// English item wording follows the official WHO WHODAS 2.0 12-item
// self-administered form; German text from the validated PCOR-MII Item Level
// Dictionary (MASTER_3EntitiesOverview.xlsx). PCOR-MII classifies WHODAS-12
// under Domain "Generic Health" / Category "Generic Health Status (GHS)"
// alongside PROMIS Global Health. Variable IDs WHODAS12_01..12 map to linkIds
// whodas-whodas12-q01..q12.
//
// Answer modelling: items reference mii-vs-pro-whodas-12-answer-list via
// answerValueSet. Ordinal weights (0-4) are declared as properties on the
// mii-cs-pro-whodas-12 answer concepts. In-form .ordinal() resolution from
// answerValueSet is engine-dependent; scoring via CQL/server is verified
// separately.
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

Instance: mii-qst-pro-whodas-whodas12
InstanceOf: mii-pr-pro-questionnaire
Title: "MII QST PRO WHODAS 2.0 12-Item"
Description: "WHO Disability Assessment Schedule 2.0, 12-item self-administered version (WHODAS-12). English primary with German translations. Item text embedded for review/testing only - inclusion of WHODAS 2.0 item text in an electronic system requires written permission from WHO; not for publication until licensing confirmed."
Usage: #definition
* insert Version
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire)

* url = $mii-qst-pro-whodas-whodas12
* status = #active
* experimental = true
* language = #en
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
* item[0].text = "In the past 30 days, how much difficulty did you have in:"
* item[0].text.extension[0].url = $hl7-translation
* item[0].text.extension[0].extension[0].url = "lang"
* item[0].text.extension[0].extension[0].valueCode = #de
* item[0].text.extension[0].extension[1].url = "content"
* item[0].text.extension[0].extension[1].valueString = "Wie viele Schwierigkeiten hatten Sie in den letzten 30 Tagen:"

// ============================================================================
// Question items 1-12 (English primary + German translation; answerValueSet)
// ============================================================================

// Q1 - Mobility
* item[1].linkId = "whodas-whodas12-q01"
* item[1].type = #choice
* item[1].prefix = "1"
* item[1].code = $mii-cs-pro-whodas-12#whodas12-q01
* item[1].text = "Standing for long periods such as 30 minutes?"
* item[1].text.extension[0].url = $hl7-translation
* item[1].text.extension[0].extension[0].url = "lang"
* item[1].text.extension[0].extension[0].valueCode = #de
* item[1].text.extension[0].extension[1].url = "content"
* item[1].text.extension[0].extension[1].valueString = "längere Zeit (ca. 30 min) zu stehen?"
* item[1].answerValueSet = Canonical(MII_VS_PRO_WHODAS_12_Answer_List)

// Q2 - Life activities (household)
* item[2].linkId = "whodas-whodas12-q02"
* item[2].type = #choice
* item[2].prefix = "2"
* item[2].code = $mii-cs-pro-whodas-12#whodas12-q02
* item[2].text = "Taking care of your household responsibilities?"
* item[2].text.extension[0].url = $hl7-translation
* item[2].text.extension[0].extension[0].url = "lang"
* item[2].text.extension[0].extension[0].valueCode = #de
* item[2].text.extension[0].extension[1].url = "content"
* item[2].text.extension[0].extension[1].valueString = "Ihren Haushaltspflichten nachzukommen?"
* item[2].answerValueSet = Canonical(MII_VS_PRO_WHODAS_12_Answer_List)

// Q3 - Cognition (learning new tasks)
* item[3].linkId = "whodas-whodas12-q03"
* item[3].type = #choice
* item[3].prefix = "3"
* item[3].code = $mii-cs-pro-whodas-12#whodas12-q03
* item[3].text = "Learning a new task, for example, learning how to get to a new place?"
* item[3].text.extension[0].url = $hl7-translation
* item[3].text.extension[0].extension[0].url = "lang"
* item[3].text.extension[0].extension[0].valueCode = #de
* item[3].text.extension[0].extension[1].url = "content"
* item[3].text.extension[0].extension[1].valueString = "Neue Aufgaben zu lernen (z.B. erlernen an einen neuen Ort zu gelangen, den sie nicht kannten?)"
* item[3].answerValueSet = Canonical(MII_VS_PRO_WHODAS_12_Answer_List)

// Q4 - Participation (community activities)
* item[4].linkId = "whodas-whodas12-q04"
* item[4].type = #choice
* item[4].prefix = "4"
* item[4].code = $mii-cs-pro-whodas-12#whodas12-q04
* item[4].text = "Joining in community activities (for example, festivities, religious or other activities) in the same way as anyone else can?"
* item[4].text.extension[0].url = $hl7-translation
* item[4].text.extension[0].extension[0].url = "lang"
* item[4].text.extension[0].extension[0].valueCode = #de
* item[4].text.extension[0].extension[1].url = "content"
* item[4].text.extension[0].extension[1].valueString = "Wie viele Schwierigkeiten hatten Sie, an gesellschaftlichen Aktivitäten (wie z.B. Festlichkeiten, religiöse oder andere Aktivitäten) in der gleichen Art und Weise teilzunehmen, wie jeder andere?"
* item[4].answerValueSet = Canonical(MII_VS_PRO_WHODAS_12_Answer_List)

// Q5 - Participation (emotional impact of health condition)
* item[5].linkId = "whodas-whodas12-q05"
* item[5].type = #choice
* item[5].prefix = "5"
* item[5].code = $mii-cs-pro-whodas-12#whodas12-q05
* item[5].text = "Being emotionally affected by your health problems?"
* item[5].text.extension[0].url = $hl7-translation
* item[5].text.extension[0].extension[0].url = "lang"
* item[5].text.extension[0].extension[0].valueCode = #de
* item[5].text.extension[0].extension[1].url = "content"
* item[5].text.extension[0].extension[1].valueString = "Wie sehr wurden Sie durch Ihren gesundheitlichen Zustand emotional belastet?"
* item[5].answerValueSet = Canonical(MII_VS_PRO_WHODAS_12_Answer_List)

// Q6 - Cognition (concentrating)
* item[6].linkId = "whodas-whodas12-q06"
* item[6].type = #choice
* item[6].prefix = "6"
* item[6].code = $mii-cs-pro-whodas-12#whodas12-q06
* item[6].text = "Concentrating on doing something for ten minutes?"
* item[6].text.extension[0].url = $hl7-translation
* item[6].text.extension[0].extension[0].url = "lang"
* item[6].text.extension[0].extension[0].valueCode = #de
* item[6].text.extension[0].extension[1].url = "content"
* item[6].text.extension[0].extension[1].valueString = "Sich auf etwas für 10 Minuten zu konzentrieren?"
* item[6].answerValueSet = Canonical(MII_VS_PRO_WHODAS_12_Answer_List)

// Q7 - Mobility (walking a long distance)
* item[7].linkId = "whodas-whodas12-q07"
* item[7].type = #choice
* item[7].prefix = "7"
* item[7].code = $mii-cs-pro-whodas-12#whodas12-q07
* item[7].text = "Walking a long distance such as a kilometre?"
* item[7].text.extension[0].url = $hl7-translation
* item[7].text.extension[0].extension[0].url = "lang"
* item[7].text.extension[0].extension[0].valueCode = #de
* item[7].text.extension[0].extension[1].url = "content"
* item[7].text.extension[0].extension[1].valueString = "Eine längere Strecke (ca. einen Kilometer) zu Fuß zu gehen?"
* item[7].answerValueSet = Canonical(MII_VS_PRO_WHODAS_12_Answer_List)

// Q8 - Self-care (washing whole body)
* item[8].linkId = "whodas-whodas12-q08"
* item[8].type = #choice
* item[8].prefix = "8"
* item[8].code = $mii-cs-pro-whodas-12#whodas12-q08
* item[8].text = "Washing your whole body?"
* item[8].text.extension[0].url = $hl7-translation
* item[8].text.extension[0].extension[0].url = "lang"
* item[8].text.extension[0].extension[0].valueCode = #de
* item[8].text.extension[0].extension[1].url = "content"
* item[8].text.extension[0].extension[1].valueString = "Ihren gesamten Körper zu waschen?"
* item[8].answerValueSet = Canonical(MII_VS_PRO_WHODAS_12_Answer_List)

// Q9 - Self-care (getting dressed)
* item[9].linkId = "whodas-whodas12-q09"
* item[9].type = #choice
* item[9].prefix = "9"
* item[9].code = $mii-cs-pro-whodas-12#whodas12-q09
* item[9].text = "Getting dressed?"
* item[9].text.extension[0].url = $hl7-translation
* item[9].text.extension[0].extension[0].url = "lang"
* item[9].text.extension[0].extension[0].valueCode = #de
* item[9].text.extension[0].extension[1].url = "content"
* item[9].text.extension[0].extension[1].valueString = "sich anzuziehen?"
* item[9].answerValueSet = Canonical(MII_VS_PRO_WHODAS_12_Answer_List)

// Q10 - Getting along (dealing with strangers)
* item[10].linkId = "whodas-whodas12-q10"
* item[10].type = #choice
* item[10].prefix = "10"
* item[10].code = $mii-cs-pro-whodas-12#whodas12-q10
* item[10].text = "Dealing with people you do not know?"
* item[10].text.extension[0].url = $hl7-translation
* item[10].text.extension[0].extension[0].url = "lang"
* item[10].text.extension[0].extension[0].valueCode = #de
* item[10].text.extension[0].extension[1].url = "content"
* item[10].text.extension[0].extension[1].valueString = "Im Umgang mit anderen Personen, die Sie nicht kennen?"
* item[10].answerValueSet = Canonical(MII_VS_PRO_WHODAS_12_Answer_List)

// Q11 - Getting along (maintaining a friendship)
* item[11].linkId = "whodas-whodas12-q11"
* item[11].type = #choice
* item[11].prefix = "11"
* item[11].code = $mii-cs-pro-whodas-12#whodas12-q11
* item[11].text = "Maintaining a friendship?"
* item[11].text.extension[0].url = $hl7-translation
* item[11].text.extension[0].extension[0].url = "lang"
* item[11].text.extension[0].extension[0].valueCode = #de
* item[11].text.extension[0].extension[1].url = "content"
* item[11].text.extension[0].extension[1].valueString = "Eine Freundschaft aufrechtzuerhalten?"
* item[11].answerValueSet = Canonical(MII_VS_PRO_WHODAS_12_Answer_List)

// Q12 - Life activities (work/school)
* item[12].linkId = "whodas-whodas12-q12"
* item[12].type = #choice
* item[12].prefix = "12"
* item[12].code = $mii-cs-pro-whodas-12#whodas12-q12
* item[12].text = "Your day-to-day work/school?"
* item[12].text.extension[0].url = $hl7-translation
* item[12].text.extension[0].extension[0].url = "lang"
* item[12].text.extension[0].extension[0].valueCode = #de
* item[12].text.extension[0].extension[1].url = "content"
* item[12].text.extension[0].extension[1].valueString = "Bei der Bewältigung des Arbeits-/Schulalltags?"
* item[12].answerValueSet = Canonical(MII_VS_PRO_WHODAS_12_Answer_List)

// ============================================================================
// Score item: WHODAS-12 simple sum (0-48)
// ============================================================================

* item[13].linkId = "whodas-whodas12-score-simple-sum"
* item[13].type = #decimal
* item[13].prefix = "Sum score"
* item[13].readOnly = true
* item[13].text = "WHODAS 2.0 12-Item simple sum score (0-48)"
* item[13].text.extension[0].url = $hl7-translation
* item[13].text.extension[0].extension[0].url = "lang"
* item[13].text.extension[0].extension[0].valueCode = #de
* item[13].text.extension[0].extension[1].url = "content"
* item[13].text.extension[0].extension[1].valueString = "WHODAS 2.0 12-Item Summenwert (Simple Sum, 0-48)"
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
