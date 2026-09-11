# Home - MII IG PRO v2027.0.0-ballot.rc5

* [**Table of Contents**](toc.md)
* **Home**

## Home

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ImplementationGuide/mii-ig-pro | *Version*:2027.0.0-ballot.rc5 |
| Active as of 2026-09-11 | *Computable Name*:MII_IG_PRO |

### Introduction

This specification describes the FHIR representation of the Core Dataset (CDS) extension module **PROs, PROMs and Derived Metrics** of the Medical Informatics Initiative (MII). It standardises the collection, scoring and secondary use of patient-reported health data for the German healthcare system, enabling cross-site comparability of PRO data through uniform FHIR-based implementations.

The module is primarily based on the [FHIR Structured Data Capture (SDC)](https://build.fhir.org/ig/HL7/sdc/) specification and covers the complete workflow **Questionnaire → QuestionnaireResponse → score Observation** — from validated instrument definitions through capture to computed, traceable scores.

| | |
| :--- | :--- |
| Version | 2027.0.0-ballot.rc5 (CalVer`YYYY.n.n`) |
| Status | active |
| Realm | DE |

### Scope

The [PRO Library](pro-library.md) currently carries **more than twenty instruments** — from the PHQ family, EQ-5D-5L, PROMIS profiles and EORTC QLQ-C30 through PRO-CTCAE, MIDOS2 and WHODAS 2.0 to the PCOR-MII PSS screening set. Every instrument follows the same architecture: canonical item identities ([ID systematics](id-systematics.md)), answer scales with ordinal weights, machine-readable [capabilities](questionnaire-capabilities.md), and a score pipeline along the [three scoring channels](scoring.md).

Four instruments (HADS, EPDS, CES-D, K6) are represented as [metadata-only references](minimal-reference-questionnaires.md) for licensing reasons.

### Target audience

##### Software vendors and implementers

Form renderers, EHR/KIS integrations, ePRO apps, ETL pipelines and scoring services.
 → start with the [Implementer Guidance](implementer-guidance.md) — five rules every implementation must respect.

##### Studies and researchers

Instrument selection, licensing tiers, and what the collected data means downstream.
 → start with the [Researcher Guidance](researcher-guidance.md).

### Contents

* **[Guidance](guidance.md)** — getting started, use cases, ID systematics, capabilities, and the 2027 concepts ([CAT](cat.md), [national questionnaire server](national-questionnaire-server.md), [derived metrics](derived-metrics.md)).
* **[PRO Library](pro-library.md)** — all instruments with focus, items, language, scoring and licence at a glance.
* **[Scoring](scoring.md)** — client-side, server-side (CQL) and externally pre-computed scores, including the medical-device boundary.
* **Conformance** — the KDS-wide rules (requirements language, Must Support, missing data) are maintained centrally by the [Meta module](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Conformance); module-specific [Security and Privacy](security-and-privacy.md) considerations are part of this guide.
* **[Profiles](profiles.md)** and the further [artifacts](artifacts.md) — the normative FHIR resources.
* **[Changelog](changes.md)** — all versions including the 2027.0.0-ballot preparation.

### Authors and contact

* Thomas Debertshäuser
* Mathias Rose
* Fabian Praßer
* Karoline Buckow
* Franziska Klepka

Feedback and questions: via the [GitHub repository](https://github.com/medizininformatik-initiative/kerndatensatzmodul-proms/issues) or the MII channels.

The MII-authored FHIR structures of this module are published under CC0; third-party instrument texts keep their own licence terms — see the licence column of the [PRO Library](pro-library.md) and the `copyright` element of each resource.

