---
topic: QuestionnaireVariantenArchitektur
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire
canonical: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ImplementationGuide/QuestionnaireVariantenArchitektur
expand: 1
---

## Questionnaire-Varianten-Architektur: Trennung der Verantwortlichkeiten

### Die architektonische Erkenntnis

Das MII PRO-Modul implementiert ein ausgeklügeltes Muster zur Trennung der Verantwortlichkeiten (Separation of Concerns) für Fragebögen, bei dem verschiedene Varianten desselben Fragebogens unterschiedliche Zwecke im Workflow von Gesundheitsdaten erfüllen. Diese Architektur ermöglicht maximale Flexibilität bei gleichzeitiger Wahrung der semantischen Konsistenz über verschiedene Anwendungsfälle hinweg.

### Capability-Kombinationen als Use-Case-Definitionen

Die entscheidende Erkenntnis ist, dass es **nicht um einzelne Capabilities geht, sondern um deren Kombinationen**, die spezifische Anwendungsfälle definieren.

#### Basis-Capabilities (Baukasten-Prinzip)

1. **Collectable** (Erfassbar): Wie Daten VON Nutzern EINGEGEBEN werden
2. **Populatable** (Vorausfüllbar): Wie existierende Daten GELADEN werden
3. **Calculatable** (Berechenbar): Wie Scores AUS Daten BERECHNET werden
4. **Displayable** (Anzeigbar): Wie Daten/Ergebnisse DARGESTELLT werden
5. **Extractable** (Extrahierbar): Wie Daten in andere Ressourcen ÜBERFÜHRT werden

#### Use-Case-basierte Capability-Kombinationen

##### Use Case 1: Interaktive Datenerfassung mit Echtzeit-Scoring
**Capabilities**: `[collectable, calculatable, displayable]`
- Patient gibt Daten ein
- Scores werden in Echtzeit berechnet
- Ergebnisse werden sofort angezeigt
- **Beispiel**: Web-Formular mit Live-Score-Updates

##### Use Case 2: Mobile Datenerfassung → Server-Berechnung
**Capabilities Client**: `[collectable, extractable]`
**Capabilities Server**: `[populatable, calculatable, extractable]`
- Mobile App erfasst nur Daten
- Server lädt QuestionnaireResponse
- Server berechnet Scores
- **Beispiel**: Leichtgewichtige mobile PRO-App

##### Use Case 3: Historische Daten-Neuberechnung
**Capabilities**: `[populatable, calculatable, extractable]`
- Keine Nutzerinteraktion
- Lädt existierende Responses
- Wendet neue Berechnungslogik an
- **Beispiel**: Migration auf neue Scoring-Algorithmen

##### Use Case 4: Klinische Ergebnisansicht
**Capabilities**: `[populatable, displayable]`
- Nur-Lese-Zugriff
- Zeigt vorhandene Daten und Scores
- Keine Berechnung oder Eingabe
- **Beispiel**: Arzt-Dashboard im KIS

##### Use Case 5: Reine Datenerfassung
**Capabilities**: `[collectable, extractable]`
- Erfasst Daten ohne Berechnung
- Extrahiert zu QuestionnaireResponse
- Scoring erfolgt extern
- **Beispiel**: Papier-zu-Digital-Erfassung

**Revolutionäre Erkenntnis**: Ein Fragebogen ist nie "nur calculatable" - Calculatable muss immer mit einer Datenquelle kombiniert werden (collectable ODER populatable)!

### Der architektonische Durchbruch

#### Vorausfüllungs-Workflow-Muster

```mermaid
graph LR
    A[Collectable Fragebogen] -->|Patient füllt aus| B[QuestionnaireResponse]
    B -->|Vorausfüllung| C[Calculatable Fragebogen]
    C -->|Generiert| D[Berechnete Scores]
    D -->|Extrahiert zu| E[Observation Ressourcen]
```

Dieses Muster ermöglicht:
1. **Saubere Trennung**: Erfassungslogik getrennt von Berechnungslogik
2. **Flexibilität**: Verschiedene Berechnungsstrategien ohne Einfluss auf die Erfassung
3. **Wiederverwendbarkeit**: Dieselben erfassten Daten können mehrere Berechnungsvarianten speisen
4. **Evolution**: Berechnungslogik kann sich unabhängig von der Erfassung entwickeln

### Implementierungsbeispiel: EQ-5D-5L

Der EQ-5D-5L-Fragebogen demonstriert diese Architektur perfekt:

```fsh
// Basis-Fragebogen mit Kernstruktur
Instance: mii-qst-pro-euroqol-eq5d5l-base
* url = ".../mii-qst-pro-euroqol-eq5d5l-base"

// Displayable-Variante zur Ansicht im KIS
Instance: mii-qst-pro-euroqol-eq5d5l-displayable
* derivedFrom = ".../mii-qst-pro-euroqol-eq5d5l-base"
* extension[questionnaire-capabilities].valueCode = #displayable

// Collectable-Variante für Patientendateneingabe
Instance: mii-qst-pro-euroqol-eq5d5l-collectable
* derivedFrom = ".../mii-qst-pro-euroqol-eq5d5l-base"
* extension[questionnaire-capabilities].valueCode = #collectable
// Enthält versteckte "Fehlender Wert"-Optionen

// Calculatable-Variante mit Scoring-Logik
Instance: mii-qst-pro-euroqol-eq5d5l-calculatable
* derivedFrom = ".../mii-qst-pro-euroqol-eq5d5l-base"
* extension[questionnaire-capabilities].valueCode = #calculatable
// Enthält FHIRPath-Ausdrücke für Index-, VAS-, Profil-Scores
```

### Erweiterte Workflow-Szenarien

#### Szenario 1: Mobile Erfassung → Server-Berechnung
1. Patient nutzt mobile App mit **Collectable**-Variante
2. QuestionnaireResponse wird an Server gesendet
3. Server nutzt **Calculatable**-Variante, vorausgefüllt mit Antwortdaten
4. Berechnete Scores werden als Observations gespeichert
5. Kliniker sieht Ergebnisse über **Displayable**-Variante

#### Szenario 2: Forschungsdatenerfassung → Multiple Scoring-Algorithmen
1. Eine einzige **Collectable**-Variante über alle Studienzentren
2. Mehrere **Calculatable**-Varianten für verschiedene Scoring-Ansätze:
   - Standard-Scoring
   - Populationsspezifisches Scoring
   - Forschungsspezifische Algorithmen
3. Alle Berechnungen nutzen dieselben Quelldaten

#### Szenario 3: Historische Datenmigration
1. Legacy-Daten als QuestionnaireResponses importiert
2. **Calculatable**-Varianten nachträglich angewendet
3. Standardisierte Scores für historische Vergleiche generiert

### Technische Implementierungsdetails

#### Capability-Extensions
```fsh
Extension: QuestionnaireCapabilities
* value[x] only code
* valueCode from QuestionnaireCapabilityValueSet (required)

ValueSet: QuestionnaireCapabilityValueSet
* #displayable "Anzeigbar"
* #collectable "Erfassbar"  
* #calculatable "Berechenbar"
* #extractable "Extrahierbar"
```

#### Vorausfüllungs-Mechanismus
Nutzung der SDC-Vorausfüllungsfähigkeiten:
```fsh
* extension[sdc-questionnaire-sourceQueries].valueReference = Reference(QuestionnaireResponse/erfasste-daten)
* extension[sdc-questionnaire-launchContext].extension[name].valueId = "sourceResponse"
* extension[sdc-questionnaire-launchContext].extension[type].valueCode = #QuestionnaireResponse
```

### Vorteile dieser Architektur

1. **Wartbarkeit**: Änderungen der Berechnungslogik beeinflussen nicht die Erfassung
2. **Versionierung**: Verschiedene Versionen von Berechnungen können koexistieren
3. **Performance**: Berechnungen können separat von der Erfassung optimiert werden
4. **Compliance**: Verschiedene Regionen können unterschiedliche Berechnungsvarianten haben
5. **Forschung**: Neue Scoring-Algorithmen können ohne Änderung der Erfassung getestet werden
6. **Integration**: Systeme können die für ihre Fähigkeiten geeignete Variante wählen

### Zukünftige Implikationen

Diese Architektur legt das Fundament für:
- **Computer Adaptive Testing (CAT)**: Dynamische Fragebögen basierend auf Antworten
- **Multi-modale Erfassung**: Verschiedene Collectable-Varianten für Web, Mobile, Sprache
- **KI-verbessertes Scoring**: Neue Calculatable-Varianten mit ML-Modellen
- **Echtzeit-klinische Entscheidungsunterstützung**: Sofortige Score-Berechnung und Alerts

### Fazit

Die Trennung von Displayable-, Collectable- und Calculatable-Fragebogen-Varianten stellt einen Paradigmenwechsel in der PRO-Implementierung dar. Durch die Erkenntnis, dass dies grundlegend verschiedene Verantwortlichkeiten sind, die zusammengesetzt werden können, ermöglichen wir ein flexibleres, wartbareres und leistungsfähigeres System für das Management von patientenberichteten Outcomes.

Diese Architektur ist nicht nur eine technische Verbesserung – sie ist ein konzeptioneller Durchbruch, der perfekt mit den Realitäten moderner Gesundheits-IT übereinstimmt, wo Datenerfassung, Berechnung und Präsentation oft in verschiedenen Systemen, zu verschiedenen Zeiten und für verschiedene Zwecke erfolgen.