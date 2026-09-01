// WI-7 (Whiteley-7) — seven-item screening scale for hypochondriasis and somatization.
//
// Original: Fink P, Ewald H, Jensen J, Sørensen L, Engberg M, Holm M, Munk-Jørgensen P.
// Screening for somatization and hypochondriasis in primary care and neurological in-patients:
// a seven-item scale for hypochondriasis and somatization. J Psychosom Res 1999;46(3):261-273.
// doi:10.1016/S0022-3999(98)00092-0
// English item wording verbatim from Table I (p. 266, "No. Item" column) of the original paper
// (~/Downloads/PCOR-PSS-Paper/WI-7_Fink1999.pdf). Each of the seven German item texts below
// matched exactly one Table I row by content, so the mapping is unambiguous.
// German wording: PCOR-MII Item Level Dictionary (MASTER_3EntitiesOverview.xlsx, Sheet
// "Item Level Dictionary PSS", variables WI7_01-WI7_07).
// License: no explicit licensing restriction stated in the original publication; treated as
// freely available (Tier A) — fully displayable and collectable.
//
// LANGUAGE: language = #en. The Whiteley-7 original is English (Fink et al., Aarhus, Denmark);
// the German wording is a translation and is carried via the translation extension, per the
// repo convention (original language primary). The intro display line has no equivalent in the
// original paper (it is framing text from the PCOR item dictionary); the English wording is a
// direct, literal translation of the German intro and is not a normative instrument item.
//
// ANSWER MODELLING: inline answerOption via the shared YesNoAnswerOptions RuleSet
// (input/fsh/rulesets/answer-scales.fsh) using SNOMED CT 373067005/373066001 with ordinalValue
// weights 0/1 — same rationale as SCOFF (see that RuleSet's header).
//
// TERMINOLOGY: no LOINC and no SNOMED CT code found for the Whiteley-7 / Whiteley Index
// instrument itself (checked against LOINC 2.83 and SNOMED International 2026-05-01 via the
// fhir-terminology MCP tools), hence only the MII questionnaire catalogue code.
//
// SCORING: one point per "yes" (0/1 weights), sum 0-7. The original paper reports two exploratory
// cut-points (0/1 and 1/2) against ICD-10 and DSM-IV somatoform-disorder gold standards in a
// primary-care sample (Table II, N=99) without settling on a single recommended threshold; both
// are DOCUMENTED as reference intervals in the ObservationDefinition but deliberately NOT shipped
// as executable interpretation logic (see the module's MDR scope note on the scoring page).
//
// SUBSCALES: the paper additionally derives two three-item subscales (Illness Conviction: items
// 1,3,5 by table order; Illness Worrying: items 2,4,6 by table order) from a latent-trait/Rasch
// analysis. These are DELIBERATELY NOT implemented here — only the seven-item total score is in
// scope for this module; subscale scoring is left for a future iteration if a use case requires it.

Instance: mii-qst-pro-wi-7
InstanceOf: mii-pr-pro-questionnaire
Title: "MII QST PRO WI-7"
Description: "WI-7 (Whiteley-7) questionnaire — seven-item screening scale for hypochondriasis and somatization (Fink et al. 1999) with German translation"
Usage: #definition
* insert Version
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire)

* url = $mii-qst-pro-wi-7
* status = #active
* experimental = true
* language = #en
* code[+] = $mii-cs-pro-questionnaire-catalogue#wi-7 "Whiteley-7 Questionnaire"

* copyright = "Whiteley-7 scale — Fink, Ewald, Jensen, Sørensen, Engberg, Holm & Munk-Jørgensen 1999 (Journal of Psychosomatic Research, Elsevier). No explicit licensing restriction stated in the original publication; treated as freely available for clinical and research use. Lizenz-Status: frei verfügbar (Tier A)."

* extension[capabilities].extension[displayable].valueBoolean = true
* extension[capabilities].extension[collectable].valueBoolean = true
* extension[capabilities].extension[calculatable].valueBoolean = true
* extension[capabilities].extension[extractable].valueBoolean = true
* extension[capabilities].extension[domainAligned].valueBoolean = true

// Root variable: sum of the seven WI-7 items (0 or 1 each, total range 0-7)
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "wi7Sum"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.item.where(linkId.matches('^wi7-q0[1-7]$')).answer.value.ordinal().sum()"

// Item 0: introductory display
* item[0].linkId = "wi7-intro"
* item[0].type = #display
* item[0].text = "The following questions are about your physical health:"
* item[0].text.extension[0].url = $hl7-translation
* item[0].text.extension[0].extension[0].url = "lang"
* item[0].text.extension[0].extension[0].valueCode = #de
* item[0].text.extension[0].extension[1].url = "content"
* item[0].text.extension[0].extension[1].valueString = "In den nächsten Fragen geht es um Ihren körperlichen Gesundheitszustand:"

// Item 1
* item[1].linkId = "wi7-q01"
* item[1].type = #choice
* item[1].prefix = "1"
* item[1].text = "Do you think there is something seriously wrong with your body?"
* item[1].text.extension[0].url = $hl7-translation
* item[1].text.extension[0].extension[0].url = "lang"
* item[1].text.extension[0].extension[0].valueCode = #de
* item[1].text.extension[0].extension[1].url = "content"
* item[1].text.extension[0].extension[1].valueString = "Denken Sie, dass mit Ihrem Körper ernsthaft etwas nicht in Ordnung ist?"
* item[1] insert YesNoAnswerOptions

