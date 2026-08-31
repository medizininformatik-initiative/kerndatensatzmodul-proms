// SCOFF — five-item screening questionnaire for eating disorders
//
// Original: Morgan JF, Reid F, Lacey JH. The SCOFF questionnaire: assessment of a new screening
// tool for eating disorders. BMJ 1999; 319(7223):1467-1468. doi:10.1136/bmj.319.7223.1467
// Item wording verbatim from the published box ("The SCOFF questions"). The acronym is formed by
// the capitalised letters: Sick, Control, One stone, Fat, Food.
// German wording: PCOR-MII Item Level Dictionary (MASTER_3EntitiesOverview.xlsx, Sheet
// "Item Level Dictionary PSS", variables SCOFF01-SCOFF05); German context/use:
// Hölling H, Schlack R. Bundesgesundheitsblatt 2007; 50:794-799. doi:10.1007/s00103-007-0242-6
// License: freely available (Tier A) — fully displayable and collectable.
//
// LANGUAGE: language = #en. The SCOFF original is English (Morgan et al., St George's, London);
// the German wording is a translation and is carried via the translation extension. This follows
// the repo convention (original language primary) — the blanket assumption "PSS set is German-only"
// does not hold for instruments with an English original.
//
// ANSWER MODELLING: inline answerOption via the shared YesNoAnswerOptions RuleSet
// (input/fsh/rulesets/answer-scales.fsh) using SNOMED CT 373067005/373066001 with ordinalValue
// weights 0/1. Rationale: the TC Terminologien best practice mandates the SNOMED codes for generic
// yes/no; since we do not own SNOMED we cannot attach ordinalValue properties to its concepts, so
// an answerValueSet over those codes would carry no weights. See the RuleSet header for details.
//
// TERMINOLOGY: no LOINC and no SNOMED CT code exists for the SCOFF instrument itself (checked
// against LOINC 2.81 and SNOMED International 2026-05-01), hence only the MII questionnaire
// catalogue code.
//
// SCORING: one point per "yes", sum 0-5. The published cut-off >= 2 (Morgan et al. 1999:
// sensitivity 100 %, specificity 87.5 %) is DOCUMENTED as a reference interval in the
// ObservationDefinition but deliberately NOT shipped as executable interpretation logic
// (see the module's MDR scope note on the scoring page).

Instance: mii-qst-pro-scoff
InstanceOf: mii-pr-pro-questionnaire
Title: "MII QST PRO SCOFF"
Description: "SCOFF questionnaire — five-item screening tool for eating disorders (Morgan et al. 1999) with German translation"
Usage: #definition
* insert Version
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire)

* url = $mii-qst-pro-scoff
* status = #active
* experimental = true
* language = #en
* code[+] = $mii-cs-pro-questionnaire-catalogue#scoff "SCOFF Questionnaire"

* copyright = "SCOFF questionnaire © Morgan, Reid & Lacey 1999 (BMJ). Freely available — no permission required for reproduction, translation, display or use. Lizenz-Status: frei verfügbar (Tier A)."

* extension[capabilities].extension[displayable].valueBoolean = true
* extension[capabilities].extension[collectable].valueBoolean = true
* extension[capabilities].extension[calculatable].valueBoolean = true
* extension[capabilities].extension[extractable].valueBoolean = true
* extension[capabilities].extension[domainAligned].valueBoolean = true

// Root variable: sum of the five SCOFF items (0 or 1 each, total range 0-5)
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "scoffSum"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.item.where(linkId.matches('^scoff-q0[1-5]$')).answer.value.ordinal().sum()"

// Item 0: introductory display
* item[0].linkId = "scoff-intro"
* item[0].type = #display
* item[0].text = "The following questions are about eating:"
* item[0].text.extension[0].url = $hl7-translation
* item[0].text.extension[0].extension[0].url = "lang"
* item[0].text.extension[0].extension[0].valueCode = #de
* item[0].text.extension[0].extension[1].url = "content"
* item[0].text.extension[0].extension[1].valueString = "In den nächsten Fragen geht es um das Thema Essen:"

// Item 1: S — Sick
* item[1].linkId = "scoff-q01"
* item[1].type = #choice
* item[1].prefix = "1"
* item[1].code = $LNC#99999-XXXX "Ein Code, den es nicht gibt"
* item[1].text = "Do you make yourself Sick because you feel uncomfortably full?"
* item[1].text.extension[0].url = $hl7-translation
* item[1].text.extension[0].extension[0].url = "lang"
* item[1].text.extension[0].extension[0].valueCode = #de
* item[1].text.extension[0].extension[1].url = "content"
* item[1].text.extension[0].extension[1].valueString = "Übergeben Sie sich, wenn Sie sich unangenehm voll fühlen?"
* item[1] insert YesNoAnswerOptions

