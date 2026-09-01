// SSD-12 — Somatic Symptom Disorder – B Criteria Scale, 12-item self-report scale for the
// cognitive-affective-behavioural (DSM-5 "B") criteria of somatic symptom disorder.
//
// Original development and validation:
// Toussaint A, Murray AM, Voigt K, Herzog A, Gierk B, Kroenke K, Rief W, Henningsen P, Löwe B.
// Development and validation of the Somatic Symptom Disorder-B Criteria Scale (SSD-12).
// Psychosomatic Medicine 2016; 78(1):5-12. doi:10.1097/PSY.0000000000000240
// Further validation (factorial structure, population-based norms):
// Toussaint A, Löwe B, Brähler E, Jordan P. The Somatic Symptom Disorder – B Criteria Scale
// (SSD-12): Factorial structure, validity and population-based norms. Journal of Psychosomatic
// Research 2017; 97:9-17. doi:10.1016/j.jpsychores.2017.03.017
//
// Item wording: PCOR-MII Item Level Dictionary (MASTER_3EntitiesOverview.xlsx, Sheet
// "Item Level Dictionary PSS", variables SSD12_01-SSD12_12). Texts taken verbatim, character
// for character.
//
// LANGUAGE: language = #de. The SSD-12 was developed and first validated in Germany (Toussaint,
// Löwe et al.) using a German patient sample; the PCOR-MII item bank provides only the German
// wording. Per docs/design/pcor-pss-instrumente.md Abschnitt 6, instruments developed in German
// (OPD-SFK, ISR, SSD-12) carry language = #de, and an English translation extension is added
// only where a validated English wording can be sourced — no such verbatim English wording is
// available here, so none is added (no invented translation).
//
// ANSWER MODELLING: Fall B (docs/design/pcor-pss-instrumente.md, Abschnitt 4) — the wording of
// the 5-point frequency scale (nie/selten/manchmal/oft/sehr oft) is part of the validated
// instrument, so it is modelled as an own MII CodeSystem (mii-cs-pro-ssd-12-answers) with
// ordinalValue properties (0-4), bound via answerValueSet (mii-vs-pro-ssd-12-answers) — NOT the
// generic YesNoAnswerOptions RuleSet, NOT inline answerOption.
// Note: in-form .ordinal() resolution from answerValueSet is engine-dependent; server-side
// scoring via CQL is the authoritative channel (see IG scoring page, Kanal B).
//
// TERMINOLOGY: checked against LOINC 2.83 and SNOMED International 2026-05-01
// (mcp__fhir-terminology__search_codes). LOINC 94027-0 "Somatic symptom disorder score" /
// 94028-8 "...severity" / 94020-5 "...screening report" exist, but are generic DSM-5 SSD
// concepts with no panel/component linkage to the Toussaint et al. SSD-12 instrument — using
// them here would falsely imply LOINC coverage of this specific scale. No SNOMED CT code for
// the SSD-12 instrument was found either. Consistent with the SCOFF precedent, only the MII
// questionnaire catalogue code is used.
//
// SCORING: sum of the 12 items (0-4 each), range 0-48; higher = greater somatic symptom burden.
// No clinical cut-off is documented here — none could be confirmed with sufficient confidence
// from the available sources for this branch; per module convention (MDR scope note) clinical
// interpretation logic would in any case not be shipped as executable logic even if a cut-off
// were documented.
//
// License: freely available (Tier A) — fully displayable and collectable.

Instance: mii-qst-pro-ssd-12
InstanceOf: mii-pr-pro-questionnaire
Title: "MII QST PRO SSD-12"
Description: "SSD-12 — Somatic Symptom Disorder – B Criteria Scale (Toussaint et al. 2016/2017), 12-item German self-report scale"
Usage: #definition
* insert Version
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire)

* url = $mii-qst-pro-ssd-12
* status = #active
* experimental = true
* language = #de
* code[+] = $mii-cs-pro-questionnaire-catalogue#ssd-12 "SSD-12 (Somatic Symptom Disorder - B Criteria Scale, Toussaint et al.)"

* copyright = "SSD-12 © Toussaint, Löwe et al. Freely available for research and clinical use. Lizenz-Status: frei verfügbar (Tier A)."

* extension[capabilities].extension[displayable].valueBoolean = true
* extension[capabilities].extension[collectable].valueBoolean = true
* extension[capabilities].extension[calculatable].valueBoolean = true
* extension[capabilities].extension[extractable].valueBoolean = true
* extension[capabilities].extension[domainAligned].valueBoolean = true

// Root variable: sum of the twelve SSD-12 items (0-4 each, total range 0-48)
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "ssd12Sum"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.item.where(linkId.matches('^ssd12-q(0[1-9]|1[0-2])$')).answer.value.ordinal().sum()"

// Item 0: introductory display
* item[0].linkId = "ssd12-intro"
* item[0].type = #display
* item[0].text = "Wie sehr wurden Sie in den letzten 7 Tagen durch folgende Beschwerden beeinträchtigt?"

