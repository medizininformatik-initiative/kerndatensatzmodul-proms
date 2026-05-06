# Module Description - MII IG PRO v2026.3.0

## Module Description

Das Modul "PROs, PROMs und abgeleitete Metriken" der Medizininformatik-Initiative standardisiert die Erfassung und Auswertung von patientenberichteten Gesundheitsdaten (Patient-Reported Outcomes) durch FHIR-basierte Spezifikationen. Es werden Vorgaben zur Fragebogengestaltung im Hinblick auf verschiedene Anwendungsfelder gemacht (Darstellung, Erfassung, Berechnung, Umwandlung von Fragebogeninhalten in andere FHIR-Ressourcen). Außerdem werden häufig genutzte validierte Fragebögen wie PHQ-9, PROMIS-29, EQ-5D-5L und EORTC QLQ-C30 zentral zur Nutzung für die Datenerfassung oder als gemeinsames Harmonisierungsmapping bereitgestellt, sowie Strategien zur instrumentenunabhängigen Sekundärdatennutzung erläutert.

### Aktuelle Implementierung (Kommentierungsversion 2026)

#### Bereits implementierte PRO-Instrumente

* **PHQ-9** – Vollständige Implementierung mit Scoring und populatable-Capability
* **EQ-5D-5L** – Mehrere Varianten (minimal, displayable, collectable, coded) mit vollständiger Score-Berechnung
* **PROMIS-29** – Grundstruktur implementiert, Multi-Domain-Scoring in Arbeit
* **PROMIS Depression SF 4a** – Basis-Implementation vorhanden
* **PROMIS Cognitive Function SF 4a** – Basis-Implementation vorhanden
* **EORTC QLQ-C30** – Scoring-Methodologie und Terminologie implementiert
* **BDI-II** – aus Lizenzgründen nicht darstellbar, aber Scoring mit ordinalValue (SDC STU3) funktionsfähig

#### Metadata-Only Referenzen (Lizenzeinschränkungen)

* **HADS** – Hospital Anxiety and Depression Scale (nicht displayable)
* **EPDS** – Edinburgh Postnatal Depression Scale (nur Metadaten)
* **CES-D** – Center for Epidemiologic Studies Depression Scale (nur Metadaten)
* **K6** – Kessler Psychological Distress Scale (nur Metadaten)

### Zukünftige Entwicklungen

#### 2026 – Phase 1: CQL-Integration und Abgeleitete Metriken

##### CQL-basierte Score-Berechnung

* Migration von FHIRPath zu CQL für komplexe Berechnungen
* Individual- und populationsbasierte Score-Auswertung
* Measure/MeasureReport-Resources für Qualitätsindikatoren

##### Abgeleitete Metriken

* **Klinische Cut-offs**: Schweregrad-Kategorisierung (mild, moderat, schwer)
* **MID/MCID**: Minimal Important Difference / Minimal Clinically Important Difference
* **Reliable Change Index (RCI)**: Statistische Signifikanz von Veränderungen
* **Populationsnormwerte**: Alters- und geschlechtsspezifische Referenzen
* **Perzentilränge**: Einordnung im Populationskontext

##### Cross-Instrument Score Mapping

* PHQ-9 zu PROMIS Depression T-Score Konversion
* BDI-II zu PROMIS Depression Mapping
* Validierte FHIR-konforme Konversionsalgorithmen

#### 2026 – Phase 2: SDC STU4 Features (nach Ballotierung)

##### Migration zu SDC STU4

* Migration von ordinalValue zu itemWeight nach STU4-Finalisierung
* FHIRPath `.weight()` Funktion statt `.ordinal()`
* Erweiterte SDC-Features nutzen 
* z.B. Questionnaire.version plus versionAlgorithm
 

#### 2027 – Phase 3: Item-basierte Architektur

##### Item Bank Management

* MII-definierte Item-Kataloge mit konsistenten linkIds
* Item-übergreifende Score-Berechnung
* Flexible Fragebogen-Komposition aus Item-Pool

##### Advanced SDC Capabilities

* **Adaptive Questionnaires**: Computer Adaptive Testing (CAT) Support
* **Form Assembly**: Dynamische Fragebogen-Zusammenstellung
* **Advanced Rendering**: Erweiterte UI-Features
* **Data Extraction**: Verbesserte Extraction-Patterns

##### Modular Questionnaire Design

* Wiederverwendbare Item-Gruppen
* Domain-übergreifende Item-Sharing
* Versionsverwaltung auf Item-Ebene

##### Computer Adaptive Testing (CAT)

* Adaptive Item-Auswahl basierend auf Antworten
* Item Response Theory (IRT) Integration
* Optimierte Test-Länge bei gleicher Präzision

### Voraussetzungen für Bearbeitung

#### Für jedes neue PRO-Instrument

1. **Relevante Publikationen**
* Entwicklungspublikation
* Validierungspublikationen (deutsche Population)
* Übersetzungspublikationen
* Modifikationspublikationen

1. **Lizenzklärung**
* Displayable-Rechte
* Kommerzielle Nutzung
* Modifikationsrechte
* Übersetzungsrechte

1. **Technische Dokumentation**
* Scoring-Algorithmen
* Normwerte (populationsspezifisch)
* Interpretationsrichtlinien
* Minimal Important Differences