// Item 2: C — Control
* item[2].linkId = "scoff-q02"
* item[2].type = #choice
* item[2].prefix = "2"
* item[2].text = "Do you worry you have lost Control over how much you eat?"
* item[2].text.extension[0].url = $hl7-translation
* item[2].text.extension[0].extension[0].url = "lang"
* item[2].text.extension[0].extension[0].valueCode = #de
* item[2].text.extension[0].extension[1].url = "content"
* item[2].text.extension[0].extension[1].valueString = "Machen Sie sich Sorgen, weil Sie manchmal nicht mit dem Essen aufhören können?"
* item[2] insert YesNoAnswerOptions

// Item 3: O — One stone
// The original asks about "One stone" (6.35 kg); the German PCOR wording uses "mehr als 6 kg".
// Both are kept verbatim in their respective language — no harmonisation of the threshold.
* item[3].linkId = "scoff-q03"
* item[3].type = #choice
* item[3].prefix = "3"
* item[3].text = "Have you recently lost more than One stone in a 3 month period?"
* item[3].text.extension[0].url = $hl7-translation
* item[3].text.extension[0].extension[0].url = "lang"
* item[3].text.extension[0].extension[0].valueCode = #de
* item[3].text.extension[0].extension[1].url = "content"
* item[3].text.extension[0].extension[1].valueString = "Haben Sie in der letzten Zeit mehr als 6 kg in 3 Monaten abgenommen?"
* item[3] insert YesNoAnswerOptions

// Item 4: F — Fat
* item[4].linkId = "scoff-q04"
* item[4].type = #choice
* item[4].prefix = "4"
* item[4].text = "Do you believe yourself to be Fat when others say you are too thin?"
* item[4].text.extension[0].url = $hl7-translation
* item[4].text.extension[0].extension[0].url = "lang"
* item[4].text.extension[0].extension[0].valueCode = #de
* item[4].text.extension[0].extension[1].url = "content"
* item[4].text.extension[0].extension[1].valueString = "Finden Sie sich zu dick, während andere Sie zu dünn finden?"
* item[4] insert YesNoAnswerOptions

// Item 5: F — Food
* item[5].linkId = "scoff-q05"
* item[5].type = #choice
* item[5].prefix = "5"
* item[5].text = "Would you say that Food dominates your life?"
* item[5].text.extension[0].url = $hl7-translation
* item[5].text.extension[0].extension[0].url = "lang"
* item[5].text.extension[0].extension[0].valueCode = #de
* item[5].text.extension[0].extension[1].url = "content"
* item[5].text.extension[0].extension[1].valueString = "Würden Sie sagen, dass Essen Ihr Leben sehr beeinflusst?"
* item[5] insert YesNoAnswerOptions

// Item 6: SCOFF total score (0-5)
* item[6].linkId = "scoff-score-total"
* item[6].type = #decimal
* item[6].prefix = "Score"
* item[6].code = $mii-cs-pro-score-catalogue#scoff-total "SCOFF Total Score"
* item[6].readOnly = true
* item[6].extension[0].url = $sdc-questionnaire-calculated-expression
* item[6].extension[0].valueExpression.name = "Scoreberechnung"
* item[6].extension[0].valueExpression.language = #text/fhirpath
* item[6].extension[0].valueExpression.expression = "%scoffSum"
* item[6].text = "SCOFF Total Score (0-5)"
* item[6].text.extension[0].url = $hl7-translation
* item[6].text.extension[0].extension[0].url = "lang"
* item[6].text.extension[0].extension[0].valueCode = #de
* item[6].text.extension[0].extension[1].url = "content"
* item[6].text.extension[0].extension[1].valueString = "SCOFF Summenwert (0-5)"
* item[6].extension[1].url = $sdc-questionnaire-observation-extract
* item[6].extension[1].valueBoolean = true
* item[6].extension[2].url = $hl7-questionnaire-unit
* item[6].extension[2].valueCoding.system = $UCUM
* item[6].extension[2].valueCoding.code = #{score}
* item[6].extension[3].url = $sdc-questionnaire-observation-extract-category
* item[6].extension[3].valueCodeableConcept.coding.system = $hl7-observation-category
* item[6].extension[3].valueCodeableConcept.coding.code = #survey
