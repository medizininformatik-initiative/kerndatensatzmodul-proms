# Artifacts Summary - MII IG PRO v2026.7.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Behavior: Capability Statements 

The following artifacts define the specific capabilities that different types of systems are expected to have in order to comply with this implementation guide. Systems conforming to this implementation guide are expected to declare conformance to one or more of the following capability statements.

| | |
| :--- | :--- |
| [ MII CPS PRO CapabilityStatement  ](CapabilityStatement-mii-cps-pro-capabilitystatement.md) | Das vorliegende CapabilityStatement beschreibt alle verpflichtenden Interaktionen die ein konformes System unterstützen muss, um das Modul PRO der Medizininformatik Initiative zu implementieren. |

### Behavior: Search Parameters 

These define the properties by which a RESTful server can be searched. They can also be used for sorting and including related resources.

| | |
| :--- | :--- |
| [ mii-sp-pro-observationdefinition-code  ](SearchParameter-mii-sp-pro-observationdefinition-code.md) | SearchParameter for ObservationDefinition.code to find score definitions by code (LOINC, SNOMED, MII) |
| [ mii-sp-pro-observationdefinition-health-correlation  ](SearchParameter-mii-sp-pro-observationdefinition-health-correlation.md) | SearchParameter for ObservationDefinition.qualifiedInterval.range.extension[ScoreHealthCorrelation] to filter by health correlation direction (higher scores = better/worse health) |
| [ mii-sp-pro-observationdefinition-interval-category  ](SearchParameter-mii-sp-pro-observationdefinition-interval-category.md) | SearchParameter for ObservationDefinition.qualifiedInterval.category to filter by reference range category (reference, critical, absolute) |
| [ mii-sp-pro-observationdefinition-permitted-datatype  ](SearchParameter-mii-sp-pro-observationdefinition-permitted-datatype.md) | SearchParameter for ObservationDefinition.permittedDataType to filter score definitions by data type (Quantity, string, etc.) |
| [ mii-sp-pro-observationdefinition-preferred-report-name  ](SearchParameter-mii-sp-pro-observationdefinition-preferred-report-name.md) | SearchParameter for ObservationDefinition.preferredReportName to search score definitions by display name |
| [ mii-sp-pro-observationdefinition-unit  ](SearchParameter-mii-sp-pro-observationdefinition-unit.md) | SearchParameter for ObservationDefinition.quantitativeDetails.unit to filter score definitions by measurement unit |
| [ mii-sp-pro-questionnaire-capabilities  ](SearchParameter-mii-sp-pro-questionnaire-capabilities.md) | SearchParameter for Questionnaire.extension[capabilities] to filter questionnaires by capability flags (displayable, collectable, calculatable, extractable, populatable, domainAligned) |

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [ MII Logical Model Modul PRO - Patient-Reported Outcomes und abgeleitete Metriken  ](StructureDefinition-mii-lm-pro.md) | Logisches Modell für die strukturierte Erfassung und Verarbeitung von Patient-Reported Outcomes (PROs) inklusive Fragebögen, Antworten, Scores und Domain-Mappings. |

### Structures: Questionnaires 

These define forms used by systems conforming to this implementation guide to capture or expose data to end users.

