<!-- markdownlint-disable MD041 -->

### Introduction

This specification describes the FHIR representation of the Core Dataset (CDS) extension module **PROs, PROMs and Derived Metrics** of the Medical Informatics Initiative (MII). It standardises the collection, scoring and secondary use of patient-reported health data for the German healthcare system, enabling cross-site comparability of PRO data through uniform FHIR-based implementations.

The module is primarily based on the [FHIR Structured Data Capture (SDC)](https://build.fhir.org/ig/HL7/sdc/) specification and covers the complete workflow **Questionnaire → QuestionnaireResponse → score Observation** — from validated instrument definitions through capture to computed, traceable scores.

<!-- Version via template variable, never a literal: a hardcoded version table
     went stale here once already (it said 2026.2.0 while 2026.7.0 shipped). -->

| Publication |               |
|-------------|---------------|
| Version     | {{site.data.fhir.igVer}} (CalVer `YYYY.n.n`) |
| Status      | active        |
| Realm       | DE            |

### Scope

The [PRO Library](pro-library.html) currently carries **more than twenty instruments** — from the PHQ family, EQ-5D-5L, PROMIS profiles and EORTC QLQ-C30 through PRO-CTCAE, MIDOS2 and WHODAS 2.0 to the PCOR-MII PSS screening set. Every instrument follows the same architecture: canonical item identities ([ID systematics](id-systematics.html)), answer scales with ordinal weights, machine-readable [capabilities](questionnaire-capabilities.html), and a score pipeline along the [three scoring channels](scoring.html).

Four instruments (HADS, EPDS, CES-D, K6) are represented as [metadata-only references](minimal-reference-questionnaires.html) for licensing reasons.

### Target audience

<div class="ig-highlight ig-highlight-blue">
<h5>Software vendors and implementers</h5>
<p>Form renderers, EHR/KIS integrations, ePRO apps, ETL pipelines and scoring services.<br/>
→ start with the <a href="implementer-guidance.html">Implementer Guidance</a> — five rules every implementation must respect.</p>
</div>

<div class="ig-highlight ig-highlight-green">
<h5>Studies and researchers</h5>
<p>Instrument selection, licensing tiers, and what the collected data means downstream.<br/>
→ start with the <a href="researcher-guidance.html">Researcher Guidance</a>.</p>
</div>

### Contents

- **[Guidance](guidance.html)** — getting started, use cases, ID systematics, capabilities, and the 2027 concepts ([CAT](cat.html), [national questionnaire server](national-questionnaire-server.html), [derived metrics](derived-metrics.html)).
- **[PRO Library](pro-library.html)** — all instruments with focus, items, language, scoring and licence at a glance.
- **[Scoring](scoring.html)** — client-side, server-side (CQL) and externally pre-computed scores, including the medical-device boundary.
- **Conformance** — the KDS-wide rules (requirements language, Must Support, missing data) are maintained centrally by the [Meta module](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Conformance); module-specific [Security and Privacy](security-and-privacy.html) considerations are part of this guide.
- **[Profiles](profiles.html)** and the further [artifacts](artifacts.html) — the normative FHIR resources.
- **[Changelog](changes.html)** — all versions including the 2027.0.0-ballot preparation.

### Authors and contact

* Thomas Debertshäuser
* Mathias Rose
* Fabian Praßer
* Karoline Buckow
* Franziska Klepka

Feedback and questions: via the [GitHub repository](https://github.com/medizininformatik-initiative/kerndatensatzmodul-proms/issues) or the MII channels.

The MII-authored FHIR structures of this module are published under CC0; third-party instrument texts keep their own licence terms — see the licence column of the [PRO Library](pro-library.html) and the `copyright` element of each resource.
