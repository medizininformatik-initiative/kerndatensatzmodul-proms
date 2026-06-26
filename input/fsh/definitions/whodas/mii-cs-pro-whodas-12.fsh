// ============================================================================
// WHODAS 2.0 12-Item CodeSystem (item codes + answer scale)
// ============================================================================
// WHO Disability Assessment Schedule 2.0, 12-item self-administered version.
//
// Design (consistent with PHQ-15): English-primary displays with German
// designations (de). The 5 answer concepts (whodas12-answer-0..4) carry an
// ordinalValue property (0-4) so that SDC .ordinal() can resolve weights when
// this CS is expanded via mii-vs-pro-whodas-12-answer-list as answerValueSet.
// Note: in-form .ordinal() resolution from answerValueSet is engine-dependent;
// server-side scoring via CQL/StructureMap is tracked separately.
//
// German item text and answer labels from the validated PCOR-MII Item Level
// Dictionary (MASTER_3EntitiesOverview.xlsx). English item wording follows the
// official WHO WHODAS 2.0 12-item self-administered form.
//
// !!! LICENSING - NOT FOR PUBLICATION UNTIL CONFIRMED !!!
// WHODAS 2.0 © World Health Organization 2010. Electronic reproduction requires
// written WHO permission; reproduced here for review only.
// ============================================================================

CodeSystem: MII_CS_PRO_WHODAS_12
Id: mii-cs-pro-whodas-12
Title: "MII CS PRO WHODAS 2.0 12-Item Response Scale and Item Codes"
Description: "CodeSystem for the WHO Disability Assessment Schedule 2.0, 12-item self-administered version (WHODAS-12), with item codes and a 5-point answer scale. English primary displays with German designations. The answer concepts carry ordinalValue properties (0-4) enabling SDC ordinal scoring via answerValueSet. NOTE: WHODAS 2.0 © WHO 2010 - electronic reproduction requires written WHO permission; reproduced here for review only, NOT for publication until licensing is confirmed."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-whodas-12"
* insert PR_CS_VS_Version
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^language = #en

// ordinalValue property for SDC ordinal scoring (uri matches HL7 ordinalValue extension)
* ^property[+].code = #ordinalValue
* ^property[=].uri = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* ^property[=].description = "Numerical ordinal value (0-4) for SDC calculatedExpression scoring via .ordinal().sum()"
* ^property[=].type = #decimal

// ============================================================================
// Answer codes: 5-point ordinal scale (0-4), shared by all 12 items
// English primary display, German designation, ordinalValue weight.
// ============================================================================

* #whodas12-answer-0 "None"
  * ^designation[+].language = #de
  * ^designation[=].value = "keine"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 0
* #whodas12-answer-1 "Mild"
  * ^designation[+].language = #de
  * ^designation[=].value = "geringe"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 1
* #whodas12-answer-2 "Moderate"
  * ^designation[+].language = #de
  * ^designation[=].value = "mäßige"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 2
* #whodas12-answer-3 "Severe"
  * ^designation[+].language = #de
  * ^designation[=].value = "starke"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 3
* #whodas12-answer-4 "Extreme or cannot do"
  * ^designation[+].language = #de
  * ^designation[=].value = "sehr starke/nicht möglich"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 4

// ============================================================================
// Item codes: 12 items across 6 ICF domains
// (Cognition, Mobility, Self-care, Getting along, Life activities, Participation)
// English primary display (WHO wording), German designation (PCOR-MII dictionary).
// Variable IDs WHODAS12_01..12.
// ============================================================================

* #whodas12-q01 "Standing for long periods such as 30 minutes?"
  * ^designation[+].language = #de
  * ^designation[=].value = "längere Zeit (ca. 30 min) zu stehen?"
* #whodas12-q02 "Taking care of your household responsibilities?"
  * ^designation[+].language = #de
  * ^designation[=].value = "Ihren Haushaltspflichten nachzukommen?"
* #whodas12-q03 "Learning a new task, for example, learning how to get to a new place?"
  * ^designation[+].language = #de
  * ^designation[=].value = "Neue Aufgaben zu lernen (z.B. erlernen an einen neuen Ort zu gelangen, den sie nicht kannten?)"
* #whodas12-q04 "Joining in community activities (for example, festivities, religious or other activities) in the same way as anyone else can?"
  * ^designation[+].language = #de
  * ^designation[=].value = "Wie viele Schwierigkeiten hatten Sie, an gesellschaftlichen Aktivitäten (wie z.B. Festlichkeiten, religiöse oder andere Aktivitäten) in der gleichen Art und Weise teilzunehmen, wie jeder andere?"
* #whodas12-q05 "Being emotionally affected by your health problems?"
  * ^designation[+].language = #de
  * ^designation[=].value = "Wie sehr wurden Sie durch Ihren gesundheitlichen Zustand emotional belastet?"
* #whodas12-q06 "Concentrating on doing something for ten minutes?"
  * ^designation[+].language = #de
  * ^designation[=].value = "Sich auf etwas für 10 Minuten zu konzentrieren?"
* #whodas12-q07 "Walking a long distance such as a kilometre?"
  * ^designation[+].language = #de
  * ^designation[=].value = "Eine längere Strecke (ca. einen Kilometer) zu Fuß zu gehen?"
* #whodas12-q08 "Washing your whole body?"
  * ^designation[+].language = #de
  * ^designation[=].value = "Ihren gesamten Körper zu waschen?"
* #whodas12-q09 "Getting dressed?"
  * ^designation[+].language = #de
  * ^designation[=].value = "sich anzuziehen?"
* #whodas12-q10 "Dealing with people you do not know?"
  * ^designation[+].language = #de
  * ^designation[=].value = "Im Umgang mit anderen Personen, die Sie nicht kennen?"
* #whodas12-q11 "Maintaining a friendship?"
  * ^designation[+].language = #de
  * ^designation[=].value = "Eine Freundschaft aufrechtzuerhalten?"
* #whodas12-q12 "Your day-to-day work/school?"
  * ^designation[+].language = #de
  * ^designation[=].value = "Bei der Bewältigung des Arbeits-/Schulalltags?"
