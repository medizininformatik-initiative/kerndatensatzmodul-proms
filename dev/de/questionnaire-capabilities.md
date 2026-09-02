# Questionnaire Capabilities - MII IG PRO v2026.7.0

## Questionnaire Capabilities

## Questionnaire-Varianten-Architektur: Trennung der Verantwortlichkeiten

### Die architektonische Erkenntnis

Das MII PRO-Modul implementiert ein ausgeklügeltes Muster zur Trennung der Verantwortlichkeiten ("Separation of Concerns") für Fragebögen, bei dem verschiedene Varianten desselben Fragebogens unterschiedliche Zwecke im Workflow von Gesundheitsdaten erfüllen. Diese Architektur ermöglicht maximale Flexibilität bei gleichzeitiger Wahrung der semantischen Konsistenz über verschiedene Anwendungsfälle hinweg.

#### Basis-Capabilities (Baukasten-Prinzip)

1. **Collectable**(Erfassbar): Wie Daten VON Nutzern EINGEGEBEN werden
1. **Populatable**(Vorausfüllbar): Wie existierende Daten GELADEN werden
1. **Calculatable**(Berechenbar): Wie Scores AUS Daten BERECHNET werden
1. **Displayable**(Anzeigbar): Wie Daten/Ergebnisse DARGESTELLT werden
1. **Extractable**(Extrahierbar): Wie Daten aus dem Fragebogenformat in andere FHIR-Ressourcen ÜBERFÜHRT werden

Die entscheidende Erkenntnis ist, dass ein konkreter Einsatz oft **weder einzelne noch alle Capabilities benötigt, sondern deren Kombinationen**, die spezifische Anwendungsfälle definieren.

#### Use-Case-basierte Capability-Kombinationen

##### Use Case 1: Interaktive Datenerfassung mit Echtzeit-Scoring

**Capabilities**: `[collectable, calculatable, displayable]`

* Patient gibt Daten ein
* Scores werden in Echtzeit berechnet
* Ergebnisse werden Patienten sofort angezeigt
* **Beispiel**: DiGA-Smartphone-App mit Live-Score-Updates

##### Use Case 2: Mobile Datenerfassung -> Server-Berechnung

**Capabilities Client**: `[collectable]` **Capabilities Server**: `[populatable, calculatable, extractable]`

* Mobile App erfasst nur Daten
* Server lädt QuestionnaireResponse
* Server berechnet Scores
* **Beispiel**: Leichtgewichtige mobile PRO-App

##### Use Case 3: Historische Daten-Neuberechnung

**Capabilities**: `[populatable, calculatable, extractable]`

* Keine Nutzerinteraktion
* Lädt existierende Responses
* Wendet neue Berechnungslogik an
* **Beispiel**: Migration auf neue Scoring-Algorithmen oder Datenharmonisierung

##### Use Case 4: Klinische Ergebnisansicht

**Capabilities**: `[populatable, displayable]`

* Nur-Lese-Zugriff
* Zeigt vorhandene Daten und Scores
* Keine Berechnung oder Eingabe
* **Beispiel**: Arzt-Dashboard im KIS

##### Use Case 5: Reine Datenerfassung

**Capabilities**: `[collectable, extractable]`

* Erfasst Daten ohne Berechnung
* Extrahiert zu QuestionnaireResponse
* Scoring erfolgt extern
* **Beispiel**: Papier-zu-Digital-Erfassung

### Der architektonische Durchbruch

#### Vorausfüllungs-Workflow-Muster

```
Collectable Fragebogen -> QuestionnaireResponse -> Calculatable Fragebogen -> Berechnete Scores -> Observation Ressourcen

```

1. Patient füllt den Collectable-Fragebogen aus
1. QuestionnaireResponse wird zur Vorausfüllung verwendet
1. Calculatable-Fragebogen generiert Scores
1. Scores werden als Observation-Ressourcen extrahiert

Dieses Muster ermöglicht:

1. **Saubere Trennung**: Erfassungslogik getrennt von Berechnungslogik
1. **Flexibilität**: Verschiedene Berechnungsstrategien ohne Einfluss auf die Erfassung
1. **Wiederverwendbarkeit**: Dieselben erfassten Daten können mehrere Berechnungsvarianten speisen
1. **Evolution**: Berechnungslogik kann sich unabhängig von der Erfassung entwickeln

### Implementierungsbeispiel: EQ-5D-5L

