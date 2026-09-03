# Minimal Reference Questionnaires - MII IG PRO v2026.7.0

* [**Table of Contents**](toc.md)
* [**PRO Library**](pro-library.md)
* **Minimal Reference Questionnaires**

## Minimal Reference Questionnaires

### Übersicht

Diese Sektion enthält minimale Referenz-Implementierungen von PRO-Instrumenten, die aufgrund von Lizenzbestimmungen nicht vollständig implementiert werden können.

### Implementierte Questionnaires

#### HADS (Hospital Anxiety and Depression Scale)

* **SNOMED CT**: `273524006 |Hospital anxiety and depression scale (assessment scale)|`
* **Status**: Metadata-only, nicht displayable
* **Canonical URL**: `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-hads`

#### EPDS (Edinburgh Postnatal Depression Scale)

* **SNOMED CT**: `273441006 |Edinburgh postnatal depression scale (assessment scale)|`
* **Status**: Metadata-only, nicht displayable
* **Canonical URL**: `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-epds`

#### CES-D (Center for Epidemiological Studies Depression Scale)

* **Status**: Metadata-only, nicht displayable
* **Canonical URL**: `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-ces-d`

#### K6 (Kessler Psychological Distress Scale)

* **Status**: Metadata-only, nicht displayable
* **Canonical URL**: `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-k6`

### Capabilities

Die minimal reference questionnaires haben folgende Capability-Einstellungen:

#### Standard-Einstellungen (EPDS, CES-D, K6):

* `displayable = false`
* `collectable = false`
* `calculatable = false`
* `extractable = false`
* `domainAligned = true`

#### Sonderfall HADS:

* `displayable = false`
* `collectable = false`
* `calculatable = false`
* `extractable = true` (Framework unterstützt Extraktion für externe Scoring-Systeme)
* `domainAligned = true`

### Hinweise zur Nutzung

**Lizenzbestimmungen**: Diese Implementierungen enthalten nur Metadaten und sind für produktive Nutzung nicht geeignet. Für vollständige Implementierungen sind entsprechende Lizenzen von den Rechteinhabern einzuholen.

**Framework-Zuordnung**: Für HADS, EPDS, CES-D und K6 muss noch geklärt werden, ob diese eigenständige Instrumente sind oder Teil größerer PRO-Frameworks.

### Architektonische Überlegungen

Diese minimalen Implementierungen dienen als:

* **Placeholder** für zukünftige vollständige Implementierungen
* **Catalog-Einträge** für systematische PRO-Übersichten
* **Referenzen** für Interoperabilität und Mapping-Zwecke