| | |
| :--- | :--- |
| [ MII QST PRO BDI-II  ](Questionnaire-mii-qst-pro-bdi-bdi2.md) | MII QST PRO Beck Depression Inventory II (BDI-II) Questionnaire |
| [ MII QST PRO CES-D  ](Questionnaire-mii-qst-pro-ces-d.md) | Center for Epidemiologic Studies Depression Scale (CES-D) - Metadata-only reference implementation |
| [ MII QST PRO DASS-21  ](Questionnaire-mii-qst-pro-dass-dass21.md) | Depression Anxiety Stress Scales - 21 Items (DASS-21) |
| [ MII QST PRO EORTC QLQ-C30  ](Questionnaire-mii-qst-pro-eortc-qlq-c30.md) | EORTC QLQ-C30 Version 3.0 Quality of Life Questionnaire - Complete implementation with all 30 items and 15 scale scores |
| [ MII QST PRO EORTC QLQ-C30 Variant A  ](Questionnaire-mii-qst-pro-eortc-qlq-c30-variant-a.md) | EORTC QLQ-C30 Version 3.0 - Variant A: References standalone external ValueSets directly (no contained resources) |
| [ MII QST PRO EORTC QLQ-C30 Variant B  ](Questionnaire-mii-qst-pro-eortc-qlq-c30-variant-b.md) | EORTC QLQ-C30 Version 3.0 - Variant B: With contained CodeSystem and ValueSets referencing it via local reference #eortc-qlq-c30-cs-b |
| [ MII QST PRO EPDS  ](Questionnaire-mii-qst-pro-epds.md) | Edinburgh Postnatal Depression Scale (EPDS) - Metadata-only reference implementation |
| [ MII QST PRO EQ-5D-5L  ](Questionnaire-mii-qst-pro-euroqol-eq5d5l-answer-coding.md) | MII QST PRO EuroQol Five Dimension Five Level (EQ-5D-5L) Questionnaire |
| [ MII QST PRO EQ-5D-5L  ](Questionnaire-mii-qst-pro-euroqol-eq5d5l-minimal.md) | MII QST PRO EuroQol Five Dimension Five Level (EQ-5D-5L) Questionnaire |
| [ MII QST PRO EQ-5D-5L (Displayable)  ](Questionnaire-mii-qst-pro-euroqol-eq5d5l-displayable.md) | MII QST PRO EuroQol Five Dimension Five Level (EQ-5D-5L) Questionnaire - Displayable version |
| [ MII QST PRO EQ-5D-5L Collectable  ](Questionnaire-mii-qst-pro-euroqol-eq5d5l-collectable.md) | MII QST PRO EuroQol Five Dimension Five Level (EQ-5D-5L) Questionnaire - Collectable Version |
| [ MII QST PRO EURONET-SOMA  ](Questionnaire-mii-qst-pro-euronet-soma.md) | EURONET-SOMA — two core outcome NRS items for somatic symptom intensity and interference (Rief et al. 2017) with German translation |
| [ MII QST PRO GAD-7  ](Questionnaire-mii-qst-pro-gad-7.md) | Generalized Anxiety Disorder Scale-7 (GAD-7) — Screening auf generalisierte Angststoerung, mit deutscher Uebersetzung (PHQ-D) |
| [ MII QST PRO HADS  ](Questionnaire-mii-qst-pro-hads.md) | Hospital Anxiety and Depression Scale (HADS) - Metadata-only reference implementation |
| [ MII QST PRO ISR-Z  ](Questionnaire-mii-qst-pro-isr-z.md) | ISR-Z — Subskala Zwang (3 Items) des ICD-10-Symptom-Rating (Tritt et al. 2008); Skalenwert als Mittelwert, nicht Summe |
| [ MII QST PRO K6  ](Questionnaire-mii-qst-pro-k6.md) | Kessler Psychological Distress Scale (K6) - Metadata-only reference implementation |
| [ MII QST PRO MIDOS2  ](Questionnaire-mii-qst-pro-midos-midos2.md) | MIDOS2 (Minimales Dokumentationssystem für Palliativpatienten, v2) — Symptom-Screening für die Palliativmedizin nach DGP. 11 Symptom-Items mit 4-stufiger DGP-Skala, ein Wohlbefinden-Item, ein offenes Item für sonstige Beschwerden. |
| [ MII QST PRO PC-PTSD  ](Questionnaire-mii-qst-pro-pc-ptsd.md) | PC-PTSD — Primary Care PTSD Screen, four-item screening questionnaire for posttraumatic stress disorder (Prins et al. 2003; German: Schäfer & Schulze 2010) |
| [ MII QST PRO PHQ-15  ](Questionnaire-mii-qst-pro-phq-15.md) | Patient Health Questionnaire-15 (PHQ-15) — somatic symptom severity (PHQ-D German validated) |
| [ MII QST PRO PHQ-9  ](Questionnaire-mii-qst-pro-phq-9.md) | Patient Health Questionnaire (PHQ-9) |
| [ MII QST PRO PRO-CTCAE Onkologisches Basisscreening  ](Questionnaire-mii-qst-pro-pro-ctcae-onkologisches-basisscreening.md) | Onkologisches Basisscreening basierend auf PRO-CTCAE-Items. Erfasst die wichtigsten Symptome onkologischer Patienten mit den 5-stufigen PRO-CTCAE-Skalen (Häufigkeit, Schweregrad, Beeinträchtigung). Symptomauswahl konzeptuell parallel zu MIDOS2 für eine gemeinsame Problem List zwischen Onkologie und Palliativmedizin. |
| [ MII QST PRO PROMIS Cognitive Function SF 4a  ](Questionnaire-mii-qst-pro-promis-cognitive-function-sf4a.md) | PROMIS Cognitive Function Short Form 4a - Assessment of cognitive abilities and concerns |
| [ MII QST PRO PROMIS Depression SF 4a (Adults)  ](Questionnaire-mii-qst-pro-promis-depression-sf4a.md) | PROMIS Depression Short Form 4a - Adults - Item Bank v1.0 |
| [ MII QST PRO PROMIS-16 (Adults)  ](Questionnaire-mii-qst-pro-promis-16.md) | PROMIS-16 Profile v1.0 - Ultra-short 16-item HRQoL Profile across 8 domains (Edelen et al. 2024, doi:10.1007/s11136-023-03597-6). T-score calculation per Supplement S4 is delegated to a CQL Library (see roadmap 2027). |
| [ MII QST PRO PROMIS-29 (Adults)  ](Questionnaire-mii-qst-pro-promis-29.md) | PROMIS-29 Profile v2.1 - Comprehensive health-related quality of life assessment across 7 domains |
| [ MII QST PRO PROMIS-29 (German)  ](Questionnaire-mii-qst-pro-promis-29-de.md) | PROMIS-29 Profile v2.1 - German language variant derived from English source |
| [ MII QST PRO PROMIS-29 Minimal  ](Questionnaire-mii-qst-pro-promis-29-minimal.md) | PROMIS-29 Profile v2.1 - Minimal variant for data collection without calculated expressions |
| [ MII QST PRO SCOFF  ](Questionnaire-mii-qst-pro-scoff.md) | SCOFF questionnaire — five-item screening tool for eating disorders (Morgan et al. 1999) with German translation |
| [ MII QST PRO SSD-12  ](Questionnaire-mii-qst-pro-ssd-12.md) | SSD-12 — Somatic Symptom Disorder – B Criteria Scale (Toussaint et al. 2016/2017), 12-item German self-report scale |
| [ MII QST PRO WHODAS 2.0 12-Item  ](Questionnaire-mii-qst-pro-whodas-whodas12.md) | WHO Disability Assessment Schedule 2.0, 12-item self-administered version (WHODAS-12). English primary with German translations (validated PCOR-MII wording). WHODAS 2.0 © WHO 2010 — see copyright for licensing conditions (a WHO licence is required for electronic/data-capture use). |
| [ MII QST PRO WI-7  ](Questionnaire-mii-qst-pro-wi-7.md) | WI-7 (Whiteley-7) questionnaire — seven-item screening scale for hypochondriasis and somatization (Fink et al. 1999) with German translation |
| [ PRO-CTCAE Deutsches Brustkrebszentrum-Subset (21 Symptome)  ](Questionnaire-mii-qst-pro-pro-ctcae-breast-de.md) | PRO-CTCAE Brustkrebszentrum-Subset: 21 Symptome ausgewählt nach Prävalenz und Wichtigkeit bei ambulanten Brustkrebspatientinnen (Hamacher et al., BMC Cancer 2023). Scoring via CQL Library (CompositeGrade pro Symptom + Average Composite Score). |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ MII PR PRO Depression Domain T-Score  ](StructureDefinition-mii-pr-pro-depression-t-score.md) | Generic profile for depression domain T-score observations (all depression questionnaires) |
| [ MII PR PRO Observation BDI-II  ](StructureDefinition-mii-pr-pro-observation-bdi-ii.md) | Profile for Beck Depression Inventory II (BDI-II) Total Score Observations |
| [ MII PR PRO Observation EQ-5D-5L Index  ](StructureDefinition-mii-pr-pro-observation-eq5d5l-index.md) | Profile for EQ-5D-5L Index Score Observations with German value set reference ranges |
| [ MII PR PRO Observation EQ-5D-5L Profile  ](StructureDefinition-mii-pr-pro-observation-eq5d5l-profile.md) | Profile for EQ-5D-5L Profile String Observations (e.g., '11111') |
| [ MII PR PRO Observation EQ-5D-5L VAS  ](StructureDefinition-mii-pr-pro-observation-eq5d5l-vas.md) | Profile for EQ-5D-5L Visual Analogue Scale Score Observations |
| [ MII PR PRO Observation PHQ-15  ](StructureDefinition-mii-pr-pro-observation-phq-15.md) | Profile for Patient Health Questionnaire-15 (PHQ-15) total somatic symptom severity score Observations (0-30; higher scores indicate greater somatic symptom burden). |
| [ MII PR PRO Observation PHQ-9  ](StructureDefinition-mii-pr-pro-observation-phq-9.md) | Profile for Patient Health Questionnaire-9 (PHQ-9) total score Observations (0-27; higher scores indicate more severe depression). |
| [ MII PR PRO Observation WHODAS 2.0 12-Item  ](StructureDefinition-mii-pr-pro-observation-whodas12.md) | Profile for WHODAS 2.0 12-item simple sum (disability) score Observations (0-48; higher scores indicate greater disability). No suitable LOINC code exists; SNOMED CT and the MII score catalogue are used. |
| [ MII PR PRO PROMIS Cognitive Function SF 4a Raw Score  ](StructureDefinition-mii-pr-pro-promis-cognitive-function-sf4a-raw-score.md) | Profile for PROMIS Cognitive Function Short Form 4a raw score observations (4-20 range) |
| [ MII PR PRO PROMIS Cognitive Function SF 4a T-Score  ](StructureDefinition-mii-pr-pro-promis-cognitive-function-sf4a-tscore.md) | Profile for PROMIS Cognitive Function Short Form 4a T-Score observations |
| [ MII PR PRO PROMIS Depression SF 4a Raw Score  ](StructureDefinition-mii-pr-pro-promis-depression-sf4a-raw-score.md) | Profile for PROMIS Depression Short Form 4a raw score observations (4-20 range) |
| [ MII PR PRO PROMIS-29 Anxiety T-Score  ](StructureDefinition-mii-pr-pro-promis-29-anxiety-tscore.md) | Profile for PROMIS-29 Anxiety T-Score Observations |
| [ MII PR PRO PROMIS-29 Depression T-Score  ](StructureDefinition-mii-pr-pro-promis-29-depression-tscore.md) | Profile for PROMIS-29 Depression T-Score Observations |
| [ MII PR PRO PROMIS-29 Fatigue T-Score  ](StructureDefinition-mii-pr-pro-promis-29-fatigue-tscore.md) | Profile for PROMIS-29 Fatigue T-Score Observations |
| [ MII PR PRO PROMIS-29 Pain Intensity  ](StructureDefinition-mii-pr-pro-promis-29-pain-intensity.md) | Profile for PROMIS-29 Pain Intensity single item Observations |
| [ MII PR PRO PROMIS-29 Pain Interference T-Score  ](StructureDefinition-mii-pr-pro-promis-29-pain-interference-tscore.md) | Profile for PROMIS-29 Pain Interference T-Score Observations |
| [ MII PR PRO PROMIS-29 Physical Function T-Score  ](StructureDefinition-mii-pr-pro-promis-29-physical-function-tscore.md) | Profile for PROMIS-29 Physical Function T-Score Observations |
| [ MII PR PRO PROMIS-29 Sleep Disturbance T-Score  ](StructureDefinition-mii-pr-pro-promis-29-sleep-disturbance-tscore.md) | Profile for PROMIS-29 Sleep Disturbance T-Score Observations |
| [ MII PR PRO PROMIS-29 Social Function T-Score  ](StructureDefinition-mii-pr-pro-promis-29-social-function-tscore.md) | Profile for PROMIS-29 Ability to Participate in Social Roles and Activities T-Score Observations |
| [ MII PR PRO Questionnaire  ](StructureDefinition-mii-pr-pro-questionnaire.md) | MII PR PRO Questionnaire, based on the FHIR Structure Data Capture Specification |
| [ MII PR PRO QuestionnaireResponse  ](StructureDefinition-mii-pr-pro-questionnaire-response.md) | MII PR PRO QuestionnaireResponse, based on the FHIR Structure Data Capture Specification |
| [ MII PR PRO Score Blueprint / Template  ](StructureDefinition-mii-pr-pro-score-blueprint.md) | MII PR PRO Questionnaire, based on the FHIR Structure Data Capture Specification |
| [ MII PR PRO Score Instance  ](StructureDefinition-mii-pr-pro-score-instance.md) | MII PR PRO Score Instance |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ MII Ex PRO Score Score Health Correlation  ](StructureDefinition-mii-ex-pro-score-score-health-correlation.md) | MII Ex PRO Score Score Health Correlation |
| [ MII PR PRO Questionnaire Capabilities  ](StructureDefinition-mii-ex-pro-questionnaire-capabilities.md) | MII PR PRO Questionnaire Capabilities, based on the FHIR Structure Data Capture Specification |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ MII VS PRO BDI-II  ](ValueSet-mii-vs-pro-bdi-bdi2-long.md) | MII VS PRO BDI-II ValueSet for Beck Depression Inventory II (BDI-II) Questionnaire |
| [ MII VS PRO BDI-II  ](ValueSet-mii-vs-pro-bdi-bdi2-short.md) | MII VS PRO BDI-II ValueSet for Beck Depression Inventory II (BDI-II) Questionnaire |
| [ MII VS PRO DASS-21 Answer List  ](ValueSet-mii-vs-pro-dass-21-answer-list.md) | 4-point Likert response scale for all DASS-21 items (0 = Did not apply to me at all, 3 = Applied to me very much) |
| [ MII VS PRO EORTC QLQ-C30 4-Point Scale  ](ValueSet-mii-vs-pro-eortc-qlq-c30-scale-4pt.md) | Standard 4-point response scale for EORTC QLQ-C30 items |
| [ MII VS PRO EORTC QLQ-C30 7-Point Scale  ](ValueSet-mii-vs-pro-eortc-qlq-c30-scale-7pt.md) | 7-point response scale for EORTC QLQ-C30 global health status and quality of life items |
| [ MII VS PRO EORTC QLQ-C30 Role Functioning Scale  ](ValueSet-mii-vs-pro-eortc-qlq-c30-scale-role.md) | 4-point response scale for EORTC QLQ-C30 role functioning items |
| [ MII VS PRO ISR-Z Answers  ](ValueSet-mii-vs-pro-isr-z-answers.md) | ISR-Zustimmungsskala (0 = trifft nicht zu, 1 = trifft kaum zu, 2 = trifft ziemlich zu, 3 = trifft deutlich zu, 4 = trifft extrem zu). MII-controlled für zuverlässige ordinal()-Scoreberechnung. |
| [ MII VS PRO MIDOS2 DGP-Severity-Skala  ](ValueSet-mii-vs-pro-midos2-severity.md) | DGP-4-stufige Severity-Skala (keine, leichte, mittlere, starke) — wird für die 11 Symptom-Items des MIDOS2 verwendet. |
| [ MII VS PRO MIDOS2 Wohlbefinden-Skala  ](ValueSet-mii-vs-pro-midos2-wellbeing.md) | 4-stufige Wohlbefinden-Skala (sehr gut, eher gut, eher schlecht, sehr schlecht) — wird für das Wohlbefinden-Item des MIDOS2 verwendet. |
| [ MII VS PRO PHQ-15 Answers  ](ValueSet-mii-vs-pro-phq-15-answers.md) | PHQ-15 somatic symptom bother severity answer options (0 = Nicht beeinträchtigt, 1 = Wenig beeinträchtigt, 2 = Stark beeinträchtigt). MII-controlled for reliable ordinal() score calculation. |
| [ MII VS PRO PHQ-9 Answer List LL358-3  ](ValueSet-mii-vs-pro-phq-9-answer-list-ll358-3.md) | Patient Health Questionnaire (PHQ-9) Not at all/Several days/More than half the days/Nearly every day |
| [ MII VS PRO PHQ-9 Answer List LL359-1  ](ValueSet-mii-vs-pro-phq-9-answer-list-ll359-1.md) | Not difficult at all/Somewhat difficult/Very difficult/Extremely difficult-Perceived difficulty (PHQ-9) |
| [ MII VS PRO PRO-CTCAE Frequency Scale  ](ValueSet-mii-vs-pro-pro-ctcae-frequency.md) | 5-point frequency response scale for PRO-CTCAE items (0=Never, 4=Almost constantly) |
| [ MII VS PRO PRO-CTCAE Frequency Scale (Sexual Function)  ](ValueSet-mii-vs-pro-pro-ctcae-frequency-sexual.md) | 7-point frequency scale for sexual function items: standard 5 options plus 'Not sexually active' and 'Prefer not to answer' |
| [ MII VS PRO PRO-CTCAE Interference Scale  ](ValueSet-mii-vs-pro-pro-ctcae-interference.md) | 5-point interference response scale for PRO-CTCAE items (0=Not at all, 4=Very much) |
| [ MII VS PRO PRO-CTCAE Presence Scale  ](ValueSet-mii-vs-pro-pro-ctcae-presence.md) | Binary presence/absence response scale for PRO-CTCAE items |
| [ MII VS PRO PRO-CTCAE Presence Scale (Sexual Function)  ](ValueSet-mii-vs-pro-pro-ctcae-presence-sexual.md) | 4-option presence scale for sexual function: Yes / No / Not sexually active / Prefer not to answer |
| [ MII VS PRO PRO-CTCAE Presence Scale (with Not Applicable)  ](ValueSet-mii-vs-pro-pro-ctcae-presence-na.md) | 3-option presence scale: Yes / No / Not applicable |
| [ MII VS PRO PRO-CTCAE Severity Scale  ](ValueSet-mii-vs-pro-pro-ctcae-severity.md) | 5-point severity response scale for PRO-CTCAE items (0=None, 4=Very severe) |
| [ MII VS PRO PRO-CTCAE Severity Scale (Radiation)  ](ValueSet-mii-vs-pro-pro-ctcae-severity-radiation.md) | 6-point severity scale for radiation items: standard 5 options plus 'Not applicable' |
| [ MII VS PRO PRO-CTCAE Severity Scale (Sexual Function)  ](ValueSet-mii-vs-pro-pro-ctcae-severity-sexual.md) | 7-point severity scale for sexual function items: standard 5 options plus 'Not sexually active' and 'Prefer not to answer' |
| [ MII VS PRO PROMIS Frequency Response Scale  ](ValueSet-mii-vs-pro-promis-frequency-response-scale.md) | PROMIS Frequency response scale based on LOINC LL1016-6 |
| [ MII VS PRO PROMIS Intensity Response Scale  ](ValueSet-mii-vs-pro-promis-intensity-response-scale.md) | PROMIS Intensity response scale (Not at all / A little bit / Somewhat / Quite a bit / Very much) based on LOINC LL1024-0 |
| [ MII VS PRO PROMIS Physical Function Response Scale  ](ValueSet-mii-vs-pro-promis-physical-function-response-scale.md) | PROMIS Physical Function response scale based on LOINC LL1022-4 |
| [ MII VS PRO SSD-12 Answers  ](ValueSet-mii-vs-pro-ssd-12-answers.md) | SSD-12 frequency answer options (0 = nie, 1 = selten, 2 = manchmal, 3 = oft, 4 = sehr oft). MII-controlled for reliable ordinal() score calculation. |
| [ MII VS PRO WHODAS 2.0 12-Item Answer List  ](ValueSet-mii-vs-pro-whodas-12-answer-list.md) | 5-point response scale for all WHODAS-12 items (0 = None, 1 = Mild, 2 = Moderate, 3 = Severe, 4 = Extreme or cannot do). MII-controlled for reliable ordinal() score calculation; German labels via designations on mii-cs-pro-whodas-12. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ MII CS EQ-5D Value Set  ](CodeSystem-mii-cs-pro-eq-5d-value-set.md) | EuroQol EQ-5D Value Set |
| [ MII CS PRO BDI-II  ](CodeSystem-mii-cs-pro-bdi-bdi2.md) | MII CS PRO BDI-II ValueSet for Beck Depression Inventory II (BDI-II) Questionnaire |
| [ MII CS PRO DASS-21 Response Scale and Item Codes  ](CodeSystem-mii-cs-pro-dass-21.md) | CodeSystem for the Depression Anxiety Stress Scales - Short Form (DASS-21) with answer codes, item codes, and multilingual support (English primary, German translations from Nilges & Essau 2015) |
| [ MII CS PRO EORTC QLQ-C30 Response Scale  ](CodeSystem-mii-cs-pro-eortc-qlq-c30.md) | Response scale for EORTC QLQ-C30 questionnaire items with multilingual support |
| [ MII CS PRO ISR-Z Answers  ](CodeSystem-mii-cs-pro-isr-z-answers.md) | MII-controlled Zustimmungsskala des ISR (0-4), deutsches Original. ordinalValue-Property je Konzept ermöglicht SDC-Ordinalscoring via answerValueSet. |
| [ MII CS PRO MIDOS2 Items and Response Scales  ](CodeSystem-mii-cs-pro-midos2.md) | CodeSystem for the Minimal Documentation System v2 (MIDOS2) — German palliative care symptom screening instrument. Contains item codes, DGP-4-stufige Severity-Skala, and 4-stufige Wohlbefinden-Skala. German primary language, English translations as designations. |
| [ MII CS PRO PHQ-15 Answers  ](CodeSystem-mii-cs-pro-phq-15-answers.md) | MII-controlled bother severity answer scale for PHQ-15 (0–2). English primary with German designations. ordinalValue properties on each concept enable SDC ordinal scoring via answerValueSet. |
| [ MII CS PRO PRO-CTCAE Item Library  ](CodeSystem-mii-cs-pro-pro-ctcae.md) | CodeSystem for the Patient-Reported Outcomes version of the Common Terminology Criteria for Adverse Events (PRO-CTCAE). Contains all 124 items across 78 adverse events with English primary text and German designations from the NCI-authorized translation. Item Library Version 1.0. |
| [ MII CS PRO Questionnaire Catalogue  ](CodeSystem-mii-cs-pro-questionnaire-catalogue.md) | MII CS PRO Questionnaire Catalogue for PRO Questionnaires used in the MII PROMs Module |
| [ MII CS PRO SSD-12 Answers  ](CodeSystem-mii-cs-pro-ssd-12-answers.md) | MII-controlled frequency answer scale for SSD-12 (0-4). English display with German designation (original instrument wording). ordinalValue properties on each concept enable SDC ordinal scoring via answerValueSet. |
| [ MII CS PRO Score Catalogue  ](CodeSystem-mii-cs-pro-score-catalogue.md) | MII CS PRO Score Catalogue for PRO Scores used in the MII PROMs Module |
| [ MII CS PRO WHODAS 2.0 12-Item Response Scale and Item Codes  ](CodeSystem-mii-cs-pro-whodas-12.md) | CodeSystem for the WHO Disability Assessment Schedule 2.0, 12-item self-administered version (WHODAS-12), with item codes and a 5-point answer scale. English primary displays with German designations. The answer concepts carry ordinalValue properties (0-4) enabling SDC ordinal scoring via answerValueSet. WHODAS 2.0 © WHO 2010; electronic use requires a WHO licence (see copyright). |

