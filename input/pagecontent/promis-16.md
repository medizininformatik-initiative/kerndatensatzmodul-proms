<!-- TODO:REVIEW — English page derived from the German original during the
     template migration (Gate C). The German text under
     input/translations/de/pagecontent/ is the authored source. -->

### Overview

**Status**: implemented — all 16 items, without score calculation
**Version**: 2026.5.0
**As of**: 2026-06-10

The **PROMIS-16 Profile v1.0** is an ultra-short multi-domain instrument for assessing health-related quality of life (HRQoL). With only **16 items across 8 domains** (2 items per domain) it is considerably shorter than the [PROMIS-29](promis-29.html) and suited to settings with a high assessment burden — repeated measurement over a clinical course, for instance, or use as a screening instrument.

Source: **Edelen et al. 2024** -- *PROMIS®-16: development and preliminary psychometric evaluation* (Qual Life Res, [doi:10.1007/s11136-023-03597-6](https://doi.org/10.1007/s11136-023-03597-6))

### Domains Covered

| Domain | Items | PCOR-MII variable IDs |
|--------|-------|----------------------|
| Physical Function | 2 | PFA21, PFA23 |
| Anxiety | 2 | EDANX40, EDANX41 |
| Depression | 2 | EDDEP29, EDDEP41 |
| Fatigue | 2 | HI7, AN3 |
| Sleep Disturbance | 2 | SLEEP25, SLEEP90 |
| Social Roles & Activities | 2 | SRPPER31_CaPS, SRPPER46_CaPS |
| Pain Interference | 2 | PAININ9, PAININ31 |
| Cognitive Function | 2 | PC27, PC-CaPS3R |

### Technical Details

#### Questionnaire Resource

```
Questionnaire/mii-qst-pro-promis-16
```

**Capabilities**:
- Displayable
- Collectable
- Extractable
- Domain-aligned
- **Calculatable**: deliberately false — the pattern-based T-score lookup per domain (5×5 = 25 values from supplement S4 of Edelen et al.) is realised through a dedicated CQL library `mii-lib-promis-16` (analogous to the architecture for PHQ-9 and EQ-5D)

#### Score Calculation (not implemented in this version)

PROMIS-16 is properly **"PROMIS-16 Profile v2.1 (PROPr)"** and is designed for computing the **PROMIS preference score (PROPr)** — a single utility score (analogous to the EQ-5D index) used in comparative effectiveness and cost-utility analyses. The full score calculation proceeds in three stages:

1. **8 domain T-scores** — per domain from a 5×5 response-pattern grid (25 combinations, pattern lookup per Edelen et al. 2024 supplement S4)
2. **PROMIS theta values** — IRT-based latent constructs per domain
3. **PROPr summary score** — utility-based, derived from the 8 thetas (Dewitt et al. 2018)

**In the current version (2026.5.0)** the score calculation is deliberately **not implemented**. The questionnaire accordingly carries `calculatable = false` and serves purely for data capture for now. Score calculation is to be added later via a CQL library `mii-lib-promis-16` and/or a connection to the official PROMIS Assessment Center API, once the internal requirements are settled.

**Note on intended use** (per PHO): the PROPr score is intended for **group-level reporting**. For precise individual clinical assessment, domain scores alone are not reliable according to PHO — they can, however, serve as a screen.

Score methodology reference: Dewitt B, Feeny D, Fischhoff B, et al. *Estimation of a Preference-Based Summary Score for PROMIS: The PROMIS®-Preference (PROPr) Scoring System.* Med Decis Making. 2018;38(6):683-698. [doi:10.1177/0272989X18776637](https://doi.org/10.1177/0272989X18776637)

### Language Support

**Primary language**: English (the validated original)
**German translation**: via the `translation` extension; wordings from the **PCOR-MII Master Item-Level Dictionary** (curated by CPCOR Charité — see [Licensing](#licensing--copyright) below)

### Implementation Status

All 16 items are implemented in `input/fsh/definitions/promis-16/mii-qst-pro-promis-16.fsh` with the official wordings from the PHO PDF "PROMIS-16 Profile v2.1 (PROPr), German, 20 September 2024". The wordings were verified automatically against the PCOR-MII Master Item-Level Dictionary (`MATCH=15, DIFF=0`).

The five PROMIS-16-specific LOINC codes (Sleep25, Sleep90, SRPPER31-CaPS, PC27r, PC-CaPS3r) are marked TODO in the FSH file — they must still be verified against the official LOINC list once the PROMIS-16 panel codes are published in LOINC.

Score calculation (PROPr + domain T-scores) is **deliberately not implemented** in this version — see the section [Score Calculation](#score-calculation-not-implemented-in-this-version).

### Item Overlap with PROMIS-29 / Cog Fn SF 4a

11 of the 16 PROMIS-16 items also appear in the PROMIS-29 corpus, 5 are PROMIS-16-specific:

| PROMIS-16 item | Also in PROMIS-29? | Also in Cog Fn SF 4a? |
|---|---|---|
| PFA21, PFA23 | ✓ | -- |
| EDANX40, EDANX41 | ✓ | -- |
| EDDEP29, EDDEP41 | ✓ | -- |
| HI7, AN3 | ✓ | -- |
| **Sleep25** | -- | -- |
| **Sleep90** | -- | -- |
| **SRPPER31_CaPS** | -- | -- |
| SRPPER46_CaPS | ✓ | -- |
| PAININ9, PAININ31 | ✓ | -- |
| **PC27r** | -- | -- (4a has different PC items) |
| **PC-CaPS3r** | -- | -- |

**Practical consequence**: anyone collecting PROMIS-29 + Cog Fn SF 4a **cannot** extract a complete PROMIS-16 — the five items in bold are missing. A score-level cross-walk between PROMIS-16 and PROMIS-29 domain T-scores is the subject of later work packages (roadmap, together with the score implementation).

### PROMIS-16 vs. PROMIS-29

| Aspect | PROMIS-16 | PROMIS-29 |
|---|---|---|
| Total items | 16 | 29 (28 Likert + 1 NRS) |
| Items per domain | 2 | 4 |
| Domains covered | 8 (incl. Cognitive Function) | 7 + 1 NRS (no Cognitive Function) |
| Score method | Pattern lookup (25 per domain) | Sum score + T-score lookup |
| Completion time | ~3-5 min | ~7-10 min |
| Context of use | Repeated measurement, screening | Detailed baseline assessment |

### Licensing & Copyright

PROMIS items are protected by copyright. The official German translations are provided by **PCOR-MII** and curated by the **PROMIS National Center Germany (CPCOR Charité, led by Felix Fischer)**.

**For institutional implementation outside the PCOR-MII context, a usage request to CPCOR is required**:
[https://cpcor.charite.de/promis_national_center_deutschland/nutzungsanfragen](https://cpcor.charite.de/promis_national_center_deutschland/nutzungsanfragen)

For details of the layered attribution (MII FHIR structure + PROMIS items + German translation + LOINC) see [PROMIS — Licensing & Copyright](promis.html#lizenzierung-urheberrecht).

### References

- Edelen MO, Rodriguez A, Herman P, Hays RD. *PROMIS®-16: development and preliminary psychometric evaluation of the next generation PROMIS® short form set.* Qual Life Res. 2024. [doi:10.1007/s11136-023-03597-6](https://doi.org/10.1007/s11136-023-03597-6)
- [PROMIS Official Site](https://www.healthmeasures.net/explore-measurement-systems/promis)
- [PROMIS National Center Germany (CPCOR)](https://cpcor.charite.de/promis_national_center_deutschland)
