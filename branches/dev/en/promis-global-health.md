# PROMIS Global Health v1.2 - MII IG PRO v2027.0.0-ballot.1

* [**Table of Contents**](toc.md)
* [**PRO Library**](pro-library.md)
* **PROMIS Global Health v1.2**

## PROMIS Global Health v1.2

### Clinical Context

The **PROMIS Scale v1.2 – Global Health** (PROMIS-GH, "PROMIS-10") captures **global physical and mental health** together with quality of life, social participation, pain and fatigue in ten items. Two summary scores are built from four items each: **Global Physical Health (GPH)** and **Global Mental Health (GMH)**; Global01 (general health) and Global09 (social roles) are single indicators.

**Scoring (v1.2, Hays et al. 2009; scoring manual):**

| | | | |
| :--- | :--- | :--- | :--- |
| Global Physical Health | Global03, Global06, Global07, Global08 | Global07 (NRS 0–10): 0→5, 1–3→4, 4–6→3, 7–9→2, 10→1; Global08: None=5 … Very severe=1 | 4–20 |
| Global Mental Health | Global02, Global04, Global05, Global10 | Global10: Never=5 … Always=1 | 4–20 |

Higher scores indicate better health. The conversion of raw scores to **T-scores** (LOINC `71971-6` GPH, `71969-0` GMH; mean 50, SD 10) is **not** included in the Questionnaire; it will follow as a CQL library once the official conversion table is verified and stored.

> **PCOR-MII:** collects Global01, Global02 and Global07 in all three entities and so far maintains the local 2-item Questionnaire `PROMISGH`. This instance is the canonical full form; the PCOR subset is derived in the use-case layer via `derivedFrom`.

### FHIR Implementation

> **Language strategy:** English as the primary language (wording of form v1.2 = LOINC component names of panel `85524-7`). **The official German translation is available in the module only for Global01, Global02 (PCOR-MII Item Level Dictionary, CPCOR) and Global07 (identical to `promis-global07` in PROMIS-29).** For Global03–06 and Global08–10 deliberately **no** in-house translation is provided; it will be added from the official HealthMeasures/CPCOR translation document. Until then the instrument stays at `status = draft`.

#### Questionnaire

**Canonical URL:** `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-global-health`

**Capabilities:** Displayable, Collectable, Calculatable, Extractable, Domain-aligned

**Implementation notes:**

* linkIds `promis-global01`…`promis-global10`; `promis-global07` is the same linkId as the pain intensity item in PROMIS-29 (identical question, item-bank principle). Order as on the form: 01, 02, 03, 04, 05, 09, 06, 10, 08, 07; flat structure, the 7-day stem is a `display` item.
* Item codes from LOINC panel `85524-7`; answer options as LOINC answer lists (`LL1012-5`, `LL1013-3`, `LL1016-6`, `LL1015-8`) with `itemWeight` on the `answerOption`. The weights are already the **recoded** values of the v1.2 scoring rule.
* Global07 is modelled as `choice` with integer options 0–10 so that the recoding lives as `itemWeight` on the options; the response datatype stays `valueInteger` as in PROMIS-29.
* Raw scores as FHIR variables `gphRaw`/`gmhRaw` with a count guard (only for a fully answered quartet), score items `promis-global-health-score-physical-raw` (LOINC `71972-4`) and `promis-global-health-score-mental-raw` (LOINC `71970-8`).

The complete resource: [Questionnaire definition](Questionnaire-mii-qst-pro-promis-global-health.md).

#### Score Representation

1. **Calculated items**in the QuestionnaireResponse (`promis-global-health-score-physical-raw`,`promis-global-health-score-mental-raw`)
1. **Observations**with LOINC`71972-4`/`71970-8`and the MII score codes`promis-global-health-physical-raw`/`promis-global-health-mental-raw`
1. **ObservationDefinitions:**`mii-obsdef-pro-promis-global-health-physical-raw`,`mii-obsdef-pro-promis-global-health-mental-raw`— range 4–20 each, higher = better

### License

PROMIS instruments follow the module's four-layer attribution model (see [PROMIS](promis.md)): FHIR structure © MII (CC-BY 4.0), items © PROMIS Health Organization, German translations via PCOR-MII/CPCOR, LOINC © Regenstrief. Institutional use outside PCOR-MII requires a usage request to CPCOR.

### Sources

* Hays RD, Bjorner JB, Revicki DA, Spritzer KL, Cella D. Development of physical and mental health summary scores from the patient-reported outcomes measurement information system (PROMIS) global items. **Qual Life Res** 2009;18(7):873–880. doi:10.1007/s11136-009-9496-9
* HealthMeasures. PROMIS Scale v1.2 – Global Health: Scoring Manual. https://www.healthmeasures.net
* LOINC 2.83: panel `85524-7` "PROMIS short form - global - version 1.2" (item codes `61577-3`, `61578-1`, `61579-9`, `61580-7`, `61581-5`, `61585-6`, `61582-3`, `61586-4`, `61584-9`, `61583-1`)

