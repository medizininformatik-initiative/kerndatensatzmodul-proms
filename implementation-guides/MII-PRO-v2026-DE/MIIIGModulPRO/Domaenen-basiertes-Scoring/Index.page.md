---
topic: Domänen-basiertes Scoring
---
## {{page-title}}

### Übersicht

Domänen-basiertes Scoring ermöglicht die Vergleichbarkeit verschiedener PRO-Instrumente durch Abbildung auf gemeinsame Gesundheitsdomänen. Statt isolierter Fragebogen-Scores werden Messwerte auf standardisierte Domänen-Metriken (primär PROMIS T-Scores) transformiert.

### Struktur dieses Abschnitts

**[Domänen](Domaenen.page.md)**  
Definition und Beschreibung der Gesundheitsdomänen nach PROMIS-Framework. Umfasst die 8 PROMIS-29 Core Domains plus Cognitive Function sowie spezielle Domänen für Onkologie (EORTC QLQ-C30).

**[Domain-basiertes Scoring](Domain-basiertes-Scoring.page.md)**  
Methodische Grundlagen der Domänen-basierten Score-Berechnung. Behandelt Item Response Theory, Cross-Walking Verfahren und die praktische Implementierung über ObservationDefinitions.

**[Cross-Instrument Mappings](Cross-Instrument-Mappings.page.md)**  
Konkrete Mapping-Tabellen und Konversionsalgorithmen zwischen verschiedenen Instrumenten. Schwerpunkt auf der Depression-Domäne mit validierten Mappings zwischen 9 Instrumenten.

### Implementierungsstatus

**Vollständig implementiert:**
- Depression-Domäne mit Mappings zwischen PHQ-9, BDI-II, PROMIS Depression und weiteren Instrumenten
- ObservationDefinitions mit populationsspezifischen Referenzbereichen

**In Entwicklung:**
- PROMIS-29 Domänen (Physical Function, Anxiety, Fatigue, Sleep Disturbance, Social Function, Pain)
- PROMIS Cognitive Function 4a
- Automatisierte Score-Transformation via CQL

**Geplant (2026+):**
- Erweiterte Domänen-Mappings für Angst, Fatigue, Physical Function
- Item-basierte Score-Berechnung
- Computer Adaptive Testing (CAT) Integration

### Technische Umsetzung

Domänen-Scores werden als FHIR Observations mit spezifischen ObservationDefinitions abgebildet:

```
ObservationDefinition
├── code: LOINC-Code für Domänen-Score (z.B. 77861-3 für PROMIS Depression)
├── method: Berechnungsmethode (IRT, Cross-Walking, Equiperzentil)
├── qualifiedInterval: Populationsspezifische Referenzbereiche
└── preferredReportName: Standardisierte Bezeichnung

Observation
├── code: Verweis auf ObservationDefinition
├── valueQuantity: T-Score (Mean=50, SD=10)
├── derivedFrom: Quell-QuestionnaireResponse oder -Observation
└── method: Verwendete Mapping-Methode
```

### Anwendungsfälle

**Klinische Versorgung:**
- Kontinuierliche Verlaufsmessung bei Instrumentenwechsel
- Einheitliche Schwellenwerte für klinische Entscheidungen

**Forschung:**
- Meta-Analysen über Studien mit verschiedenen Instrumenten
- Harmonisierung von Registerdaten

**Qualitätssicherung:**
- Institutionsübergreifende Outcome-Vergleiche
- Populationsnormierte Benchmarks

### Methodische Grundlagen

Die Implementierung basiert auf etablierten psychometrischen Verfahren:
- Item Response Theory (IRT) für PROMIS-Instrumente
- Equiperzentil-Linking für Cross-Walking zwischen klassischen Instrumenten
- Validierte Konversionstabellen aus großen Vergleichsstudien (z.B. PROsetta Stone)

Weitere Details siehe [Domain-basiertes Scoring](Domain-basiertes-Scoring.page.md) und [Cross-Instrument Mappings](Cross-Instrument-Mappings.page.md).