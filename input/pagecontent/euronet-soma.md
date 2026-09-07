<!-- TODO:REVIEW machine translation of source page euronet-soma.md (de) — template migration, Gate C; the authored text is input/translations/de/pagecontent/euronet-soma.md -->

### Clinical Context

**EURONET-SOMA** is not a scale in the usual sense but a recommendation by the European Network on Somatic Symptom Disorders for **two single items** to be collected uniformly in clinical trials on somatic symptom disorders:

1. the **overall intensity** of bodily complaints over the past seven days
2. the **interference** caused by those complaints over the same period

Both are answered on a numeric rating scale from 0 to 10. The purpose is comparability: studies that otherwise use different instruments should at least remain relatable through these two core questions.

**No sum score.** The two items are evaluated separately and not combined into a joint value — they measure different constructs.

### FHIR Implementation

> **Language strategy:** English as the primary language (the original per Rief et al. 2017, Figure 1, which prints the item texts and anchor labels), German texts as translations from the PCOR-MII Item Level Dictionary.

#### Questionnaire

**Canonical URL:** `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-euronet-soma`

**Capabilities:** Displayable, Collectable, Extractable, Domain-aligned — **not** Calculatable, since no score is formed.

**Implementation notes:**
- linkIds `euronet-soma-q01` (overall intensity) and `euronet-soma-q02` (interference).
- Numeric modelling rather than coded answers: `type = #integer` with `minValue` 0, `maxValue` 10 and `sliderStepValue` 1 — no CodeSystem, no `answerValueSet`.
- The anchor labels of the scale ends are separate `display` child items so they remain visible in renderers without slider support.
- `observation-extract` sits directly on the two items (not on a score item, since none exists), so each item is extracted as its own Observation.
- Neither LOINC nor SNOMED CT carries suitable codes; the available LOINC codes for "somatic symptom" belong to other instruments and were deliberately not used.

> **Known divergence in the source file:** the PCOR-MII Item Level Dictionary gives the same German anchor text for both items, whereas the English original uses different anchors per item (intensity: "No symptoms at all"/"Worst possible symptoms"; interference: "Not at all"/"Interfered completely"). The source was carried over verbatim and not harmonised; clarification with the PCOR team is pending.

The complete resource: [Questionnaire definition](Questionnaire-mii-qst-pro-euronet-soma.html).

#### Score Representation

No score item and no ObservationDefinition. Both items are extracted as independent Observations.

### License

**Freely available** per the PCOR-MII DIZ implementation list; the German wordings are contained in the original publication.

### Sources

- Rief W, Burton C, Frostholm L, Henningsen P, Kleinstäuber M, Kop WJ, Löwe B, Martin A, Persoons P, Rosmalen JGM, Schröder A, Shedden-Mora M, Toussaint A, van der Feltz-Cornelis C. Core Outcome Domains for Clinical Trials on Somatic Symptom Disorder, Bodily Distress Disorder, and Functional Somatic Syndromes: European Network on Somatic Symptom Disorders Recommendations. *Psychosomatic Medicine* 2017;79(9):1008–1015. doi:10.1097/PSY.0000000000000502
