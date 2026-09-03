# Minimal Reference Questionnaires - MII IG PRO v2026.7.0

* [**Table of Contents**](toc.md)
* [**PRO Library**](pro-library.md)
* **Minimal Reference Questionnaires**

## Minimal Reference Questionnaires

### Overview

This section contains minimal reference implementations of PRO instruments that cannot be fully implemented due to licensing restrictions.

### Implemented Questionnaires

#### HADS (Hospital Anxiety and Depression Scale)

* **SNOMED CT**: `273524006 |Hospital anxiety and depression scale (assessment scale)|`
* **Status**: Metadata-only, not displayable
* **Canonical URL**: `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-hads`

#### EPDS (Edinburgh Postnatal Depression Scale)

* **SNOMED CT**: `273441006 |Edinburgh postnatal depression scale (assessment scale)|`
* **Status**: Metadata-only, not displayable
* **Canonical URL**: `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-epds`

#### CES-D (Center for Epidemiological Studies Depression Scale)

* **Status**: Metadata-only, not displayable
* **Canonical URL**: `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-ces-d`

#### K6 (Kessler Psychological Distress Scale)

* **Status**: Metadata-only, not displayable
* **Canonical URL**: `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-k6`

### Capabilities

The minimal reference questionnaires have the following capability settings:

#### Default Settings (EPDS, CES-D, K6):

* `displayable = false`
* `collectable = false`
* `calculatable = false`
* `extractable = false`
* `domainAligned = true`

#### Special Case HADS:

* `displayable = false`
* `collectable = false`
* `calculatable = false`
* `extractable = true` (framework supports extraction for external scoring systems)
* `domainAligned = true`

### Usage Notes

**Licensing**: These implementations contain only metadata and are not suitable for production use. For full implementations, appropriate licenses must be obtained from the respective rights holders.

**Framework Classification**: For HADS, EPDS, CES-D, and K6, it remains to be clarified whether these are standalone instruments or part of larger PRO frameworks.

### Architectural Considerations

These minimal implementations serve as:

* **Placeholders** for future full implementations
* **Catalog entries** for systematic PRO overviews
* **References** for interoperability and mapping purposes