// Item 1
* item[1].linkId = "ssd12-q01"
* item[1].type = #choice
* item[1].prefix = "1"
* item[1].text = "Ich denke, dass meine körperlichen Beschwerden Anzeichen einer ernsthaften Erkrankung sind."
* item[1].answerValueSet = Canonical(MII_VS_PRO_SSD_12_Answers)

// Item 2
* item[2].linkId = "ssd12-q02"
* item[2].type = #choice
* item[2].prefix = "2"
* item[2].text = "Ich mache mir große Sorgen um meine Gesundheit."
* item[2].answerValueSet = Canonical(MII_VS_PRO_SSD_12_Answers)

// Item 3
* item[3].linkId = "ssd12-q03"
* item[3].type = #choice
* item[3].prefix = "3"
* item[3].text = "Meine gesundheitlichen Sorgen behindern mich im Alltag."
* item[3].answerValueSet = Canonical(MII_VS_PRO_SSD_12_Answers)

// Item 4
* item[4].linkId = "ssd12-q04"
* item[4].type = #choice
* item[4].prefix = "4"
* item[4].text = "Ich bin von der Ernsthaftigkeit meiner körperlichen Beschwerden überzeugt."
* item[4].answerValueSet = Canonical(MII_VS_PRO_SSD_12_Answers)

// Item 5
* item[5].linkId = "ssd12-q05"
* item[5].type = #choice
* item[5].prefix = "5"
* item[5].text = "Meine körperlichen Beschwerden machen mir Angst."
* item[5].answerValueSet = Canonical(MII_VS_PRO_SSD_12_Answers)

// Item 6
* item[6].linkId = "ssd12-q06"
* item[6].type = #choice
* item[6].prefix = "6"
* item[6].text = "Meine körperlichen Beschwerden beschäftigen mich den größten Teil des Tages."
* item[6].answerValueSet = Canonical(MII_VS_PRO_SSD_12_Answers)

// Item 7
* item[7].linkId = "ssd12-q07"
* item[7].type = #choice
* item[7].prefix = "7"
* item[7].text = "Andere sagen mir, dass meine körperlichen Beschwerden nicht schlimm sind."
* item[7].answerValueSet = Canonical(MII_VS_PRO_SSD_12_Answers)

// Item 8
* item[8].linkId = "ssd12-q08"
* item[8].type = #choice
* item[8].prefix = "8"
* item[8].text = "Ich mache mir Sorgen, dass meine körperlichen Beschwerden niemals aufhören werden."
* item[8].answerValueSet = Canonical(MII_VS_PRO_SSD_12_Answers)

// Item 9
* item[9].linkId = "ssd12-q09"
* item[9].type = #choice
* item[9].prefix = "9"
* item[9].text = "Die Sorgen um meine Gesundheit rauben mir Energie."
* item[9].answerValueSet = Canonical(MII_VS_PRO_SSD_12_Answers)

// Item 10
* item[10].linkId = "ssd12-q10"
* item[10].type = #choice
* item[10].prefix = "10"
* item[10].text = "Ich denke, dass die Ärzte meine körperlichen Beschwerden nicht ernst nehmen."
* item[10].answerValueSet = Canonical(MII_VS_PRO_SSD_12_Answers)

// Item 11
* item[11].linkId = "ssd12-q11"
* item[11].type = #choice
* item[11].prefix = "11"
* item[11].text = "Ich mache mir Sorgen auch in Zukunft durch meine körperlichen Beschwerden beeinträchtigt zu bleiben."
* item[11].answerValueSet = Canonical(MII_VS_PRO_SSD_12_Answers)

// Item 12
* item[12].linkId = "ssd12-q12"
* item[12].type = #choice
* item[12].prefix = "12"
* item[12].text = "Durch meine körperlichen Beschwerden kann ich mich schlecht auf andere Dinge konzentrieren."
* item[12].answerValueSet = Canonical(MII_VS_PRO_SSD_12_Answers)

// Item 13: SSD-12 total score (0-48)
* item[13].linkId = "ssd12-score-total"
* item[13].type = #decimal
* item[13].prefix = "Score"
* item[13].code = $mii-cs-pro-score-catalogue#ssd-12-total "SSD-12 Total Score"
* item[13].readOnly = true
* item[13].extension[0].url = $sdc-questionnaire-calculated-expression
* item[13].extension[0].valueExpression.name = "Scoreberechnung"
* item[13].extension[0].valueExpression.language = #text/fhirpath
* item[13].extension[0].valueExpression.expression = "%ssd12Sum"
* item[13].text = "SSD-12 Summenwert (0-48)"
* item[13].extension[1].url = $sdc-questionnaire-observation-extract
* item[13].extension[1].valueBoolean = true
* item[13].extension[2].url = $hl7-questionnaire-unit
* item[13].extension[2].valueCoding.system = $UCUM
* item[13].extension[2].valueCoding.code = #{score}
* item[13].extension[3].url = $sdc-questionnaire-observation-extract-category
* item[13].extension[3].valueCodeableConcept.coding.system = $hl7-observation-category
* item[13].extension[3].valueCodeableConcept.coding.code = #survey
