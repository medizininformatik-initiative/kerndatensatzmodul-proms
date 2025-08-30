---
topic: Gesundheitsdomaenen
---
## {{page-title}}

### Überblick über Gesundheitsdomänen

Gesundheitsdomänen sind fundamentale Konstrukte, die verschiedene Aspekte der Gesundheit und des Wohlbefindens abbilden. Im Kontext von Patient-Reported Outcomes (PROs) ermöglichen Domänen die systematische Erfassung und Vergleichbarkeit von Gesundheitszuständen über verschiedene Messinstrumente hinweg.

**Verwandte Seiten:**
- [Domain-basiertes Scoring](Domain-basiertes-Scoring.page.md) - Methodische Umsetzung
- [Cross-Instrument Mappings](Cross-Instrument-Mappings.page.md) - Praktische Übersetzung zwischen Instrumenten
- [PRO-Bibliothek](../PRO-Bibliothek/Index.page.md) - Übersicht aller implementierten Instrumente

### Definition und Bedeutung

Eine **Gesundheitsdomäne** ist ein spezifischer, theoretisch fundierter Aspekt der Gesundheit, der durch verschiedene Messinstrumente erfasst werden kann. Die Domänen-basierte Strukturierung von PROs bietet mehrere Vorteile:

- **Interoperabilität**: Verschiedene Fragebögen, die dasselbe Konstrukt messen, werden vergleichbar
- **Flexibilität**: Institutionen können das für sie passende Instrument wählen
- **Kontinuität**: Bei Instrumentenwechsel bleibt die Vergleichbarkeit erhalten
- **Normierung**: Einheitliche Referenzwerte über Instrumente hinweg

### PROMIS Framework: Die 8+1 Kerndomänen

Das MII PRO Modul orientiert sich am **PROMIS (Patient-Reported Outcomes Measurement Information System)** Framework, das 8 wissenschaftlich validierte Kerndomänen definiert. Diese Domänen bilden das konzeptionelle Fundament für die systematische Erfassung von PROs und wurden im PROMIS-29 Profil v2.1 operationalisiert:

1. **Physical Function** (Körperliche Funktion) - 4 Items
2. **Anxiety** (Angst) - 4 Items
3. **Depression** (Depression) - 4 Items
4. **Fatigue** (Erschöpfung/Müdigkeit) - 4 Items
5. **Sleep Disturbance** (Schlafstörungen) - 4 Items
6. **Ability to Participate in Social Roles and Activities** (Soziale Teilhabe) - 4 Items
7. **Pain Interference** (Schmerzbedingte Beeinträchtigung) - 4 Items
8. **Pain Intensity** (Schmerzintensität) - 1 Item

**Zusätzliche wichtige PROMIS-Domäne im MII PRO Modul:**
9. **Cognitive Function** (Kognitive Funktion) - erfasst durch PROMIS Cognitive Function 4a Short Form

Diese 9 Domänen repräsentieren die wichtigsten Aspekte der selbstberichteten Gesundheit und wurden durch umfangreiche psychometrische Forschung validiert. Das PROMIS-29 Instrument (29 Items) erfasst die ersten 8 Domänen, während Cognitive Function durch separate Short Forms ergänzt wird.

**Vergleichbare Multi-Domain Instrumente:**
- **SF-36 (Short Form 36)**: 8 Domänen der gesundheitsbezogenen Lebensqualität
- **WHOQOL-BREF**: WHO-Instrument mit 4 Hauptdomänen (physisch, psychisch, sozial, Umwelt)
- **EQ-5D**: 5 Dimensionen (Mobilität, Selbstversorgung, Alltagsaktivitäten, Schmerz, Angst/Depression)

### Core Domains im MII PRO Modul

Die Implementierung im MII PRO Modul folgt der PROMIS-Struktur und erweitert sie um weitere etablierte Instrumente:

#### 1. Depression-Domäne (PROMIS Core Domain)
**Status**: Vollständig implementiert (2025)  
**LOINC Code**: 77861-3 "PROMIS Depression T-score"  
**Unterstützte Instrumente**:
- PHQ-9 (Patient Health Questionnaire-9) - [Details](../PRO-Bibliothek/PHQ-9/Index.page.md)
- BDI-II (Beck Depression Inventory II) - [Details](../PRO-Bibliothek/BDI-II/Index.page.md)
- PROMIS Depression Short Forms - [Details](../PRO-Bibliothek/PROMIS/Index.page.md)
- HADS-D (Hospital Anxiety and Depression Scale - Depression)
- EPDS (Edinburgh Postnatal Depression Scale)
- CES-D (Center for Epidemiologic Studies Depression Scale)

**Charakteristika**:
- Erfasst Symptome depressiver Verstimmung, Niedergeschlagenheit, Hoffnungslosigkeit
- T-Score Normierung (Mittelwert=50, SD=10)
- Populationsnormen basierend auf EHIS Wave 3 (n=287.530)
- Validierte Cross-Walking Tabellen zwischen Instrumenten - [siehe Mappings](Cross-Instrument-Mappings.page.md)

#### 2. Angst-Domäne (PROMIS Core Domain: Anxiety)
**Status**: In Planung (2026)  
**Geplante Instrumente**:
- GAD-7 (Generalized Anxiety Disorder-7)
- PROMIS Anxiety
- HADS-A (Hospital Anxiety and Depression Scale - Anxiety)
- BAI (Beck Anxiety Inventory)

**Charakteristika**:
- Erfasst Sorgen, Nervosität, Anspannung, Ängstlichkeit
- Differenzierung zwischen State- und Trait-Angst
- Somatische vs. kognitive Angstkomponenten

#### 3. Körperliche Funktion (PROMIS Core Domain: Physical Function)
**Status**: Teilweise implementiert (PROMIS-29, EQ-5D)  
**Implementierte Instrumente**:
- PROMIS Physical Function - [Details](../PRO-Bibliothek/PROMIS/Index.page.md)
- EQ-5D Mobility Dimension - [Details](../PRO-Bibliothek/EQ-5D-5L/Index.page.md)
- Geplant: HAQ, WHODAS, SF-36 PF

