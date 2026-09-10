<!-- markdownlint-disable MD041 -->
<!-- Split from the former combined profiles-and-extensions.md per the TF-KDS-agreed
     menu structure (one page per artifact type).
     German mirror: input/translations/de/pagecontent/extensions.md. -->


### Extensions

This page lists the FHIR extensions defined by the **PRO** module
(naming convention `MII_EX_<Module>_<Name>`). Extensions carry information the
base resources and profiles cannot express; the profiles that use them are on
the [Profiles](profiles.html) page.

The module defines two extensions:

* **[Questionnaire Capabilities](StructureDefinition-mii-ex-pro-questionnaire-capabilities.html)**
  — declares which capability combination a questionnaire variant serves
  (*displayable, collectable, populatable, calculatable, extractable*). The
  capability architecture behind it is explained under
  [Questionnaire-Capabilities](questionnaire-capabilities.html).
* **[Score Health Correlation](StructureDefinition-mii-ex-pro-score-score-health-correlation.html)**
  — links a score definition to the [health domains](domains.html) it
  measures, enabling cross-instrument queries per domain.