// Item 2
* item[2].linkId = "wi7-q02"
* item[2].type = #choice
* item[2].prefix = "2"
* item[2].text = "Do you worry a lot about your health?"
* item[2].text.extension[0].url = $hl7-translation
* item[2].text.extension[0].extension[0].url = "lang"
* item[2].text.extension[0].extension[0].valueCode = #de
* item[2].text.extension[0].extension[1].url = "content"
* item[2].text.extension[0].extension[1].valueString = "Machen Sie sich viel Sorgen um Ihre Gesundheit?"
* item[2] insert YesNoAnswerOptions

// Item 3
* item[3].linkId = "wi7-q03"
* item[3].type = #choice
* item[3].prefix = "3"
* item[3].text = "Is it hard for you to believe the doctor when he tells you there is nothing to worry about?"
* item[3].text.extension[0].url = $hl7-translation
* item[3].text.extension[0].extension[0].url = "lang"
* item[3].text.extension[0].extension[0].valueCode = #de
* item[3].text.extension[0].extension[1].url = "content"
* item[3].text.extension[0].extension[1].valueString = "Können Sie der Ärztin/dem Arzt nur schwer glauben, wenn sie/er sagt, dass kein Grund zur Besorgnis besteht?"
* item[3] insert YesNoAnswerOptions

// Item 4
* item[4].linkId = "wi7-q04"
* item[4].type = #choice
* item[4].prefix = "4"
* item[4].text = "Do you often worry about the possibility that you have a serious illness?"
* item[4].text.extension[0].url = $hl7-translation
* item[4].text.extension[0].extension[0].url = "lang"
* item[4].text.extension[0].extension[0].valueCode = #de
* item[4].text.extension[0].extension[1].url = "content"
* item[4].text.extension[0].extension[1].valueString = "Machen Sie sich oft Sorgen, möglicherweise eine ernsthafte Krankheit zu haben?"
* item[4] insert YesNoAnswerOptions

// Item 5
* item[5].linkId = "wi7-q05"
* item[5].type = #choice
* item[5].prefix = "5"
* item[5].text = "Are you bothered by many different pains and aches?"
* item[5].text.extension[0].url = $hl7-translation
* item[5].text.extension[0].extension[0].url = "lang"
* item[5].text.extension[0].extension[0].valueCode = #de
* item[5].text.extension[0].extension[1].url = "content"
* item[5].text.extension[0].extension[1].valueString = "Werden Sie durch eine Vielzahl von Schmerzen geplagt?"
* item[5] insert YesNoAnswerOptions

// Item 6
* item[6].linkId = "wi7-q06"
* item[6].type = #choice
* item[6].prefix = "6"
* item[6].text = "If disease is brought to your attention (e.g., on TV, radio, the newspapers, or by someone you know), do you worry about getting it yourself?"
* item[6].text.extension[0].url = $hl7-translation
* item[6].text.extension[0].extension[0].url = "lang"
* item[6].text.extension[0].extension[0].valueCode = #de
* item[6].text.extension[0].extension[1].url = "content"
* item[6].text.extension[0].extension[1].valueString = "Wenn Sie auf eine Krankheit aufmerksam gemacht werden (durch Fernsehen, Zeitung oder einen Bekannten), machen Sie sich dann Sorgen, dass Sie diese Krankheit auch bekommen?"
* item[6] insert YesNoAnswerOptions

// Item 7
* item[7].linkId = "wi7-q07"
* item[7].type = #choice
* item[7].prefix = "7"
* item[7].text = "Do you find that you are bothered by many different symptoms?"
* item[7].text.extension[0].url = $hl7-translation
* item[7].text.extension[0].extension[0].url = "lang"
* item[7].text.extension[0].extension[0].valueCode = #de
* item[7].text.extension[0].extension[1].url = "content"
* item[7].text.extension[0].extension[1].valueString = "Finden Sie, dass Sie von einer Vielzahl unterschiedlicher Symptome geplagt werden?"
* item[7] insert YesNoAnswerOptions

// Item 8: WI-7 total score (0-7)
* item[8].linkId = "wi7-score-total"
* item[8].type = #decimal
* item[8].prefix = "Score"
* item[8].code = $mii-cs-pro-score-catalogue#wi-7-total "WI-7 Total Score"
* item[8].readOnly = true
* item[8].extension[0].url = $sdc-questionnaire-calculated-expression
* item[8].extension[0].valueExpression.name = "Scoreberechnung"
* item[8].extension[0].valueExpression.language = #text/fhirpath
* item[8].extension[0].valueExpression.expression = "%wi7Sum"
* item[8].text = "WI-7 Total Score (0-7)"
* item[8].text.extension[0].url = $hl7-translation
* item[8].text.extension[0].extension[0].url = "lang"
* item[8].text.extension[0].extension[0].valueCode = #de
* item[8].text.extension[0].extension[1].url = "content"
* item[8].text.extension[0].extension[1].valueString = "WI-7 Summenwert (0-7)"
* item[8].extension[1].url = $sdc-questionnaire-observation-extract
* item[8].extension[1].valueBoolean = true
* item[8].extension[2].url = $hl7-questionnaire-unit
* item[8].extension[2].valueCoding.system = $UCUM
* item[8].extension[2].valueCoding.code = #{score}
* item[8].extension[3].url = $sdc-questionnaire-observation-extract-category
* item[8].extension[3].valueCodeableConcept.coding.system = $hl7-observation-category
* item[8].extension[3].valueCodeableConcept.coding.code = #survey
