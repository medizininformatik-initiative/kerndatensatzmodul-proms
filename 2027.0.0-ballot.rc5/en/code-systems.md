# Code Systems - MII IG PRO v2027.0.0-ballot.rc5

* [**Table of Contents**](toc.md)
* **Code Systems**

## Code Systems

### Code Systems

This page describes the CodeSystems of the **PRO** module (naming convention `MII_CS_<Module>_<Name>`). The ValueSets built on them are described on the [Value Sets](value-sets.md) page.

**Important:** CodeSystem resources of external terminologies (e.g. ICD-10-GM, OPS, SNOMED CT) are **not** published in this module; they are obtained from the central KDS terminology service (SU-TermServ): [https://mii-termserv.de/](https://mii-termserv.de/).

The module publishes three kinds of CodeSystems:

* **Catalogues** — [questionnaire catalogue](CodeSystem-mii-cs-pro-questionnaire-catalogue.md) and [score catalogue](CodeSystem-mii-cs-pro-score-catalogue.md): the registry of instruments and scores this module governs.
* **Instrument answer scales** — one CodeSystem per instrument whose answers the MII controls (BDI-II, DASS-21, EORTC QLQ-C30, EQ-5D, ISR, MIDOS2, PHQ-15, PRO-CTCAE, SSD-12, WHODAS 2.0). Answer concepts carry German and English designations and their `itemWeight` scoring properties.
* **A [LOINC supplement](CodeSystem-mii-cs-pro-loinc-supplement.md)** — the validated German answer wordings (PHQ-D; PROMIS German via PHO/CPCOR) as designations on the LOINC answer codes the module uses. It travels with the package, so terminology servers loading this IG can serve the instrument-validated wordings; it claims no translation authority over LOINC.

The complete list with content is on the [artifacts page](artifacts.md).

