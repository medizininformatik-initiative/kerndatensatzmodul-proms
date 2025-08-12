## {{page-title}}

## Aktuelle Implementierung (Kommentierungsversion 2026)

### Bereits implementierte PRO-Instrumente
- **PHQ-9** - Vollständige Implementierung mit Scoring und populatable-Capability ✓
- **EQ-5D-5L** - Mehrere Varianten (minimal, displayable, collectable, coded) mit vollständiger Score-Berechnung ✓
- **PROMIS-29** - Grundstruktur implementiert, Multi-Domain-Scoring in Arbeit
- **PROMIS Depression SF 4a** - Basis-Implementation vorhanden
- **EORTC QLQ-C30** - Scoring-Methodologie und Terminologie implementiert
- **BDI-II** - aus Lizenzgründen nicht darstellbar, abre Scoring mit ordinalValue (SDC STU3) funktionsfähig

### Metadata-Only Referenzen (Lizenzeinschränkungen)
- **HADS** - Hospital Anxiety and Depression Scale (nicht displayable)
- **EPDS** - Edinburgh Postnatal Depression Scale (nur Metadaten)
- **CES-D** - Center for Epidemiologic Studies Depression Scale (nur Metadaten)
- **K6** - Kessler Psychological Distress Scale (nur Metadaten)


## Zukünftige Entwicklungen

### 2026 - Phase 1: CQL-Integration & Abgeleitete Metriken

#### CQL-basierte Score-Berechnung
- Migration von FHIRPath zu CQL für komplexe Berechnungen
- Individual- und populationsbasierte Score-Auswertung
- Measure/MeasureReport-Resources für Qualitätsindikatoren

#### Abgeleitete Metriken
- **Klinische Cut-offs**: Schweregrad-Kategorisierung (mild, moderat, schwer)
- **MID/MCID**: Minimal Important Difference / Minimal Clinically Important Difference
- **Reliable Change Index (RCI)**: Statistische Signifikanz von Veränderungen
- **Populationsnormwerte**: Alters- und geschlechtsspezifische Referenzen
- **Perzentilränge**: Einordnung im Populationskontext

#### Cross-Instrument Score Mapping
- PHQ-9 → PROMIS Depression T-Score Konversion
- BDI-II → PROMIS Depression Mapping
- Validierte FHIR-konforme Konversionsalgorithmen 

### 2026 - Phase 2: SDC STU4 Features (nach Ballotierung)

#### Migration zu SDC STU4
- Migration von ordinalValue zu itemWeight nach STU4-Finalisierung
- FHIRPath `.weight()` Funktion statt `.ordinal()`
- Erweiterte SDC-Features nutzen
    - z.B.Questionnaire.version plus versionAlgorithm 



### 2027 - Phase 3: Item-basierte Architektur

#### Item Bank Management
- MII-definierte Item-Kataloge mit konsistenten linkIds
- Item-übergreifende Score-Berechnung
- Flexible Fragebogen-Komposition aus Item-Pool

#### Advanced SDC Capabilities
- **Adaptive Questionnaires**: Computer Adaptive Testing (CAT) Support
- **Form Assembly**: Dynamische Fragebogen-Zusammenstellung
- **Advanced Rendering**: Erweiterte UI-Features
- **Data Extraction**: Verbesserte Extraction-Patterns

#### Modular Questionnaire Design
- Wiederverwendbare Item-Gruppen
- Domain-übergreifende Item-Sharing
- Versionsverwaltung auf Item-Ebene

#### Computer Adaptive Testing (CAT)
- Adaptive Item-Auswahl basierend auf Antworten
- Item Response Theory (IRT) Integration
- Optimierte Test-Länge bei gleicher Präzision


## Voraussetzungen für Bearbeitung

### Für jedes neue PRO-Instrument
1. **Relevante Publikationen**
   - Entwicklungspublikation
   - Validierungspublikationen (deutsche Population)
   - Übersetzungspublikationen
   - Modifikationspublikationen

2. **Lizenzklärung**
   - Displayable-Rechte
   - Kommerzielle Nutzung
   - Modifikationsrechte
   - Übersetzungsrechte

3. **Technische Dokumentation**
   - Scoring-Algorithmen
   - Normwerte (populationsspezifisch)
   - Interpretationsrichtlinien
   - Minimal Important Differences

## Generische Profile (Basis-Infrastruktur)

### Bereits implementiert ✓
- **MII_PR_PRO_Questionnaire** - Basis-Profil mit Capability-Extensions
- **MII_PR_PRO_QuestionnaireResponse** - Response-Profil
- **MII_PR_PRO_Score_Instance** - Score-Observation-Profil
- **MII_PR_PRO_Score_Blueprint** - ObservationDefinition-Profil

### Geplante Erweiterungen
- **MII_PR_PRO_ItemBank** - Item-Repository-Management
- **MII_PR_PRO_ScoreMapping** - Cross-Instrument-Mapping-Profile
- **MII_PR_PRO_CQL_Library** - CQL-Bibliotheken für Berechnungen
- **MII_PR_PRO_Measure** - Qualitätsindikatoren-Definition

