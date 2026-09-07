# PRO Library - MII IG PRO v2027.0.0-ballot.rc3

* [**Table of Contents**](toc.md)
* **PRO Library**

## PRO Library

Die PRO-Bibliothek ist die strukturierte Sammlung der Patient-Reported Outcome Measures (PROMs) des Moduls, standardisiert für das deutsche Gesundheitswesen. Jedes Instrument folgt derselben Architektur — kanonische linkIds, Antwortskalen mit ordinalen Gewichten, Score-Item plus ObservationDefinition — und deklariert seine [Capabilities](questionnaire-capabilities.md) (displayable, collectable, calculatable, extractable, populatable, domain-aligned) maschinenlesbar in der Questionnaire-Ressource selbst; die Instrumentenseiten benennen sie im Einzelnen. Wie und von wem Scores berechnet werden, steht auf der [Scoring](scoring.md)-Seite.

### Instrumente

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| [PHQ-9](phq-9.md) | Depressionsscreening | 9 | en (de: PHQ-D) | Summe 0–27 | frei (Pfizer, public domain) |
| [PHQ-15](phq-15.md) | Somatische Symptomlast | 15 | en (de: PHQ-D) | Summe 0–30 | frei (Pfizer, public domain) |
| [GAD-7](gad-7.md) | Generalisierte Angst | 7 | en (de: PHQ-D) | Summe 0–21 | frei (Pfizer, public domain) |
| [DASS-21](dass-21.md) | Depression, Angst, Stress | 21 | en (de: Nilges & Essau) | 3 Subskalen-Summen | frei (public domain) |
| [BDI-II](bdi-ii.md) | Depressionsinventar | 21 | de | Summe 0–63 | kommerziell (Pearson) — nur Daten + Scoring, nicht anzeigbar |
| [EQ-5D-5L](eq-5d-5l.md) | Gesundheitsbezogene Lebensqualität | 5 + VAS | de | [Index, VAS, Profil](eq-5d-5l-scores.md)(CQL) | Registrierung (EuroQol) |
| [PROMIS-29](promis-29.md) | Multi-Domänen-HRQoL-Profil | 29 | en (de: CPCOR) | Domänen-Roh- + T-Scores | Nutzungsanfrage via[CPCOR](promis.md) |
| [PROMIS-16](promis-16.md) | Ultrakurzes HRQoL-Profil | 16 | en (de: CPCOR) | nur Datenerfassung; PROPr als CQL geplant | Nutzungsanfrage via CPCOR |
| [PROMIS Depression SF 4a](promis-depression.md) | Depressions-Kurzform | 4 | en (de: CPCOR) | Roh- + T-Score | Nutzungsanfrage via CPCOR |
| [PROMIS Cognitive Function SF 4a](promis-cognitive-function.md) | Kognitive Funktion | 4 | en (de: CPCOR) | Roh- + T-Score | Nutzungsanfrage via CPCOR |
| [EORTC QLQ-C30](eortc-qlq-c30.md) | Onkologische Lebensqualität | 30 | en (de: EORTC) | [15 Subskalen, 0–100](eortc-qlq-c30-scoring.md) | Registrierung (EORTC) |
| [PRO-CTCAE](pro-ctcae.md) | Symptomatische Nebenwirkungen (Item-Bibliothek) | 124 (Bibliothek) | en+de (NCI) | Composite Grade + ACS (CQL) | frei (NCI) |
| [Onkologisches Basisscreening](proms-onkologisches-basisscreening.md) | PRO-CTCAE-Onkologie-Subset | 23 | de (NCI) | Composite Grade (CQL) | frei (NCI) |
| [MIDOS2](midos2.md) | Palliatives Symptomscreening | 13 | de | Symptomsumme 0–33 | DGP, frei für die klinische Nutzung |
| [WHODAS 2.0 (12 Items)](whodas.md) | Funktionsfähigkeit und Beeinträchtigung | 12 | en (de: PCOR-MII) | Einfache Summe 0–48 | WHO-Lizenz für eDC-Einsatz — siehe Seite |
| [SCOFF](scoff.md) | Essstörungsscreening | 5 | en (de: PCOR-MII) | Summe 0–5 | frei |
| [Whiteley-7](wi-7.md) | Krankheitsangst | 7 | en (de: PCOR-MII) | Summe 0–7 | frei |
| [PC-PTSD](pc-ptsd.md) | PTBS-Screening (4 Items) | 4 | de (PCOR-MII) | Summe 0–4 | frei |
| [SSD-12](ssd-12.md) | Somatische Belastungsstörung, B-Kriterien | 12 | de | Summe 0–48 | frei |
| [ISR-Z](isr-z.md) | Zwangs-Subskala (ISR) | 3 | de | **Mittelwert**0–4 | frei |
| [EURONET-SOMA](euronet-soma.md) | Somatische Kern-Items | 2 | en (de: PCOR-MII) | keiner (Einzelitems) | frei |

### Metadata-only-Referenzen

[HADS, EPDS, CES-D und K6](minimal-reference-questionnaires.md) sind als reine Metadaten-Questionnaires abgebildet: Die Lizenzlage erlaubt die Auslieferung der Itemtexte nicht, die Metadaten verankern aber Identifikatoren, Score-Semantik und Mappings.

### Lizenzhinweis

Die Lizenzspalte ist ein Wegweiser, keine Rechtsauskunft: Die verbindliche Aussage trägt jede Instrumentenseite, die maschinenlesbare Fassung das `copyright`-Element des jeweiligen Questionnaire. Die MII-eigenen FHIR-Strukturen stehen unter CC0; die Itemtexte Dritter behalten ihre eigenen Bedingungen.

