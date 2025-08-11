## {{page-title}}

## Aktuelle Implementierung (2025)

### Bereits implementierte PRO-Instrumente
- **PHQ-9** - Vollständige Implementierung mit Scoring und populatable-Capability ✓
- **EQ-5D-5L** - Mehrere Varianten (minimal, displayable, collectable, coded) mit vollständiger Score-Berechnung ✓
- **PROMIS-29** - Grundstruktur implementiert, Multi-Domain-Scoring in Arbeit
- **PROMIS Depression SF 4a** - Basis-Implementation vorhanden
- **EORTC QLQ-C30** - Scoring-Methodologie und Terminologie implementiert
- **BDI-II** - Scoring mit ordinalValue (SDC STU3) funktionsfähig

### Metadata-Only Referenzen (Lizenzeinschränkungen)
- **HADS** - Hospital Anxiety and Depression Scale (nicht displayable)
- **EPDS** - Edinburgh Postnatal Depression Scale (nur Metadaten)
- **CES-D** - Center for Epidemiologic Studies Depression Scale (nur Metadaten)
- **K6** - Kessler Psychological Distress Scale (nur Metadaten)

## Zeitplan 2025

### Juli 2025 - Erstes Package
- PHQ-9 mit vollständiger Funktionalität ✓
- EQ-5D-5L mit allen Varianten ✓
- Lesbarer Implementation Guide mit Scoring-Dokumentation
- Questionnaire-Varianten-Architektur dokumentiert ✓

### September 2025 - Workshop & Kommentierung
- Community-Workshop zur Vorstellung der MII PRO-Capabilities
- Feedback-Sammlung zu Architekturentscheidungen
- Interop Summit Poster (19. September)

### Dezember 2025 - Balloting-Version
- PROMIS-29 vollständig mit allen Domain-Scores
- PROMIS Depression SF 4a komplett
- Erste Cross-Instrument-Mappings (PHQ-9 → PROMIS)

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
- Validierte Konversionsalgorithmen via ConceptMaps und CQL

### 2026 - Phase 2: SDC STU4 Features (nach Ballotierung)

#### Migration zu SDC STU4
- Rückmigration von ordinalValue zu itemWeight nach STU4-Finalisierung
- FHIRPath `.weight()` Funktion statt `.ordinal()`
- Erweiterte SDC-Features nutzen
    - Questionnaire.version plus  

#### Advanced SDC Capabilities
- **Adaptive Questionnaires**: Computer Adaptive Testing (CAT) Support
- **Form Assembly**: Dynamische Fragebogen-Zusammenstellung
- **Advanced Rendering**: Erweiterte UI-Features
- **Data Extraction**: Verbesserte Extraction-Patterns

### 2027 - Phase 3: Item-basierte Architektur

#### Item Bank Management
- MII-definierte Item-Kataloge mit konsistenten linkIds
- Item-übergreifende Score-Berechnung
- Flexible Fragebogen-Komposition aus Item-Pool

#### Modular Questionnaire Design
- Wiederverwendbare Item-Gruppen
- Domain-übergreifende Item-Sharing
- Versionsverwaltung auf Item-Ebene

#### Computer Adaptive Testing (CAT)
- Adaptive Item-Auswahl basierend auf Antworten
- Item Response Theory (IRT) Integration
- Optimierte Test-Länge bei gleicher Präzision

### 2028 - Phase 4: Interoperabilität & Integration

#### Internationale Standards
- LOINC-Integration mit MII-Scoring-Bridge
- SNOMED CT vollständige Abdeckung
- ICD-11 Funktionsfähigkeits-Mapping

#### KIS/PVS-Integration
- Standard-Schnittstellen für Krankenhausinformationssysteme
- Praxisverwaltungssystem-Integration
- Mobile App SDKs

#### Clinical Decision Support
- Echtzeit-Alerts bei kritischen Scores
- Verlaufsmonitoring mit Trend-Analysen
- Behandlungspfad-Integration

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

## Komponenten pro PRO-Instrument

### Pflichtkomponenten
- **Questionnaire** (1..1) - Fragebogen-Definition
- **QuestionnaireResponse-Profil** (0..1) - Falls keine vollständige Darstellung vom Lizenzhalter

### Score-Komponenten (0..*)
- **ScoreDefinition** (ObservationDefinition) - Metadaten zur Score-Berechnung
- **ScoreProfile** (Observation-Profil) - Constraints für Score-Instanzen
- **ScoreCalculation** (CQL/FHIRPath) - Berechnungslogik

### Mapping-Komponenten (0..*)
- **ConceptMaps** - Terminologie-Mappings
- **StructureMaps** - Daten-Transformationen
- **Score-Konversionen** - Cross-Instrument-Mappings

## Architektur-Prinzipien

### Capability-basiertes Design
- Composable Capabilities statt monolithischer Varianten
- Populatable-Pattern für Server-Side-Calculation
- Adaptive Questionnaires basierend auf Kontext

### Terminologie-Strategie
- MII-kontrollierte Terminologie für zuverlässige Berechnungen
- Bridge zu internationalen Standards (LOINC, SNOMED)
- Deutsche Sprachunterstützung als Priorität

### Qualitätssicherung
- Validierung gegen deutsche Normstichproben
- Kontinuierliche Integration mit automatisierten Tests
- Community-Review-Prozess