### Terminology: Concept Maps 

These define transformations to convert between codes by systems conforming with this implementation guide.

| | |
| :--- | :--- |
| [ MII CM PRO GAD-7 Item-Nummerierung → PHQ-D-linkIds  ](ConceptMap-mii-cm-pro-gad-7-linkids.md) | Bildet die übliche GAD-7-Itemnummerierung (Item 1–7, wie publiziert und in Fremdsystemen verbreitet) auf die kanonischen linkIds des PHQ-D-Block-Namespace (phq-phq5a…phq-phq5g) ab. Lesehilfe für die Übernahme von Daten aus Systemen, die die konventionelle Nummerierung verwenden — keine Migration einer veröffentlichten Fassung. |
| [ MII CM PRO PHQ-9 linkId Migration (2026.4.x → 2026.5.0)  ](ConceptMap-mii-cm-pro-phq-9-linkid-migration.md) | Maps PHQ-9 item linkIds from the pre-2026.5.0 scheme (phq-phq9-q01…q10) to the PHQ-D block namespace (phq-phq2a…i and phq-phq9-difficulty) introduced in 2026.5.0. Apply to existing PHQ-9 QuestionnaireResponses so their item.linkId values match the current Questionnaire. The calculated items phq-phq9-score-total and phq-phq9-promis-tscore were not renamed. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [ BDI-II Observation Example  ](Observation-mii-exa-pro-bdi-ii-observation.md) |  |
| [ BDI-II Transaction Bundle Example  ](Bundle-mii-exa-pro-bdi-ii-bundle.md) | Transaction bundle containing BDI-II CodeSystem, ValueSets, questionnaire, response, and derived observation |
| [ DASS-21 Anxiety DASS-42 Equivalent Score Observation  ](Observation-mii-exa-pro-dass-dass21-score-anxiety-equiv.md) | DASS-21 Anxiety subscale DASS-42 equivalent score observation (raw 5 * 2 = 10) |
| [ DASS-21 Anxiety Raw Score Observation  ](Observation-mii-exa-pro-dass-dass21-score-anxiety-raw.md) | DASS-21 Anxiety subscale raw score observation (mild: 5) |
| [ DASS-21 Depression DASS-42 Equivalent Score Observation  ](Observation-mii-exa-pro-dass-dass21-score-depression-equiv.md) | DASS-21 Depression subscale DASS-42 equivalent score observation (raw 12 * 2 = 24) |
| [ DASS-21 Depression Raw Score Observation  ](Observation-mii-exa-pro-dass-dass21-score-depression-raw.md) | DASS-21 Depression subscale raw score observation (severe: 12) |
| [ DASS-21 Stress DASS-42 Equivalent Score Observation  ](Observation-mii-exa-pro-dass-dass21-score-stress-equiv.md) | DASS-21 Stress subscale DASS-42 equivalent score observation (raw 11 * 2 = 22) |
| [ DASS-21 Stress Raw Score Observation  ](Observation-mii-exa-pro-dass-dass21-score-stress-raw.md) | DASS-21 Stress subscale raw score observation (moderate: 11) |
| [ EORTC QLQ-C30 Appetite Loss Score  ](Observation-mii-exa-pro-eortc-qlq-c30-observation-ap.md) |  |
| [ EORTC QLQ-C30 Cognitive Functioning Score  ](Observation-mii-exa-pro-eortc-qlq-c30-observation-cf.md) |  |
| [ EORTC QLQ-C30 Constipation Score  ](Observation-mii-exa-pro-eortc-qlq-c30-observation-co.md) |  |
| [ EORTC QLQ-C30 Diarrhoea Score  ](Observation-mii-exa-pro-eortc-qlq-c30-observation-di.md) |  |
| [ EORTC QLQ-C30 Dyspnoea Score  ](Observation-mii-exa-pro-eortc-qlq-c30-observation-dy.md) |  |
| [ EORTC QLQ-C30 Emotional Functioning Score  ](Observation-mii-exa-pro-eortc-qlq-c30-observation-ef.md) |  |
| [ EORTC QLQ-C30 Fatigue Score  ](Observation-mii-exa-pro-eortc-qlq-c30-observation-fa.md) |  |
| [ EORTC QLQ-C30 Financial Difficulties Score  ](Observation-mii-exa-pro-eortc-qlq-c30-observation-fi.md) |  |
| [ EORTC QLQ-C30 Global Health Status / Quality of Life Score  ](Observation-mii-exa-pro-eortc-qlq-c30-observation-ql.md) |  |
| [ EORTC QLQ-C30 Insomnia Score  ](Observation-mii-exa-pro-eortc-qlq-c30-observation-sl.md) |  |
| [ EORTC QLQ-C30 Nausea and Vomiting Score  ](Observation-mii-exa-pro-eortc-qlq-c30-observation-nv.md) |  |
| [ EORTC QLQ-C30 Pain Score  ](Observation-mii-exa-pro-eortc-qlq-c30-observation-pa.md) |  |
| [ EORTC QLQ-C30 Physical Functioning Score  ](Observation-mii-exa-pro-eortc-qlq-c30-observation-pf.md) | Physical Functioning Score from EORTC QLQ-C30 |
| [ EORTC QLQ-C30 Role Functioning Score  ](Observation-mii-exa-pro-eortc-qlq-c30-observation-rf.md) |  |
| [ EORTC QLQ-C30 Social Functioning Score  ](Observation-mii-exa-pro-eortc-qlq-c30-observation-sf.md) |  |
| [ EORTC QLQ-C30 Transaction Bundle Example  ](Bundle-mii-exa-pro-eortc-qlq-c30-bundle.md) | Complete transaction bundle containing EORTC QLQ-C30 questionnaire, response with all 30 items, and derived observations with all 15 scale scores |
| [ EQ-5D-5L Answer-Coding Response Example  ](QuestionnaireResponse-mii-exa-pro-euroqol-eq5d5l-coded-response.md) | Example of an EQ-5D-5L questionnaire response using the answer-coding variant with MII CodeSystem |
| [ EQ-5D-5L Questionnaire Response Example  ](QuestionnaireResponse-mii-exa-pro-euroqol-eq5d5l-response.md) |  |
| [ EURONET-SOMA Questionnaire Response Example  ](QuestionnaireResponse-mii-exa-pro-euronet-soma-response.md) |  |
| [ GAD-7 Questionnaire Response Example  ](QuestionnaireResponse-mii-exa-pro-gad-7-response.md) |  |
| [ GAD-7 Score Observation Example  ](Observation-mii-exa-pro-gad-7-score.md) | GAD-7 Summenwert aus der Beispiel-QuestionnaireResponse: 7 von 21 |
| [ ISR-Z Questionnaire Response Example  ](QuestionnaireResponse-mii-exa-pro-isr-z-response.md) |  |
| [ ISR-Z Score Observation Example  ](Observation-mii-exa-pro-isr-z-score.md) | ISR-Z Skalenwert (Mittelwert) aus der Beispiel-QuestionnaireResponse: 2.0 von 4 |
| [ MII EXA PRO BDI-II  ](QuestionnaireResponse-mii-exa-pro-bdi-bdi2.md) | MII EXA PRO Beck Depression Inventory II (BDI-II) Questionnaire |
| [ MII EXA PRO DASS-21 Response  ](QuestionnaireResponse-mii-exa-pro-dass-dass21-response-01.md) | Complete DASS-21 QuestionnaireResponse example with mixed severity: Depression severe (12), Anxiety mild (5), Stress moderate (11) |
| [ MII EXA PRO EORTC QLQ-C30 Response  ](QuestionnaireResponse-mii-exa-pro-eortc-qlq-c30-response.md) | Complete EORTC QLQ-C30 QuestionnaireResponse example with all 30 items and calculated scores |
| [ MII EXA PRO MIDOS2 Response  ](QuestionnaireResponse-mii-exa-pro-midos2-response-01.md) | MIDOS2 QuestionnaireResponse Beispiel — Palliativpatient mit moderater Symptomlast (Summe 19/33, Wohlbefinden eher schlecht) |
| [ MII EXA PRO PRO-CTCAE Onkologisches Basisscreening Response  ](QuestionnaireResponse-mii-exa-pro-pro-ctcae-onkologisches-basisscreening-response-01.md) | PRO-CTCAE Onkologisches Basisscreening Beispiel — Onkologischer Patient unter Chemotherapie mit moderater Symptomlast |
| [ MII EXA PRO PROMIS Depression SF 4a Bundle  ](Bundle-mii-exa-pro-promis-depression-sf4a-bundle.md) | Example bundle containing PROMIS Depression SF 4a QuestionnaireResponse and derived observations |
| [ MII EXA PRO PROMIS Depression SF 4a Raw Score  ](Observation-mii-exa-pro-promis-depression-sf4a-raw-score.md) | Example raw score observation for PROMIS Depression Short Form 4a |
| [ MII EXA PRO PROMIS Depression SF 4a Response  ](QuestionnaireResponse-mii-exa-pro-promis-depression-sf4a-response.md) | Example QuestionnaireResponse for PROMIS Depression Short Form 4a |
| [ MII EXA PRO PROMIS Depression SF 4a T-Score  ](Observation-mii-exa-pro-promis-depression-sf4a-tscore.md) | Example T-score observation for PROMIS Depression Short Form 4a |
| [ MII EXA PRO PROMIS-29 Bundle with Extracted Observations  ](Bundle-mii-exa-pro-promis-29-bundle.md) | Example Bundle demonstrating PROMIS-29 QuestionnaireResponse with all extracted T-Score Observations and Pain Intensity observation. This bundle shows the complete SDC observation-based extraction workflow. |
| [ MII EXA PRO PROMIS-29 Response  ](QuestionnaireResponse-mii-exa-pro-promis-29-response.md) | Example QuestionnaireResponse for PROMIS-29 Profile v2.1 (English variant) |
| [ MII EXA PRO PROMIS-29 Response (German)  ](QuestionnaireResponse-mii-exa-pro-promis-29-de-response.md) | Example QuestionnaireResponse for PROMIS-29 Profile v2.1 (German variant) - demonstrates response compatibility between language variants |
| [ MII EXA PRO Patient  ](Patient-mii-exa-pro-patient.md) | Example patient for PRO demonstrations |
| [ MII EXA PRO WHODAS 2.0 12-Item Response  ](QuestionnaireResponse-mii-exa-pro-whodas12-response-01.md) | Complete WHODAS-12 QuestionnaireResponse example. All 12 items answered 'Moderate' (ordinal 2); simple sum = 24. |
| [ PC-PTSD Questionnaire Response Example  ](QuestionnaireResponse-mii-exa-pro-pc-ptsd-response.md) |  |
| [ PC-PTSD Score Observation Example  ](Observation-mii-exa-pro-pc-ptsd-score.md) | PC-PTSD Total Score aus der Beispiel-QuestionnaireResponse (3 von 4) |
| [ PHQ-15 Questionnaire Response Example  ](QuestionnaireResponse-mii-exa-pro-phq-15-response.md) |  |
| [ PHQ-15 Score Observation Example  ](Observation-mii-exa-pro-phq-15-observation.md) |  |
| [ PHQ-9 Observation Example  ](Observation-mii-exa-pro-phq-9-observation.md) |  |
| [ PHQ-9 Questionnaire Response Example  ](QuestionnaireResponse-mii-exa-pro-phq-9-response.md) |  |
| [ PHQ-9 Transaction Bundle Example  ](Bundle-mii-exa-pro-phq-9-bundle.md) | Transaction bundle containing PHQ-9 questionnaire, response, and derived observation - flagship example |
| [ PROMIS Depression T-Score, derived from BDI-II Observation Example  ](Observation-mii-exa-pro-promis-depression-tscore-from-bdi-ii-observation.md) |  |
| [ SCOFF Questionnaire Response Example  ](QuestionnaireResponse-mii-exa-pro-scoff-response.md) |  |
| [ SCOFF Score Observation Example  ](Observation-mii-exa-pro-scoff-score.md) | SCOFF Total Score aus der Beispiel-QuestionnaireResponse (3 von 5) |
| [ SSD-12 Questionnaire Response Example  ](QuestionnaireResponse-mii-exa-pro-ssd-12-response.md) |  |
| [ SSD-12 Score Observation Example  ](Observation-mii-exa-pro-ssd-12-score.md) | SSD-12 Total Score aus der Beispiel-QuestionnaireResponse (24 von 48) |
| [ WHODAS 2.0 12-Item Simple Sum Score Observation  ](Observation-mii-exa-pro-whodas12-score-simple-sum.md) | WHODAS-12 simple sum score observation (all items 'Moderate': 12 × 2 = 24). |
| [ WI-7 Questionnaire Response Example  ](QuestionnaireResponse-mii-exa-pro-wi-7-response.md) |  |
| [ WI-7 Score Observation Example  ](Observation-mii-exa-pro-wi-7-score.md) | Whiteley-7 Total Score aus der Beispiel-QuestionnaireResponse (3 von 7) |

