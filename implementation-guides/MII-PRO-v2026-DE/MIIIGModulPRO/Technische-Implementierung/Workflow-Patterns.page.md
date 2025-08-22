---
topic: Workflow-Patterns
---
## Workflow-Patterns und Implementierungsansätze

- [Standard Workflow](#standard-workflow)
- [Capability-basierte Workflow-Varianten](#capability-basierte-workflow-varianten)
    - [Szenario 1: Direkte Erfassung mit Echtzeit-Berechnung](#szenario-1-direkte-erfassung-mit-echtzeit-berechnung)
    - [Szenario 2: Mobile Erfassung → Server-Berechnung](#szenario-2-mobile-erfassung-server-berechnung)
    - [Szenario 3: Historische Neuberechnung](#szenario-3-historische-neuberechnung)
- [Score-Repräsentationsebenen](#score-reprasentationsebenen)
- [Implementierungsmuster](#implementierungsmuster)
    - [Calculated Expressions](#calculated-expressions)
    - [Initial Expressions für Populatable](#initial-expressions-fur-populatable)
    - [Extraction zu Observations](#extraction-zu-observations)
- [Domain-Mapping Patterns](#domain-mapping-patterns)
- [Best Practices](#best-practices)
    - [Capability-Auswahl](#capability-auswahl)
    - [Performance-Überlegungen](#performance-uberlegungen)
    - [Fehlerbehandlung](#fehlerbehandlung)
- [Zusammenfassung](#zusammenfassung)

---

### Standard Workflow

Der MII PRO Workflow folgt einem dreistufigen Prozess von der Datenerfassung bis zur strukturierten Speicherung:

<img src="https://github.com/medizininformatik-initiative/kerndatensatzmodul-proms/blob/dev/input/Images/out/input/Images/Workflow_Standard/Workflow_Standard.svg?raw=true" alt="MII PRO Workflow-Pattern: Standard" style="width:40%;display:block;margin: 1em auto;"/>

---

### Capability-basierte Workflow-Varianten

Die Questionnaire-Capabilities ermöglichen verschiedene Implementierungsszenarien. Ein Fragebogen kann mehrere Capabilities kombinieren, um spezifische Workflows zu unterstützen.

#### Szenario 1: Direkte Erfassung mit Echtzeit-Berechnung

<img src="https://github.com/medizininformatik-initiative/kerndatensatzmodul-proms/blob/dev/input/Images/out/input/Images/Workflow_Capability-Echtzeit/Workflow_Capability-Echtzeit.svg?raw=true" alt="MII PRO Workflow-Pattern: Capability-basierte Variante, Echtzeit-Berechnung" style="width:50%;display:block;margin: 1em auto;"/>

**Verwendete Capabilities:** collectable, calculatable, displayable, extractable

#### Szenario 2: Mobile Erfassung → Server-Berechnung

<img src="https://github.com/medizininformatik-initiative/kerndatensatzmodul-proms/blob/dev/input/Images/out/input/Images/Workflow_Capability-Server/Workflow_Capability-Server.svg?raw=true" alt="MII PRO Workflow-Pattern: Capability-basierte Variante, Server-Berechnung" style="width:50%;display:block;margin: 1em auto;"/>

**Verwendete Capabilities:** 
- Client: collectable
- Server: populatable, calculatable, extractable

#### Szenario 3: Historische Neuberechnung

<img src="https://github.com/medizininformatik-initiative/kerndatensatzmodul-proms/blob/dev/input/Images/out/input/Images/Workflow_Capability-Historisch/Workflow_Capability-Historisch.svg?raw=true" alt="MII PRO Workflow-Pattern: Capability-basierte Variante, Historische Neuberechnung" style="width:50%;display:block;margin: 1em auto;"/>

**Verwendete Capabilities:** populatable, calculatable, extractable

### Score-Repräsentationsebenen

PRO-Scores existieren auf verschiedenen Ebenen im System:

<img src="https://github.com/medizininformatik-initiative/kerndatensatzmodul-proms/blob/dev/input/Images/out/input/Images/Workflow_Score_Repraesentation/Workflow_Score_Repraesentation.svg?raw=true" alt="MII PRO Workflow-Pattern: Score Repräsentationsebenen" style="width:70%;display:block;margin: 1em auto;"/>

---

### Implementierungsmuster

#### Calculated Expressions

Scores werden mittels FHIRPath-Expressions berechnet:

```
// Einfache Summe
%resource.item.answer.value.ordinal().sum()

// Gewichtete Summe mit Selektion
%resource.item.where(linkId.matches('^item-[1-9]$')).answer.value.ordinal().sum()

// Mit Variablen für komplexe Berechnungen
%rawScore = %resource.item.answer.value.ordinal().sum()
iif(%rawScore < 5, 'minimal', iif(%rawScore < 10, 'mild', 'moderate'))
```

#### Initial Expressions für Populatable

Vorausfüllung aus existierenden Daten:

```
// Einzelnes Item
iif(%sourceResponse.exists(), %sourceResponse.item.where(linkId='q1').answer.value, {})

// Mit Fallback
%sourceResponse.item.where(linkId='q1').answer.value | {}
```

#### Extraction zu Observations

Die Transformation erfolgt über SDC-Extraction-Extensions oder server-seitige Logik:

```
* item.extension[observationExtract] = true
* item.code = $LNC#44261-6 "PHQ-9 total score"
```

---

### Domain-Mapping Patterns

<img src="https://github.com/medizininformatik-initiative/kerndatensatzmodul-proms/blob/dev/input/Images/out/input/Images/Workflow_Domain_Mapping/Workflow_Domain_Mapping.svg?raw=true" alt="MII PRO Domain Mapping-Patterns" style="width:50%;display:block;margin: 1em auto;"/>

---

### Best Practices

#### Capability-Auswahl

Die Auswahl der Capabilities sollte sich nach dem Anwendungsfall richten:

- **Patientenportale:** collectable + calculatable + displayable
- **Mobile Apps:** Nur collectable (minimaler Footprint)
- **Server-Systeme:** populatable + calculatable + extractable
- **Reporting-Systeme:** Nur displayable

#### Performance-Überlegungen

- Berechnungen in der UI nur bei kleinen Fragebögen
- Server-seitige Berechnung für komplexe Scores
- Caching von ObservationDefinitions
- Batch-Processing für historische Daten

#### Fehlerbehandlung

- Validierung aller Pflichtfelder vor Score-Berechnung
- Klare Fehlermeldungen bei ungültigen Werten
- Fallback-Strategien für fehlende Capabilities
- Logging von Mapping-Fehlern

---

### Zusammenfassung

Die MII PRO Workflow-Patterns ermöglichen flexible Implementierungen bei gleichzeitiger Standardisierung. Durch die Capability-Architektur können Systeme genau die Funktionalität implementieren, die sie benötigen, während die Interoperabilität gewahrt bleibt. Alle spezifischen Instrumente (PHQ-9, EQ-5D-5L, etc.) folgen diesen Patterns und erweitern sie nur um instrument-spezifische Details.