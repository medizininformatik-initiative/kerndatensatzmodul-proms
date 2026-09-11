# Search Parameters - MII IG PRO v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* **Search Parameters**

## Search Parameters

### Search Parameters

This page lists the module-specific FHIR search parameters of the **PRO** module (naming convention `MII_SP_<Module>_<Name>`), where defined. Cross-module search parameters are defined by the Meta module.

The module defines seven search parameters for **catalogue queries** — finding instruments and score definitions by their properties rather than by id:

| | | |
| :--- | :--- | :--- |
| Questionnaire | [capabilities](SearchParameter-mii-sp-pro-questionnaire-capabilities.md) | variants by capability (e.g. all**calculatable**questionnaires) |
| ObservationDefinition | [code](SearchParameter-mii-sp-pro-observationdefinition-code.md) | score definitions by score code |
| ObservationDefinition | [health-correlation](SearchParameter-mii-sp-pro-observationdefinition-health-correlation.md) | scores by[health domain](domains.md) |
| ObservationDefinition | [unit](SearchParameter-mii-sp-pro-observationdefinition-unit.md) | scores by result unit |
| ObservationDefinition | [permitted-datatype](SearchParameter-mii-sp-pro-observationdefinition-permitted-datatype.md) | scores by result datatype |
| ObservationDefinition | [preferred-report-name](SearchParameter-mii-sp-pro-observationdefinition-preferred-report-name.md) | scores by report name |
| ObservationDefinition | [interval-category](SearchParameter-mii-sp-pro-observationdefinition-interval-category.md) | scores by reference-interval category |

The [CapabilityStatement](capability-statements.md) declares which of them a conformant server must support.

