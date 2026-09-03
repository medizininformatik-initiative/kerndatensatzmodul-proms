<!-- TODO:REVIEW machine translation of source page proms-onkologisches-basisscreening.md (de) — template migration, Gate C; the authored text is input/translations/de/pagecontent/proms-onkologisches-basisscreening.md -->

### Overview

The **Oncology Base Screening** is a PRO-CTCAE-based symptom screening instrument for general oncological care. It represents the same symptoms as the palliative-care [MIDOS2](midos2.html) but uses the more differentiated PRO-CTCAE response scales.

**Key Properties:**
- **23 items** from 10 PRO-CTCAE adverse-event concepts
- **Response scales**: 5-point PRO-CTCAE scales (frequency / severity / interference)
- **Time frame**: past 7 days
- **License**: PRO-CTCAE is a product of the US National Cancer Institute (NCI), freely usable
- **Source**: PRO-CTCAE Item Library v1.0, NCI-authorised German translation
- **Administration**: 5-10 minutes

### Delimitation from the Full PRO-CTCAE

The Oncology Base Screening is a **curated selection** from the PRO-CTCAE item bank (124 items / 78 adverse events). The symptom selection follows the MIDOS2 symptoms and represents the most frequent and clinically most relevant symptoms of oncology patients.

Other PRO-CTCAE derivatives in this IG:
- [PRO-CTCAE Breast-DE](Questionnaire-mii-qst-pro-pro-ctcae-breast-de.html) — 21 items for breast cancer patients
- PRO-CTCAE Complete Master *(planned, currently available only as a CodeSystem)*

### Symptom Selection and Item Mapping

| # | Symptom | PRO-CTCAE AE | Attributes | Items |
|---|---------|--------------|-----------|-------|
| 1 | Pain | #48 General Pain | frq+sev+int | 3 |
| 2 | Fatigue | #53 Fatigue | sev+int | 2 |
| 3 | Nausea | #9 Nausea | frq+sev | 2 |
| 4 | Vomiting | #10 Vomiting | frq+sev | 2 |
| 5 | Decreased appetite | #8 Decreased Appetite | sev+int | 2 |
| 6 | Constipation | #15 Constipation | sev | 1 |
| 7 | Shortness of breath | #19 Shortness of Breath | sev+int | 2 |
| 8 | Discouragement | #55 Discouraged | frq+sev+int | 3 |
| 9 | Sadness | #56 Sad | frq+sev+int | 3 |
| 10 | Anxiety | #54 Anxiety | frq+sev+int | 3 |
| | **Total** | **10 AEs** | | **23 items** |

### Response Scales

#### Frequency (5-point)

| Value | German | English |
|------|---------|----------|
| 0 | Nie | Never |
| 1 | Selten | Rarely |
| 2 | Gelegentlich | Occasionally |
| 3 | Häufig | Frequently |
| 4 | Fast immer | Almost constantly |

#### Severity (5-point)

| Value | German | English |
|------|---------|----------|
| 0 | Gar nicht | None |
| 1 | Ein wenig | Mild |
| 2 | Mäßig | Moderate |
| 3 | Ziemlich | Severe |
| 4 | Sehr | Very severe |

#### Interference (5-point)

The same scale as severity (identically worded in the German NCI translation).

### Score Calculation

The Oncology Base Screening follows the **PRO-CTCAE composite grading algorithm** (Basch et al. 2014). Per symptom a composite grade is computed from the available attributes (rank 1-7 depending on the attribute combination). The exact calculation is performed in CQL via the established PRO-CTCAE library (`mii-lib-pro-ctcae`).

| Composite grade | Clinical interpretation |
|-----------------|--------------------------|
| 0 | No symptom |
| 1 | Mild symptom |
| 2 | Moderate symptom |
| 3 | Severe symptom |

In addition, an **average composite score (ACS)** can be computed across all captured symptoms — an aggregate measure of overall burden.

### Mapping to MIDOS2

| MIDOS2 symptom | Mapping into the Oncology Base Screening |
|---|---|
| Pain | #48 General Pain (1:1) |
| Nausea | #9 Nausea (1:1) |
| Vomiting | #10 Vomiting (1:1) |
| Dyspnoea | #19 Shortness of Breath (1:1) |
| Constipation | #15 Constipation (1:1) |
| Fatigue + weakness | #53 Fatigue (PRO-CTCAE bundles them) |
| Loss of appetite | #8 Decreased Appetite (1:1) |
| Depressed mood | #55 Discouraged + #56 Sad (PRO-CTCAE splits it) |
| Anxiety + tension | #54 Anxiety (PRO-CTCAE bundles them) |
| Overall well-being | _no PRO-CTCAE equivalent_ |

A ConceptMap at the response level (4-point ↔ 5-point) is planned for a later iteration.

### FHIR Implementation

> **Language strategy:** German as the primary language, English as the translation. The item wordings come directly from the NCI-authorised German PRO-CTCAE Item Library v1.0.

#### Questionnaire

**Canonical URL:** `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-pro-ctcae-onkologisches-basisscreening`

**Implemented capabilities:**
- Displayable, Collectable, Extractable, Domain-aligned
- *Calculatable* will be enabled once the CQL library is connected

The complete resource is in the [Questionnaire definition](Questionnaire-mii-qst-pro-pro-ctcae-onkologisches-basisscreening.html).

#### Reused Resources

The Oncology Base Screening references the existing [PRO-CTCAE CodeSystem](CodeSystem-mii-cs-pro-pro-ctcae.html) and the established ValueSets for frequency, severity and interference.

### Literature

1. **Basch E, Reeve BB, Mitchell SA, et al.** (2014)
   *Development of the National Cancer Institute's Patient-Reported Outcomes Version of the Common Terminology Criteria for Adverse Events (PRO-CTCAE)*
   Journal of the National Cancer Institute. 106(9):dju244 (DOI 10.1093/jnci/dju244)

2. **National Cancer Institute (2025)**
   *PRO-CTCAE Item Library v1.0 — German translation*
   healthcaredelivery.cancer.gov/pro-ctcae

3. **Hamacher S, Hellmich M, Lorenz C, et al.** (2023)
   *Developing tumor-specific PRO-CTCAE item sets — methodological approach and example for breast cancer patients in Germany*
   BMC Cancer. 23:638 (DOI 10.1186/s12885-023-11115-7)

---

> **Status:** this implementation is marked `draft` and `experimental`. A `derivedFrom` relationship to a complete PRO-CTCAE master questionnaire is planned.
