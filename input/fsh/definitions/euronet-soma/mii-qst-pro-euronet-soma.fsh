// EURONET-SOMA — two core outcome numeric rating scale (NRS) items for somatic symptom burden
//
// Original: Rief W, Burton C, Frostholm L, et al. "Core Outcome Domains for Clinical Trials on
// Somatic Symptom Disorder, Bodily Distress Disorder, and Functional Somatic Syndromes: European
// Network on Somatic Symptom Disorders Recommendations." Psychosom Med 2017;79(9):1008-1015.
// doi:10.1097/PSY.0000000000000502
// The two items are Figure 1 of the publication ("Recommendations for two numeric analog scale
// items to be used in clinical trials"): 0-10 NRS for (1) overall symptom intensity and
// (2) symptom interference with daily activities, both over the past 7 days.
// German wording: PCOR-MII Item Level Dictionary (MASTER_3EntitiesOverview.xlsx, Sheet
// "Item Level Dictionary PSS", variables EURONET-SOMA1/EURONET-SOMA2).
// License: freely available (Tier A) — the publication explicitly recommends these two items for
// use in clinical trials and references translations into more than 20 languages (Supplemental
// Digital Content 1).
//
// LANGUAGE: language = #en. Figure 1 of Rief et al. 2017 (Psychosomatic Medicine, an English-
// language journal) prints both item stems and all four anchor labels verbatim in English — this
// is the original, not a back-translation. The German wording from the PCOR-MII Item Level
// Dictionary is carried via the translation extension, per the repo convention (original language
// primary; see docs/design/pcor-pss-instrumente.md section 6).
//
// ANSWER MODELLING: Fall C (numerical scale, docs/design/pcor-pss-instrumente.md section 4).
// type = #integer, no answerOption/answerValueSet/CodeSystem. sliderStepValue = 1,
// minValue = 0, maxValue = 10 (questionnaire-unit {score}).
//
// ANCHOR TEXTS: Figure 1 places two short labels at the ends of each 0-10 axis (e.g. "No symptoms
// at all" … "Worst possible symptoms"). Questionnaire.item has no free-text "description" element
// in FHIR R4 — item.text is the question itself, not annotation — so folding the anchors into it
// would conflate question wording with answer-scale labels. Instead each NRS item carries two
// child #display items (linkId suffix -anchor-min/-anchor-max), each holding one endpoint label,
// with item.prefix set to the numeric endpoint (0 / 10) it belongs to. This mirrors the existing
// intro-display-item pattern (see scoff item[0]) and needs no non-standard extension; a renderer
// without special NRS support can still show the labels as plain text next to the number.
//
// NORMATIVE-SOURCE QUIRK: the PCOR-MII Item Level Dictionary gives the identical German anchor
// description for BOTH items — "0 – überhaupt nicht … 10 – extrem beeinträchtigt" — even though
// the English original in Figure 1 uses different wording per item ("No symptoms at all"/"Worst
// possible symptoms" for intensity vs. "Not at all"/"Interfered completely" for interference).
// This is taken over verbatim and NOT harmonised with the English original (see the analogous
// SCOFF "One stone"/"6 kg" case, section 6 of the design doc) — both languages stay wortgetreu.
//
// TERMINOLOGY: no LOINC or SNOMED CT code exists for either EURONET-SOMA item specifically
// (checked against LOINC 2.83 and SNOMED International 2026-05-01; the closest LOINC hits —
// 94027-0/94028-8 "Somatic symptom disorder score/severity" — are ordinal interpretation codes
// belonging to a different, unrelated instrument, not to this two-item NRS pair). Hence item.code
// is omitted; only the MII questionnaire catalogue code is set at the Questionnaire level.
//
// SCORING: none. Per docs/design/pcor-pss-instrumente.md section 5, EURONET-SOMA1/2 are single
// items without an aggregate score — they are extracted as individual Observations, not combined.
// capabilities.calculatable = false; observation-extract = true is set directly on each NRS item
// (not on a score item, since there is none).
//
// SCHICHT: PRO Library (Instrumenten-Katalog), siehe docs/design/pcor-pss-instrumente.md Abschnitt 10.

Instance: mii-qst-pro-euronet-soma
InstanceOf: mii-pr-pro-questionnaire
Title: "MII QST PRO EURONET-SOMA"
Description: "EURONET-SOMA — two core outcome NRS items for somatic symptom intensity and interference (Rief et al. 2017) with German translation"
Usage: #definition
* insert Version
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire)

* url = $mii-qst-pro-euronet-soma
* status = #active
* experimental = true
* language = #en
* code[+] = $mii-cs-pro-questionnaire-catalogue#euronet-soma "EURONET-SOMA (Core outcome single items for somatic symptom burden, Rief et al. 2017)"

* copyright = "EURONET-SOMA numeric rating scale items © Rief, Burton, Frostholm et al. 2017 (Psychosomatic Medicine, American Psychosomatic Society). Figure 1 of the publication explicitly recommends these two items for use in clinical trials, with translations into more than 20 languages available as supplemental content. Lizenz-Status: frei verfügbar (Tier A)."

* extension[capabilities].extension[displayable].valueBoolean = true
* extension[capabilities].extension[collectable].valueBoolean = true
* extension[capabilities].extension[calculatable].valueBoolean = false
* extension[capabilities].extension[extractable].valueBoolean = true
* extension[capabilities].extension[domainAligned].valueBoolean = true

