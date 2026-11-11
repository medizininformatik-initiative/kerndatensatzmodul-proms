The abstract Questionnaire profile is the basis for all PRO questionnaires. It inherits from the [SDC Questionnaire](https://hl7.org/fhir/uv/sdc/STU3/StructureDefinition-sdc-questionnaire.html) profile and extends it with MII-specific capabilities and extensions. Concrete instrument profiles (PHQ-9, EQ-5D-5L, PROMIS-29 and so on) must inherit from this profile and add instrument-specific constraints.

**Core elements:**
- A mandatory URL for unambiguous identification
- Status and version for lifecycle management
- Capability extensions governing behaviour (displayable, collectable, calculatable, extractable)
- SDC extensions for advanced functionality (rendering, calculation, extraction)

**Example** — a concrete questionnaire inheriting from this abstract profile: [PHQ-9](Questionnaire-mii-qst-pro-phq-9.html).