Der EQ-5D-5L-Fragebogen demonstriert diese Architektur perfekt:

```
//FSH
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

#### Szenario 1: Mobile Erfassung -> Server-Berechnung

1. Patient nutzt mobile App mit**Collectable**-Variante
1. QuestionnaireResponse wird an Server gesendet
1. Server nutzt**Calculatable**-Variante, vorausgefüllt mit Antwortdaten
1. Berechnete Scores werden als Observations gespeichert
1. Kliniker sieht Ergebnisse über**Displayable**-Variante

#### Szenario 2: Forschungsdatenerfassung -> Multiple Scoring-Algorithmen

1. Eine einzige**Collectable**-Variante über alle Studienzentren
1. Mehrere**Calculatable**-Varianten für verschiedene Scoring-Ansätze:
* Standard-Scoring
* Populationsspezifisches Scoring
* Forschungsspezifische Algorithmen

1. Alle Berechnungen nutzen dieselben Quelldaten

#### Szenario 3: Historische Datenmigration

1. Legacy-Daten als QuestionnaireResponses importiert
1. **Calculatable**-Varianten nachträglich angewendet
1. Standardisierte Scores für historische Vergleiche generiert

### Technische Implementierungsdetails

#### Capability-Extensions

Die Questionnaire-Capabilities werden als separate boolesche Sub-Extensions implementiert:

```
//FSH
Extension: MII_PR_PRO_Questionnaire_Capabilities
* extension contains
    displayable 0..1 MS and
    collectable 0..1 MS and
    populatable 0..1 MS and
    extractable 0..1 MS and
    calculatable 0..1 MS and
    domainAligned 0..1 MS
* extension[displayable].value[x] only boolean
* extension[collectable].value[x] only boolean
* extension[populatable].value[x] only boolean
* extension[extractable].value[x] only boolean
* extension[calculatable].value[x] only boolean
* extension[domainAligned].value[x] only boolean

```

Diese boolesche Struktur ermöglicht flexible Capability-Kombinationen, da mehrere Capabilities gleichzeitig aktiv sein können.

#### Vorausfüllungs-Mechanismus

Nutzung der SDC-Vorausfüllungsfähigkeiten:

```
* extension[sdc-questionnaire-sourceQueries].valueReference = Reference(QuestionnaireResponse/erfasste-daten)
* extension[sdc-questionnaire-launchContext].extension[name].valueId = "sourceResponse"
* extension[sdc-questionnaire-launchContext].extension[type].valueCode = #QuestionnaireResponse

```

### Vorteile der Separation-of-Concerns Architektur

1. **Wartbarkeit**: Änderungen der Berechnungslogik beeinflussen nicht die Erfassung
1. **Versionierung**: Verschiedene Versionen von Fragebögen und Berechnungen können koexistieren
1. **Performance**: Berechnungen können separat von der Erfassung optimiert werden
1. **Compliance**: Verschiedene Projekte können unterschiedliche Anforderungen bzgl. Darstellung haben
1. **Forschung**: Neue Scoring-Algorithmen können ohne Änderung der Erfassung getestet werden
1. **Integration**: Systeme können die für ihre Fähigkeiten geeignete Variante wählen

Weitere erweiterte Capabilities in Betracht:

* Perzentilränge und Z-Scores
* Alters- und geschlechtsadjustierte Normen

**Change Detection**:

* Automatische Erkennung signifikanter Veränderungen
* Trend-Analysen über multiple Zeitpunkte
* Alert-Generierung bei kritischen Veränderungen

Diese erweiterten Capabilities werden die Integration von PROs in klinische Entscheidungsprozesse und Qualitätssicherung weiter verbessern.

### Fazit

Die Trennung von Displayable-, Collectable- und Calculatable-Fragebogen-Capabilities bietet einen strukturierten Ansatz für die PRO-Implementierung. Diese Aufteilung in grundlegend verschiedene Verantwortlichkeiten, die je nach Bedarf kombiniert werden können, unterstützt die Entwicklung flexibler und wartbarer Systeme für Patient-Reported Outcomes und deren Instrumente.

Dieser Architekturansatz adressiert die praktischen Herausforderungen moderner Gesundheits-IT, in der Datenerfassung, Berechnung und Präsentation häufig in unterschiedlichen Systemen, zu verschiedenen Zeitpunkten und für verschiedene Zwecke stattfinden.

