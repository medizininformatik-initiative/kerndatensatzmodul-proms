<!-- markdownlint-disable MD041 -->
<!-- Split from the former combined search-parameters-and-operations.md per the
     TF-KDS-agreed menu structure (one page per artifact type).
     German mirror: input/translations/de/pagecontent/search-parameters.md. -->


### Search Parameters

This page lists the module-specific FHIR search parameters of the
**PRO** module (naming convention `MII_SP_<Module>_<Name>`), where
defined. Cross-module search parameters are defined by the Meta module.

The module defines seven search parameters for **catalogue queries** —
finding instruments and score definitions by their properties rather than
by id:

| Resource | Parameter | Finds |
|---|---|---|
| Questionnaire | [capabilities](SearchParameter-mii-sp-pro-questionnaire-capabilities.html) | variants by capability (e.g. all *calculatable* questionnaires) |
| ObservationDefinition | [code](SearchParameter-mii-sp-pro-observationdefinition-code.html) | score definitions by score code |
| ObservationDefinition | [health-correlation](SearchParameter-mii-sp-pro-observationdefinition-health-correlation.html) | scores by [health domain](domains.html) |
| ObservationDefinition | [unit](SearchParameter-mii-sp-pro-observationdefinition-unit.html) | scores by result unit |
| ObservationDefinition | [permitted-datatype](SearchParameter-mii-sp-pro-observationdefinition-permitted-datatype.html) | scores by result datatype |
| ObservationDefinition | [preferred-report-name](SearchParameter-mii-sp-pro-observationdefinition-preferred-report-name.html) | scores by report name |
| ObservationDefinition | [interval-category](SearchParameter-mii-sp-pro-observationdefinition-interval-category.html) | scores by reference-interval category |

The [CapabilityStatement](capability-statements.html) declares which of them
a conformant server must support.