// Item 1: Symptom Intensity
// "During the last 7 days, the overall intensity of my bodily symptoms was:" (Fig. 1)
* item[0].linkId = "euronet-soma-q01"
* item[0].type = #integer
* item[0].prefix = "1"
* item[0].text = "During the last 7 days, the overall intensity of my bodily symptoms was:"
* item[0].text.extension[0].url = $hl7-translation
* item[0].text.extension[0].extension[0].url = "lang"
* item[0].text.extension[0].extension[0].valueCode = #de
* item[0].text.extension[0].extension[1].url = "content"
* item[0].text.extension[0].extension[1].valueString = "Wie war die Gesamtstärke Ihrer Körperbeschwerden in den letzten 7 Tagen?"
* item[0].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-sliderStepValue"
* item[0].extension[=].valueInteger = 1
* item[0].extension[+].url = $hl7-min-value
* item[0].extension[=].valueInteger = 0
* item[0].extension[+].url = $hl7-max-value
* item[0].extension[=].valueInteger = 10
* item[0].extension[+].url = $hl7-questionnaire-unit
* item[0].extension[=].valueCoding = $UCUM#{score} "{score}"
* item[0].extension[+].url = $sdc-questionnaire-observation-extract
* item[0].extension[=].valueBoolean = true
* item[0].extension[+].url = $sdc-questionnaire-observation-extract-category
* item[0].extension[=].valueCodeableConcept.coding.system = $hl7-observation-category
* item[0].extension[=].valueCodeableConcept.coding.code = #survey

// Item 1 anchors (Fig. 1 endpoint labels; DE per PCOR-MII Item Level Dictionary, identical for both items)
* item[0].item[0].linkId = "euronet-soma-q01-anchor-min"
* item[0].item[0].type = #display
* item[0].item[0].prefix = "0"
* item[0].item[0].text = "No symptoms at all"
* item[0].item[0].text.extension[0].url = $hl7-translation
* item[0].item[0].text.extension[0].extension[0].url = "lang"
* item[0].item[0].text.extension[0].extension[0].valueCode = #de
* item[0].item[0].text.extension[0].extension[1].url = "content"
* item[0].item[0].text.extension[0].extension[1].valueString = "überhaupt nicht"
* item[0].item[1].linkId = "euronet-soma-q01-anchor-max"
* item[0].item[1].type = #display
* item[0].item[1].prefix = "10"
* item[0].item[1].text = "Worst possible symptoms"
* item[0].item[1].text.extension[0].url = $hl7-translation
* item[0].item[1].text.extension[0].extension[0].url = "lang"
* item[0].item[1].text.extension[0].extension[0].valueCode = #de
* item[0].item[1].text.extension[0].extension[1].url = "content"
* item[0].item[1].text.extension[0].extension[1].valueString = "extrem beeinträchtigt"

// Item 2: Symptom Interference
// "During the last 7 days, my bodily symptoms interfered with daily life activities" (Fig. 1)
* item[1].linkId = "euronet-soma-q02"
* item[1].type = #integer
* item[1].prefix = "2"
* item[1].text = "During the last 7 days, my bodily symptoms interfered with daily life activities"
* item[1].text.extension[0].url = $hl7-translation
* item[1].text.extension[0].extension[0].url = "lang"
* item[1].text.extension[0].extension[0].valueCode = #de
* item[1].text.extension[0].extension[1].url = "content"
* item[1].text.extension[0].extension[1].valueString = "Wie sehr waren Sie in den letzten 7 Tagen durch Ihre Körperbeschwerden beeinträchtigt?"
* item[1].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-sliderStepValue"
* item[1].extension[=].valueInteger = 1
* item[1].extension[+].url = $hl7-min-value
* item[1].extension[=].valueInteger = 0
* item[1].extension[+].url = $hl7-max-value
* item[1].extension[=].valueInteger = 10
* item[1].extension[+].url = $hl7-questionnaire-unit
* item[1].extension[=].valueCoding = $UCUM#{score} "{score}"
* item[1].extension[+].url = $sdc-questionnaire-observation-extract
* item[1].extension[=].valueBoolean = true
* item[1].extension[+].url = $sdc-questionnaire-observation-extract-category
* item[1].extension[=].valueCodeableConcept.coding.system = $hl7-observation-category
* item[1].extension[=].valueCodeableConcept.coding.code = #survey

// Item 2 anchors (Fig. 1 endpoint labels; DE per PCOR-MII Item Level Dictionary, identical for both items)
* item[1].item[0].linkId = "euronet-soma-q02-anchor-min"
* item[1].item[0].type = #display
* item[1].item[0].prefix = "0"
* item[1].item[0].text = "Not at all"
* item[1].item[0].text.extension[0].url = $hl7-translation
* item[1].item[0].text.extension[0].extension[0].url = "lang"
* item[1].item[0].text.extension[0].extension[0].valueCode = #de
* item[1].item[0].text.extension[0].extension[1].url = "content"
* item[1].item[0].text.extension[0].extension[1].valueString = "überhaupt nicht"
* item[1].item[1].linkId = "euronet-soma-q02-anchor-max"
* item[1].item[1].type = #display
* item[1].item[1].prefix = "10"
* item[1].item[1].text = "Interfered completely"
* item[1].item[1].text.extension[0].url = $hl7-translation
* item[1].item[1].text.extension[0].extension[0].url = "lang"
* item[1].item[1].text.extension[0].extension[0].valueCode = #de
* item[1].item[1].text.extension[0].extension[1].url = "content"
* item[1].item[1].text.extension[0].extension[1].valueString = "extrem beeinträchtigt"
