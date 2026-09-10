<!-- markdownlint-disable MD041 -->

The logical data model of the **PRO** module describes the domain dataset independently of its concrete FHIR representation — the shape a clinician or study designer thinks in, before profiles enter the picture.

### The model

**[MII_LM_PRO](StructureDefinition-mii-lm-pro.html)** structures the domain into four top-level groups, mirroring the module's core workflow:

| Group | Cardinality | Becomes in FHIR |
|---|---|---|
| **Fragebogen** — the instrument: name, abbreviation, version, internal ID, item bank with codings, answer scales | 1..* | [Questionnaire](profiles.html) |
| **AusgefuellterFragebogen** — a completed instance: answers, subject, timing | 0..* | QuestionnaireResponse |
| **Score** — computed values: raw scores, T-scores, reference ranges | 0..* | Observation + ObservationDefinition |
| **Domaene** — classification by health domain (depression, HRQoL, …) | 0..* | the [domain codings](domains.html) |

Element names are deliberately **German** — the model is the shared language with the clinical domain experts; the FHIR mapping to the English resource world is carried by the model's own mapping section and realised by the [profiles](profiles.html).

### How to read it

- The **[artifact page](StructureDefinition-mii-lm-pro.html)** renders the full element tree with cardinalities, types and definitions.
- The **[UML diagrams](uml-diagrams.html)** show the same model graphically, including the workflow views.
- **[Datasets and Descriptions](datasets-and-descriptions.html)** connects the model to the per-instrument datasets.

The logical model is documentation-first: implementers validate against the [profiles](profiles.html), not against the model.
