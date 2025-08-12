## Workflow-Patterns und Implementierungsansätze

### Standard MII PRO Workflow

Der MII PRO Workflow folgt einem dreistufigen Prozess von der Datenerfassung bis zur strukturierten Speicherung:

```plantuml
@startuml
!theme plain
skinparam backgroundColor white

rectangle "1. Questionnaire" as Q #E8F4FD
rectangle "2. QuestionnaireResponse" as QR #FFF4E6
rectangle "3. Observation" as O #E8F5E8

Q --> QR : Patient füllt aus
QR --> O : Extraction/Transformation
O --> O : Domain Mapping (optional)

note right of Q : Definiert Struktur,\nVerhalten und\nBerechnungslogik
note right of QR : Enthält Antworten\nund berechnete\nScores
note right of O : Strukturierte\nSpeicherung für\nAnalysen
@enduml
```

### Capability-basierte Workflow-Varianten

Die Questionnaire-Capabilities ermöglichen verschiedene Implementierungsszenarien. Ein Fragebogen kann mehrere Capabilities kombinieren, um spezifische Workflows zu unterstützen.

#### Szenario 1: Direkte Erfassung mit Echtzeit-Berechnung

```plantuml
@startuml
!theme plain
skinparam backgroundColor white

actor Patient
participant "UI mit\n[collectable+calculatable]\nQuestionnaire" as UI
database "FHIR Server" as Server

Patient -> UI : Beantwortet Fragen
UI -> UI : Berechnet Score\n(FHIRPath)
UI -> Server : Speichert QR\nmit Score
Server -> Server : Extrahiert\nObservation
@enduml
```

**Verwendete Capabilities:** collectable, calculatable, displayable, extractable

#### Szenario 2: Mobile Erfassung → Server-Berechnung

```plantuml
@startuml
!theme plain
skinparam backgroundColor white

actor Patient
participant "Mobile App\n[collectable only]" as App
participant "Server\n[populatable+calculatable]" as Server
database "FHIR Store" as Store

Patient -> App : Beantwortet Fragen
App -> Server : QR ohne Score
Server -> Server : Lädt QR in\npopulatable Q
Server -> Server : Berechnet Score
Server -> Store : Speichert QR\nmit Score +\nObservation
@enduml
```

**Verwendete Capabilities:** 
- Client: collectable
- Server: populatable, calculatable, extractable

#### Szenario 3: Historische Neuberechnung

```plantuml
@startuml
!theme plain
skinparam backgroundColor white

database "Legacy Data" as Legacy
participant "Migration Service\n[populatable+calculatable]" as Service
database "FHIR Store" as Store

Legacy -> Service : Alte QRs
Service -> Service : Lädt in populatable Q
Service -> Service : Wendet neue\nBerechnungslogik an
Service -> Store : Aktualisierte\nObservations
@enduml
```

**Verwendete Capabilities:** populatable, calculatable, extractable

### Score-Repräsentationsebenen

PRO-Scores existieren auf verschiedenen Ebenen im System:

```plantuml
@startuml
!theme plain
skinparam backgroundColor white

rectangle "QuestionnaireResponse" as QR {
  rectangle "Item: Frage 1" as I1
  rectangle "Item: Frage 2" as I2
  rectangle "..." as I3
  rectangle "Item: Berechneter Score" as Score #FFE4B5
}

rectangle "Observation" as O1 {
  rectangle "code: LOINC" as C1
  rectangle "value: Score" as V1
  rectangle "derivedFrom: QR" as D1
}

rectangle "Domain Observation" as O2 {
  rectangle "code: PROMIS T-Score" as C2
  rectangle "value: T-Score" as V2
  rectangle "derivedFrom: O1" as D2
}

QR --> O1 : Extraction
O1 --> O2 : Domain Mapping
@enduml
```

### Implementierungsmuster

#### Calculated Expressions

Scores werden mittels FHIRPath-Expressions berechnet:

```fhirpath
// Einfache Summe
%resource.item.answer.value.ordinal().sum()

// Gewichtete Summe mit Selektion
%resource.item.where(linkId.matches('^item-[1-9]$'))
  .answer.value.ordinal().sum()

// Mit Variablen für komplexe Berechnungen
%rawScore = %resource.item.answer.value.ordinal().sum()
iif(%rawScore < 5, 'minimal', 
    iif(%rawScore < 10, 'mild', 'moderate'))
```

#### Initial Expressions für Populatable

Vorausfüllung aus existierenden Daten:

```fhirpath
// Einzelnes Item
iif(%sourceResponse.exists(), 
    %sourceResponse.item.where(linkId='q1').answer.value, 
    {})

// Mit Fallback
%sourceResponse.item.where(linkId='q1').answer.value | {}
```

#### Extraction zu Observations

Die Transformation erfolgt über SDC-Extraction-Extensions oder server-seitige Logik:

```fsh
* item.extension[observationExtract] = true
* item.code = $LNC#44261-6 "PHQ-9 total score"
```

### Domain-Mapping Patterns

```plantuml
@startuml
!theme plain
skinparam backgroundColor white

rectangle "Instrument-spezifischer Score" as S1 #FFE4E6
rectangle "ConceptMap oder CQL" as CM #E6F3FF
rectangle "Domain T-Score" as S2 #E6FFE6

S1 --> CM : Input
CM --> S2 : Output

note bottom of CM : Empirisch validierte\nMapping-Tabellen
@enduml
```

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

### Zusammenfassung

Die MII PRO Workflow-Patterns ermöglichen flexible Implementierungen bei gleichzeitiger Standardisierung. Durch die Capability-Architektur können Systeme genau die Funktionalität implementieren, die sie benötigen, während die Interoperabilität gewahrt bleibt. Alle spezifischen Instrumente (PHQ-9, EQ-5D-5L, etc.) folgen diesen Patterns und erweitern sie nur um instrument-spezifische Details.