**Charakteristika**:
- Mobilität, Selbstversorgung, alltägliche Aktivitäten
- Differenzierung nach Schweregrad der Einschränkung
- Alters- und geschlechtsspezifische Normen
- Item Banking für adaptive Messung - [siehe Abbildung](Domain-basiertes-Scoring.page.md#item-banking-und-adaptive-messung)

#### 4. Schmerz-Domäne (PROMIS Core Domains: Pain Interference & Pain Intensity)
**Status**: Teilweise implementiert (PROMIS-29, EORTC)  
**Komponenten**:
- **Schmerzintensität**: Numerische Rating-Skala (0-10)
- **Schmerzinterferenz**: Beeinträchtigung durch Schmerzen
- **Schmerzqualität**: Art und Charakteristik des Schmerzes

**Implementierte Instrumente**:
- PROMIS Pain Intensity
- PROMIS Pain Interference
- EORTC QLQ-C30 Pain Scale - [Details](../PRO-Bibliothek/EORTC-QLQ-C30/Index.page.md)

#### 5. Fatigue/Erschöpfung (PROMIS Core Domain: Fatigue)
**Status**: Teilweise implementiert (PROMIS-29, EORTC)  
**Instrumente**:
- PROMIS Fatigue
- EORTC QLQ-C30 Fatigue Scale
- Geplant: FSS, FACIT-F

**Charakteristika**:
- Körperliche und mentale Erschöpfung
- Auswirkungen auf tägliche Aktivitäten
- Differenzierung von Depression

#### 6. Schlafstörungen (PROMIS Core Domain: Sleep Disturbance)
**Status**: Teilweise implementiert (PROMIS-29)  
**Instrumente**:
- PROMIS Sleep Disturbance
- Geplant: PSQI, ISI

**Charakteristika**:
- Schlafqualität, Ein- und Durchschlafstörungen
- Tagesmüdigkeit als Konsequenz
- Zirkadiane Rhythmusstörungen

#### 7. Soziale Funktion (PROMIS Core Domain: Ability to Participate in Social Roles)
**Status**: Teilweise implementiert (PROMIS-29, EORTC)  
**Instrumente**:
- PROMIS Ability to Participate in Social Roles
- EORTC QLQ-C30 Social Functioning
- Geplant: SPS, F-SozU

**Charakteristika**:
- Soziale Teilhabe und Rollenfunktion
- Qualität sozialer Beziehungen
- Isolation und Einsamkeit

#### 8. Kognitive Funktion (PROMIS Cognitive Function 4a)
**Status**: In Implementierung (2025)  
**Instrumente**:
- PROMIS Cognitive Function 4a Short Form
- EORTC QLQ-C30 Cognitive Functioning (bereits implementiert)

**Charakteristika**:
- Konzentration und Gedächtnis
- Kognitive Klarheit und mentale Schärfe
- Subjektive kognitive Fähigkeiten

### Spezielle Domänen

#### Onkologie-spezifische Domänen: EORTC QLQ-C30 Framework

<img decoding="async" src="../../Images/qlq-domänen.png" alt="EORTC QLQ-C30 Domänen" title="EORTC QLQ-C30 Domänen" style="max-width:100%; height:auto;">

**Abbildung 1:** *Konzeptionelles Modell des EORTC QLQ-C30 - Von physiologischen Variablen zur Lebensqualität*

Das EORTC QLQ-C30 Framework illustriert den Zusammenhang zwischen verschiedenen Domänen-Ebenen:
- **Physiologische Variablen** beeinflussen **Symptome**
- **Symptome** wirken auf die **Funktionsfähigkeit**
- **Funktionsfähigkeit** prägt die **Gesundheitswahrnehmung**
- Alle Faktoren kulminieren in der **Allgemeinen Lebensqualität**

Implementiert durch EORTC QLQ-C30:
- **Übelkeit und Erbrechen**
- **Appetitlosigkeit**
- **Dyspnoe** (Atemnot)
- **Obstipation**
- **Diarrhö**
- **Finanzielle Schwierigkeiten** durch Erkrankung

Details siehe [EORTC QLQ-C30 in PRO-Bibliothek](../PRO-Bibliothek/EORTC-QLQ-C30/Index.page.md).

#### Lebensqualität-Domänen
- **Globale Lebensqualität** (EORTC, EQ-5D VAS)
- **Gesundheitsbezogene Lebensqualität** (EQ-5D Index)
- **Rollenfunktion** (EORTC)
- **Emotionale Funktion** (EORTC)

### Domänen-Hierarchie und Beziehungen

~~~~
Gesundheit (übergeordnet)
├── Physische Gesundheit
│   ├── Körperliche Funktion
│   ├── Schmerz
│   ├── Fatigue
│   └── Symptombelastung
├── Mentale Gesundheit
│   ├── Depression
│   ├── Angst
│   ├── Kognitive Funktion
│   └── Emotionales Wohlbefinden
├── Soziale Gesundheit
│   ├── Soziale Funktion
│   ├── Soziale Unterstützung
│   └── Rollenfunktion
└── Globale Gesundheit
    ├── Lebensqualität
    └── Allgemeiner Gesundheitszustand
~~~~

### Domänen-Alignment und Questionnaire Capabilities

Das MII PRO Modul definiert für jedes Instrument die Fähigkeit zum "Domain-Alignment":

~~~~
* extension[questionnaire-capabilities].extension[domain-aligned].valueBoolean = true
~~~~

Dies bedeutet, dass ein Instrument:
1. Eindeutig einer oder mehreren Domänen zugeordnet ist
2. Scores produziert, die auf Domänen-T-Scores gemappt werden können
3. Mit anderen Instrumenten derselben Domäne vergleichbar ist

Details zur technischen Implementierung siehe [Questionnaire Capabilities](../Technische-Implementierung/QuestionnaireCapabilites.page.md).

### Methodische Grundlagen

#### Item Response Theory (IRT)
- Moderne psychometrische Methode für präzise Domänenmessung
- Ermöglicht adaptive Tests und Item-Banking
- Basis für PROMIS T-Score Berechnung
- [Detaillierte Erklärung mit Visualisierung](Domain-basiertes-Scoring.page.md#mapping-strategien)

#### Classical Test Theory (CTT)
- Traditionelle Methode, verwendet von PHQ-9, BDI-II
- Summenwerte mit linearer Transformation
- Einfacher zu implementieren, weniger präzise

#### Cross-Walking und Harmonisierung
- Equiperzentil-Linking zwischen Instrumenten
- Regressionsbasierte Vorhersagemodelle
- IRT-basierte Kalibrierung auf gemeinsame Metrik
- [Praktische Beispiele und Mapping-Tabellen](Cross-Instrument-Mappings.page.md)

### Praktische Anwendung von Domänen

#### Klinische Entscheidungsunterstützung
Domänen-basierte Schwellenwerte für:
- **Screening**: Identifikation behandlungsbedürftiger Patienten
- **Monitoring**: Verlaufskontrolle und Therapieanpassung
- **Outcome-Bewertung**: Therapieerfolg und Remission

#### Forschung und Versorgungsqualität
- **Meta-Analysen**: Pooling von Studien mit verschiedenen Instrumenten
- **Registerstudien**: Harmonisierte Outcomes über Zentren
- **Qualitätsindikatoren**: Faire Vergleiche trotz verschiedener Assessments

#### Personalisierte Medizin
- **Präzisionsmedizin**: Domänen-Profile für Therapieauswahl
- **Adaptive Behandlungspfade**: Domänen-basierte Algorithmen
- **Patient-Centered Care**: Fokus auf relevante Domänen

### Implementierungshinweise

#### FHIR-Ressourcen pro Domäne
1. **ObservationDefinition**: Definiert Domänen-Score mit Referenzbereichen
2. **ConceptMap**: Mapping von Instrumenten-Scores zu Domänen-Scores
3. **Observation**: Instanzen von Domänen-Scores mit Herkunft
4. **Library** (CQL): Berechnungslogik für komplexe Transformationen

Details zur FHIR-Implementierung siehe [Technische Implementierung](../Technische-Implementierung/Index.page.md).

#### Best Practices
- Immer Herkunftsinstrument dokumentieren (`derivedFrom`)
- Mapping-Methode angeben (`method`)
- Konfidenzintervalle berücksichtigen
- Populationsspezifische Normen verwenden

### Zukünftige Entwicklungen

#### Kurzfristig (2025-2026)
- Vollständige Implementation aller PROMIS-29 Domänen
- Cross-Walking Tabellen für PHQ-9 → PROMIS Depression
- Validierungsstudien für deutsche Population
- [Detaillierte Roadmap](../../Geplanter-Umfang.page.md)

#### Mittelfristig (2026-2027)
- Item-basierte Domänen-Scores
- Computer Adaptive Testing (CAT) Integration
- Erweiterte Domänen (Spiritualität, Resilienz)

#### Langfristig (2027+)
- KI-basierte Domänen-Vorhersage
- Multimodale Integration (PROs + Biomarker)
- Echtzeit-Domänen-Monitoring

### Zusammenfassung

Die Domänen-basierte Strukturierung von PROs im MII-Modul ermöglicht eine zukunftsfähige, flexible und interoperable Erfassung von Gesundheitszuständen. Durch die konsequente Abbildung verschiedener Instrumente auf gemeinsame Domänen wird die Vision einer harmonisierten, patientenzentrierten Versorgung Realität. Die Depression-Domäne zeigt bereits heute die praktische Umsetzbarkeit dieses Konzepts, während weitere Domänen sukzessive folgen werden.

**Nächste Schritte:**
- Verstehen Sie das [Domain-basierte Scoring](Domain-basiertes-Scoring.page.md) im Detail
- Erkunden Sie [Cross-Instrument Mappings](Cross-Instrument-Mappings.page.md) für praktische Anwendungen
- Implementieren Sie Domänen-Scores mit [FHIR-Profilen](../Technische-Implementierung/FHIR-Profile/Abstrakte-Profile.page.md)