# Guidance for Researchers - MII IG PRO v2027.0.0-ballot.rc3

* [**Table of Contents**](toc.md)
* [**Guidance**](guidance.md)
* **Guidance for Researchers**

## Guidance for Researchers

Guidance for **studies and research projects** using the PRO module — selecting instruments, getting licensing right, and knowing what the collected data means downstream.

### Selecting an instrument

The [PRO Library](pro-library.md) table is the starting point: focus, item count, primary language, scoring and licence pointer for every instrument. Three questions decide the choice:

1. **Construct and population**— the per-instrument pages document validation sources and known population caveats (e.g. PC-PTSD four-item vs. PC-PTSD-5 are distinct instruments; the ISR-Z is a subscale, not a full ISR).
1. **Licensing before first data capture.**The tiers differ materially: public-domain (PHQ family, DASS-21, PSS set), registration (EuroQol, EORTC), usage request (PROMIS via CPCOR), WHO agreement for electronic capture (WHODAS), commercial (BDI-II — item texts not displayable from this module). The authoritative statement sits in each Questionnaire's`copyright`element.
1. **Which capability combination the study needs**— direct patient capture, server-side scoring of imported data, or read-only display change which[capabilities](questionnaire-capabilities.md)the deployed variant must declare.

### What the data means

* **A score Observation is traceable by construction:** `derivedFrom` points to the QuestionnaireResponse, `instantiates` (R5 backport extension) to the ObservationDefinition that documents unit, range and published cut-offs. Severity thresholds are **documented** there (`qualifiedInterval`) but deliberately not shipped as executable interpretation — interpretation is the study's or clinician's responsibility ([Derived Metrics](derived-metrics.md)).
* **Item-level data is comparable across instruments** where items are shared: the PHQ-D block namespace means a GAD-2 embedded in GAD-7 uses the same linkIds wherever it appears ([ID systematics](id-systematics.md)).
* **Language:** items carry the validated wording of their primary language with translations as extensions; the source of every German wording is named on the instrument page (PHQ-D, CPCOR, PCOR-MII Item Level Dictionary, NCI).
* **Score direction is machine-readable** via the health-correlation extension — do not assume "higher = worse" (EORTC function scales invert).

### Cross-instrument and longitudinal use

Score conversions between instruments (e.g. PHQ-9 → PROMIS depression T-score) are roadmap items modelled as CQL libraries, not shipped questionnaire logic. Change metrics, MID/MCID and reliable change are documented per instrument where published, as text — see the [roadmap](module-description.md) for the 2027 plans.

### Context

The PRO module is developed within the MII; the PSS instrument set follows the PCOR-MII use case, whose Item Level Dictionary is the source of the validated German wordings. For data-sharing requests, use the standard MII research data infrastructure (FDPG) processes; PRO resources travel there like any other KDS module data.

