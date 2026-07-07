# PRO Library - MII IG PRO v2026.5.0

## PRO Library

Die PRO-Bibliothek des MII Moduls PRO umfasst eine strukturierte Sammlung von Patient-Reported Outcome Measures (PROMs), die für den Einsatz im deutschen Gesundheitswesen standardisiert wurden. Jeder Fragebogen wurde mit spezifischen Capabilities ausgestattet, die seine Verwendbarkeit in unterschiedlichen klinischen und Forschungskontexten definieren.

### Übersicht der implementierten Fragebögen

#### Vollständig implementierte Fragebögen

| | | | | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| **PHQ-9** | Vollständig | Depression | 9+1 | DE/EN | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ |
| **EQ-5D-5L** | Vollständig | Lebensqualität | 5+VAS | DE/EN | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ |
| **BDI-II** | Data and Scoring | Depression | 21 | DE | - | - | ✓ | ✓ | ✓ | ✓ |
| **PROMIS-29** | Vollständig | Multi-Domain | 29 | DE/EN | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ |
| **PROMIS Depression SF 4a** | Vollständig | Depression | 4 | DE/EN | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ |
| **PROMIS Cognitive Function SF 4a** | Vollständig | Kognition | 4 | DE/EN | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ |
| **EORTC QLQ-C30** | Vollständig | Onkologie | 30 | DE/EN | ✓ | ✓ | ✓ | ✓ | - | - |
| **DASS-21** | Vollständig | Depression/Angst/Stress | 21 | DE/EN | ✓ | ✓ | ✓ | ✓ | - | ✓ |

#### Metadata-Only Reference Questionnaires

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| **HADS** | Metadata | Angst/Depression | Lizenziert | Calculatable, Extractable |
| **EPDS** | Metadata | Postnatale Depression | Lizenziert | Nur Metadaten |
| **CES-D** | Metadata | Depression | Lizenziert | Nur Metadaten |
| **K6** | Metadata | Psychische Belastung | Lizenziert | Nur Metadaten |

### Capabilities-Legende

| | | |
| :--- | :--- | :--- |
| **D** | Displayable | Kann visuell dargestellt werden |
| **C** | Collectable | Kann von Patienten ausgefüllt werden |
| **Cal** | Calculatable | Automatische Score-Berechnung möglich |
| **E** | Extractable | Daten können in Observations extrahiert werden |
| **P** | Populatable | Kann mit bestehenden Daten vorausgefüllt werden |
| **DA** | Domain-aligned | Domänenspezifische Zuordnung vorhanden |

### Implementierungsstatus

#### Vollständig implementiert

* **PHQ-9 (Patient Health Questionnaire-9)** 
* Depression Screening Tool mit 9 Fragen + Funktionsbeeinträchtigung
* PROMIS Depression T-Score Mapping via PROsetta Stone
* SDC-basierte automatische Score-Berechnung
* Vollständige deutsche und englische Übersetzungen
 
* **EQ-5D-5L (EuroQol 5 Dimensions 5 Levels)** 
* Generisches Lebensqualitätsinstrument
* 3 Varianten: Minimal, Displayable, Collectable
* Index-, VAS- und Profil-Scores
* CQL-Bibliotheken für Berechnungen
 
* **EORTC QLQ-C30** 
* Onkologie-spezifisches Lebensqualitätsinstrument mit 30 Fragen
* Vollständige Implementierung aller 15 Subskalen mit automatischen Score-Berechnungen
* MII-Terminologie mit deutschen und englischen Übersetzungen
* Umfassende Scoring-Methodologie mit linearer Transformation (0-100 Skala)
* ObservationDefinitions für alle Funktions- und Symptomskalen
 
* **PROMIS-29 Profile v2.1** 
* 7 Domänen: Physical Function, Anxiety, Depression, Fatigue, Sleep, Social Function, Pain
* Variable-basierte Score-Berechnungen
* Raw Scores und T-Scores für alle Domänen
 
* **PROMIS Short Forms** 
* Depression SF 4a und Cognitive Function SF 4a
* Vollständige Implementierung mit automatischer Score-Berechnung
* Vorbereitung für item-basierte Architektur
 
* **DASS-21 (Depression Anxiety Stress Scales - 21 Items)** 
* Gleichzeitige Erfassung von Depression, Angst und Stress mit 21 Items
* 3 Subskalen mit Rohwerten und DASS-42-Äquivalenten (6 Scores)
* Public Domain – frei verfügbar ohne Lizenzgebühren
* Deutsche Validierung nach Nilges & Essau (2015)
 

#### Data and Scoring implementiert

* **BDI-II (Beck Depression Inventory II)** 
* Umfassendes Depressionsinventar mit 21 Items
* Kategorienbasierte Score-Berechnung funktionsfähig
* MII-Terminologie mit Scoring-Weights
* Benötigt noch Display- und Collection-Capabilities für vollständige Nutzung
 

### Technische Highlights

#### SDC-Integration

Alle vollständig implementierten Fragebögen nutzen erweiterte SDC-Capabilities:

* **Calculated Expressions**: Automatische Score-Berechnung mit FHIRPath
* **Conditional Display**: Dynamische Sichtbarkeit basierend auf Antworten
* **Initial Values**: Kontextabhängige Vorbelegung von Feldern
* **Observation Extraction**: Direkte Konvertierung zu FHIR Observations

#### Terminologie-Strategie

* **MII ValueSets** mit Scoring-Weights für zuverlässige Berechnungen
* **Mehrsprachigkeit** durch FHIR Translation Extensions
* **LOINC-Integration** wo verfügbar, mit deutschen Übersetzungen

#### Questionnaire Varianten

Flexible Architektur mit verschiedenen Capability-Kombinationen:

* **Displayable**: Reine Anzeige von Ergebnissen
* **Collectable**: Interaktive Datenerfassung
* **Populatable**: Vorbelegung aus bestehenden Daten
* **Calculatable**: Server-seitige Score-Berechnung

### Verwendung in der Praxis

Die implementierten Fragebögen können in verschiedenen Szenarien eingesetzt werden:

1. **Direkte Patientenbefragung**(Collectable + Displayable)
1. **Automatisierte Score-Berechnung**(Calculatable + Extractable)
1. **Verlaufsdarstellung**(Populatable + Displayable)
1. **Forschungsdatenerhebung**(Alle Capabilities)

### Weiterführende Informationen

Detaillierte Informationen zu einzelnen Fragebögen finden Sie in den jeweiligen Unterseiten:

* [PHQ-9](phq-9.md)
* [EQ-5D-5L](eq-5d-5l.md)
* [BDI-II](bdi-ii.md)
* [PROMIS](promis.md)
* [EORTC QLQ-C30](eortc-qlq-c30.md)
* [DASS-21](dass-21.md)
* [Minimal Reference Questionnaires](minimal-reference-questionnaires.md)

