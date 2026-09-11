# Extensions - MII IG PRO v2027.0.0-ballot.1

* [**Table of Contents**](toc.md)
* **Extensions**

## Extensions

### Extensions

This page lists the FHIR extensions defined by the **PRO** module (naming convention `MII_EX_<Module>_<Name>`). Extensions carry information the base resources and profiles cannot express; the profiles that use them are on the [Profiles](profiles.md) page.

The module defines two extensions:

* **[Questionnaire Capabilities](StructureDefinition-mii-ex-pro-questionnaire-capabilities.md)** — declares which capability combination a questionnaire variant serves (**displayable, collectable, populatable, calculatable, extractable**). The capability architecture behind it is explained under [Questionnaire-Capabilities](questionnaire-capabilities.md).
* **[Score Health Correlation](StructureDefinition-mii-ex-pro-score-score-health-correlation.md)** — links a score definition to the [health domains](domains.md) it measures, enabling cross-instrument queries per domain.