### Other 

These are resources that are used within this implementation guide that do not fit into one of the other categories.

| | |
| :--- | :--- |
| [ DASS-21 Anxiety Raw Score  ](ObservationDefinition-mii-obsdef-pro-score-dass21-anxiety-raw.md) | Sum of 7 anxiety items (2, 4, 7, 9, 15, 19, 20), each scored 0-3. Cut-offs: Normal 0-3, Mild 4-5, Moderate 6-7, Severe 8-9, Extremely severe 10+. |
| [ DASS-21 Anxiety Score (DASS-42 Equivalent)  ](ObservationDefinition-mii-obsdef-pro-score-dass21-anxiety-equiv.md) | DASS-21 anxiety raw score multiplied by 2 for comparability with DASS-42 normative data and published severity cut-offs. |
| [ DASS-21 Depression Raw Score  ](ObservationDefinition-mii-obsdef-pro-score-dass21-depression-raw.md) | Sum of 7 depression items (3, 5, 10, 13, 16, 17, 21), each scored 0-3. Cut-offs: Normal 0-4, Mild 5-6, Moderate 7-10, Severe 11-13, Extremely severe 14+. |
| [ DASS-21 Depression Score (DASS-42 Equivalent)  ](ObservationDefinition-mii-obsdef-pro-score-dass21-depression-equiv.md) | DASS-21 depression raw score multiplied by 2 for comparability with DASS-42 normative data and published severity cut-offs. |
| [ DASS-21 Stress Raw Score  ](ObservationDefinition-mii-obsdef-pro-score-dass21-stress-raw.md) | Sum of 7 stress items (1, 6, 8, 11, 12, 14, 18), each scored 0-3. Cut-offs: Normal 0-7, Mild 8-9, Moderate 10-12, Severe 13-16, Extremely severe 17+. |
| [ DASS-21 Stress Score (DASS-42 Equivalent)  ](ObservationDefinition-mii-obsdef-pro-score-dass21-stress-equiv.md) | DASS-21 stress raw score multiplied by 2 for comparability with DASS-42 normative data and published severity cut-offs. |
| [ EORTC QLQ-C30 Appetite Loss Score Definition  ](ObservationDefinition-mii-obsdef-pro-eortc-qlq-c30-ap.md) | ObservationDefinition for EORTC QLQ-C30 Appetite Loss Score (AP) - Higher scores indicate more appetite loss |
| [ EORTC QLQ-C30 Cognitive Functioning Score Definition  ](ObservationDefinition-mii-obsdef-pro-eortc-qlq-c30-cf.md) | ObservationDefinition for EORTC QLQ-C30 Cognitive Functioning Score (CF) - Higher scores indicate better cognitive functioning |
| [ EORTC QLQ-C30 Constipation Score Definition  ](ObservationDefinition-mii-obsdef-pro-eortc-qlq-c30-co.md) | ObservationDefinition for EORTC QLQ-C30 Constipation Score (CO) - Higher scores indicate more constipation |
| [ EORTC QLQ-C30 Diarrhoea Score Definition  ](ObservationDefinition-mii-obsdef-pro-eortc-qlq-c30-di.md) | ObservationDefinition for EORTC QLQ-C30 Diarrhoea Score (DI) - Higher scores indicate more diarrhoea |
| [ EORTC QLQ-C30 Dyspnoea Score Definition  ](ObservationDefinition-mii-obsdef-pro-eortc-qlq-c30-dy.md) | ObservationDefinition for EORTC QLQ-C30 Dyspnoea Score (DY) - Higher scores indicate more dyspnoea |
| [ EORTC QLQ-C30 Emotional Functioning Score Definition  ](ObservationDefinition-mii-obsdef-pro-eortc-qlq-c30-ef.md) | ObservationDefinition for EORTC QLQ-C30 Emotional Functioning Score (EF) - Higher scores indicate better emotional functioning |
| [ EORTC QLQ-C30 Fatigue Score Definition  ](ObservationDefinition-mii-obsdef-pro-eortc-qlq-c30-fa.md) | ObservationDefinition for EORTC QLQ-C30 Fatigue Score (FA) - Higher scores indicate more fatigue |
| [ EORTC QLQ-C30 Financial Difficulties Score Definition  ](ObservationDefinition-mii-obsdef-pro-eortc-qlq-c30-fi.md) | ObservationDefinition for EORTC QLQ-C30 Financial Difficulties Score (FI) - Higher scores indicate more financial difficulties |
| [ EORTC QLQ-C30 Global Health Status / Quality of Life Score Definition  ](ObservationDefinition-mii-obsdef-pro-eortc-qlq-c30-ql.md) | ObservationDefinition for EORTC QLQ-C30 Global Health Status / Quality of Life Score (QL) - Higher scores indicate better quality of life |
| [ EORTC QLQ-C30 Insomnia Score Definition  ](ObservationDefinition-mii-obsdef-pro-eortc-qlq-c30-sl.md) | ObservationDefinition for EORTC QLQ-C30 Insomnia Score (SL) - Higher scores indicate more sleep disturbance |
| [ EORTC QLQ-C30 Nausea and Vomiting Score Definition  ](ObservationDefinition-mii-obsdef-pro-eortc-qlq-c30-nv.md) | ObservationDefinition for EORTC QLQ-C30 Nausea and Vomiting Score (NV) - Higher scores indicate more nausea/vomiting |
| [ EORTC QLQ-C30 Pain Score Definition  ](ObservationDefinition-mii-obsdef-pro-eortc-qlq-c30-pa.md) | ObservationDefinition for EORTC QLQ-C30 Pain Score (PA) - Higher scores indicate more pain |
| [ EORTC QLQ-C30 Physical Functioning Score Definition  ](ObservationDefinition-mii-obsdef-pro-eortc-qlq-c30-pf.md) | ObservationDefinition for EORTC QLQ-C30 Physical Functioning Score (PF) - Higher scores indicate better physical functioning |
| [ EORTC QLQ-C30 Role Functioning Score Definition  ](ObservationDefinition-mii-obsdef-pro-eortc-qlq-c30-rf.md) | ObservationDefinition for EORTC QLQ-C30 Role Functioning Score (RF) - Higher scores indicate better role functioning |
| [ EORTC QLQ-C30 Social Functioning Score Definition  ](ObservationDefinition-mii-obsdef-pro-eortc-qlq-c30-sf.md) | ObservationDefinition for EORTC QLQ-C30 Social Functioning Score (SF) - Higher scores indicate better social functioning |
| [ MII ObsDef PRO Depression Domain T-Score  ](ObservationDefinition-mii-obsdef-pro-depression-t-score.md) | ObservationDefinition for depression domain T-score across all depression questionnaires with European population reference ranges |
| [ MII ObsDef PRO PROMIS Cognitive Function SF 4a Raw Score  ](ObservationDefinition-mii-obsdef-pro-promis-cognitive-function-sf4a-raw-score.md) | PROMIS Cognitive Function Short Form 4a Raw Score (4-20 range) |
| [ MII ObsDef PRO PROMIS Cognitive Function SF 4a T-Score  ](ObservationDefinition-mii-obsdef-pro-promis-cognitive-function-sf4a-tscore.md) | PROMIS Cognitive Function Short Form 4a T-Score |
| [ MII ObsDef PRO PROMIS-29 Anxiety T-Score  ](ObservationDefinition-mii-obsdef-pro-promis-29-anxiety-tscore.md) | PROMIS Anxiety T-Score from PROMIS-29 Profile v2.1 |
| [ MII ObsDef PRO PROMIS-29 Depression T-Score  ](ObservationDefinition-mii-obsdef-pro-promis-29-depression-tscore.md) | PROMIS Depression T-Score from PROMIS-29 Profile v2.1 |
| [ MII ObsDef PRO PROMIS-29 Fatigue T-Score  ](ObservationDefinition-mii-obsdef-pro-promis-29-fatigue-tscore.md) | PROMIS Fatigue T-Score from PROMIS-29 Profile v2.1 |
| [ MII ObsDef PRO PROMIS-29 Pain Intensity  ](ObservationDefinition-mii-obsdef-pro-promis-29-pain-intensity.md) | PROMIS Pain Intensity single item from PROMIS-29 Profile v2.1 |
| [ MII ObsDef PRO PROMIS-29 Pain Interference T-Score  ](ObservationDefinition-mii-obsdef-pro-promis-29-pain-interference-tscore.md) | PROMIS Pain Interference T-Score from PROMIS-29 Profile v2.1 |
| [ MII ObsDef PRO PROMIS-29 Physical Function T-Score  ](ObservationDefinition-mii-obsdef-pro-promis-29-physical-function-tscore.md) | PROMIS Physical Function T-Score from PROMIS-29 Profile v2.1 |
| [ MII ObsDef PRO PROMIS-29 Sleep Disturbance T-Score  ](ObservationDefinition-mii-obsdef-pro-promis-29-sleep-disturbance-tscore.md) | PROMIS Sleep Disturbance T-Score from PROMIS-29 Profile v2.1 |
| [ MII ObsDef PRO PROMIS-29 Social Function T-Score  ](ObservationDefinition-mii-obsdef-pro-promis-29-social-function-tscore.md) | PROMIS Ability to Participate in Social Roles and Activities T-Score from PROMIS-29 Profile v2.1 |
| [ MII ObsDef PRO Score BDI-II  ](ObservationDefinition-mii-obsdef-pro-score-bdi-ii.md) | Beck Depression Inventory II (BDI-II) Total Score |
| [ MII ObsDef PRO Score EQ-5D-5L Index  ](ObservationDefinition-mii-obsdef-pro-score-eq5d5l-index.md) | EuroQol 5 Dimensions 5 Levels (EQ-5D-5L) Index Score |
| [ MII ObsDef PRO Score EQ-5D-5L Profile  ](ObservationDefinition-mii-obsdef-pro-score-eq5d5l-profile.md) | EuroQol 5 Dimensions 5 Levels (EQ-5D-5L) Profile |
| [ MII ObsDef PRO Score EQ-5D-5L VAS  ](ObservationDefinition-mii-obsdef-pro-score-eq5d5l-vas.md) | EuroQol 5 Dimensions 5 Levels (EQ-5D-5L) Visual Analog Scale (VAS) Score |
| [ MII ObsDef PRO Score GAD-7  ](ObservationDefinition-mii-obsdef-pro-score-gad-7.md) | GAD-7 Summenscore (0-21) — Screening auf generalisierte Angststörung |
| [ MII ObsDef PRO Score ISR-Z  ](ObservationDefinition-mii-obsdef-pro-score-isr-z.md) | ISR-Z Skalenwert (Mittelwert, Bereich 0-4) — Subskala Zwang des ICD-10-Symptom-Rating |
| [ MII ObsDef PRO Score PC-PTSD  ](ObservationDefinition-mii-obsdef-pro-score-pc-ptsd.md) | PC-PTSD total score (0-4) — screening for posttraumatic stress disorder |
| [ MII ObsDef PRO Score PHQ-15  ](ObservationDefinition-mii-obsdef-pro-score-phq-15.md) | Patient Health Questionnaire-15 (PHQ-15) total somatic symptom severity score (0–30) |
| [ MII ObsDef PRO Score PHQ-9  ](ObservationDefinition-mii-obsdef-pro-score-phq-9.md) | Patient Health Questionnaire (PHQ-9) |
| [ MII ObsDef PRO Score SCOFF  ](ObservationDefinition-mii-obsdef-pro-score-scoff.md) | SCOFF total score (0-5) — screening for eating disorders |
| [ MII ObsDef PRO Score SSD-12  ](ObservationDefinition-mii-obsdef-pro-score-ssd-12.md) | SSD-12 total score (0-48) — somatic symptom disorder B-criteria burden |
| [ MII ObsDef PRO Score WI-7  ](ObservationDefinition-mii-obsdef-pro-score-wi-7.md) | WI-7 (Whiteley-7) total score (0-7) — screening for hypochondriasis and somatization |
| [ PRO-CTCAE Average Composite Score (ACS)  ](ObservationDefinition-mii-obsdef-pro-score-proctcae-acs.md) | Average of all PRO-CTCAE composite grades at a given timepoint, reflecting overall symptomatic adverse event burden. Symptoms with opt-out responses are excluded from the average. Range 0.0-3.0 (continuous). ACS = sum(composite grades) / count(scored symptoms). |
| [ PRO-CTCAE Composite Grade  ](ObservationDefinition-mii-obsdef-pro-score-proctcae-composite-grade.md) | Composite grade for a single PRO-CTCAE adverse event, computed from frequency, severity, and/or interference scores using the NCI composite grading algorithm (Basch et al., 2021). Range 0-3, mapped to CTCAE grade equivalents. Grade 0 = no symptom, Grade 3 = most severe patient-reported burden. May have dataAbsentReason when patient selected opt-out answers. |
| [ WHODAS 2.0 12-Item Simple Sum Score  ](ObservationDefinition-mii-obsdef-pro-score-whodas12-simple-sum.md) | Sum of the 12 WHODAS 2.0 item scores (each 0-4), range 0-48. Higher scores indicate greater disability. WHO simple scoring method; complex IRT-based scoring deferred to future work. |
| [ mii-param-pro-manifest  ](Parameters-mii-param-pro-manifest.md) |  |

