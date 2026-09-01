// PC-PTSD — Primary Care PTSD Screen, four-item screening questionnaire for posttraumatic
// stress disorder.
//
// Original: Prins A, et al. 2003 (4-item Primary Care PTSD Screen; not to be confused with the
// later 5-item PC-PTSD-5 for DSM-5). German version: Schäfer I, Schulze C, 2010.
// German wording: PCOR-MII Item Level Dictionary (MASTER_3EntitiesOverview.xlsx, Sheet
// "Item Level Dictionary PSS", variables PC-PTSD01-PC-PTSD04).
// License: freely available (Tier A) — fully displayable and collectable.
//
// LANGUAGE: language = #de. The PC-PTSD original is English (Prins et al. 2003), but this
// implementation does not have a verified, citable verbatim English source text at hand — only
// the validated German translation (Schäfer & Schulze 2010) from the PCOR-MII Item Level
// Dictionary. Per repo policy against fabricated/uncited item texts (see CLAUDE.md and the
// author-pro-questionnaire skill), we publish the verified German wording as the primary
// `language` rather than reconstruct an English text from memory. This deviates from the SCOFF
// precedent (English original, verified against the BMJ publication) and should be revisited if
// a verified English source becomes available — see docs/design/pcor-pss-instrumente.md §6.
//
// ANSWER MODELLING: inline answerOption via the shared YesNoAnswerOptions RuleSet
// (input/fsh/rulesets/answer-scales.fsh) using SNOMED CT 373067005/373066001 with ordinalValue
// weights 0/1 — same "Fall A" rationale as SCOFF/WI-7 (generic yes/no, standard terminology,
// SNOMED not owned by MII so no answerValueSet-with-weights possible). See the RuleSet header and
// docs/design/pcor-pss-instrumente.md §4 for details.
//
// INTRO TEXT: item 1 in the source item bank carries an introductory stem ("Haben Sie jemals in
// Ihrem Leben etwas so Beängstigendes, Schreckliches oder Erschütterndes erlebt, dass Sie in den
// letzten 4 Wochen …") that applies to all four items. Modelled as a separate display item
// (pc-ptsd-intro) at the start, following the scoff-intro pattern.
//
// TERMINOLOGY: checked via the fhir-terminology MCP tools (LOINC 2.83, SNOMED International
// 2026-05-01). LOINC only carries "The Primary Care PTSD Screen for DSM-5" (LP436025-3, panel)
// and "102010-6 [PC-PTSD-5]" — the newer 5-item DSM-5 version, not the 4-item instrument
// implemented here. No SNOMED CT assessment-scale concept was found for PC-PTSD. Hence, as with
// SCOFF, only the MII questionnaire catalogue code is used; no LOINC/SNOMED code is attached.
//
// SCORING: one point per "yes", sum 0-4. A cut-off of >= 3 positive answers is commonly cited in
// the literature for the original 4-item PC-PTSD (Prins et al. 2003) but is DOCUMENTED as a
// reference interval in the ObservationDefinition only, deliberately NOT shipped as executable
// interpretation logic (see the module's MDR scope note on the scoring page and
// docs/design/pcor-pss-instrumente.md §5).

Instance: mii-qst-pro-pc-ptsd
InstanceOf: mii-pr-pro-questionnaire
Title: "MII QST PRO PC-PTSD"
Description: "PC-PTSD — Primary Care PTSD Screen, four-item screening questionnaire for posttraumatic stress disorder (Prins et al. 2003; German: Schäfer & Schulze 2010)"
Usage: #definition
* insert Version
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire)

* url = $mii-qst-pro-pc-ptsd
* status = #active
* experimental = true
* language = #de
* code[+] = $mii-cs-pro-questionnaire-catalogue#pc-ptsd "PC-PTSD (Primary Care PTSD Screen)"

* copyright = "PC-PTSD © Prins A, et al. 2003; deutsche Fassung Schäfer I, Schulze C, 2010. Freely available — Lizenz-Status: frei verfügbar (Tier A)."

* extension[capabilities].extension[displayable].valueBoolean = true
* extension[capabilities].extension[collectable].valueBoolean = true
* extension[capabilities].extension[calculatable].valueBoolean = true
* extension[capabilities].extension[extractable].valueBoolean = true
* extension[capabilities].extension[domainAligned].valueBoolean = true

// Root variable: sum of the four PC-PTSD items (0 or 1 each, total range 0-4)
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "pcPtsdSum"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.item.where(linkId.matches('^pc-ptsd-q0[1-4]$')).answer.value.ordinal().sum()"

// Item 0: introductory display (applies to all four items below)
* item[0].linkId = "pc-ptsd-intro"
* item[0].type = #display
* item[0].text = "Haben Sie jemals in Ihrem Leben etwas so Beängstigendes, Schreckliches oder Erschütterndes erlebt, dass Sie in den letzten 4 Wochen …"

// Item 1: Albträume / aufdringliche Gedanken
* item[1].linkId = "pc-ptsd-q01"
* item[1].type = #choice
* item[1].prefix = "1"
* item[1].text = "… Albträume davon hatten oder daran dachten, obwohl Sie es nicht wollten?"
* item[1] insert YesNoAnswerOptions

// Item 2: Vermeidung
* item[2].linkId = "pc-ptsd-q02"
* item[2].type = #choice
* item[2].prefix = "2"
* item[2].text = "… sich stark bemüht haben, nicht daran zu denken oder Situationen zu vermeiden, die Sie daran erinnern?"
* item[2] insert YesNoAnswerOptions

// Item 3: Übererregung / Hypervigilanz
* item[3].linkId = "pc-ptsd-q03"
* item[3].type = #choice
* item[3].prefix = "3"
* item[3].text = "...ständig auf der Hut, wachsam oder schreckhaft waren?"
* item[3] insert YesNoAnswerOptions

// Item 4: emotionale Taubheit / Rückzug
* item[4].linkId = "pc-ptsd-q04"
* item[4].type = #choice
* item[4].prefix = "4"
* item[4].text = "...sich abgestumpft und teilnahmslos gegenüber anderen, bei ihren Aktivitäten oder in Ihrem Umfeld fühlten?"
* item[4] insert YesNoAnswerOptions

// Item 5: PC-PTSD total score (0-4)
* item[5].linkId = "pc-ptsd-score-total"
* item[5].type = #decimal
* item[5].prefix = "Score"
* item[5].code = $mii-cs-pro-score-catalogue#pc-ptsd-total "PC-PTSD Total Score (0-4)"
* item[5].readOnly = true
* item[5].extension[0].url = $sdc-questionnaire-calculated-expression
* item[5].extension[0].valueExpression.name = "Scoreberechnung"
* item[5].extension[0].valueExpression.language = #text/fhirpath
* item[5].extension[0].valueExpression.expression = "%pcPtsdSum"
* item[5].text = "PC-PTSD Summenwert (0-4)"
* item[5].extension[1].url = $sdc-questionnaire-observation-extract
* item[5].extension[1].valueBoolean = true
* item[5].extension[2].url = $hl7-questionnaire-unit
* item[5].extension[2].valueCoding.system = $UCUM
* item[5].extension[2].valueCoding.code = #{score}
* item[5].extension[3].url = $sdc-questionnaire-observation-extract-category
* item[5].extension[3].valueCodeableConcept.coding.system = $hl7-observation-category
* item[5].extension[3].valueCodeableConcept.coding.code = #survey
