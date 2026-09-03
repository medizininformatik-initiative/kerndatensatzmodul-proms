# MII ImplementationGuide Resource - MII IG PRO v2026.7.0

* [**Table of Contents**](toc.md)
* **MII ImplementationGuide Resource**

## MII ImplementationGuide Resource

This ImplementationGuide resource defines the technical details of this publication, including dependencies and publishing parameters.

* [XML](../ImplementationGuide-mii-ig-pro.xml)
* [JSON](../ImplementationGuide-mii-ig-pro.json)

### Cross Version Analysis

This is an R4 IG. None of the features it uses are changed in R4B, so it can be used as is with R4B systems. Packages for both [R4 (de.medizininformatikinitiative.kerndatensatz.pros.r4)](../package.r4.tgz) and [R4B (de.medizininformatikinitiative.kerndatensatz.pros.r4b)](../package.r4b.tgz) are available.

### IG Dependencies

This IG contains the following dependencies on other IGs.

















> **Where the versions come from.** Every package in the table is pinned directly in [`sushi-config.yaml`](https://github.com///blob/main/sushi-config.yaml) (`dependencies:`) — including `hl7.terminology.r4` (THO) and `hl7.fhir.uv.extensions.r4`, and those two deliberately so: the IG Publisher's [automatic-packages rule](https://build.fhir.org/ig/FHIR/ig-guidance/versions.html#automatic-packages) consults only this guide's **own** dependency list, so without a direct pin every build would silently inject the latest THO/extensions release — a version pinned by the MII meta package alone cannot control the build (verified in the publisher source at the pinned release). A weekly check warns when these two pins drift from what the pinned meta package ships, and the exact versions a concrete build used are recorded in its `qa-versions.json` output.

### Global Profiles

This IG declares the following global profiles — profiles that apply to every instance of their resource type exchanged under this guide. An empty table means this module declares none.

*There are no Global profiles defined*

### Copyrights

This publication includes IP covered under the following statements.

* MIDOS2 ist ein Instrument der Deutschen Gesellschaft für Palliativmedizin (DGP), frei verwendbar für klinische und Forschungszwecke.

* [MII CS PRO MIDOS2 Items and Response Scales](CodeSystem-mii-cs-pro-midos2.md): [MII_QST_PRO_MIDOS_MIDOS2](Questionnaire-mii-qst-pro-midos-midos2.md), [MII_VS_PRO_MIDOS2_Severity](ValueSet-mii-vs-pro-midos2-severity.md), [MII_VS_PRO_MIDOS2_Wellbeing](ValueSet-mii-vs-pro-midos2-wellbeing.md) and [QuestionnaireResponse/mii-exa-pro-midos2-response-01](QuestionnaireResponse-mii-exa-pro-midos2-response-01.md)


* PRO-CTCAE is a product of the US National Cancer Institute (NCI). The PRO-CTCAE items, calculation algorithms, and item library are available free of charge for use in cancer clinical trials.

* [MII CS PRO PRO-CTCAE Item Library](CodeSystem-mii-cs-pro-pro-ctcae.md): [MII_QST_PRO_PRO_CTCAE_Breast_DE](Questionnaire-mii-qst-pro-pro-ctcae-breast-de.md), [MII_QST_PRO_PRO_CTCAE_Onkologisches_Basisscreening](Questionnaire-mii-qst-pro-pro-ctcae-onkologisches-basisscreening.md)... Show 10 more, [MII_VS_PRO_PRO_CTCAE_Frequency](ValueSet-mii-vs-pro-pro-ctcae-frequency.md), [MII_VS_PRO_PRO_CTCAE_Frequency_Sexual](ValueSet-mii-vs-pro-pro-ctcae-frequency-sexual.md), [MII_VS_PRO_PRO_CTCAE_Interference](ValueSet-mii-vs-pro-pro-ctcae-interference.md), [MII_VS_PRO_PRO_CTCAE_Presence](ValueSet-mii-vs-pro-pro-ctcae-presence.md), [MII_VS_PRO_PRO_CTCAE_Presence_NA](ValueSet-mii-vs-pro-pro-ctcae-presence-na.md), [MII_VS_PRO_PRO_CTCAE_Presence_Sexual](ValueSet-mii-vs-pro-pro-ctcae-presence-sexual.md), [MII_VS_PRO_PRO_CTCAE_Severity](ValueSet-mii-vs-pro-pro-ctcae-severity.md), [MII_VS_PRO_PRO_CTCAE_Severity_Radiation](ValueSet-mii-vs-pro-pro-ctcae-severity-radiation.md), [MII_VS_PRO_PRO_CTCAE_Severity_Sexual](ValueSet-mii-vs-pro-pro-ctcae-severity-sexual.md) and [QuestionnaireResponse/mii-exa-pro-pro-ctcae-onkologisches-basisscreening-response-01](QuestionnaireResponse-mii-exa-pro-pro-ctcae-onkologisches-basisscreening-response-01.md)


* The UCUM codes, UCUM table (regardless of format), and UCUM Specification are copyright 1999-2009, Regenstrief Institute, Inc. and the Unified Codes for Units of Measures (UCUM) Organization. All rights reserved. [https://ucum.org/trac/wiki/TermsOfUse](https://ucum.org/trac/wiki/TermsOfUse)

* [Unified Code for Units of Measure (UCUM)](http://hl7.org/fhir/uv/xver-r5.r4/0.1.0/CodeSystem-v3-ucum.html): [Bundle/mii-exa-pro-bdi-ii-bundle](Bundle-mii-exa-pro-bdi-ii-bundle.md), [Bundle/mii-exa-pro-eortc-qlq-c30-bundle](Bundle-mii-exa-pro-eortc-qlq-c30-bundle.md)... Show 102 more, [Bundle/mii-exa-pro-phq-9-bundle](Bundle-mii-exa-pro-phq-9-bundle.md), [Bundle/mii-exa-pro-promis-29-bundle](Bundle-mii-exa-pro-promis-29-bundle.md), [Bundle/mii-exa-pro-promis-depression-sf4a-bundle](Bundle-mii-exa-pro-promis-depression-sf4a-bundle.md), [Observation/mii-exa-pro-bdi-ii-observation](Observation-mii-exa-pro-bdi-ii-observation.md), [Observation/mii-exa-pro-dass-dass21-score-anxiety-equiv](Observation-mii-exa-pro-dass-dass21-score-anxiety-equiv.md), [Observation/mii-exa-pro-dass-dass21-score-anxiety-raw](Observation-mii-exa-pro-dass-dass21-score-anxiety-raw.md), [Observation/mii-exa-pro-dass-dass21-score-depression-equiv](Observation-mii-exa-pro-dass-dass21-score-depression-equiv.md), [Observation/mii-exa-pro-dass-dass21-score-depression-raw](Observation-mii-exa-pro-dass-dass21-score-depression-raw.md), [Observation/mii-exa-pro-dass-dass21-score-stress-equiv](Observation-mii-exa-pro-dass-dass21-score-stress-equiv.md), [Observation/mii-exa-pro-dass-dass21-score-stress-raw](Observation-mii-exa-pro-dass-dass21-score-stress-raw.md), [Observation/mii-exa-pro-eortc-qlq-c30-observation-ap](Observation-mii-exa-pro-eortc-qlq-c30-observation-ap.md), [Observation/mii-exa-pro-eortc-qlq-c30-observation-cf](Observation-mii-exa-pro-eortc-qlq-c30-observation-cf.md), [Observation/mii-exa-pro-eortc-qlq-c30-observation-co](Observation-mii-exa-pro-eortc-qlq-c30-observation-co.md), [Observation/mii-exa-pro-eortc-qlq-c30-observation-di](Observation-mii-exa-pro-eortc-qlq-c30-observation-di.md), [Observation/mii-exa-pro-eortc-qlq-c30-observation-dy](Observation-mii-exa-pro-eortc-qlq-c30-observation-dy.md), [Observation/mii-exa-pro-eortc-qlq-c30-observation-ef](Observation-mii-exa-pro-eortc-qlq-c30-observation-ef.md), [Observation/mii-exa-pro-eortc-qlq-c30-observation-fa](Observation-mii-exa-pro-eortc-qlq-c30-observation-fa.md), [Observation/mii-exa-pro-eortc-qlq-c30-observation-fi](Observation-mii-exa-pro-eortc-qlq-c30-observation-fi.md), [Observation/mii-exa-pro-eortc-qlq-c30-observation-nv](Observation-mii-exa-pro-eortc-qlq-c30-observation-nv.md), [Observation/mii-exa-pro-eortc-qlq-c30-observation-pa](Observation-mii-exa-pro-eortc-qlq-c30-observation-pa.md), [Observation/mii-exa-pro-eortc-qlq-c30-observation-pf](Observation-mii-exa-pro-eortc-qlq-c30-observation-pf.md), [Observation/mii-exa-pro-eortc-qlq-c30-observation-ql](Observation-mii-exa-pro-eortc-qlq-c30-observation-ql.md), [Observation/mii-exa-pro-eortc-qlq-c30-observation-rf](Observation-mii-exa-pro-eortc-qlq-c30-observation-rf.md), [Observation/mii-exa-pro-eortc-qlq-c30-observation-sf](Observation-mii-exa-pro-eortc-qlq-c30-observation-sf.md), [Observation/mii-exa-pro-eortc-qlq-c30-observation-sl](Observation-mii-exa-pro-eortc-qlq-c30-observation-sl.md), [Observation/mii-exa-pro-gad-7-score](Observation-mii-exa-pro-gad-7-score.md), [Observation/mii-exa-pro-isr-z-score](Observation-mii-exa-pro-isr-z-score.md), [Observation/mii-exa-pro-pc-ptsd-score](Observation-mii-exa-pro-pc-ptsd-score.md), [Observation/mii-exa-pro-phq-15-observation](Observation-mii-exa-pro-phq-15-observation.md), [Observation/mii-exa-pro-phq-9-observation](Observation-mii-exa-pro-phq-9-observation.md), [Observation/mii-exa-pro-promis-depression-sf4a-raw-score](Observation-mii-exa-pro-promis-depression-sf4a-raw-score.md), [Observation/mii-exa-pro-promis-depression-sf4a-tscore](Observation-mii-exa-pro-promis-depression-sf4a-tscore.md), [Observation/mii-exa-pro-promis-depression-tscore-from-bdi-ii-observation](Observation-mii-exa-pro-promis-depression-tscore-from-bdi-ii-observation.md), [Observation/mii-exa-pro-scoff-score](Observation-mii-exa-pro-scoff-score.md), [Observation/mii-exa-pro-ssd-12-score](Observation-mii-exa-pro-ssd-12-score.md), [Observation/mii-exa-pro-whodas12-score-simple-sum](Observation-mii-exa-pro-whodas12-score-simple-sum.md), [Observation/mii-exa-pro-wi-7-score](Observation-mii-exa-pro-wi-7-score.md), [ObservationDefinition/mii-obsdef-pro-depression-t-score](ObservationDefinition-mii-obsdef-pro-depression-t-score.md), [ObservationDefinition/mii-obsdef-pro-eortc-qlq-c30-ap](ObservationDefinition-mii-obsdef-pro-eortc-qlq-c30-ap.md), [ObservationDefinition/mii-obsdef-pro-eortc-qlq-c30-cf](ObservationDefinition-mii-obsdef-pro-eortc-qlq-c30-cf.md), [ObservationDefinition/mii-obsdef-pro-eortc-qlq-c30-co](ObservationDefinition-mii-obsdef-pro-eortc-qlq-c30-co.md), [ObservationDefinition/mii-obsdef-pro-eortc-qlq-c30-di](ObservationDefinition-mii-obsdef-pro-eortc-qlq-c30-di.md), [ObservationDefinition/mii-obsdef-pro-eortc-qlq-c30-dy](ObservationDefinition-mii-obsdef-pro-eortc-qlq-c30-dy.md), [ObservationDefinition/mii-obsdef-pro-eortc-qlq-c30-ef](ObservationDefinition-mii-obsdef-pro-eortc-qlq-c30-ef.md), [ObservationDefinition/mii-obsdef-pro-eortc-qlq-c30-fa](ObservationDefinition-mii-obsdef-pro-eortc-qlq-c30-fa.md), [ObservationDefinition/mii-obsdef-pro-eortc-qlq-c30-fi](ObservationDefinition-mii-obsdef-pro-eortc-qlq-c30-fi.md), [ObservationDefinition/mii-obsdef-pro-eortc-qlq-c30-nv](ObservationDefinition-mii-obsdef-pro-eortc-qlq-c30-nv.md), [ObservationDefinition/mii-obsdef-pro-eortc-qlq-c30-pa](ObservationDefinition-mii-obsdef-pro-eortc-qlq-c30-pa.md), [ObservationDefinition/mii-obsdef-pro-eortc-qlq-c30-pf](ObservationDefinition-mii-obsdef-pro-eortc-qlq-c30-pf.md), [ObservationDefinition/mii-obsdef-pro-eortc-qlq-c30-ql](ObservationDefinition-mii-obsdef-pro-eortc-qlq-c30-ql.md), [ObservationDefinition/mii-obsdef-pro-eortc-qlq-c30-rf](ObservationDefinition-mii-obsdef-pro-eortc-qlq-c30-rf.md), [ObservationDefinition/mii-obsdef-pro-eortc-qlq-c30-sf](ObservationDefinition-mii-obsdef-pro-eortc-qlq-c30-sf.md), [ObservationDefinition/mii-obsdef-pro-eortc-qlq-c30-sl](ObservationDefinition-mii-obsdef-pro-eortc-qlq-c30-sl.md), [ObservationDefinition/mii-obsdef-pro-promis-29-anxiety-tscore](ObservationDefinition-mii-obsdef-pro-promis-29-anxiety-tscore.md), [ObservationDefinition/mii-obsdef-pro-promis-29-depression-tscore](ObservationDefinition-mii-obsdef-pro-promis-29-depression-tscore.md), [ObservationDefinition/mii-obsdef-pro-promis-29-fatigue-tscore](ObservationDefinition-mii-obsdef-pro-promis-29-fatigue-tscore.md), [ObservationDefinition/mii-obsdef-pro-promis-29-pain-intensity](ObservationDefinition-mii-obsdef-pro-promis-29-pain-intensity.md), [ObservationDefinition/mii-obsdef-pro-promis-29-pain-interference-tscore](ObservationDefinition-mii-obsdef-pro-promis-29-pain-interference-tscore.md), [ObservationDefinition/mii-obsdef-pro-promis-29-physical-function-tscore](ObservationDefinition-mii-obsdef-pro-promis-29-physical-function-tscore.md), [ObservationDefinition/mii-obsdef-pro-promis-29-sleep-disturbance-tscore](ObservationDefinition-mii-obsdef-pro-promis-29-sleep-disturbance-tscore.md), [ObservationDefinition/mii-obsdef-pro-promis-29-social-function-tscore](ObservationDefinition-mii-obsdef-pro-promis-29-social-function-tscore.md), [ObservationDefinition/mii-obsdef-pro-promis-cognitive-function-sf4a-raw-score](ObservationDefinition-mii-obsdef-pro-promis-cognitive-function-sf4a-raw-score.md), [ObservationDefinition/mii-obsdef-pro-promis-cognitive-function-sf4a-tscore](ObservationDefinition-mii-obsdef-pro-promis-cognitive-function-sf4a-tscore.md), [ObservationDefinition/mii-obsdef-pro-score-bdi-ii](ObservationDefinition-mii-obsdef-pro-score-bdi-ii.md), [ObservationDefinition/mii-obsdef-pro-score-dass21-anxiety-equiv](ObservationDefinition-mii-obsdef-pro-score-dass21-anxiety-equiv.md), [ObservationDefinition/mii-obsdef-pro-score-dass21-anxiety-raw](ObservationDefinition-mii-obsdef-pro-score-dass21-anxiety-raw.md), [ObservationDefinition/mii-obsdef-pro-score-dass21-depression-equiv](ObservationDefinition-mii-obsdef-pro-score-dass21-depression-equiv.md), [ObservationDefinition/mii-obsdef-pro-score-dass21-depression-raw](ObservationDefinition-mii-obsdef-pro-score-dass21-depression-raw.md), [ObservationDefinition/mii-obsdef-pro-score-dass21-stress-equiv](ObservationDefinition-mii-obsdef-pro-score-dass21-stress-equiv.md), [ObservationDefinition/mii-obsdef-pro-score-dass21-stress-raw](ObservationDefinition-mii-obsdef-pro-score-dass21-stress-raw.md), [ObservationDefinition/mii-obsdef-pro-score-eq5d5l-index](ObservationDefinition-mii-obsdef-pro-score-eq5d5l-index.md), [ObservationDefinition/mii-obsdef-pro-score-eq5d5l-vas](ObservationDefinition-mii-obsdef-pro-score-eq5d5l-vas.md), [ObservationDefinition/mii-obsdef-pro-score-gad-7](ObservationDefinition-mii-obsdef-pro-score-gad-7.md), [ObservationDefinition/mii-obsdef-pro-score-isr-z](ObservationDefinition-mii-obsdef-pro-score-isr-z.md), [ObservationDefinition/mii-obsdef-pro-score-pc-ptsd](ObservationDefinition-mii-obsdef-pro-score-pc-ptsd.md), [ObservationDefinition/mii-obsdef-pro-score-phq-15](ObservationDefinition-mii-obsdef-pro-score-phq-15.md), [ObservationDefinition/mii-obsdef-pro-score-phq-9](ObservationDefinition-mii-obsdef-pro-score-phq-9.md), [ObservationDefinition/mii-obsdef-pro-score-proctcae-acs](ObservationDefinition-mii-obsdef-pro-score-proctcae-acs.md), [ObservationDefinition/mii-obsdef-pro-score-proctcae-composite-grade](ObservationDefinition-mii-obsdef-pro-score-proctcae-composite-grade.md), [ObservationDefinition/mii-obsdef-pro-score-scoff](ObservationDefinition-mii-obsdef-pro-score-scoff.md), [ObservationDefinition/mii-obsdef-pro-score-ssd-12](ObservationDefinition-mii-obsdef-pro-score-ssd-12.md), [ObservationDefinition/mii-obsdef-pro-score-whodas12-simple-sum](ObservationDefinition-mii-obsdef-pro-score-whodas12-simple-sum.md), [ObservationDefinition/mii-obsdef-pro-score-wi-7](ObservationDefinition-mii-obsdef-pro-score-wi-7.md), [Questionnaire/mii-qst-pro-bdi-bdi2](Questionnaire-mii-qst-pro-bdi-bdi2.md), [Questionnaire/mii-qst-pro-dass-dass21](Questionnaire-mii-qst-pro-dass-dass21.md), [Questionnaire/mii-qst-pro-euronet-soma](Questionnaire-mii-qst-pro-euronet-soma.md), [Questionnaire/mii-qst-pro-euroqol-eq5d5l-answer-coding](Questionnaire-mii-qst-pro-euroqol-eq5d5l-answer-coding.md), [Questionnaire/mii-qst-pro-euroqol-eq5d5l-collectable](Questionnaire-mii-qst-pro-euroqol-eq5d5l-collectable.md), [Questionnaire/mii-qst-pro-euroqol-eq5d5l-displayable](Questionnaire-mii-qst-pro-euroqol-eq5d5l-displayable.md), [Questionnaire/mii-qst-pro-euroqol-eq5d5l-minimal](Questionnaire-mii-qst-pro-euroqol-eq5d5l-minimal.md), [Questionnaire/mii-qst-pro-gad-7](Questionnaire-mii-qst-pro-gad-7.md), [Questionnaire/mii-qst-pro-isr-z](Questionnaire-mii-qst-pro-isr-z.md), [Questionnaire/mii-qst-pro-pc-ptsd](Questionnaire-mii-qst-pro-pc-ptsd.md), [Questionnaire/mii-qst-pro-phq-15](Questionnaire-mii-qst-pro-phq-15.md), [Questionnaire/mii-qst-pro-phq-9](Questionnaire-mii-qst-pro-phq-9.md), [Questionnaire/mii-qst-pro-promis-29](Questionnaire-mii-qst-pro-promis-29.md), [Questionnaire/mii-qst-pro-promis-29-de](Questionnaire-mii-qst-pro-promis-29-de.md), [Questionnaire/mii-qst-pro-promis-depression-sf4a](Questionnaire-mii-qst-pro-promis-depression-sf4a.md), [Questionnaire/mii-qst-pro-scoff](Questionnaire-mii-qst-pro-scoff.md), [Questionnaire/mii-qst-pro-ssd-12](Questionnaire-mii-qst-pro-ssd-12.md), [Questionnaire/mii-qst-pro-whodas-whodas12](Questionnaire-mii-qst-pro-whodas-whodas12.md) and [Questionnaire/mii-qst-pro-wi-7](Questionnaire-mii-qst-pro-wi-7.md)


* This material contains content from [LOINC](http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the [license](http://loinc.org/license). LOINC® is a registered United States trademark of Regenstrief Institute, Inc.

* [LOINC](http://terminology.hl7.org/6.5.0/CodeSystem-v3-loinc.html): [Bundle/mii-exa-pro-bdi-ii-bundle](Bundle-mii-exa-pro-bdi-ii-bundle.md), [Bundle/mii-exa-pro-phq-9-bundle](Bundle-mii-exa-pro-phq-9-bundle.md)... Show 59 more, [Bundle/mii-exa-pro-promis-29-bundle](Bundle-mii-exa-pro-promis-29-bundle.md), [Bundle/mii-exa-pro-promis-depression-sf4a-bundle](Bundle-mii-exa-pro-promis-depression-sf4a-bundle.md), [MII_PR_PRO_Depression_T_Score](StructureDefinition-mii-pr-pro-depression-t-score.md), [MII_PR_PRO_Observation_BDI_II](StructureDefinition-mii-pr-pro-observation-bdi-ii.md), [MII_PR_PRO_Observation_PHQ_15](StructureDefinition-mii-pr-pro-observation-phq-15.md), [MII_PR_PRO_Observation_PHQ_9](StructureDefinition-mii-pr-pro-observation-phq-9.md), [MII_PR_PRO_PROMIS_29_Anxiety_TScore](StructureDefinition-mii-pr-pro-promis-29-anxiety-tscore.md), [MII_PR_PRO_PROMIS_29_Depression_TScore](StructureDefinition-mii-pr-pro-promis-29-depression-tscore.md), [MII_PR_PRO_PROMIS_29_Fatigue_TScore](StructureDefinition-mii-pr-pro-promis-29-fatigue-tscore.md), [MII_PR_PRO_PROMIS_29_Pain_Intensity](StructureDefinition-mii-pr-pro-promis-29-pain-intensity.md), [MII_PR_PRO_PROMIS_29_Pain_Interference_TScore](StructureDefinition-mii-pr-pro-promis-29-pain-interference-tscore.md), [MII_PR_PRO_PROMIS_29_Physical_Function_TScore](StructureDefinition-mii-pr-pro-promis-29-physical-function-tscore.md), [MII_PR_PRO_PROMIS_29_Sleep_Disturbance_TScore](StructureDefinition-mii-pr-pro-promis-29-sleep-disturbance-tscore.md), [MII_PR_PRO_PROMIS_29_Social_Function_TScore](StructureDefinition-mii-pr-pro-promis-29-social-function-tscore.md), [MII_PR_PRO_PROMIS_Cognitive_Function_SF4a_Raw_Score](StructureDefinition-mii-pr-pro-promis-cognitive-function-sf4a-raw-score.md), [MII_PR_PRO_PROMIS_Cognitive_Function_SF4a_TScore](StructureDefinition-mii-pr-pro-promis-cognitive-function-sf4a-tscore.md), [MII_PR_PRO_PROMIS_Depression_SF4a_Raw_Score](StructureDefinition-mii-pr-pro-promis-depression-sf4a-raw-score.md), [MII_VS_PRO_PHQ9_AnswerList_LL3583](ValueSet-mii-vs-pro-phq-9-answer-list-ll358-3.md), [MII_VS_PRO_PHQ9_AnswerList_LL3591](ValueSet-mii-vs-pro-phq-9-answer-list-ll359-1.md), [MII_VS_PRO_PROMIS_Frequency_Response_Scale](ValueSet-mii-vs-pro-promis-frequency-response-scale.md), [MII_VS_PRO_PROMIS_Intensity_Response_Scale](ValueSet-mii-vs-pro-promis-intensity-response-scale.md), [MII_VS_PRO_PROMIS_Physical_Function_Response_Scale](ValueSet-mii-vs-pro-promis-physical-function-response-scale.md), [Observation/mii-exa-pro-bdi-ii-observation](Observation-mii-exa-pro-bdi-ii-observation.md), [Observation/mii-exa-pro-gad-7-score](Observation-mii-exa-pro-gad-7-score.md), [Observation/mii-exa-pro-phq-15-observation](Observation-mii-exa-pro-phq-15-observation.md), [Observation/mii-exa-pro-phq-9-observation](Observation-mii-exa-pro-phq-9-observation.md), [Observation/mii-exa-pro-promis-depression-sf4a-raw-score](Observation-mii-exa-pro-promis-depression-sf4a-raw-score.md), [Observation/mii-exa-pro-promis-depression-sf4a-tscore](Observation-mii-exa-pro-promis-depression-sf4a-tscore.md), [Observation/mii-exa-pro-promis-depression-tscore-from-bdi-ii-observation](Observation-mii-exa-pro-promis-depression-tscore-from-bdi-ii-observation.md), [ObservationDefinition/mii-obsdef-pro-depression-t-score](ObservationDefinition-mii-obsdef-pro-depression-t-score.md), [ObservationDefinition/mii-obsdef-pro-promis-29-anxiety-tscore](ObservationDefinition-mii-obsdef-pro-promis-29-anxiety-tscore.md), [ObservationDefinition/mii-obsdef-pro-promis-29-depression-tscore](ObservationDefinition-mii-obsdef-pro-promis-29-depression-tscore.md), [ObservationDefinition/mii-obsdef-pro-promis-29-fatigue-tscore](ObservationDefinition-mii-obsdef-pro-promis-29-fatigue-tscore.md), [ObservationDefinition/mii-obsdef-pro-promis-29-pain-intensity](ObservationDefinition-mii-obsdef-pro-promis-29-pain-intensity.md), [ObservationDefinition/mii-obsdef-pro-promis-29-pain-interference-tscore](ObservationDefinition-mii-obsdef-pro-promis-29-pain-interference-tscore.md), [ObservationDefinition/mii-obsdef-pro-promis-29-physical-function-tscore](ObservationDefinition-mii-obsdef-pro-promis-29-physical-function-tscore.md), [ObservationDefinition/mii-obsdef-pro-promis-29-sleep-disturbance-tscore](ObservationDefinition-mii-obsdef-pro-promis-29-sleep-disturbance-tscore.md), [ObservationDefinition/mii-obsdef-pro-promis-29-social-function-tscore](ObservationDefinition-mii-obsdef-pro-promis-29-social-function-tscore.md), [ObservationDefinition/mii-obsdef-pro-promis-cognitive-function-sf4a-raw-score](ObservationDefinition-mii-obsdef-pro-promis-cognitive-function-sf4a-raw-score.md), [ObservationDefinition/mii-obsdef-pro-promis-cognitive-function-sf4a-tscore](ObservationDefinition-mii-obsdef-pro-promis-cognitive-function-sf4a-tscore.md), [ObservationDefinition/mii-obsdef-pro-score-bdi-ii](ObservationDefinition-mii-obsdef-pro-score-bdi-ii.md), [ObservationDefinition/mii-obsdef-pro-score-gad-7](ObservationDefinition-mii-obsdef-pro-score-gad-7.md), [ObservationDefinition/mii-obsdef-pro-score-phq-15](ObservationDefinition-mii-obsdef-pro-score-phq-15.md), [ObservationDefinition/mii-obsdef-pro-score-phq-9](ObservationDefinition-mii-obsdef-pro-score-phq-9.md), [Questionnaire/mii-qst-pro-bdi-bdi2](Questionnaire-mii-qst-pro-bdi-bdi2.md), [Questionnaire/mii-qst-pro-gad-7](Questionnaire-mii-qst-pro-gad-7.md), [Questionnaire/mii-qst-pro-phq-15](Questionnaire-mii-qst-pro-phq-15.md), [Questionnaire/mii-qst-pro-phq-9](Questionnaire-mii-qst-pro-phq-9.md), [Questionnaire/mii-qst-pro-promis-16](Questionnaire-mii-qst-pro-promis-16.md), [Questionnaire/mii-qst-pro-promis-29](Questionnaire-mii-qst-pro-promis-29.md), [Questionnaire/mii-qst-pro-promis-29-de](Questionnaire-mii-qst-pro-promis-29-de.md), [Questionnaire/mii-qst-pro-promis-29-minimal](Questionnaire-mii-qst-pro-promis-29-minimal.md), [Questionnaire/mii-qst-pro-promis-cognitive-function-sf4a](Questionnaire-mii-qst-pro-promis-cognitive-function-sf4a.md), [Questionnaire/mii-qst-pro-promis-depression-sf4a](Questionnaire-mii-qst-pro-promis-depression-sf4a.md), [QuestionnaireResponse/mii-exa-pro-gad-7-response](QuestionnaireResponse-mii-exa-pro-gad-7-response.md), [QuestionnaireResponse/mii-exa-pro-phq-9-response](QuestionnaireResponse-mii-exa-pro-phq-9-response.md), [QuestionnaireResponse/mii-exa-pro-promis-29-de-response](QuestionnaireResponse-mii-exa-pro-promis-29-de-response.md), [QuestionnaireResponse/mii-exa-pro-promis-29-response](QuestionnaireResponse-mii-exa-pro-promis-29-response.md) and [QuestionnaireResponse/mii-exa-pro-promis-depression-sf4a-response](QuestionnaireResponse-mii-exa-pro-promis-depression-sf4a-response.md)


* This material contains content that is copyright of SNOMED International. Implementers of these specifications must have the appropriate SNOMED CT Affiliate license - for more information contact [https://www.snomed.org/get-snomed](https://www.snomed.org/get-snomed) or [info@snomed.org](mailto:info@snomed.org).

* [SNOMED Clinical Terms&reg; (SNOMED CT&reg;)](http://hl7.org/fhir/R4/codesystem-snomedct.html): [Bundle/mii-exa-pro-eortc-qlq-c30-bundle](Bundle-mii-exa-pro-eortc-qlq-c30-bundle.md), [MII_CS_PRO_EQ_5D_ValueSet](CodeSystem-mii-cs-pro-eq-5d-value-set.md)... Show 33 more, [MII_PR_PRO_Observation_EQ5D5L_Index](StructureDefinition-mii-pr-pro-observation-eq5d5l-index.md), [MII_PR_PRO_Observation_EQ5D5L_Profile](StructureDefinition-mii-pr-pro-observation-eq5d5l-profile.md), [MII_PR_PRO_Observation_EQ5D5L_VAS](StructureDefinition-mii-pr-pro-observation-eq5d5l-vas.md), [Observation/mii-exa-pro-dass-dass21-score-depression-equiv](Observation-mii-exa-pro-dass-dass21-score-depression-equiv.md), [Observation/mii-exa-pro-dass-dass21-score-depression-raw](Observation-mii-exa-pro-dass-dass21-score-depression-raw.md), [Observation/mii-exa-pro-dass-dass21-score-stress-equiv](Observation-mii-exa-pro-dass-dass21-score-stress-equiv.md), [Observation/mii-exa-pro-dass-dass21-score-stress-raw](Observation-mii-exa-pro-dass-dass21-score-stress-raw.md), [Observation/mii-exa-pro-eortc-qlq-c30-observation-pf](Observation-mii-exa-pro-eortc-qlq-c30-observation-pf.md), [Observation/mii-exa-pro-whodas12-score-simple-sum](Observation-mii-exa-pro-whodas12-score-simple-sum.md), [ObservationDefinition/mii-obsdef-pro-eortc-qlq-c30-pf](ObservationDefinition-mii-obsdef-pro-eortc-qlq-c30-pf.md), [ObservationDefinition/mii-obsdef-pro-score-dass21-depression-equiv](ObservationDefinition-mii-obsdef-pro-score-dass21-depression-equiv.md), [ObservationDefinition/mii-obsdef-pro-score-dass21-depression-raw](ObservationDefinition-mii-obsdef-pro-score-dass21-depression-raw.md), [ObservationDefinition/mii-obsdef-pro-score-dass21-stress-equiv](ObservationDefinition-mii-obsdef-pro-score-dass21-stress-equiv.md), [ObservationDefinition/mii-obsdef-pro-score-dass21-stress-raw](ObservationDefinition-mii-obsdef-pro-score-dass21-stress-raw.md), [ObservationDefinition/mii-obsdef-pro-score-eq5d5l-index](ObservationDefinition-mii-obsdef-pro-score-eq5d5l-index.md), [ObservationDefinition/mii-obsdef-pro-score-eq5d5l-profile](ObservationDefinition-mii-obsdef-pro-score-eq5d5l-profile.md), [ObservationDefinition/mii-obsdef-pro-score-eq5d5l-vas](ObservationDefinition-mii-obsdef-pro-score-eq5d5l-vas.md), [ObservationDefinition/mii-obsdef-pro-score-whodas12-simple-sum](ObservationDefinition-mii-obsdef-pro-score-whodas12-simple-sum.md), [Questionnaire/mii-qst-pro-eortc-qlq-c30](Questionnaire-mii-qst-pro-eortc-qlq-c30.md), [Questionnaire/mii-qst-pro-eortc-qlq-c30-variant-a](Questionnaire-mii-qst-pro-eortc-qlq-c30-variant-a.md), [Questionnaire/mii-qst-pro-eortc-qlq-c30-variant-b](Questionnaire-mii-qst-pro-eortc-qlq-c30-variant-b.md), [Questionnaire/mii-qst-pro-epds](Questionnaire-mii-qst-pro-epds.md), [Questionnaire/mii-qst-pro-euroqol-eq5d5l-answer-coding](Questionnaire-mii-qst-pro-euroqol-eq5d5l-answer-coding.md), [Questionnaire/mii-qst-pro-euroqol-eq5d5l-collectable](Questionnaire-mii-qst-pro-euroqol-eq5d5l-collectable.md), [Questionnaire/mii-qst-pro-euroqol-eq5d5l-displayable](Questionnaire-mii-qst-pro-euroqol-eq5d5l-displayable.md), [Questionnaire/mii-qst-pro-euroqol-eq5d5l-minimal](Questionnaire-mii-qst-pro-euroqol-eq5d5l-minimal.md), [Questionnaire/mii-qst-pro-hads](Questionnaire-mii-qst-pro-hads.md), [Questionnaire/mii-qst-pro-pc-ptsd](Questionnaire-mii-qst-pro-pc-ptsd.md), [Questionnaire/mii-qst-pro-scoff](Questionnaire-mii-qst-pro-scoff.md), [Questionnaire/mii-qst-pro-wi-7](Questionnaire-mii-qst-pro-wi-7.md), [QuestionnaireResponse/mii-exa-pro-pc-ptsd-response](QuestionnaireResponse-mii-exa-pro-pc-ptsd-response.md), [QuestionnaireResponse/mii-exa-pro-scoff-response](QuestionnaireResponse-mii-exa-pro-scoff-response.md) and [QuestionnaireResponse/mii-exa-pro-wi-7-response](QuestionnaireResponse-mii-exa-pro-wi-7-response.md)


* This material derives from the HL7 Terminology (THO). THO is copyright ©1989+ Health Level Seven International and is made available under the CC0 designation. For more licensing information see: [https://terminology.hl7.org/license.html](https://terminology.hl7.org/license.html)

* [MeasureImprovementNotation](http://terminology.hl7.org/7.3.0/CodeSystem-measure-improvement-notation.html): [ObservationDefinition/mii-obsdef-pro-depression-t-score](ObservationDefinition-mii-obsdef-pro-depression-t-score.md), [ObservationDefinition/mii-obsdef-pro-promis-29-anxiety-tscore](ObservationDefinition-mii-obsdef-pro-promis-29-anxiety-tscore.md)... Show 29 more, [ObservationDefinition/mii-obsdef-pro-promis-29-depression-tscore](ObservationDefinition-mii-obsdef-pro-promis-29-depression-tscore.md), [ObservationDefinition/mii-obsdef-pro-promis-29-fatigue-tscore](ObservationDefinition-mii-obsdef-pro-promis-29-fatigue-tscore.md), [ObservationDefinition/mii-obsdef-pro-promis-29-pain-intensity](ObservationDefinition-mii-obsdef-pro-promis-29-pain-intensity.md), [ObservationDefinition/mii-obsdef-pro-promis-29-pain-interference-tscore](ObservationDefinition-mii-obsdef-pro-promis-29-pain-interference-tscore.md), [ObservationDefinition/mii-obsdef-pro-promis-29-physical-function-tscore](ObservationDefinition-mii-obsdef-pro-promis-29-physical-function-tscore.md), [ObservationDefinition/mii-obsdef-pro-promis-29-sleep-disturbance-tscore](ObservationDefinition-mii-obsdef-pro-promis-29-sleep-disturbance-tscore.md), [ObservationDefinition/mii-obsdef-pro-promis-29-social-function-tscore](ObservationDefinition-mii-obsdef-pro-promis-29-social-function-tscore.md), [ObservationDefinition/mii-obsdef-pro-promis-cognitive-function-sf4a-raw-score](ObservationDefinition-mii-obsdef-pro-promis-cognitive-function-sf4a-raw-score.md), [ObservationDefinition/mii-obsdef-pro-promis-cognitive-function-sf4a-tscore](ObservationDefinition-mii-obsdef-pro-promis-cognitive-function-sf4a-tscore.md), [ObservationDefinition/mii-obsdef-pro-score-bdi-ii](ObservationDefinition-mii-obsdef-pro-score-bdi-ii.md), [ObservationDefinition/mii-obsdef-pro-score-dass21-anxiety-equiv](ObservationDefinition-mii-obsdef-pro-score-dass21-anxiety-equiv.md), [ObservationDefinition/mii-obsdef-pro-score-dass21-anxiety-raw](ObservationDefinition-mii-obsdef-pro-score-dass21-anxiety-raw.md), [ObservationDefinition/mii-obsdef-pro-score-dass21-depression-equiv](ObservationDefinition-mii-obsdef-pro-score-dass21-depression-equiv.md), [ObservationDefinition/mii-obsdef-pro-score-dass21-depression-raw](ObservationDefinition-mii-obsdef-pro-score-dass21-depression-raw.md), [ObservationDefinition/mii-obsdef-pro-score-dass21-stress-equiv](ObservationDefinition-mii-obsdef-pro-score-dass21-stress-equiv.md), [ObservationDefinition/mii-obsdef-pro-score-dass21-stress-raw](ObservationDefinition-mii-obsdef-pro-score-dass21-stress-raw.md), [ObservationDefinition/mii-obsdef-pro-score-eq5d5l-index](ObservationDefinition-mii-obsdef-pro-score-eq5d5l-index.md), [ObservationDefinition/mii-obsdef-pro-score-eq5d5l-vas](ObservationDefinition-mii-obsdef-pro-score-eq5d5l-vas.md), [ObservationDefinition/mii-obsdef-pro-score-gad-7](ObservationDefinition-mii-obsdef-pro-score-gad-7.md), [ObservationDefinition/mii-obsdef-pro-score-isr-z](ObservationDefinition-mii-obsdef-pro-score-isr-z.md), [ObservationDefinition/mii-obsdef-pro-score-pc-ptsd](ObservationDefinition-mii-obsdef-pro-score-pc-ptsd.md), [ObservationDefinition/mii-obsdef-pro-score-phq-15](ObservationDefinition-mii-obsdef-pro-score-phq-15.md), [ObservationDefinition/mii-obsdef-pro-score-phq-9](ObservationDefinition-mii-obsdef-pro-score-phq-9.md), [ObservationDefinition/mii-obsdef-pro-score-proctcae-acs](ObservationDefinition-mii-obsdef-pro-score-proctcae-acs.md), [ObservationDefinition/mii-obsdef-pro-score-proctcae-composite-grade](ObservationDefinition-mii-obsdef-pro-score-proctcae-composite-grade.md), [ObservationDefinition/mii-obsdef-pro-score-scoff](ObservationDefinition-mii-obsdef-pro-score-scoff.md), [ObservationDefinition/mii-obsdef-pro-score-ssd-12](ObservationDefinition-mii-obsdef-pro-score-ssd-12.md), [ObservationDefinition/mii-obsdef-pro-score-whodas12-simple-sum](ObservationDefinition-mii-obsdef-pro-score-whodas12-simple-sum.md) and [ObservationDefinition/mii-obsdef-pro-score-wi-7](ObservationDefinition-mii-obsdef-pro-score-wi-7.md)
* [Observation Category Codes](http://terminology.hl7.org/7.3.0/CodeSystem-observation-category.html): [Bundle/mii-exa-pro-eortc-qlq-c30-bundle](Bundle-mii-exa-pro-eortc-qlq-c30-bundle.md), [Bundle/mii-exa-pro-phq-9-bundle](Bundle-mii-exa-pro-phq-9-bundle.md)... Show 79 more, [Bundle/mii-exa-pro-promis-depression-sf4a-bundle](Bundle-mii-exa-pro-promis-depression-sf4a-bundle.md), [MII_PR_PRO_Depression_T_Score](StructureDefinition-mii-pr-pro-depression-t-score.md), [MII_PR_PRO_PROMIS_Depression_SF4a_Raw_Score](StructureDefinition-mii-pr-pro-promis-depression-sf4a-raw-score.md), [Observation/mii-exa-pro-dass-dass21-score-anxiety-equiv](Observation-mii-exa-pro-dass-dass21-score-anxiety-equiv.md), [Observation/mii-exa-pro-dass-dass21-score-anxiety-raw](Observation-mii-exa-pro-dass-dass21-score-anxiety-raw.md), [Observation/mii-exa-pro-dass-dass21-score-depression-equiv](Observation-mii-exa-pro-dass-dass21-score-depression-equiv.md), [Observation/mii-exa-pro-dass-dass21-score-depression-raw](Observation-mii-exa-pro-dass-dass21-score-depression-raw.md), [Observation/mii-exa-pro-dass-dass21-score-stress-equiv](Observation-mii-exa-pro-dass-dass21-score-stress-equiv.md), [Observation/mii-exa-pro-dass-dass21-score-stress-raw](Observation-mii-exa-pro-dass-dass21-score-stress-raw.md), [Observation/mii-exa-pro-eortc-qlq-c30-observation-ap](Observation-mii-exa-pro-eortc-qlq-c30-observation-ap.md), [Observation/mii-exa-pro-eortc-qlq-c30-observation-cf](Observation-mii-exa-pro-eortc-qlq-c30-observation-cf.md), [Observation/mii-exa-pro-eortc-qlq-c30-observation-co](Observation-mii-exa-pro-eortc-qlq-c30-observation-co.md), [Observation/mii-exa-pro-eortc-qlq-c30-observation-di](Observation-mii-exa-pro-eortc-qlq-c30-observation-di.md), [Observation/mii-exa-pro-eortc-qlq-c30-observation-dy](Observation-mii-exa-pro-eortc-qlq-c30-observation-dy.md), [Observation/mii-exa-pro-eortc-qlq-c30-observation-ef](Observation-mii-exa-pro-eortc-qlq-c30-observation-ef.md), [Observation/mii-exa-pro-eortc-qlq-c30-observation-fa](Observation-mii-exa-pro-eortc-qlq-c30-observation-fa.md), [Observation/mii-exa-pro-eortc-qlq-c30-observation-fi](Observation-mii-exa-pro-eortc-qlq-c30-observation-fi.md), [Observation/mii-exa-pro-eortc-qlq-c30-observation-nv](Observation-mii-exa-pro-eortc-qlq-c30-observation-nv.md), [Observation/mii-exa-pro-eortc-qlq-c30-observation-pa](Observation-mii-exa-pro-eortc-qlq-c30-observation-pa.md), [Observation/mii-exa-pro-eortc-qlq-c30-observation-pf](Observation-mii-exa-pro-eortc-qlq-c30-observation-pf.md), [Observation/mii-exa-pro-eortc-qlq-c30-observation-ql](Observation-mii-exa-pro-eortc-qlq-c30-observation-ql.md), [Observation/mii-exa-pro-eortc-qlq-c30-observation-rf](Observation-mii-exa-pro-eortc-qlq-c30-observation-rf.md), [Observation/mii-exa-pro-eortc-qlq-c30-observation-sf](Observation-mii-exa-pro-eortc-qlq-c30-observation-sf.md), [Observation/mii-exa-pro-eortc-qlq-c30-observation-sl](Observation-mii-exa-pro-eortc-qlq-c30-observation-sl.md), [Observation/mii-exa-pro-gad-7-score](Observation-mii-exa-pro-gad-7-score.md), [Observation/mii-exa-pro-isr-z-score](Observation-mii-exa-pro-isr-z-score.md), [Observation/mii-exa-pro-pc-ptsd-score](Observation-mii-exa-pro-pc-ptsd-score.md), [Observation/mii-exa-pro-promis-depression-sf4a-raw-score](Observation-mii-exa-pro-promis-depression-sf4a-raw-score.md), [Observation/mii-exa-pro-promis-depression-sf4a-tscore](Observation-mii-exa-pro-promis-depression-sf4a-tscore.md), [Observation/mii-exa-pro-scoff-score](Observation-mii-exa-pro-scoff-score.md), [Observation/mii-exa-pro-ssd-12-score](Observation-mii-exa-pro-ssd-12-score.md), [Observation/mii-exa-pro-whodas12-score-simple-sum](Observation-mii-exa-pro-whodas12-score-simple-sum.md), [Observation/mii-exa-pro-wi-7-score](Observation-mii-exa-pro-wi-7-score.md), [ObservationDefinition/mii-obsdef-pro-depression-t-score](ObservationDefinition-mii-obsdef-pro-depression-t-score.md), [ObservationDefinition/mii-obsdef-pro-promis-29-anxiety-tscore](ObservationDefinition-mii-obsdef-pro-promis-29-anxiety-tscore.md), [ObservationDefinition/mii-obsdef-pro-promis-29-depression-tscore](ObservationDefinition-mii-obsdef-pro-promis-29-depression-tscore.md), [ObservationDefinition/mii-obsdef-pro-promis-29-fatigue-tscore](ObservationDefinition-mii-obsdef-pro-promis-29-fatigue-tscore.md), [ObservationDefinition/mii-obsdef-pro-promis-29-pain-intensity](ObservationDefinition-mii-obsdef-pro-promis-29-pain-intensity.md), [ObservationDefinition/mii-obsdef-pro-promis-29-pain-interference-tscore](ObservationDefinition-mii-obsdef-pro-promis-29-pain-interference-tscore.md), [ObservationDefinition/mii-obsdef-pro-promis-29-physical-function-tscore](ObservationDefinition-mii-obsdef-pro-promis-29-physical-function-tscore.md), [ObservationDefinition/mii-obsdef-pro-promis-29-sleep-disturbance-tscore](ObservationDefinition-mii-obsdef-pro-promis-29-sleep-disturbance-tscore.md), [ObservationDefinition/mii-obsdef-pro-promis-29-social-function-tscore](ObservationDefinition-mii-obsdef-pro-promis-29-social-function-tscore.md), [ObservationDefinition/mii-obsdef-pro-promis-cognitive-function-sf4a-raw-score](ObservationDefinition-mii-obsdef-pro-promis-cognitive-function-sf4a-raw-score.md), [ObservationDefinition/mii-obsdef-pro-promis-cognitive-function-sf4a-tscore](ObservationDefinition-mii-obsdef-pro-promis-cognitive-function-sf4a-tscore.md), [ObservationDefinition/mii-obsdef-pro-score-bdi-ii](ObservationDefinition-mii-obsdef-pro-score-bdi-ii.md), [ObservationDefinition/mii-obsdef-pro-score-dass21-anxiety-equiv](ObservationDefinition-mii-obsdef-pro-score-dass21-anxiety-equiv.md), [ObservationDefinition/mii-obsdef-pro-score-dass21-anxiety-raw](ObservationDefinition-mii-obsdef-pro-score-dass21-anxiety-raw.md), [ObservationDefinition/mii-obsdef-pro-score-dass21-depression-equiv](ObservationDefinition-mii-obsdef-pro-score-dass21-depression-equiv.md), [ObservationDefinition/mii-obsdef-pro-score-dass21-depression-raw](ObservationDefinition-mii-obsdef-pro-score-dass21-depression-raw.md), [ObservationDefinition/mii-obsdef-pro-score-dass21-stress-equiv](ObservationDefinition-mii-obsdef-pro-score-dass21-stress-equiv.md), [ObservationDefinition/mii-obsdef-pro-score-dass21-stress-raw](ObservationDefinition-mii-obsdef-pro-score-dass21-stress-raw.md), [ObservationDefinition/mii-obsdef-pro-score-eq5d5l-index](ObservationDefinition-mii-obsdef-pro-score-eq5d5l-index.md), [ObservationDefinition/mii-obsdef-pro-score-eq5d5l-profile](ObservationDefinition-mii-obsdef-pro-score-eq5d5l-profile.md), [ObservationDefinition/mii-obsdef-pro-score-eq5d5l-vas](ObservationDefinition-mii-obsdef-pro-score-eq5d5l-vas.md), [ObservationDefinition/mii-obsdef-pro-score-gad-7](ObservationDefinition-mii-obsdef-pro-score-gad-7.md), [ObservationDefinition/mii-obsdef-pro-score-isr-z](ObservationDefinition-mii-obsdef-pro-score-isr-z.md), [ObservationDefinition/mii-obsdef-pro-score-pc-ptsd](ObservationDefinition-mii-obsdef-pro-score-pc-ptsd.md), [ObservationDefinition/mii-obsdef-pro-score-phq-15](ObservationDefinition-mii-obsdef-pro-score-phq-15.md), [ObservationDefinition/mii-obsdef-pro-score-phq-9](ObservationDefinition-mii-obsdef-pro-score-phq-9.md), [ObservationDefinition/mii-obsdef-pro-score-proctcae-acs](ObservationDefinition-mii-obsdef-pro-score-proctcae-acs.md), [ObservationDefinition/mii-obsdef-pro-score-proctcae-composite-grade](ObservationDefinition-mii-obsdef-pro-score-proctcae-composite-grade.md), [ObservationDefinition/mii-obsdef-pro-score-scoff](ObservationDefinition-mii-obsdef-pro-score-scoff.md), [ObservationDefinition/mii-obsdef-pro-score-ssd-12](ObservationDefinition-mii-obsdef-pro-score-ssd-12.md), [ObservationDefinition/mii-obsdef-pro-score-whodas12-simple-sum](ObservationDefinition-mii-obsdef-pro-score-whodas12-simple-sum.md), [ObservationDefinition/mii-obsdef-pro-score-wi-7](ObservationDefinition-mii-obsdef-pro-score-wi-7.md), [Questionnaire/mii-qst-pro-dass-dass21](Questionnaire-mii-qst-pro-dass-dass21.md), [Questionnaire/mii-qst-pro-euronet-soma](Questionnaire-mii-qst-pro-euronet-soma.md), [Questionnaire/mii-qst-pro-euroqol-eq5d5l-answer-coding](Questionnaire-mii-qst-pro-euroqol-eq5d5l-answer-coding.md), [Questionnaire/mii-qst-pro-euroqol-eq5d5l-collectable](Questionnaire-mii-qst-pro-euroqol-eq5d5l-collectable.md), [Questionnaire/mii-qst-pro-euroqol-eq5d5l-displayable](Questionnaire-mii-qst-pro-euroqol-eq5d5l-displayable.md), [Questionnaire/mii-qst-pro-gad-7](Questionnaire-mii-qst-pro-gad-7.md), [Questionnaire/mii-qst-pro-isr-z](Questionnaire-mii-qst-pro-isr-z.md), [Questionnaire/mii-qst-pro-pc-ptsd](Questionnaire-mii-qst-pro-pc-ptsd.md), [Questionnaire/mii-qst-pro-phq-15](Questionnaire-mii-qst-pro-phq-15.md), [Questionnaire/mii-qst-pro-phq-9](Questionnaire-mii-qst-pro-phq-9.md), [Questionnaire/mii-qst-pro-scoff](Questionnaire-mii-qst-pro-scoff.md), [Questionnaire/mii-qst-pro-ssd-12](Questionnaire-mii-qst-pro-ssd-12.md), [Questionnaire/mii-qst-pro-whodas-whodas12](Questionnaire-mii-qst-pro-whodas-whodas12.md) and [Questionnaire/mii-qst-pro-wi-7](Questionnaire-mii-qst-pro-wi-7.md)
* [UsageContextType](http://terminology.hl7.org/7.3.0/CodeSystem-usage-context-type.html): [Questionnaire/mii-qst-pro-promis-16](Questionnaire-mii-qst-pro-promis-16.md), [Questionnaire/mii-qst-pro-promis-29](Questionnaire-mii-qst-pro-promis-29.md), [Questionnaire/mii-qst-pro-promis-29-de](Questionnaire-mii-qst-pro-promis-29-de.md), [Questionnaire/mii-qst-pro-promis-cognitive-function-sf4a](Questionnaire-mii-qst-pro-promis-cognitive-function-sf4a.md) and [Questionnaire/mii-qst-pro-promis-depression-sf4a](Questionnaire-mii-qst-pro-promis-depression-sf4a.md)
* [AdministrativeGender](http://terminology.hl7.org/7.3.0/CodeSystem-v3-AdministrativeGender.html): [ObservationDefinition/mii-obsdef-pro-depression-t-score](ObservationDefinition-mii-obsdef-pro-depression-t-score.md)


* WHODAS 2.0 © World Health Organization 2010. Scale/item text used under WHO terms; electronic or data-capture use requires a WHO licence agreement (free of charge for non-commercial use) via the WHO Classifications licensing process. MII-authored FHIR content is licensed CC0.

* [MII CS PRO WHODAS 2.0 12-Item Response Scale and Item Codes](CodeSystem-mii-cs-pro-whodas-12.md): [MII_VS_PRO_WHODAS_12_Answer_List](ValueSet-mii-vs-pro-whodas-12-answer-list.md), [Questionnaire/mii-qst-pro-whodas-whodas12](Questionnaire-mii-qst-pro-whodas-whodas12.md) and [QuestionnaireResponse/mii-exa-pro-whodas12-response-01](QuestionnaireResponse-mii-exa-pro-whodas12-response-01.md)


### IG Parameter Settings and Expansion Parameters

Expansion parameters are query parameters that can be passed to a `ValueSet` `$expand` operation to control how the ValueSet is expanded — that is, how the full list of codes is generated from the ValueSet definition. The [IG Parameters](https://hl7.org/fhir/tools/en/CodeSystem-ig-parameters.html) used for this IG are declared in [`sushi-config.yaml`](https://github.com///blob/main/sushi-config.yaml) (`parameters:`). A module that pins its expansion parameters through a CRMI manifest additionally links the generated `Parameters` resource from here (see the commented manifest blocks in `sushi-config.yaml` and the Metadata Overview page, if the module keeps it).



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "mii-ig-pro",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableimplementationguide",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableimplementationguide",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-implementationguide"]
  },
  "language" : "en",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "shareable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "publishable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionPolicy",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/artifact-version-policy-codes",
        "code" : "package",
        "display" : "Package"
      }]
    }
  },
  {
    "extension" : [{
      "url" : "packageId",
      "valueId" : "de.medizininformatikinitiative.kerndatensatz.pro"
    },
    {
      "url" : "version",
      "valueString" : "2026.7.0"
    },
    {
      "url" : "uri",
      "valueUri" : "https://www.medizininformatik-initiative.de/fhir/modul-pro"
    }],
    "url" : "http://hl7.org/fhir/StructureDefinition/package-source"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod",
    "valuePeriod" : {
      "start" : "2026"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-author",
    "valueContactDetail" : {
      "telecom" : [{
        "system" : "email",
        "value" : "office@medizininformatik-initiative.de"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-editor",
    "valueContactDetail" : {
      "name" : "Taskforce Core Data Set"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-reviewer",
    "valueContactDetail" : {
      "name" : "Interoperability Working Group",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-reviewer",
    "valueContactDetail" : {
      "name" : "National Steering Committee",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-endorser",
    "valueContactDetail" : {
      "name" : "Interoperability Working Group",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-endorser",
    "valueContactDetail" : {
      "name" : "National Steering Committee",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-expansionParameters",
    "valueReference" : {
      "reference" : "Parameters/mii-param-pro-manifest"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm",
    "valueCoding" : {
      "system" : "http://hl7.org/fhir/version-algorithm",
      "code" : "semver"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-usage",
    "valueMarkdown" : "Use this ImplementationGuide resource as a computable definition of all the parts of the corresponding module of the Medical Informatics Initiative core data set."
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-purpose",
    "valueMarkdown" : "Provide the computable publication unit for the MII Core Dataset PRO module, enabling implementers to discover, validate, version, and apply the specification consistently."
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ImplementationGuide/mii-ig-pro",
  "version" : "2026.7.0",
  "name" : "MII_IG_PRO",
  "title" : "MII IG PRO",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-02",
  "publisher" : "Medizininformatik-Initiative",
  "contact" : [{
    "name" : "Medizininformatik-Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    },
    {
      "system" : "email",
      "value" : "office@medizininformatik-initiative.de"
    }]
  }],
  "description" : "Medizininformatik Initiative - Modul PROs, PROMs und abgeleitete Metriken",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "packageId" : "de.medizininformatikinitiative.kerndatensatz.pros",
  "license" : "CC0-1.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [{
    "id" : "de_basisprofil_r4",
    "uri" : "http://fhir.org/packages/de.basisprofil.r4/ImplementationGuide/de.basisprofil.r4",
    "packageId" : "de.basisprofil.r4",
    "version" : "1.5.4"
  },
  {
    "id" : "de_medizininformatikinitiative_kerndatensatz_meta",
    "uri" : "https://www.medizininformatik-initiative.de/fhir/modul-meta/ImplementationGuide/mii-ig-meta",
    "packageId" : "de.medizininformatikinitiative.kerndatensatz.meta",
    "version" : "2026.0.0"
  },
  {
    "id" : "hl7_fhir_uv_xver_r5_r4",
    "uri" : "http://hl7.org/fhir/uv/xver/ImplementationGuide/hl7.fhir.uv.xver-r5.r4",
    "packageId" : "hl7.fhir.uv.xver-r5.r4",
    "version" : "0.1.0"
  },
  {
    "id" : "hl7_fhir_uv_crmi",
    "uri" : "http://hl7.org/fhir/uv/crmi/ImplementationGuide/hl7.fhir.uv.crmi",
    "packageId" : "hl7.fhir.uv.crmi",
    "version" : "2.0.0"
  },
  {
    "id" : "hl7_terminology_r4",
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology.r4",
    "version" : "7.3.0"
  },
  {
    "id" : "ext",
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r4",
    "version" : "5.2.0"
  },
  {
    "id" : "hl7_fhir_uv_sdc",
    "uri" : "http://hl7.org/fhir/uv/sdc/ImplementationGuide/hl7.fhir.uv.sdc",
    "packageId" : "hl7.fhir.uv.sdc",
    "version" : "3.0.0"
  },
  {
    "id" : "de_gematik_isik",
    "uri" : "http://fhir.org/packages/de.gematik.isik/ImplementationGuide/de.gematik.isik",
    "packageId" : "de.gematik.isik",
    "version" : "5.1.1"
  }],
  "definition" : {
    "extension" : [{
      "extension" : [{
        "url" : "code",
        "valueString" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2025+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "ci-build"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "i18n-default-lang"
      },
      {
        "url" : "value",
        "valueString" : "en"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "i18n-lang"
      },
      {
        "url" : "value",
        "valueString" : "de"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "translation-sources"
      },
      {
        "url" : "value",
        "valueString" : "input/translations/de"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludexml"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludejson"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludettl"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludemap"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "init"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "progress"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "context"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "tx"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "pin-canonicals"
      },
      {
        "url" : "value",
        "valueString" : "pin-all"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-expansion-params"
      },
      {
        "url" : "value",
        "valueString" : "../../input/resources/Parameters-expansion-manifest.json"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "pin-manifest"
      },
      {
        "url" : "value",
        "valueString" : "mii-param-pro-manifest"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "suppress-mappings"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/v3"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "suppress-mappings"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/v3/cda"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "wantGen-ttl"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "wantGen-ttl-html"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/expansion-parameters",
      "valueReference" : {
        "reference" : "Parameters/expansion-parameters"
      }
    },
    {
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r4#1.1.2"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2025+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "ci-build"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "i18n-default-lang"
      },
      {
        "url" : "value",
        "valueString" : "en"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "i18n-lang"
      },
      {
        "url" : "value",
        "valueString" : "de"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "translation-sources"
      },
      {
        "url" : "value",
        "valueString" : "input/translations/de"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludexml"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludejson"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludettl"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludemap"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "init"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "progress"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "context"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "tx"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "pin-canonicals"
      },
      {
        "url" : "value",
        "valueString" : "pin-all"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-expansion-params"
      },
      {
        "url" : "value",
        "valueString" : "../../input/resources/Parameters-expansion-manifest.json"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "pin-manifest"
      },
      {
        "url" : "value",
        "valueString" : "mii-param-pro-manifest"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "suppress-mappings"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/v3"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "suppress-mappings"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/v3/cda"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "wantGen-ttl"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "wantGen-ttl-html"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    }],
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-pro-bdi-ii-observation.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-bdi-ii-observation"
      },
      "name" : "BDI-II Observation Example",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-mii-exa-pro-bdi-ii-bundle.html"
      }],
      "reference" : {
        "reference" : "Bundle/mii-exa-pro-bdi-ii-bundle"
      },
      "name" : "BDI-II Transaction Bundle Example",
      "description" : "Transaction bundle containing BDI-II CodeSystem, ValueSets, questionnaire, response, and derived observation",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-pro-dass-dass21-score-anxiety-equiv.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-dass-dass21-score-anxiety-equiv"
      },
      "name" : "DASS-21 Anxiety DASS-42 Equivalent Score Observation",
      "description" : "DASS-21 Anxiety subscale DASS-42 equivalent score observation (raw 5 * 2 = 10)",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ObservationDefinition-mii-obsdef-pro-score-dass21-anxiety-raw.html"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-score-dass21-anxiety-raw"
      },
      "name" : "DASS-21 Anxiety Raw Score",
      "description" : "Sum of 7 anxiety items (2, 4, 7, 9, 15, 19, 20), each scored 0-3. Cut-offs: Normal 0-3, Mild 4-5, Moderate 6-7, Severe 8-9, Extremely severe 10+.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-pro-dass-dass21-score-anxiety-raw.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-dass-dass21-score-anxiety-raw"
      },
      "name" : "DASS-21 Anxiety Raw Score Observation",
      "description" : "DASS-21 Anxiety subscale raw score observation (mild: 5)",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ObservationDefinition-mii-obsdef-pro-score-dass21-anxiety-equiv.html"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-score-dass21-anxiety-equiv"
      },
      "name" : "DASS-21 Anxiety Score (DASS-42 Equivalent)",
      "description" : "DASS-21 anxiety raw score multiplied by 2 for comparability with DASS-42 normative data and published severity cut-offs.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-pro-dass-dass21-score-depression-equiv.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-dass-dass21-score-depression-equiv"
      },
      "name" : "DASS-21 Depression DASS-42 Equivalent Score Observation",
      "description" : "DASS-21 Depression subscale DASS-42 equivalent score observation (raw 12 * 2 = 24)",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ObservationDefinition-mii-obsdef-pro-score-dass21-depression-raw.html"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-score-dass21-depression-raw"
      },
      "name" : "DASS-21 Depression Raw Score",
      "description" : "Sum of 7 depression items (3, 5, 10, 13, 16, 17, 21), each scored 0-3. Cut-offs: Normal 0-4, Mild 5-6, Moderate 7-10, Severe 11-13, Extremely severe 14+.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-pro-dass-dass21-score-depression-raw.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-dass-dass21-score-depression-raw"
      },
      "name" : "DASS-21 Depression Raw Score Observation",
      "description" : "DASS-21 Depression subscale raw score observation (severe: 12)",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ObservationDefinition-mii-obsdef-pro-score-dass21-depression-equiv.html"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-score-dass21-depression-equiv"
      },
      "name" : "DASS-21 Depression Score (DASS-42 Equivalent)",
      "description" : "DASS-21 depression raw score multiplied by 2 for comparability with DASS-42 normative data and published severity cut-offs.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-pro-dass-dass21-score-stress-equiv.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-dass-dass21-score-stress-equiv"
      },
      "name" : "DASS-21 Stress DASS-42 Equivalent Score Observation",
      "description" : "DASS-21 Stress subscale DASS-42 equivalent score observation (raw 11 * 2 = 22)",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ObservationDefinition-mii-obsdef-pro-score-dass21-stress-raw.html"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-score-dass21-stress-raw"
      },
      "name" : "DASS-21 Stress Raw Score",
      "description" : "Sum of 7 stress items (1, 6, 8, 11, 12, 14, 18), each scored 0-3. Cut-offs: Normal 0-7, Mild 8-9, Moderate 10-12, Severe 13-16, Extremely severe 17+.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-pro-dass-dass21-score-stress-raw.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-dass-dass21-score-stress-raw"
      },
      "name" : "DASS-21 Stress Raw Score Observation",
      "description" : "DASS-21 Stress subscale raw score observation (moderate: 11)",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ObservationDefinition-mii-obsdef-pro-score-dass21-stress-equiv.html"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-score-dass21-stress-equiv"
      },
      "name" : "DASS-21 Stress Score (DASS-42 Equivalent)",
      "description" : "DASS-21 stress raw score multiplied by 2 for comparability with DASS-42 normative data and published severity cut-offs.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-pro-eortc-qlq-c30-observation-ap.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-eortc-qlq-c30-observation-ap"
      },
      "name" : "EORTC QLQ-C30 Appetite Loss Score",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ObservationDefinition-mii-obsdef-pro-eortc-qlq-c30-ap.html"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-eortc-qlq-c30-ap"
      },
      "name" : "EORTC QLQ-C30 Appetite Loss Score Definition",
      "description" : "ObservationDefinition for EORTC QLQ-C30 Appetite Loss Score (AP) - Higher scores indicate more appetite loss",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-pro-eortc-qlq-c30-observation-cf.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-eortc-qlq-c30-observation-cf"
      },
      "name" : "EORTC QLQ-C30 Cognitive Functioning Score",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ObservationDefinition-mii-obsdef-pro-eortc-qlq-c30-cf.html"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-eortc-qlq-c30-cf"
      },
      "name" : "EORTC QLQ-C30 Cognitive Functioning Score Definition",
      "description" : "ObservationDefinition for EORTC QLQ-C30 Cognitive Functioning Score (CF) - Higher scores indicate better cognitive functioning",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-pro-eortc-qlq-c30-observation-co.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-eortc-qlq-c30-observation-co"
      },
      "name" : "EORTC QLQ-C30 Constipation Score",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ObservationDefinition-mii-obsdef-pro-eortc-qlq-c30-co.html"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-eortc-qlq-c30-co"
      },
      "name" : "EORTC QLQ-C30 Constipation Score Definition",
      "description" : "ObservationDefinition for EORTC QLQ-C30 Constipation Score (CO) - Higher scores indicate more constipation",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-pro-eortc-qlq-c30-observation-di.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-eortc-qlq-c30-observation-di"
      },
      "name" : "EORTC QLQ-C30 Diarrhoea Score",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ObservationDefinition-mii-obsdef-pro-eortc-qlq-c30-di.html"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-eortc-qlq-c30-di"
      },
      "name" : "EORTC QLQ-C30 Diarrhoea Score Definition",
      "description" : "ObservationDefinition for EORTC QLQ-C30 Diarrhoea Score (DI) - Higher scores indicate more diarrhoea",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-pro-eortc-qlq-c30-observation-dy.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-eortc-qlq-c30-observation-dy"
      },
      "name" : "EORTC QLQ-C30 Dyspnoea Score",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ObservationDefinition-mii-obsdef-pro-eortc-qlq-c30-dy.html"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-eortc-qlq-c30-dy"
      },
      "name" : "EORTC QLQ-C30 Dyspnoea Score Definition",
      "description" : "ObservationDefinition for EORTC QLQ-C30 Dyspnoea Score (DY) - Higher scores indicate more dyspnoea",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-pro-eortc-qlq-c30-observation-ef.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-eortc-qlq-c30-observation-ef"
      },
      "name" : "EORTC QLQ-C30 Emotional Functioning Score",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ObservationDefinition-mii-obsdef-pro-eortc-qlq-c30-ef.html"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-eortc-qlq-c30-ef"
      },
      "name" : "EORTC QLQ-C30 Emotional Functioning Score Definition",
      "description" : "ObservationDefinition for EORTC QLQ-C30 Emotional Functioning Score (EF) - Higher scores indicate better emotional functioning",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-pro-eortc-qlq-c30-observation-fa.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-eortc-qlq-c30-observation-fa"
      },
      "name" : "EORTC QLQ-C30 Fatigue Score",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ObservationDefinition-mii-obsdef-pro-eortc-qlq-c30-fa.html"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-eortc-qlq-c30-fa"
      },
      "name" : "EORTC QLQ-C30 Fatigue Score Definition",
      "description" : "ObservationDefinition for EORTC QLQ-C30 Fatigue Score (FA) - Higher scores indicate more fatigue",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-pro-eortc-qlq-c30-observation-fi.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-eortc-qlq-c30-observation-fi"
      },
      "name" : "EORTC QLQ-C30 Financial Difficulties Score",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ObservationDefinition-mii-obsdef-pro-eortc-qlq-c30-fi.html"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-eortc-qlq-c30-fi"
      },
      "name" : "EORTC QLQ-C30 Financial Difficulties Score Definition",
      "description" : "ObservationDefinition for EORTC QLQ-C30 Financial Difficulties Score (FI) - Higher scores indicate more financial difficulties",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-pro-eortc-qlq-c30-observation-ql.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-eortc-qlq-c30-observation-ql"
      },
      "name" : "EORTC QLQ-C30 Global Health Status / Quality of Life Score",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ObservationDefinition-mii-obsdef-pro-eortc-qlq-c30-ql.html"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-eortc-qlq-c30-ql"
      },
      "name" : "EORTC QLQ-C30 Global Health Status / Quality of Life Score Definition",
      "description" : "ObservationDefinition for EORTC QLQ-C30 Global Health Status / Quality of Life Score (QL) - Higher scores indicate better quality of life",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-pro-eortc-qlq-c30-observation-sl.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-eortc-qlq-c30-observation-sl"
      },
      "name" : "EORTC QLQ-C30 Insomnia Score",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ObservationDefinition-mii-obsdef-pro-eortc-qlq-c30-sl.html"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-eortc-qlq-c30-sl"
      },
      "name" : "EORTC QLQ-C30 Insomnia Score Definition",
      "description" : "ObservationDefinition for EORTC QLQ-C30 Insomnia Score (SL) - Higher scores indicate more sleep disturbance",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-pro-eortc-qlq-c30-observation-nv.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-eortc-qlq-c30-observation-nv"
      },
      "name" : "EORTC QLQ-C30 Nausea and Vomiting Score",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ObservationDefinition-mii-obsdef-pro-eortc-qlq-c30-nv.html"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-eortc-qlq-c30-nv"
      },
      "name" : "EORTC QLQ-C30 Nausea and Vomiting Score Definition",
      "description" : "ObservationDefinition for EORTC QLQ-C30 Nausea and Vomiting Score (NV) - Higher scores indicate more nausea/vomiting",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-pro-eortc-qlq-c30-observation-pa.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-eortc-qlq-c30-observation-pa"
      },
      "name" : "EORTC QLQ-C30 Pain Score",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ObservationDefinition-mii-obsdef-pro-eortc-qlq-c30-pa.html"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-eortc-qlq-c30-pa"
      },
      "name" : "EORTC QLQ-C30 Pain Score Definition",
      "description" : "ObservationDefinition for EORTC QLQ-C30 Pain Score (PA) - Higher scores indicate more pain",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-pro-eortc-qlq-c30-observation-pf.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-eortc-qlq-c30-observation-pf"
      },
      "name" : "EORTC QLQ-C30 Physical Functioning Score",
      "description" : "Physical Functioning Score from EORTC QLQ-C30",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ObservationDefinition-mii-obsdef-pro-eortc-qlq-c30-pf.html"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-eortc-qlq-c30-pf"
      },
      "name" : "EORTC QLQ-C30 Physical Functioning Score Definition",
      "description" : "ObservationDefinition for EORTC QLQ-C30 Physical Functioning Score (PF) - Higher scores indicate better physical functioning",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-pro-eortc-qlq-c30-observation-rf.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-eortc-qlq-c30-observation-rf"
      },
      "name" : "EORTC QLQ-C30 Role Functioning Score",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ObservationDefinition-mii-obsdef-pro-eortc-qlq-c30-rf.html"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-eortc-qlq-c30-rf"
      },
      "name" : "EORTC QLQ-C30 Role Functioning Score Definition",
      "description" : "ObservationDefinition for EORTC QLQ-C30 Role Functioning Score (RF) - Higher scores indicate better role functioning",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-pro-eortc-qlq-c30-observation-sf.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-eortc-qlq-c30-observation-sf"
      },
      "name" : "EORTC QLQ-C30 Social Functioning Score",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ObservationDefinition-mii-obsdef-pro-eortc-qlq-c30-sf.html"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-eortc-qlq-c30-sf"
      },
      "name" : "EORTC QLQ-C30 Social Functioning Score Definition",
      "description" : "ObservationDefinition for EORTC QLQ-C30 Social Functioning Score (SF) - Higher scores indicate better social functioning",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-mii-exa-pro-eortc-qlq-c30-bundle.html"
      }],
      "reference" : {
        "reference" : "Bundle/mii-exa-pro-eortc-qlq-c30-bundle"
      },
      "name" : "EORTC QLQ-C30 Transaction Bundle Example",
      "description" : "Complete transaction bundle containing EORTC QLQ-C30 questionnaire, response with all 30 items, and derived observations with all 15 scale scores",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-mii-exa-pro-euroqol-eq5d5l-coded-response.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/mii-exa-pro-euroqol-eq5d5l-coded-response"
      },
      "name" : "EQ-5D-5L Answer-Coding Response Example",
      "description" : "Example of an EQ-5D-5L questionnaire response using the answer-coding variant with MII CodeSystem",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-mii-exa-pro-euroqol-eq5d5l-response.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/mii-exa-pro-euroqol-eq5d5l-response"
      },
      "name" : "EQ-5D-5L Questionnaire Response Example",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-mii-exa-pro-euronet-soma-response.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/mii-exa-pro-euronet-soma-response"
      },
      "name" : "EURONET-SOMA Questionnaire Response Example",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-mii-exa-pro-gad-7-response.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/mii-exa-pro-gad-7-response"
      },
      "name" : "GAD-7 Questionnaire Response Example",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-pro-gad-7-score.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-gad-7-score"
      },
      "name" : "GAD-7 Score Observation Example",
      "description" : "GAD-7 Summenwert aus der Beispiel-QuestionnaireResponse: 7 von 21",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-mii-exa-pro-isr-z-response.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/mii-exa-pro-isr-z-response"
      },
      "name" : "ISR-Z Questionnaire Response Example",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-pro-isr-z-score.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-isr-z-score"
      },
      "name" : "ISR-Z Score Observation Example",
      "description" : "ISR-Z Skalenwert (Mittelwert) aus der Beispiel-QuestionnaireResponse: 2.0 von 4",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-mii-cm-pro-gad-7-linkids.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/mii-cm-pro-gad-7-linkids"
      },
      "name" : "MII CM PRO GAD-7 Item-Nummerierung → PHQ-D-linkIds",
      "description" : "Bildet die übliche GAD-7-Itemnummerierung (Item 1–7, wie publiziert und in Fremdsystemen verbreitet) auf die kanonischen linkIds des PHQ-D-Block-Namespace (phq-phq5a…phq-phq5g) ab. Lesehilfe für die Übernahme von Daten aus Systemen, die die konventionelle Nummerierung verwenden — keine Migration einer veröffentlichten Fassung.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-mii-cm-pro-phq-9-linkid-migration.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/mii-cm-pro-phq-9-linkid-migration"
      },
      "name" : "MII CM PRO PHQ-9 linkId Migration (2026.4.x → 2026.5.0)",
      "description" : "Maps PHQ-9 item linkIds from the pre-2026.5.0 scheme (phq-phq9-q01…q10) to the PHQ-D block namespace (phq-phq2a…i and phq-phq9-difficulty) introduced in 2026.5.0. Apply to existing PHQ-9 QuestionnaireResponses so their item.linkId values match the current Questionnaire. The calculated items phq-phq9-score-total and phq-phq9-promis-tscore were not renamed.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CapabilityStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CapabilityStatement-mii-cps-pro-capabilitystatement.html"
      }],
      "reference" : {
        "reference" : "CapabilityStatement/mii-cps-pro-capabilitystatement"
      },
      "name" : "MII CPS PRO CapabilityStatement",
      "description" : "Das vorliegende CapabilityStatement beschreibt alle verpflichtenden Interaktionen die ein konformes System unterstützen muss, um das Modul PRO der Medizininformatik Initiative zu implementieren.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-pro-eq-5d-value-set.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-pro-eq-5d-value-set"
      },
      "name" : "MII CS EQ-5D Value Set",
      "description" : "EuroQol EQ-5D Value Set",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-pro-bdi-bdi2.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-pro-bdi-bdi2"
      },
      "name" : "MII CS PRO BDI-II",
      "description" : "MII CS PRO BDI-II ValueSet for Beck Depression Inventory II (BDI-II) Questionnaire",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-pro-dass-21.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-pro-dass-21"
      },
      "name" : "MII CS PRO DASS-21 Response Scale and Item Codes",
      "description" : "CodeSystem for the Depression Anxiety Stress Scales - Short Form (DASS-21) with answer codes, item codes, and multilingual support (English primary, German translations from Nilges & Essau 2015)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-pro-eortc-qlq-c30.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-pro-eortc-qlq-c30"
      },
      "name" : "MII CS PRO EORTC QLQ-C30 Response Scale",
      "description" : "Response scale for EORTC QLQ-C30 questionnaire items with multilingual support",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-pro-isr-z-answers.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-pro-isr-z-answers"
      },
      "name" : "MII CS PRO ISR-Z Answers",
      "description" : "MII-controlled Zustimmungsskala des ISR (0-4), deutsches Original. ordinalValue-Property je Konzept ermöglicht SDC-Ordinalscoring via answerValueSet.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-pro-midos2.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-pro-midos2"
      },
      "name" : "MII CS PRO MIDOS2 Items and Response Scales",
      "description" : "CodeSystem for the Minimal Documentation System v2 (MIDOS2) — German palliative care symptom screening instrument. Contains item codes, DGP-4-stufige Severity-Skala, and 4-stufige Wohlbefinden-Skala. German primary language, English translations as designations.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-pro-phq-15-answers.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-pro-phq-15-answers"
      },
      "name" : "MII CS PRO PHQ-15 Answers",
      "description" : "MII-controlled bother severity answer scale for PHQ-15 (0–2). English primary with German designations. ordinalValue properties on each concept enable SDC ordinal scoring via answerValueSet.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-pro-pro-ctcae.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-pro-pro-ctcae"
      },
      "name" : "MII CS PRO PRO-CTCAE Item Library",
      "description" : "CodeSystem for the Patient-Reported Outcomes version of the Common Terminology Criteria for Adverse Events (PRO-CTCAE). Contains all 124 items across 78 adverse events with English primary text and German designations from the NCI-authorized translation. Item Library Version 1.0.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-pro-questionnaire-catalogue.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-pro-questionnaire-catalogue"
      },
      "name" : "MII CS PRO Questionnaire Catalogue",
      "description" : "MII CS PRO Questionnaire Catalogue for PRO Questionnaires used in the MII PROMs Module",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-pro-score-catalogue.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-pro-score-catalogue"
      },
      "name" : "MII CS PRO Score Catalogue",
      "description" : "MII CS PRO Score Catalogue for PRO Scores used in the MII PROMs Module",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-pro-ssd-12-answers.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-pro-ssd-12-answers"
      },
      "name" : "MII CS PRO SSD-12 Answers",
      "description" : "MII-controlled frequency answer scale for SSD-12 (0-4). English display with German designation (original instrument wording). ordinalValue properties on each concept enable SDC ordinal scoring via answerValueSet.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-pro-whodas-12.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-pro-whodas-12"
      },
      "name" : "MII CS PRO WHODAS 2.0 12-Item Response Scale and Item Codes",
      "description" : "CodeSystem for the WHO Disability Assessment Schedule 2.0, 12-item self-administered version (WHODAS-12), with item codes and a 5-point answer scale. English primary displays with German designations. The answer concepts carry ordinalValue properties (0-4) enabling SDC ordinal scoring via answerValueSet. WHODAS 2.0 © WHO 2010; electronic use requires a WHO licence (see copyright).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-ex-pro-score-score-health-correlation.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-pro-score-score-health-correlation"
      },
      "name" : "MII Ex PRO Score Score Health Correlation",
      "description" : "MII Ex PRO Score Score Health Correlation",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-mii-exa-pro-bdi-bdi2.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/mii-exa-pro-bdi-bdi2"
      },
      "name" : "MII EXA PRO BDI-II",
      "description" : "MII EXA PRO Beck Depression Inventory II (BDI-II) Questionnaire",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-mii-exa-pro-dass-dass21-response-01.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/mii-exa-pro-dass-dass21-response-01"
      },
      "name" : "MII EXA PRO DASS-21 Response",
      "description" : "Complete DASS-21 QuestionnaireResponse example with mixed severity: Depression severe (12), Anxiety mild (5), Stress moderate (11)",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-mii-exa-pro-eortc-qlq-c30-response.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/mii-exa-pro-eortc-qlq-c30-response"
      },
      "name" : "MII EXA PRO EORTC QLQ-C30 Response",
      "description" : "Complete EORTC QLQ-C30 QuestionnaireResponse example with all 30 items and calculated scores",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-mii-exa-pro-midos2-response-01.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/mii-exa-pro-midos2-response-01"
      },
      "name" : "MII EXA PRO MIDOS2 Response",
      "description" : "MIDOS2 QuestionnaireResponse Beispiel — Palliativpatient mit moderater Symptomlast (Summe 19/33, Wohlbefinden eher schlecht)",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-mii-exa-pro-patient.html"
      }],
      "reference" : {
        "reference" : "Patient/mii-exa-pro-patient"
      },
      "name" : "MII EXA PRO Patient",
      "description" : "Example patient for PRO demonstrations",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-mii-exa-pro-pro-ctcae-onkologisches-basisscreening-response-01.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/mii-exa-pro-pro-ctcae-onkologisches-basisscreening-response-01"
      },
      "name" : "MII EXA PRO PRO-CTCAE Onkologisches Basisscreening Response",
      "description" : "PRO-CTCAE Onkologisches Basisscreening Beispiel — Onkologischer Patient unter Chemotherapie mit moderater Symptomlast",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-mii-exa-pro-promis-depression-sf4a-bundle.html"
      }],
      "reference" : {
        "reference" : "Bundle/mii-exa-pro-promis-depression-sf4a-bundle"
      },
      "name" : "MII EXA PRO PROMIS Depression SF 4a Bundle",
      "description" : "Example bundle containing PROMIS Depression SF 4a QuestionnaireResponse and derived observations",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-pro-promis-depression-sf4a-raw-score.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-promis-depression-sf4a-raw-score"
      },
      "name" : "MII EXA PRO PROMIS Depression SF 4a Raw Score",
      "description" : "Example raw score observation for PROMIS Depression Short Form 4a",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-promis-depression-sf4a-raw-score"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-mii-exa-pro-promis-depression-sf4a-response.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/mii-exa-pro-promis-depression-sf4a-response"
      },
      "name" : "MII EXA PRO PROMIS Depression SF 4a Response",
      "description" : "Example QuestionnaireResponse for PROMIS Depression Short Form 4a",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-pro-promis-depression-sf4a-tscore.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-promis-depression-sf4a-tscore"
      },
      "name" : "MII EXA PRO PROMIS Depression SF 4a T-Score",
      "description" : "Example T-score observation for PROMIS Depression Short Form 4a",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-depression-t-score"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-mii-exa-pro-promis-29-bundle.html"
      }],
      "reference" : {
        "reference" : "Bundle/mii-exa-pro-promis-29-bundle"
      },
      "name" : "MII EXA PRO PROMIS-29 Bundle with Extracted Observations",
      "description" : "Example Bundle demonstrating PROMIS-29 QuestionnaireResponse with all extracted T-Score Observations and Pain Intensity observation. This bundle shows the complete SDC observation-based extraction workflow.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-mii-exa-pro-promis-29-response.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/mii-exa-pro-promis-29-response"
      },
      "name" : "MII EXA PRO PROMIS-29 Response",
      "description" : "Example QuestionnaireResponse for PROMIS-29 Profile v2.1 (English variant)",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-mii-exa-pro-promis-29-de-response.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/mii-exa-pro-promis-29-de-response"
      },
      "name" : "MII EXA PRO PROMIS-29 Response (German)",
      "description" : "Example QuestionnaireResponse for PROMIS-29 Profile v2.1 (German variant) - demonstrates response compatibility between language variants",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-mii-exa-pro-whodas12-response-01.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/mii-exa-pro-whodas12-response-01"
      },
      "name" : "MII EXA PRO WHODAS 2.0 12-Item Response",
      "description" : "Complete WHODAS-12 QuestionnaireResponse example. All 12 items answered 'Moderate' (ordinal 2); simple sum = 24.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-lm-pro.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-lm-pro"
      },
      "name" : "MII Logical Model Modul PRO - Patient-Reported Outcomes und abgeleitete Metriken",
      "description" : "Logisches Modell für die strukturierte Erfassung und Verarbeitung von Patient-Reported Outcomes (PROs) inklusive Fragebögen, Antworten, Scores und Domain-Mappings.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ObservationDefinition-mii-obsdef-pro-depression-t-score.html"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-depression-t-score"
      },
      "name" : "MII ObsDef PRO Depression Domain T-Score",
      "description" : "ObservationDefinition for depression domain T-score across all depression questionnaires with European population reference ranges",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ObservationDefinition-mii-obsdef-pro-promis-cognitive-function-sf4a-raw-score.html"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-promis-cognitive-function-sf4a-raw-score"
      },
      "name" : "MII ObsDef PRO PROMIS Cognitive Function SF 4a Raw Score",
      "description" : "PROMIS Cognitive Function Short Form 4a Raw Score (4-20 range)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ObservationDefinition-mii-obsdef-pro-promis-cognitive-function-sf4a-tscore.html"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-promis-cognitive-function-sf4a-tscore"
      },
      "name" : "MII ObsDef PRO PROMIS Cognitive Function SF 4a T-Score",
      "description" : "PROMIS Cognitive Function Short Form 4a T-Score",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ObservationDefinition-mii-obsdef-pro-promis-29-anxiety-tscore.html"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-promis-29-anxiety-tscore"
      },
      "name" : "MII ObsDef PRO PROMIS-29 Anxiety T-Score",
      "description" : "PROMIS Anxiety T-Score from PROMIS-29 Profile v2.1",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ObservationDefinition-mii-obsdef-pro-promis-29-depression-tscore.html"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-promis-29-depression-tscore"
      },
      "name" : "MII ObsDef PRO PROMIS-29 Depression T-Score",
      "description" : "PROMIS Depression T-Score from PROMIS-29 Profile v2.1",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ObservationDefinition-mii-obsdef-pro-promis-29-fatigue-tscore.html"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-promis-29-fatigue-tscore"
      },
      "name" : "MII ObsDef PRO PROMIS-29 Fatigue T-Score",
      "description" : "PROMIS Fatigue T-Score from PROMIS-29 Profile v2.1",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ObservationDefinition-mii-obsdef-pro-promis-29-pain-intensity.html"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-promis-29-pain-intensity"
      },
      "name" : "MII ObsDef PRO PROMIS-29 Pain Intensity",
      "description" : "PROMIS Pain Intensity single item from PROMIS-29 Profile v2.1",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ObservationDefinition-mii-obsdef-pro-promis-29-pain-interference-tscore.html"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-promis-29-pain-interference-tscore"
      },
      "name" : "MII ObsDef PRO PROMIS-29 Pain Interference T-Score",
      "description" : "PROMIS Pain Interference T-Score from PROMIS-29 Profile v2.1",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ObservationDefinition-mii-obsdef-pro-promis-29-physical-function-tscore.html"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-promis-29-physical-function-tscore"
      },
      "name" : "MII ObsDef PRO PROMIS-29 Physical Function T-Score",
      "description" : "PROMIS Physical Function T-Score from PROMIS-29 Profile v2.1",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ObservationDefinition-mii-obsdef-pro-promis-29-sleep-disturbance-tscore.html"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-promis-29-sleep-disturbance-tscore"
      },
      "name" : "MII ObsDef PRO PROMIS-29 Sleep Disturbance T-Score",
      "description" : "PROMIS Sleep Disturbance T-Score from PROMIS-29 Profile v2.1",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ObservationDefinition-mii-obsdef-pro-promis-29-social-function-tscore.html"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-promis-29-social-function-tscore"
      },
      "name" : "MII ObsDef PRO PROMIS-29 Social Function T-Score",
      "description" : "PROMIS Ability to Participate in Social Roles and Activities T-Score from PROMIS-29 Profile v2.1",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ObservationDefinition-mii-obsdef-pro-score-bdi-ii.html"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-score-bdi-ii"
      },
      "name" : "MII ObsDef PRO Score BDI-II",
      "description" : "Beck Depression Inventory II (BDI-II) Total Score",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ObservationDefinition-mii-obsdef-pro-score-eq5d5l-index.html"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-score-eq5d5l-index"
      },
      "name" : "MII ObsDef PRO Score EQ-5D-5L Index",
      "description" : "EuroQol 5 Dimensions 5 Levels (EQ-5D-5L) Index Score",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ObservationDefinition-mii-obsdef-pro-score-eq5d5l-profile.html"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-score-eq5d5l-profile"
      },
      "name" : "MII ObsDef PRO Score EQ-5D-5L Profile",
      "description" : "EuroQol 5 Dimensions 5 Levels (EQ-5D-5L) Profile",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ObservationDefinition-mii-obsdef-pro-score-eq5d5l-vas.html"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-score-eq5d5l-vas"
      },
      "name" : "MII ObsDef PRO Score EQ-5D-5L VAS",
      "description" : "EuroQol 5 Dimensions 5 Levels (EQ-5D-5L) Visual Analog Scale (VAS) Score",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ObservationDefinition-mii-obsdef-pro-score-gad-7.html"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-score-gad-7"
      },
      "name" : "MII ObsDef PRO Score GAD-7",
      "description" : "GAD-7 Summenscore (0-21) — Screening auf generalisierte Angststörung",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ObservationDefinition-mii-obsdef-pro-score-isr-z.html"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-score-isr-z"
      },
      "name" : "MII ObsDef PRO Score ISR-Z",
      "description" : "ISR-Z Skalenwert (Mittelwert, Bereich 0-4) — Subskala Zwang des ICD-10-Symptom-Rating",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ObservationDefinition-mii-obsdef-pro-score-pc-ptsd.html"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-score-pc-ptsd"
      },
      "name" : "MII ObsDef PRO Score PC-PTSD",
      "description" : "PC-PTSD total score (0-4) — screening for posttraumatic stress disorder",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ObservationDefinition-mii-obsdef-pro-score-phq-15.html"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-score-phq-15"
      },
      "name" : "MII ObsDef PRO Score PHQ-15",
      "description" : "Patient Health Questionnaire-15 (PHQ-15) total somatic symptom severity score (0–30)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ObservationDefinition-mii-obsdef-pro-score-phq-9.html"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-score-phq-9"
      },
      "name" : "MII ObsDef PRO Score PHQ-9",
      "description" : "Patient Health Questionnaire (PHQ-9)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ObservationDefinition-mii-obsdef-pro-score-scoff.html"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-score-scoff"
      },
      "name" : "MII ObsDef PRO Score SCOFF",
      "description" : "SCOFF total score (0-5) — screening for eating disorders",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ObservationDefinition-mii-obsdef-pro-score-ssd-12.html"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-score-ssd-12"
      },
      "name" : "MII ObsDef PRO Score SSD-12",
      "description" : "SSD-12 total score (0-48) — somatic symptom disorder B-criteria burden",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ObservationDefinition-mii-obsdef-pro-score-wi-7.html"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-score-wi-7"
      },
      "name" : "MII ObsDef PRO Score WI-7",
      "description" : "WI-7 (Whiteley-7) total score (0-7) — screening for hypochondriasis and somatization",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-pro-depression-t-score.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-pro-depression-t-score"
      },
      "name" : "MII PR PRO Depression Domain T-Score",
      "description" : "Generic profile for depression domain T-score observations (all depression questionnaires)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-pro-observation-bdi-ii.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-pro-observation-bdi-ii"
      },
      "name" : "MII PR PRO Observation BDI-II",
      "description" : "Profile for Beck Depression Inventory II (BDI-II) Total Score Observations",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-pro-observation-eq5d5l-index.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-pro-observation-eq5d5l-index"
      },
      "name" : "MII PR PRO Observation EQ-5D-5L Index",
      "description" : "Profile for EQ-5D-5L Index Score Observations with German value set reference ranges",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-pro-observation-eq5d5l-profile.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-pro-observation-eq5d5l-profile"
      },
      "name" : "MII PR PRO Observation EQ-5D-5L Profile",
      "description" : "Profile for EQ-5D-5L Profile String Observations (e.g., '11111')",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-pro-observation-eq5d5l-vas.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-pro-observation-eq5d5l-vas"
      },
      "name" : "MII PR PRO Observation EQ-5D-5L VAS",
      "description" : "Profile for EQ-5D-5L Visual Analogue Scale Score Observations",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-pro-observation-phq-15.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-pro-observation-phq-15"
      },
      "name" : "MII PR PRO Observation PHQ-15",
      "description" : "Profile for Patient Health Questionnaire-15 (PHQ-15) total somatic symptom severity score Observations (0-30; higher scores indicate greater somatic symptom burden).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-pro-observation-phq-9.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-pro-observation-phq-9"
      },
      "name" : "MII PR PRO Observation PHQ-9",
      "description" : "Profile for Patient Health Questionnaire-9 (PHQ-9) total score Observations (0-27; higher scores indicate more severe depression).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-pro-observation-whodas12.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-pro-observation-whodas12"
      },
      "name" : "MII PR PRO Observation WHODAS 2.0 12-Item",
      "description" : "Profile for WHODAS 2.0 12-item simple sum (disability) score Observations (0-48; higher scores indicate greater disability). No suitable LOINC code exists; SNOMED CT and the MII score catalogue are used.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-pro-promis-cognitive-function-sf4a-raw-score.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-pro-promis-cognitive-function-sf4a-raw-score"
      },
      "name" : "MII PR PRO PROMIS Cognitive Function SF 4a Raw Score",
      "description" : "Profile for PROMIS Cognitive Function Short Form 4a raw score observations (4-20 range)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-pro-promis-cognitive-function-sf4a-tscore.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-pro-promis-cognitive-function-sf4a-tscore"
      },
      "name" : "MII PR PRO PROMIS Cognitive Function SF 4a T-Score",
      "description" : "Profile for PROMIS Cognitive Function Short Form 4a T-Score observations",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-pro-promis-depression-sf4a-raw-score.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-pro-promis-depression-sf4a-raw-score"
      },
      "name" : "MII PR PRO PROMIS Depression SF 4a Raw Score",
      "description" : "Profile for PROMIS Depression Short Form 4a raw score observations (4-20 range)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-pro-promis-29-anxiety-tscore.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-pro-promis-29-anxiety-tscore"
      },
      "name" : "MII PR PRO PROMIS-29 Anxiety T-Score",
      "description" : "Profile for PROMIS-29 Anxiety T-Score Observations",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-pro-promis-29-depression-tscore.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-pro-promis-29-depression-tscore"
      },
      "name" : "MII PR PRO PROMIS-29 Depression T-Score",
      "description" : "Profile for PROMIS-29 Depression T-Score Observations",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-pro-promis-29-fatigue-tscore.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-pro-promis-29-fatigue-tscore"
      },
      "name" : "MII PR PRO PROMIS-29 Fatigue T-Score",
      "description" : "Profile for PROMIS-29 Fatigue T-Score Observations",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-pro-promis-29-pain-intensity.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-pro-promis-29-pain-intensity"
      },
      "name" : "MII PR PRO PROMIS-29 Pain Intensity",
      "description" : "Profile for PROMIS-29 Pain Intensity single item Observations",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-pro-promis-29-pain-interference-tscore.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-pro-promis-29-pain-interference-tscore"
      },
      "name" : "MII PR PRO PROMIS-29 Pain Interference T-Score",
      "description" : "Profile for PROMIS-29 Pain Interference T-Score Observations",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-pro-promis-29-physical-function-tscore.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-pro-promis-29-physical-function-tscore"
      },
      "name" : "MII PR PRO PROMIS-29 Physical Function T-Score",
      "description" : "Profile for PROMIS-29 Physical Function T-Score Observations",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-pro-promis-29-sleep-disturbance-tscore.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-pro-promis-29-sleep-disturbance-tscore"
      },
      "name" : "MII PR PRO PROMIS-29 Sleep Disturbance T-Score",
      "description" : "Profile for PROMIS-29 Sleep Disturbance T-Score Observations",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-pro-promis-29-social-function-tscore.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-pro-promis-29-social-function-tscore"
      },
      "name" : "MII PR PRO PROMIS-29 Social Function T-Score",
      "description" : "Profile for PROMIS-29 Ability to Participate in Social Roles and Activities T-Score Observations",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-pro-questionnaire.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-pro-questionnaire"
      },
      "name" : "MII PR PRO Questionnaire",
      "description" : "MII PR PRO Questionnaire, based on the FHIR Structure Data Capture Specification",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-ex-pro-questionnaire-capabilities.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-pro-questionnaire-capabilities"
      },
      "name" : "MII PR PRO Questionnaire Capabilities",
      "description" : "MII PR PRO Questionnaire Capabilities, based on the FHIR Structure Data Capture Specification",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-pro-questionnaire-response.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-pro-questionnaire-response"
      },
      "name" : "MII PR PRO QuestionnaireResponse",
      "description" : "MII PR PRO QuestionnaireResponse, based on the FHIR Structure Data Capture Specification",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-pro-score-blueprint.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-pro-score-blueprint"
      },
      "name" : "MII PR PRO Score Blueprint / Template",
      "description" : "MII PR PRO Questionnaire, based on the FHIR Structure Data Capture Specification",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-pro-score-instance.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-pro-score-instance"
      },
      "name" : "MII PR PRO Score Instance",
      "description" : "MII PR PRO Score Instance",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-mii-qst-pro-bdi-bdi2.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/mii-qst-pro-bdi-bdi2"
      },
      "name" : "MII QST PRO BDI-II",
      "description" : "MII QST PRO Beck Depression Inventory II (BDI-II) Questionnaire",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-mii-qst-pro-ces-d.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/mii-qst-pro-ces-d"
      },
      "name" : "MII QST PRO CES-D",
      "description" : "Center for Epidemiologic Studies Depression Scale (CES-D) - Metadata-only reference implementation",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-mii-qst-pro-dass-dass21.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/mii-qst-pro-dass-dass21"
      },
      "name" : "MII QST PRO DASS-21",
      "description" : "Depression Anxiety Stress Scales - 21 Items (DASS-21)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-mii-qst-pro-eortc-qlq-c30.html"
      },
      {
        "extension" : [{
          "url" : "type",
          "valueCode" : "CodeSystem"
        },
        {
          "url" : "id",
          "valueId" : "eortc-qlq-c30-cs"
        },
        {
          "url" : "title",
          "valueString" : "CodeSystem"
        },
        {
          "url" : "description"
        }],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/contained-resource-information"
      },
      {
        "extension" : [{
          "url" : "type",
          "valueCode" : "ValueSet"
        },
        {
          "url" : "id",
          "valueId" : "eortc-qlq-c30-4pt"
        },
        {
          "url" : "title",
          "valueString" : "ValueSet"
        },
        {
          "url" : "description"
        }],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/contained-resource-information"
      },
      {
        "extension" : [{
          "url" : "type",
          "valueCode" : "ValueSet"
        },
        {
          "url" : "id",
          "valueId" : "eortc-qlq-c30-7pt"
        },
        {
          "url" : "title",
          "valueString" : "ValueSet"
        },
        {
          "url" : "description"
        }],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/contained-resource-information"
      }],
      "reference" : {
        "reference" : "Questionnaire/mii-qst-pro-eortc-qlq-c30"
      },
      "name" : "MII QST PRO EORTC QLQ-C30",
      "description" : "EORTC QLQ-C30 Version 3.0 Quality of Life Questionnaire - Complete implementation with all 30 items and 15 scale scores",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-mii-qst-pro-eortc-qlq-c30-variant-a.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/mii-qst-pro-eortc-qlq-c30-variant-a"
      },
      "name" : "MII QST PRO EORTC QLQ-C30 Variant A",
      "description" : "EORTC QLQ-C30 Version 3.0 - Variant A: References standalone external ValueSets directly (no contained resources)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-mii-qst-pro-eortc-qlq-c30-variant-b.html"
      },
      {
        "extension" : [{
          "url" : "type",
          "valueCode" : "CodeSystem"
        },
        {
          "url" : "id",
          "valueId" : "eortc-qlq-c30-cs-b"
        },
        {
          "url" : "title",
          "valueString" : "CodeSystem"
        },
        {
          "url" : "description"
        }],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/contained-resource-information"
      },
      {
        "extension" : [{
          "url" : "type",
          "valueCode" : "ValueSet"
        },
        {
          "url" : "id",
          "valueId" : "eortc-qlq-c30-4pt-b"
        },
        {
          "url" : "title",
          "valueString" : "ValueSet"
        },
        {
          "url" : "description"
        }],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/contained-resource-information"
      },
      {
        "extension" : [{
          "url" : "type",
          "valueCode" : "ValueSet"
        },
        {
          "url" : "id",
          "valueId" : "eortc-qlq-c30-7pt-b"
        },
        {
          "url" : "title",
          "valueString" : "ValueSet"
        },
        {
          "url" : "description"
        }],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/contained-resource-information"
      }],
      "reference" : {
        "reference" : "Questionnaire/mii-qst-pro-eortc-qlq-c30-variant-b"
      },
      "name" : "MII QST PRO EORTC QLQ-C30 Variant B",
      "description" : "EORTC QLQ-C30 Version 3.0 - Variant B: With contained CodeSystem and ValueSets referencing it via local reference #eortc-qlq-c30-cs-b",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-mii-qst-pro-epds.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/mii-qst-pro-epds"
      },
      "name" : "MII QST PRO EPDS",
      "description" : "Edinburgh Postnatal Depression Scale (EPDS) - Metadata-only reference implementation",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-mii-qst-pro-euroqol-eq5d5l-answer-coding.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/mii-qst-pro-euroqol-eq5d5l-answer-coding"
      },
      "name" : "MII QST PRO EQ-5D-5L",
      "description" : "MII QST PRO EuroQol Five Dimension Five Level (EQ-5D-5L) Questionnaire",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-mii-qst-pro-euroqol-eq5d5l-minimal.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/mii-qst-pro-euroqol-eq5d5l-minimal"
      },
      "name" : "MII QST PRO EQ-5D-5L",
      "description" : "MII QST PRO EuroQol Five Dimension Five Level (EQ-5D-5L) Questionnaire",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-mii-qst-pro-euroqol-eq5d5l-displayable.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/mii-qst-pro-euroqol-eq5d5l-displayable"
      },
      "name" : "MII QST PRO EQ-5D-5L (Displayable)",
      "description" : "MII QST PRO EuroQol Five Dimension Five Level (EQ-5D-5L) Questionnaire - Displayable version",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-mii-qst-pro-euroqol-eq5d5l-collectable.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/mii-qst-pro-euroqol-eq5d5l-collectable"
      },
      "name" : "MII QST PRO EQ-5D-5L Collectable",
      "description" : "MII QST PRO EuroQol Five Dimension Five Level (EQ-5D-5L) Questionnaire - Collectable Version",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-mii-qst-pro-euronet-soma.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/mii-qst-pro-euronet-soma"
      },
      "name" : "MII QST PRO EURONET-SOMA",
      "description" : "EURONET-SOMA — two core outcome NRS items for somatic symptom intensity and interference (Rief et al. 2017) with German translation",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-mii-qst-pro-gad-7.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/mii-qst-pro-gad-7"
      },
      "name" : "MII QST PRO GAD-7",
      "description" : "Generalized Anxiety Disorder Scale-7 (GAD-7) — Screening auf generalisierte Angststoerung, mit deutscher Uebersetzung (PHQ-D)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-mii-qst-pro-hads.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/mii-qst-pro-hads"
      },
      "name" : "MII QST PRO HADS",
      "description" : "Hospital Anxiety and Depression Scale (HADS) - Metadata-only reference implementation",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-mii-qst-pro-isr-z.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/mii-qst-pro-isr-z"
      },
      "name" : "MII QST PRO ISR-Z",
      "description" : "ISR-Z — Subskala Zwang (3 Items) des ICD-10-Symptom-Rating (Tritt et al. 2008); Skalenwert als Mittelwert, nicht Summe",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-mii-qst-pro-k6.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/mii-qst-pro-k6"
      },
      "name" : "MII QST PRO K6",
      "description" : "Kessler Psychological Distress Scale (K6) - Metadata-only reference implementation",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-mii-qst-pro-midos-midos2.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/mii-qst-pro-midos-midos2"
      },
      "name" : "MII QST PRO MIDOS2",
      "description" : "MIDOS2 (Minimales Dokumentationssystem für Palliativpatienten, v2) — Symptom-Screening für die Palliativmedizin nach DGP. 11 Symptom-Items mit 4-stufiger DGP-Skala, ein Wohlbefinden-Item, ein offenes Item für sonstige Beschwerden.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-mii-qst-pro-pc-ptsd.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/mii-qst-pro-pc-ptsd"
      },
      "name" : "MII QST PRO PC-PTSD",
      "description" : "PC-PTSD — Primary Care PTSD Screen, four-item screening questionnaire for posttraumatic stress disorder (Prins et al. 2003; German: Schäfer & Schulze 2010)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-mii-qst-pro-phq-15.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/mii-qst-pro-phq-15"
      },
      "name" : "MII QST PRO PHQ-15",
      "description" : "Patient Health Questionnaire-15 (PHQ-15) — somatic symptom severity (PHQ-D German validated)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-mii-qst-pro-phq-9.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/mii-qst-pro-phq-9"
      },
      "name" : "MII QST PRO PHQ-9",
      "description" : "Patient Health Questionnaire (PHQ-9)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-mii-qst-pro-pro-ctcae-onkologisches-basisscreening.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/mii-qst-pro-pro-ctcae-onkologisches-basisscreening"
      },
      "name" : "MII QST PRO PRO-CTCAE Onkologisches Basisscreening",
      "description" : "Onkologisches Basisscreening basierend auf PRO-CTCAE-Items. Erfasst die wichtigsten Symptome onkologischer Patienten mit den 5-stufigen PRO-CTCAE-Skalen (Häufigkeit, Schweregrad, Beeinträchtigung). Symptomauswahl konzeptuell parallel zu MIDOS2 für eine gemeinsame Problem List zwischen Onkologie und Palliativmedizin.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-mii-qst-pro-promis-cognitive-function-sf4a.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/mii-qst-pro-promis-cognitive-function-sf4a"
      },
      "name" : "MII QST PRO PROMIS Cognitive Function SF 4a",
      "description" : "PROMIS Cognitive Function Short Form 4a - Assessment of cognitive abilities and concerns",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-mii-qst-pro-promis-depression-sf4a.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/mii-qst-pro-promis-depression-sf4a"
      },
      "name" : "MII QST PRO PROMIS Depression SF 4a (Adults)",
      "description" : "PROMIS Depression Short Form 4a - Adults - Item Bank v1.0",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-mii-qst-pro-promis-16.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/mii-qst-pro-promis-16"
      },
      "name" : "MII QST PRO PROMIS-16 (Adults)",
      "description" : "PROMIS-16 Profile v1.0 - Ultra-short 16-item HRQoL Profile across 8 domains (Edelen et al. 2024, doi:10.1007/s11136-023-03597-6). T-score calculation per Supplement S4 is delegated to a CQL Library (see roadmap 2027).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-mii-qst-pro-promis-29.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/mii-qst-pro-promis-29"
      },
      "name" : "MII QST PRO PROMIS-29 (Adults)",
      "description" : "PROMIS-29 Profile v2.1 - Comprehensive health-related quality of life assessment across 7 domains",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-mii-qst-pro-promis-29-de.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/mii-qst-pro-promis-29-de"
      },
      "name" : "MII QST PRO PROMIS-29 (German)",
      "description" : "PROMIS-29 Profile v2.1 - German language variant derived from English source",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-mii-qst-pro-promis-29-minimal.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/mii-qst-pro-promis-29-minimal"
      },
      "name" : "MII QST PRO PROMIS-29 Minimal",
      "description" : "PROMIS-29 Profile v2.1 - Minimal variant for data collection without calculated expressions",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-mii-qst-pro-scoff.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/mii-qst-pro-scoff"
      },
      "name" : "MII QST PRO SCOFF",
      "description" : "SCOFF questionnaire — five-item screening tool for eating disorders (Morgan et al. 1999) with German translation",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-mii-qst-pro-ssd-12.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/mii-qst-pro-ssd-12"
      },
      "name" : "MII QST PRO SSD-12",
      "description" : "SSD-12 — Somatic Symptom Disorder – B Criteria Scale (Toussaint et al. 2016/2017), 12-item German self-report scale",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-mii-qst-pro-whodas-whodas12.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/mii-qst-pro-whodas-whodas12"
      },
      "name" : "MII QST PRO WHODAS 2.0 12-Item",
      "description" : "WHO Disability Assessment Schedule 2.0, 12-item self-administered version (WHODAS-12). English primary with German translations (validated PCOR-MII wording). WHODAS 2.0 © WHO 2010 — see copyright for licensing conditions (a WHO licence is required for electronic/data-capture use).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-mii-qst-pro-wi-7.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/mii-qst-pro-wi-7"
      },
      "name" : "MII QST PRO WI-7",
      "description" : "WI-7 (Whiteley-7) questionnaire — seven-item screening scale for hypochondriasis and somatization (Fink et al. 1999) with German translation",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-pro-bdi-bdi2-short.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-pro-bdi-bdi2-short"
      },
      "name" : "MII VS PRO BDI-II",
      "description" : "MII VS PRO BDI-II ValueSet for Beck Depression Inventory II (BDI-II) Questionnaire",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-pro-bdi-bdi2-long.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-pro-bdi-bdi2-long"
      },
      "name" : "MII VS PRO BDI-II",
      "description" : "MII VS PRO BDI-II ValueSet for Beck Depression Inventory II (BDI-II) Questionnaire",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-pro-dass-21-answer-list.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-pro-dass-21-answer-list"
      },
      "name" : "MII VS PRO DASS-21 Answer List",
      "description" : "4-point Likert response scale for all DASS-21 items (0 = Did not apply to me at all, 3 = Applied to me very much)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-pro-eortc-qlq-c30-scale-4pt.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"
      },
      "name" : "MII VS PRO EORTC QLQ-C30 4-Point Scale",
      "description" : "Standard 4-point response scale for EORTC QLQ-C30 items",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-pro-eortc-qlq-c30-scale-7pt.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-pro-eortc-qlq-c30-scale-7pt"
      },
      "name" : "MII VS PRO EORTC QLQ-C30 7-Point Scale",
      "description" : "7-point response scale for EORTC QLQ-C30 global health status and quality of life items",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-pro-eortc-qlq-c30-scale-role.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-pro-eortc-qlq-c30-scale-role"
      },
      "name" : "MII VS PRO EORTC QLQ-C30 Role Functioning Scale",
      "description" : "4-point response scale for EORTC QLQ-C30 role functioning items",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-pro-isr-z-answers.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-pro-isr-z-answers"
      },
      "name" : "MII VS PRO ISR-Z Answers",
      "description" : "ISR-Zustimmungsskala (0 = trifft nicht zu, 1 = trifft kaum zu, 2 = trifft ziemlich zu, 3 = trifft deutlich zu, 4 = trifft extrem zu). MII-controlled für zuverlässige ordinal()-Scoreberechnung.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-pro-midos2-severity.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-pro-midos2-severity"
      },
      "name" : "MII VS PRO MIDOS2 DGP-Severity-Skala",
      "description" : "DGP-4-stufige Severity-Skala (keine, leichte, mittlere, starke) — wird für die 11 Symptom-Items des MIDOS2 verwendet.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-pro-midos2-wellbeing.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-pro-midos2-wellbeing"
      },
      "name" : "MII VS PRO MIDOS2 Wohlbefinden-Skala",
      "description" : "4-stufige Wohlbefinden-Skala (sehr gut, eher gut, eher schlecht, sehr schlecht) — wird für das Wohlbefinden-Item des MIDOS2 verwendet.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-pro-phq-15-answers.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-pro-phq-15-answers"
      },
      "name" : "MII VS PRO PHQ-15 Answers",
      "description" : "PHQ-15 somatic symptom bother severity answer options (0 = Nicht beeinträchtigt, 1 = Wenig beeinträchtigt, 2 = Stark beeinträchtigt). MII-controlled for reliable ordinal() score calculation.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-pro-phq-9-answer-list-ll358-3.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-pro-phq-9-answer-list-ll358-3"
      },
      "name" : "MII VS PRO PHQ-9 Answer List LL358-3",
      "description" : "Patient Health Questionnaire (PHQ-9) Not at all/Several days/More than half the days/Nearly every day",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-pro-phq-9-answer-list-ll359-1.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-pro-phq-9-answer-list-ll359-1"
      },
      "name" : "MII VS PRO PHQ-9 Answer List LL359-1",
      "description" : "Not difficult at all/Somewhat difficult/Very difficult/Extremely difficult-Perceived difficulty (PHQ-9)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-pro-pro-ctcae-frequency.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-pro-pro-ctcae-frequency"
      },
      "name" : "MII VS PRO PRO-CTCAE Frequency Scale",
      "description" : "5-point frequency response scale for PRO-CTCAE items (0=Never, 4=Almost constantly)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-pro-pro-ctcae-frequency-sexual.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-pro-pro-ctcae-frequency-sexual"
      },
      "name" : "MII VS PRO PRO-CTCAE Frequency Scale (Sexual Function)",
      "description" : "7-point frequency scale for sexual function items: standard 5 options plus 'Not sexually active' and 'Prefer not to answer'",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-pro-pro-ctcae-interference.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-pro-pro-ctcae-interference"
      },
      "name" : "MII VS PRO PRO-CTCAE Interference Scale",
      "description" : "5-point interference response scale for PRO-CTCAE items (0=Not at all, 4=Very much)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-pro-pro-ctcae-presence.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-pro-pro-ctcae-presence"
      },
      "name" : "MII VS PRO PRO-CTCAE Presence Scale",
      "description" : "Binary presence/absence response scale for PRO-CTCAE items",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-pro-pro-ctcae-presence-sexual.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-pro-pro-ctcae-presence-sexual"
      },
      "name" : "MII VS PRO PRO-CTCAE Presence Scale (Sexual Function)",
      "description" : "4-option presence scale for sexual function: Yes / No / Not sexually active / Prefer not to answer",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-pro-pro-ctcae-presence-na.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-pro-pro-ctcae-presence-na"
      },
      "name" : "MII VS PRO PRO-CTCAE Presence Scale (with Not Applicable)",
      "description" : "3-option presence scale: Yes / No / Not applicable",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-pro-pro-ctcae-severity.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-pro-pro-ctcae-severity"
      },
      "name" : "MII VS PRO PRO-CTCAE Severity Scale",
      "description" : "5-point severity response scale for PRO-CTCAE items (0=None, 4=Very severe)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-pro-pro-ctcae-severity-radiation.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-pro-pro-ctcae-severity-radiation"
      },
      "name" : "MII VS PRO PRO-CTCAE Severity Scale (Radiation)",
      "description" : "6-point severity scale for radiation items: standard 5 options plus 'Not applicable'",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-pro-pro-ctcae-severity-sexual.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-pro-pro-ctcae-severity-sexual"
      },
      "name" : "MII VS PRO PRO-CTCAE Severity Scale (Sexual Function)",
      "description" : "7-point severity scale for sexual function items: standard 5 options plus 'Not sexually active' and 'Prefer not to answer'",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-pro-promis-frequency-response-scale.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-pro-promis-frequency-response-scale"
      },
      "name" : "MII VS PRO PROMIS Frequency Response Scale",
      "description" : "PROMIS Frequency response scale based on LOINC LL1016-6",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-pro-promis-intensity-response-scale.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-pro-promis-intensity-response-scale"
      },
      "name" : "MII VS PRO PROMIS Intensity Response Scale",
      "description" : "PROMIS Intensity response scale (Not at all / A little bit / Somewhat / Quite a bit / Very much) based on LOINC LL1024-0",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-pro-promis-physical-function-response-scale.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-pro-promis-physical-function-response-scale"
      },
      "name" : "MII VS PRO PROMIS Physical Function Response Scale",
      "description" : "PROMIS Physical Function response scale based on LOINC LL1022-4",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-pro-ssd-12-answers.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-pro-ssd-12-answers"
      },
      "name" : "MII VS PRO SSD-12 Answers",
      "description" : "SSD-12 frequency answer options (0 = nie, 1 = selten, 2 = manchmal, 3 = oft, 4 = sehr oft). MII-controlled for reliable ordinal() score calculation.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-pro-whodas-12-answer-list.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-pro-whodas-12-answer-list"
      },
      "name" : "MII VS PRO WHODAS 2.0 12-Item Answer List",
      "description" : "5-point response scale for all WHODAS-12 items (0 = None, 1 = Mild, 2 = Moderate, 3 = Severe, 4 = Extreme or cannot do). MII-controlled for reliable ordinal() score calculation; German labels via designations on mii-cs-pro-whodas-12.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Parameters"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Parameters-mii-param-pro-manifest.html"
      }],
      "reference" : {
        "reference" : "Parameters/mii-param-pro-manifest"
      },
      "name" : "mii-param-pro-manifest",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-mii-sp-pro-observationdefinition-code.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/mii-sp-pro-observationdefinition-code"
      },
      "name" : "mii-sp-pro-observationdefinition-code",
      "description" : "SearchParameter for ObservationDefinition.code to find score definitions by code (LOINC, SNOMED, MII)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-mii-sp-pro-observationdefinition-health-correlation.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/mii-sp-pro-observationdefinition-health-correlation"
      },
      "name" : "mii-sp-pro-observationdefinition-health-correlation",
      "description" : "SearchParameter for ObservationDefinition.qualifiedInterval.range.extension[ScoreHealthCorrelation] to filter by health correlation direction (higher scores = better/worse health)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-mii-sp-pro-observationdefinition-interval-category.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/mii-sp-pro-observationdefinition-interval-category"
      },
      "name" : "mii-sp-pro-observationdefinition-interval-category",
      "description" : "SearchParameter for ObservationDefinition.qualifiedInterval.category to filter by reference range category (reference, critical, absolute)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-mii-sp-pro-observationdefinition-permitted-datatype.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/mii-sp-pro-observationdefinition-permitted-datatype"
      },
      "name" : "mii-sp-pro-observationdefinition-permitted-datatype",
      "description" : "SearchParameter for ObservationDefinition.permittedDataType to filter score definitions by data type (Quantity, string, etc.)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-mii-sp-pro-observationdefinition-preferred-report-name.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/mii-sp-pro-observationdefinition-preferred-report-name"
      },
      "name" : "mii-sp-pro-observationdefinition-preferred-report-name",
      "description" : "SearchParameter for ObservationDefinition.preferredReportName to search score definitions by display name",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-mii-sp-pro-observationdefinition-unit.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/mii-sp-pro-observationdefinition-unit"
      },
      "name" : "mii-sp-pro-observationdefinition-unit",
      "description" : "SearchParameter for ObservationDefinition.quantitativeDetails.unit to filter score definitions by measurement unit",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-mii-sp-pro-questionnaire-capabilities.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/mii-sp-pro-questionnaire-capabilities"
      },
      "name" : "mii-sp-pro-questionnaire-capabilities",
      "description" : "SearchParameter for Questionnaire.extension[capabilities] to filter questionnaires by capability flags (displayable, collectable, calculatable, extractable, populatable, domainAligned)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-mii-exa-pro-pc-ptsd-response.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/mii-exa-pro-pc-ptsd-response"
      },
      "name" : "PC-PTSD Questionnaire Response Example",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-pro-pc-ptsd-score.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-pc-ptsd-score"
      },
      "name" : "PC-PTSD Score Observation Example",
      "description" : "PC-PTSD Total Score aus der Beispiel-QuestionnaireResponse (3 von 4)",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-mii-exa-pro-phq-15-response.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/mii-exa-pro-phq-15-response"
      },
      "name" : "PHQ-15 Questionnaire Response Example",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-pro-phq-15-observation.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-phq-15-observation"
      },
      "name" : "PHQ-15 Score Observation Example",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-phq-15"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-pro-phq-9-observation.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-phq-9-observation"
      },
      "name" : "PHQ-9 Observation Example",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-phq-9"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-mii-exa-pro-phq-9-response.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/mii-exa-pro-phq-9-response"
      },
      "name" : "PHQ-9 Questionnaire Response Example",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-mii-exa-pro-phq-9-bundle.html"
      }],
      "reference" : {
        "reference" : "Bundle/mii-exa-pro-phq-9-bundle"
      },
      "name" : "PHQ-9 Transaction Bundle Example",
      "description" : "Transaction bundle containing PHQ-9 questionnaire, response, and derived observation - flagship example",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ObservationDefinition-mii-obsdef-pro-score-proctcae-acs.html"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-score-proctcae-acs"
      },
      "name" : "PRO-CTCAE Average Composite Score (ACS)",
      "description" : "Average of all PRO-CTCAE composite grades at a given timepoint, reflecting overall symptomatic adverse event burden. Symptoms with opt-out responses are excluded from the average. Range 0.0-3.0 (continuous). ACS = sum(composite grades) / count(scored symptoms).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ObservationDefinition-mii-obsdef-pro-score-proctcae-composite-grade.html"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-score-proctcae-composite-grade"
      },
      "name" : "PRO-CTCAE Composite Grade",
      "description" : "Composite grade for a single PRO-CTCAE adverse event, computed from frequency, severity, and/or interference scores using the NCI composite grading algorithm (Basch et al., 2021). Range 0-3, mapped to CTCAE grade equivalents. Grade 0 = no symptom, Grade 3 = most severe patient-reported burden. May have dataAbsentReason when patient selected opt-out answers.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-mii-qst-pro-pro-ctcae-breast-de.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/mii-qst-pro-pro-ctcae-breast-de"
      },
      "name" : "PRO-CTCAE Deutsches Brustkrebszentrum-Subset (21 Symptome)",
      "description" : "PRO-CTCAE Brustkrebszentrum-Subset: 21 Symptome ausgewählt nach Prävalenz und Wichtigkeit bei ambulanten Brustkrebspatientinnen (Hamacher et al., BMC Cancer 2023). Scoring via CQL Library (CompositeGrade pro Symptom + Average Composite Score).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-pro-promis-depression-tscore-from-bdi-ii-observation.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-promis-depression-tscore-from-bdi-ii-observation"
      },
      "name" : "PROMIS Depression T-Score, derived from BDI-II Observation Example",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-mii-exa-pro-scoff-response.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/mii-exa-pro-scoff-response"
      },
      "name" : "SCOFF Questionnaire Response Example",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-pro-scoff-score.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-scoff-score"
      },
      "name" : "SCOFF Score Observation Example",
      "description" : "SCOFF Total Score aus der Beispiel-QuestionnaireResponse (3 von 5)",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-mii-exa-pro-ssd-12-response.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/mii-exa-pro-ssd-12-response"
      },
      "name" : "SSD-12 Questionnaire Response Example",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-pro-ssd-12-score.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-ssd-12-score"
      },
      "name" : "SSD-12 Score Observation Example",
      "description" : "SSD-12 Total Score aus der Beispiel-QuestionnaireResponse (24 von 48)",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ObservationDefinition-mii-obsdef-pro-score-whodas12-simple-sum.html"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-score-whodas12-simple-sum"
      },
      "name" : "WHODAS 2.0 12-Item Simple Sum Score",
      "description" : "Sum of the 12 WHODAS 2.0 item scores (each 0-4), range 0-48. Higher scores indicate greater disability. WHO simple scoring method; complex IRT-based scoring deferred to future work.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-pro-whodas12-score-simple-sum.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-whodas12-score-simple-sum"
      },
      "name" : "WHODAS 2.0 12-Item Simple Sum Score Observation",
      "description" : "WHODAS-12 simple sum score observation (all items 'Moderate': 12 × 2 = 24).",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-whodas12"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-mii-exa-pro-wi-7-response.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/mii-exa-pro-wi-7-response"
      },
      "name" : "WI-7 Questionnaire Response Example",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-pro-wi-7-score.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-wi-7-score"
      },
      "name" : "WI-7 Score Observation Example",
      "description" : "Whiteley-7 Total Score aus der Beispiel-QuestionnaireResponse (3 von 7)",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"
    }],
    "page" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
        "valueUrl" : "toc.html"
      }],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "index.html"
        }],
        "nameUrl" : "index.html",
        "title" : "Home",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "guidance.html"
        }],
        "nameUrl" : "guidance.html",
        "title" : "Guidance",
        "generation" : "markdown",
        "page" : [{
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "researcher-guidance.html"
          }],
          "nameUrl" : "researcher-guidance.html",
          "title" : "Guidance for Researchers",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "implementer-guidance.html"
          }],
          "nameUrl" : "implementer-guidance.html",
          "title" : "Guidance for Implementers",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "uml-diagrams.html"
          }],
          "nameUrl" : "uml-diagrams.html",
          "title" : "UML Diagrams",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "use-cases.html"
          }],
          "nameUrl" : "use-cases.html",
          "title" : "Use Cases",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "module-description.html"
          }],
          "nameUrl" : "module-description.html",
          "title" : "Module Description",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "project-context.html"
          }],
          "nameUrl" : "project-context.html",
          "title" : "Context within the MII",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "datasets-and-descriptions.html"
          }],
          "nameUrl" : "datasets-and-descriptions.html",
          "title" : "Datasets and Descriptions",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "technical-implementation.html"
          }],
          "nameUrl" : "technical-implementation.html",
          "title" : "Technical Implementation",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "workflows.html"
          }],
          "nameUrl" : "workflows.html",
          "title" : "Workflows",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "id-systematics.html"
          }],
          "nameUrl" : "id-systematics.html",
          "title" : "ID Systematics",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "terminology-strategies.html"
          }],
          "nameUrl" : "terminology-strategies.html",
          "title" : "Terminology Strategies",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "questionnaire-capabilities.html"
          }],
          "nameUrl" : "questionnaire-capabilities.html",
          "title" : "Questionnaire Capabilities",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "validation.html"
          }],
          "nameUrl" : "validation.html",
          "title" : "Validation",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "references.html"
          }],
          "nameUrl" : "references.html",
          "title" : "References",
          "generation" : "markdown"
        }]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "security-and-privacy.html"
        }],
        "nameUrl" : "security-and-privacy.html",
        "title" : "Security and Privacy",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "pro-library.html"
        }],
        "nameUrl" : "pro-library.html",
        "title" : "PRO Library",
        "generation" : "markdown",
        "page" : [{
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "phq-9.html"
          }],
          "nameUrl" : "phq-9.html",
          "title" : "PHQ-9",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "phq-15.html"
          }],
          "nameUrl" : "phq-15.html",
          "title" : "PHQ-15",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "gad-7.html"
          }],
          "nameUrl" : "gad-7.html",
          "title" : "GAD-7",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "bdi-ii.html"
          }],
          "nameUrl" : "bdi-ii.html",
          "title" : "BDI-II",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "dass-21.html"
          }],
          "nameUrl" : "dass-21.html",
          "title" : "DASS-21",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "eq-5d-5l.html"
          }],
          "nameUrl" : "eq-5d-5l.html",
          "title" : "EQ-5D-5L",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "eq-5d-5l-scores.html"
          }],
          "nameUrl" : "eq-5d-5l-scores.html",
          "title" : "EQ-5D-5L Scores",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "promis.html"
          }],
          "nameUrl" : "promis.html",
          "title" : "PROMIS",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "promis-29.html"
          }],
          "nameUrl" : "promis-29.html",
          "title" : "PROMIS-29",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "promis-16.html"
          }],
          "nameUrl" : "promis-16.html",
          "title" : "PROMIS-16",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "promis-depression.html"
          }],
          "nameUrl" : "promis-depression.html",
          "title" : "PROMIS Depression SF 4a",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "eortc-qlq-c30.html"
          }],
          "nameUrl" : "eortc-qlq-c30.html",
          "title" : "EORTC QLQ-C30",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "eortc-qlq-c30-scoring.html"
          }],
          "nameUrl" : "eortc-qlq-c30-scoring.html",
          "title" : "EORTC QLQ-C30 Scoring",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "pro-ctcae.html"
          }],
          "nameUrl" : "pro-ctcae.html",
          "title" : "PRO-CTCAE",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "proms-onkologisches-basisscreening.html"
          }],
          "nameUrl" : "proms-onkologisches-basisscreening.html",
          "title" : "Oncology Base Screening",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "midos2.html"
          }],
          "nameUrl" : "midos2.html",
          "title" : "MIDOS2",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "whodas.html"
          }],
          "nameUrl" : "whodas.html",
          "title" : "WHODAS 2.0",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "scoff.html"
          }],
          "nameUrl" : "scoff.html",
          "title" : "SCOFF",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "wi-7.html"
          }],
          "nameUrl" : "wi-7.html",
          "title" : "Whiteley-7",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "pc-ptsd.html"
          }],
          "nameUrl" : "pc-ptsd.html",
          "title" : "PC-PTSD",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "ssd-12.html"
          }],
          "nameUrl" : "ssd-12.html",
          "title" : "SSD-12",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "isr-z.html"
          }],
          "nameUrl" : "isr-z.html",
          "title" : "ISR-Z",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "euronet-soma.html"
          }],
          "nameUrl" : "euronet-soma.html",
          "title" : "EURONET-SOMA",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "minimal-reference-questionnaires.html"
          }],
          "nameUrl" : "minimal-reference-questionnaires.html",
          "title" : "Minimal Reference Questionnaires",
          "generation" : "markdown"
        }]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "scoring.html"
        }],
        "nameUrl" : "scoring.html",
        "title" : "Scoring",
        "generation" : "markdown",
        "page" : [{
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "domain-based-scoring.html"
          }],
          "nameUrl" : "domain-based-scoring.html",
          "title" : "Domain-based Scoring",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "domains.html"
          }],
          "nameUrl" : "domains.html",
          "title" : "Domains",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "cross-instrument-mappings.html"
          }],
          "nameUrl" : "cross-instrument-mappings.html",
          "title" : "Cross-Instrument Mappings",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "derived-metrics.html"
          }],
          "nameUrl" : "derived-metrics.html",
          "title" : "Derived Metrics",
          "generation" : "markdown"
        }]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "profiles.html"
        }],
        "nameUrl" : "profiles.html",
        "title" : "Profiles",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "extensions.html"
        }],
        "nameUrl" : "extensions.html",
        "title" : "Extensions",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "capability-statements.html"
        }],
        "nameUrl" : "capability-statements.html",
        "title" : "Capability Statements",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "search-parameters.html"
        }],
        "nameUrl" : "search-parameters.html",
        "title" : "Search Parameters",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "logical-models.html"
        }],
        "nameUrl" : "logical-models.html",
        "title" : "Logical Models",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "value-sets.html"
        }],
        "nameUrl" : "value-sets.html",
        "title" : "Value Sets",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "code-systems.html"
        }],
        "nameUrl" : "code-systems.html",
        "title" : "Code Systems",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "examples.html"
        }],
        "nameUrl" : "examples.html",
        "title" : "Examples",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "downloads.html"
        }],
        "nameUrl" : "downloads.html",
        "title" : "Downloads",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "changes.html"
        }],
        "nameUrl" : "changes.html",
        "title" : "Changelog",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "metadata.html"
        }],
        "nameUrl" : "metadata.html",
        "title" : "Metadata Overview",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "version-history.html"
        }],
        "nameUrl" : "version-history.html",
        "title" : "Versioning",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "ImplementationGuide-mii-ig-pro.html"
        }],
        "nameUrl" : "ImplementationGuide-mii-ig-pro.html",
        "title" : "MII ImplementationGuide Resource",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "translationinfo.html"
        }],
        "nameUrl" : "translationinfo.html",
        "title" : "Translation Information",
        "generation" : "markdown"
      }]
    },
    "parameter" : [{
      "code" : "path-resource",
      "value" : "input/predefined-resources"
    },
    {
      "code" : "path-pages",
      "value" : "input/intro-notes"
    },
    {
      "code" : "path-resource",
      "value" : "input/capabilities"
    },
    {
      "code" : "path-resource",
      "value" : "input/examples"
    },
    {
      "code" : "path-resource",
      "value" : "input/extensions"
    },
    {
      "code" : "path-resource",
      "value" : "input/models"
    },
    {
      "code" : "path-resource",
      "value" : "input/operations"
    },
    {
      "code" : "path-resource",
      "value" : "input/profiles"
    },
    {
      "code" : "path-resource",
      "value" : "input/resources"
    },
    {
      "code" : "path-resource",
      "value" : "input/vocabulary"
    },
    {
      "code" : "path-resource",
      "value" : "input/testing"
    },
    {
      "code" : "path-resource",
      "value" : "input/history"
    },
    {
      "code" : "path-resource",
      "value" : "fsh-generated/resources"
    },
    {
      "code" : "path-pages",
      "value" : "template/config"
    },
    {
      "code" : "path-pages",
      "value" : "input/images"
    },
    {
      "code" : "path-tx-cache",
      "value" : "input-cache/txcache"
    }]
  }
}

```
