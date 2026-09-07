<!-- TODO:REVIEW machine translation of source page midos2.md (de) — template migration, Gate C; the authored text is input/translations/de/pagecontent/midos2.md -->

### Overview

The **Minimal Documentation System for Palliative Patients (MIDOS2)** is an established German symptom screening instrument for palliative care. It was developed by the **German Association for Palliative Medicine (DGP)** as a German adaptation of the Edmonton Symptom Assessment System (ESAS, Bruera et al. 1991) and validated and further developed by Stiel et al. (2010, 2012).

**Key Properties:**
- **13 items**: 11 symptom items + 1 well-being item + 1 free text for other complaints
- **Response scale**: 4-point DGP scale for symptoms (none / mild / moderate / severe), separate 4-point scale for well-being
- **Time frame**: current (past few days)
- **License**: DGP, free for clinical and research purposes
- **German validation**: Stiel et al. 2010, 2012
- **Administration**: 2-5 minutes

### Questionnaire Structure

#### Symptom Scale (4-point)

| Value | German | English |
|------|---------|----------|
| 0 | keine | none |
| 1 | leichte | mild |
| 2 | mittlere | moderate |
| 3 | starke | severe |

#### Well-being Scale (4-point)

| Value | German | English |
|------|---------|----------|
| 0 | sehr gut | very good |
| 1 | eher gut | rather good |
| 2 | eher schlecht | rather poor |
| 3 | sehr schlecht | very poor |

#### Symptom Items

| # | Symptom | SNOMED CT (candidate) |
|---|---------|----------------------|
| 1 | Pain | 22253000 \|Pain (finding)\| |
| 2 | Nausea | 422587007 \|Nausea (finding)\| |
| 3 | Vomiting | 422400008 \|Vomiting (disorder)\| |
| 4 | Dyspnoea | 267036007 \|Dyspnea (finding)\| |
| 5 | Constipation | 14760008 \|Constipation (finding)\| |
| 6 | Weakness | _to be verified_ |
| 7 | Fatigue | 84229001 \|Fatigue (finding)\| |
| 8 | Loss of appetite | 79890006 \|Loss of appetite (finding)\| |
| 9 | Depressed mood | 35489007 \|Depressed mood (finding)\| |
| 10 | Anxiety | 48694002 \|Anxiety (finding)\| |
| 11 | Tension | _to be verified_ |
| 12 | Overall well-being | — |
| 13 | Other complaints (free text) | — |

> SNOMED candidates reflect the state of research and must be confirmed by terminology server validation.

### Score Calculation

#### Symptom Sum Score

Sum of the 11 symptom items (0-3 each), range 0-33:

```
symptomSumScore = sum(item 1..11) ∈ [0, 33]
```

Higher values indicate a greater symptom burden.

#### Well-being Score

A single item, range 0-3 — not included in the sum score but reported separately as a global quality-of-life component.

### Relationship to the PRO-CTCAE Oncology Base Screening

MIDOS2 and the [PRO-CTCAE Oncology Base Screening](proms-onkologisches-basisscreening.html) conceptually represent **the same symptom list** — at differing granularity of the response scales:

| Aspect | MIDOS2 | Oncology Base Screening |
|---|---|---|
| Scale format | 4-point (DGP) | 5-point (PRO-CTCAE) |
| Items per symptom | 1 (severity) | 1-3 (frequency/severity/interference) |
| Target group | Palliative care | Oncology |
| Authority | DGP | DKG (symptom selection) + NCI (items) |

A ConceptMap between the response scales is planned for a later iteration.

### FHIR Implementation

> **Language strategy:** German as the primary language, English as the translation. MIDOS2 is an originally German instrument.

> **Terminology strategy:** MII-controlled answer codes (a dedicated CodeSystem). Symptom items carry a SNOMED property for external interoperability.

#### Questionnaire

**Canonical URL:** `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-midos-midos2`

**Implemented capabilities:**
- Displayable, Collectable, Calculatable, Extractable, Domain-aligned

The complete resource is in the [Questionnaire definition](Questionnaire-mii-qst-pro-midos-midos2.html).

#### CodeSystem and ValueSets

**CodeSystem:** `mii-cs-pro-midos2` — item codes and both response scales with German primary texts and English translations

The complete resource is in the [CodeSystem definition](CodeSystem-mii-cs-pro-midos2.html).

**ValueSets:**
- `mii-vs-pro-midos2-severity` — DGP symptom scale
- `mii-vs-pro-midos2-wellbeing` — well-being scale

#### Score Calculation (FHIRPath)

```
// FHIR variable: symptomSumScore
%resource.item.where(linkId.matches('^midos2-q(0[1-9]|1[01])-')).answer.value.ordinal().sum()
```

### Literature

1. **Stiel S, Pollok A, Elsner F, et al.** (2012)
   *Validation of the Symptom and Problem Checklist of the German Hospice and Palliative Care Evaluation (HOPE)*
   Schmerz. (DOI 10.1007/s00482-011-1124-7)

2. **Stiel S, Matthes ME, Bertram L, et al.** (2010)
   *Evaluation und Weiterentwicklung der Minimal Documentation System (MIDOS)*
   Schmerz. 24(4):416-424 (DOI 10.1007/s00482-010-0972-5)

3. **Bruera E, Kuehn N, Miller MJ, Selmser P, Macmillan K.** (1991)
   *The Edmonton Symptom Assessment System (ESAS): A simple method for the assessment of palliative care patients*
   Journal of Palliative Care. 7(2):6-9 (PMID 1714502)

4. **Hui D, Bruera E.** (2017)
   *The Edmonton Symptom Assessment System 25 Years Later: Past, Present, and Future Developments*
   Journal of Pain and Symptom Management. 53(3):630-643 (DOI 10.1016/j.jpainsymman.2016.10.370)

---

> **Status:** this implementation is marked `draft` and `experimental`. Source verification against Stiel et al. 2010/2012 is part of bead `kerndatensatzmodul-proms-5jd` and is still pending.
