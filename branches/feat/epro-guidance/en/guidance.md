# Guidance - MII IG PRO v2027.0.0-ballot.2

* [**Table of Contents**](toc.md)
* **Guidance**

## Guidance

This section collects the domain guidance for implementing and using the **PRO** module.

### General Implementation Guidance

* **[Datasets and Descriptions](logical-models.md)** — the module's data elements, described as logical models. (This entry shares its target with **Artifacts → Logical Models**; neither Artifacts-Summary anchor is usable as a link target — see [`docs/page-structure.md`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-proms/blob/main/docs/page-structure.md) in this repository.)
* **[UML Diagrams](uml-diagrams.md)** — visual representation of the data models and their relationships.

### Audience-Specific Guidance

* **[Guidance for Researchers](researcher-guidance.md)** — for researchers using the module's data.
* **[Guidance for Implementers](implementer-guidance.md)** — technical guidance for DIC implementers.
* **[Guidance for ePRO Systems](epro-guidance.md)** — for vendors of patient apps, portals, form renderers and form servers: collection lifecycle, collection context and what a QuestionnaireResponse must carry.

The PRO module standardises **patient-reported** outcomes: instruments the patients answer themselves. Its delimitations: clinician-reported and observer-rated instruments are out of scope; oncology-specific instruments beyond the PRO-CTCAE base screening belong to the dedicated MII Oncology module; score **interpretation** (cut-offs, MID/MCID, decision support) arrives with the CQL roadmap. Which use case a questionnaire serves is governed by its capability combination — see [Questionnaire-Capabilities](questionnaire-capabilities.md).

-------

For the KDS-wide conformance requirements see the [Conformance rules of the Meta module](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Conformance); for the technical artifacts see [Profiles](profiles.md).

### For Adopters

**ePRO vendors** — patient apps and portals, form renderers, form servers: start with the [Guidance for ePRO Systems](epro-guidance.md); it describes the collection lifecycle and what a QuestionnaireResponse must carry.

**Data integration centres and KIS integrations** — ETL pipelines, scoring services: start with the [Implementer Guidance](implementer-guidance.md); it names the five rules every implementation must respect and what each system role consumes and produces.

**Studies and research projects** — instrument selection, licensing tiers, and what the collected data means: start with the [Researcher Guidance](researcher-guidance.md).

### Module Documentation

* [Use Cases](use-cases.md) · [Module Description](module-description.md) · [Context within the MII](project-context.md)
* [Datasets and Descriptions](datasets-and-descriptions.md) · [Technical Implementation](technical-implementation.md) · [Workflows](workflows.md)
* [ID Systematics](id-systematics.md) · [Domains](domains.md) · [Terminology Strategies](terminology-strategies.md) · [Questionnaire Capabilities](questionnaire-capabilities.md) · [Computer-Adaptive Testing](cat.md) · [National Questionnaire Server](national-questionnaire-server.md)
* [Scoring](scoring.md) · [Domain-based Scoring](domain-based-scoring.md) · [Domains](domains.md) · [Cross-Instrument Mappings](cross-instrument-mappings.md) · [Derived Metrics](derived-metrics.md)
* [Validation](validation.md) · [References](references.md)

