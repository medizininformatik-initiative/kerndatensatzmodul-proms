<!-- TODO:REVIEW machine translation of source page isr-z.md (de) — template migration, Gate C; the authored text is input/translations/de/pagecontent/isr-z.md -->

### Clinical Context

The **ISR (ICD-10 Symptom Rating)** is a German-language self-report instrument that captures psychological symptoms along the ICD-10 taxonomy. The full instrument comprises 29 items and six syndrome scales (depression, anxiety, obsessive-compulsive, somatoform, eating disorders and a supplementary scale) plus a total score.

The MII PRO module deliberately covers only the **obsessive-compulsive subscale (ISR-Z)** with three items — the excerpt collected in PCOR-MII. Items are answered on a five-point agreement scale (0 = does not apply, to 4 = applies extremely).

### ⚠️ Scoring: mean, not sum

The ISR departs from the summation used elsewhere in this module: **scale values are means of their constituent items**, and the total score of the full ISR is the sum of the scale means divided by the number of scales.

For the Z subscale this means the scale value is the **mean of the three items**, range **0–4** — not 0–12. Summing here by mistake produces values comparable neither to published norms nor to other ISR evaluations.

### FHIR Implementation

> **Language strategy:** German as the primary language — the ISR was developed in German. No English translation is claimed or invented.

#### Questionnaire

**Canonical URL:** `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-isr-z`

**Capabilities:** Displayable, Collectable, Calculatable, Extractable, Domain-aligned

**Implementation notes:**
- linkIds `isr-z-q01`…`isr-z-q03`, score item `isr-z-score-mean`.
- A dedicated, instrument-specific answer scale: MII CodeSystem `mii-cs-pro-isr-z-answers` with an `ordinalValue` property 0–4, bound via `answerValueSet`. The `display` values are German, matching the language of the questionnaire.
- Score calculation via FHIRPath using **`.avg()` rather than `.sum()`**: `%resource.item.where(linkId.matches('^isr-z-q0[1-3]$')).answer.value.ordinal().avg()`.
- Neither LOINC nor SNOMED CT carries a code for the ISR (checked); coding is via the MII questionnaire catalogue.

The complete resource: [Questionnaire definition](Questionnaire-mii-qst-pro-isr-z.html).

#### Score Representation

1. **Calculated item** in the QuestionnaireResponse (linkId: `isr-z-score-mean`)
2. **Observation** carrying the MII score code `isr-z-mean`
3. **ObservationDefinition:** `mii-obsdef-pro-score-isr-z` — value range 0–4 {score} as a **decimal** (a mean, hence not an integer), higher = more pronounced obsessive-compulsive symptoms

### License

**Freely available** per the PCOR-MII DIZ implementation list. Developed in German; no translation required.

### Sources

- Tritt K, von Heymann F, Zaudig M, Zacharias I, Söllner W, Loew T. Entwicklung des Fragebogens „ICD-10-Symptom-Rating" (ISR). *Zeitschrift für Psychosomatische Medizin und Psychotherapie* 2008;54(4):409–418. doi:10.13109/zptm.2008.54.4.409
