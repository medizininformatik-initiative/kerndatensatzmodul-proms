The PRO Library is the module's structured collection of Patient-Reported Outcome Measures (PROMs), standardised for the German healthcare system. Every instrument follows the same architecture — canonical linkIds, answer scales with ordinal weights, a score item plus ObservationDefinition — and declares its [capabilities](questionnaire-capabilities.html) (displayable, collectable, calculatable, extractable, populatable, domain-aligned) machine-readably in the Questionnaire resource itself; the per-instrument pages state them individually. How scores are computed, and by whom, is on the [Scoring](scoring.html) page.

### Instruments

| Instrument | Focus | Items | Primary language | Scoring | Licence |
|---|---|---:|---|---|---|
| [PHQ-9](phq-9.html) | Depression screening | 9 | en (de: PHQ-D) | Sum 0–27 | free (Pfizer, public domain) |
| [PHQ-15](phq-15.html) | Somatic symptom burden | 15 | en (de: PHQ-D) | Sum 0–30 | free (Pfizer, public domain) |
| [GAD-7](gad-7.html) | Generalized anxiety | 7 | en (de: PHQ-D) | Sum 0–21 | free (Pfizer, public domain) |
| [DASS-21](dass-21.html) | Depression, anxiety, stress | 21 | en (de: Nilges & Essau) | 3 subscale sums | free (public domain) |
| [BDI-II](bdi-ii.html) | Depression inventory | 21 | de | Sum 0–63 | commercial (Pearson) — data + scoring only, not displayable |
| [EQ-5D-5L](eq-5d-5l.html) | Health-related quality of life | 5 + VAS | de | [Index, VAS, profile](eq-5d-5l-scores.html) (CQL) | registration (EuroQol) |
| [PROMIS-29](promis-29.html) | Multi-domain HRQoL profile | 29 | en (de: CPCOR) | Domain raw + T-scores | usage request via [CPCOR](promis.html) |
| [PROMIS-16](promis-16.html) | Ultra-short HRQoL profile | 16 | en (de: CPCOR) | data capture only; PROPr planned as CQL | usage request via CPCOR |
| [PROMIS Depression SF 4a](promis-depression.html) | Depression short form | 4 | en (de: CPCOR) | Raw + T-score | usage request via CPCOR |
| [PROMIS Cognitive Function SF 4a](promis-cognitive-function.html) | Cognitive function | 4 | en (de: CPCOR) | Raw + T-score | usage request via CPCOR |
| [EORTC QLQ-C30](eortc-qlq-c30.html) | Oncological quality of life | 30 | en (de: EORTC) | [15 subscales, 0–100](eortc-qlq-c30-scoring.html) | registration (EORTC) |
| [PRO-CTCAE](pro-ctcae.html) | Symptomatic adverse events (item library) | 124 (library) | en+de (NCI) | Composite grade + ACS (CQL) | free (NCI) |
| [Oncology Base Screening](proms-onkologisches-basisscreening.html) | PRO-CTCAE oncology subset | 23 | de (NCI) | Composite grade (CQL) | free (NCI) |
| [MIDOS2](midos2.html) | Palliative symptom screening | 13 | de | Symptom sum 0–33 | DGP, free for clinical use |
| [WHODAS 2.0 (12-item)](whodas.html) | Functioning and disability | 12 | en (de: PCOR-MII) | Simple sum 0–48 | WHO licence for eDC use — see page |
| [SCOFF](scoff.html) | Eating disorder screening | 5 | en (de: PCOR-MII) | Sum 0–5 | free |
| [Whiteley-7](wi-7.html) | Health anxiety | 7 | en (de: PCOR-MII) | Sum 0–7 | free |
| [PC-PTSD](pc-ptsd.html) | PTSD screening (4-item) | 4 | de (PCOR-MII) | Sum 0–4 | free |
| [SSD-12](ssd-12.html) | Somatic symptom disorder, B criteria | 12 | de | Sum 0–48 | free |
| [ISR-Z](isr-z.html) | Obsessive-compulsive subscale (ISR) | 3 | de | **Mean** 0–4 | free |
| [EURONET-SOMA](euronet-soma.html) | Somatic core items | 2 | en (de: PCOR-MII) | none (single items) | free |

### Metadata-only references

[HADS, EPDS, CES-D and K6](minimal-reference-questionnaires.html) are represented as metadata-only questionnaires: licensing does not permit shipping their item texts, but the metadata anchors identifiers, score semantics and mappings.

### Licence note

The licence column is a pointer, not legal advice: each instrument page carries the authoritative statement, and the machine-readable version sits in each Questionnaire's `copyright` element. The MII-authored FHIR structures are CC0; third-party item texts keep their own terms.
