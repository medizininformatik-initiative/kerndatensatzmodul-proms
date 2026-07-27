# Workflows - MII IG PRO v2026.5.2

## Workflows

* [Capabilities](#capabilities)
* [Workflow-Patterns](#workflow-patterns) 
* [Standard Workflow](#standard-workflow)
* [Direkte Erfassung mit Echtzeit-Berechnung](#workflow-pattern-1-direkte-erfassung-mit-echtzeit-berechnung)
* [Mobile Erfassung mit Server-Berechnung](#workflow-pattern-2-mobile-erfassung-mit-server-berechnung)
* [Historische Neuberechnung](#workflow-pattern-3-historische-neuberechnung)
* [Klinische Ergebnisansicht](#workflow-pattern-4-klinische-ergebnisansicht)
* [Reine Datenerfassung](#workflow-pattern-5-reine-datenerfassung)
 
* [Score-Repräsentation](#score-repräsentation)
* [Implementierungsmuster](#implementierungsmuster) 
* [Calculated Expressions](#calculated-expressions)
* [Initial Expressions für Populatable](#initial-expressions-für-populatable)
* [Extraction zu Observations](#extraction-zu-observations)
 
* [Best Practices](#best-practices) 
* [Capability-Auswahl](#capability-auswahl)
* [Performance-Überlegungen](#performance-überlegungen)
* [Fehlerbehandlung](#fehlerbehandlung)
 

-------

Auf Grundlage der Anwendungsszenarien und den dort abgeleiteten Anforderungen (siehe [Anwendungsfälle](use-cases.md)) lassen sich Implementierungsansätze ableiten. Im Nachfolgenden werden diese Implementierungsansätze in Form von abstrahierten **Workflows**, die den Charakter einer Musterlösung aufweisen, näher vorgestellt. Die Grundlage für die Definition eines Workflows bilden die sogenannten **Capabilities**.

### Capabilities

Anhand der Anwendungsszenarien wird deutlich, dass Fragebögen auf verschiedene Arten und Weisen erhoben, verarbeitet und angezeigt sowie zu verschiedenen Zwecken verwendet werden können.

Das Modul muss also die übergeordnete Anforderung erfüllen, Fragebögen möglichst flexibel für unterschiedliche Zwecke, bei gleichzeitiger Wahrung der semantischen Konsistenz und über verschiedene Anwendungsfälle hinweg, bereitzustellen. Um diese Anforderung zu erfüllen, muss zusätzlich zur Definition eines standardisierten Fragebogens spezifiziert werden, zu welchem Zweck dieser eingesetzt werden soll, besser, durch die Unterstützung welcher Fähigkeiten der intendierte Zweck erfüllt wird.

Deshalb wurden folgende Fähigkeiten (**Capabilities**), die zur Definition eines Fragebogens hinzugezogen werden können und beliebig kombinierbar sind, festgelegt:

* `collectable` (erfassbar): Wie Daten von Nutzern **eingegeben** werden
* `populatable` (vorausfüllbar): Wie existierende Daten **geladen** werden
* `calculatable` (berechenbar): Wie Scores aus Daten **berechnet** werden
* `displayable` (anzeigbar): Wie Daten/Ergebnisse **dargestellt** werden
* `extractable` (extrahierbar): Wie Daten aus dem Fragebogenformat in andere FHIR-Ressourcen **überführt** werden

### Workflow-Patterns

#### Standard Workflow

Der Standard-Workflow orientiert sich an der FHIR-Kernspezifikation und den vorgesehenen FHIR Ressourcen zur Definition von Fragebögen, zur Abbildung von Antwortbögen sowie zur Extraktion erhobener Antworten als weiterverarbeitbare Wertangabe.

**Ablauf**:

1. Üblicherweise füllt ein Patient einen Fragebogen, der als FHIR Questionnaire (Q) definiert ist und über ein User Interface (UI) angezeigt wird, aus
1. Die eingegebenen Antworten werden danach als FHIR QuestionnaireResponse (QR) gespeichert, wenn vorgesehen ein Score ermittelt

**Verwendete Capabilities**: displayable, collectable

**Beispiel**: Erhebung von Symptomschwere mit EORTC-QLQ-Fragebögen begleitend zu und folgend auf eine/r Strahlentherapie/Systemtherapie-Behandlung in der Onkologie

-------

#### Workflow-Pattern 1: Direkte Erfassung mit Echtzeit-Berechnung

Dieses Workflow-Pattern fokussiert eine direkte, d.h. nicht zeitversetzte, Beantwortung eines Fragebogens über ein User Interface (UI) und einer Score-Berechnung nach erfolgter Eingabe der Antworten.

**Ablauf**:

1. Ein Patient füllt einen Fragebogen über ein UI aus, in dem er die enthaltenen Fragen beantwortet
1. Anhand der Antworten und der definierten Score-Berechnungsvorschrift wird der Score in Echtzeit berechnet
1. Optional werden die Antworten und der berechnete Score auf einem Server, z.B. FHIR Server, für die Weiterverarbeitung gespeichert
1. Der berechnete Score wird dem Patienten sofort im UI angezeigt

**Verwendete Capabilities:** `[collectable, calculatable, displayable, extractable]`

**Beispiel**: DiGA-Smartphone-App mit In-App-Scoreberechnung

-------

#### Workflow-Pattern 2: Mobile Erfassung mit Server-Berechnung

Dieses Workflow-Pattern fokussiert die alleinige Beantwortung eines Fragebogens über ein User Interface auf Clientseite und einer anschließenden Score-Berechnung und Speicherung auf Serverseite.

**Ablauf**:

1. Ein Patient füllt einen Fragebogen, z.B. über eine Mobile App, aus, in dem er die enthaltenen Fragen beantwortet
1. Anschließend werden die Antworten, ggf. eine Information zum ausgefüllten Fragebogen, an den Server gesendet
1. Der Server berechnet anhand der definierten Score-Berechnungsvorschrift den Score und extrahiert ggf. relevante Antworten als eigenständiges Datum
1. Die berechneten und extrahierten Daten werden z.B. in einem FHIR Server gespeichert

**Verwendete Capabilities:**

* Client (Mobile App): `[collectable]`
* Server (Server): `[populatable, calculatable, extractable]`

**Beispiel**: Leichtgewichtige mobile PRO-App

-------

#### Workflow-Pattern 3: Historische Neuberechnung

Dieses Workflow-Pattern beschreibt die erneute, ggf. über einen Dienst automatisiert ausgeführte, Score-Berechnung ohne weitere Nutzerinteraktion.

**Ablauf**:

1. Die bereits in der Vergangenheit erfassten Antworten zu einem Fragebogen werden einem Dienst bereitgestellt
1. Der Dienst lädt den zugrunde liegenden Fragebogen und die Score-Berechnungsvorschriften
1. Der Dienst berechnet anhand der neuen Score-Berechnungsvorschrift den Score
1. Die berechneten und extrahierten Daten werden z.B. in einem FHIR Server gespeichert

**Verwendete Capabilities:** `[populatable, calculatable, extractable]`

**Beispiel**: Migration auf neue Scoring-Algorithmen oder Datenharmonisierung

-------

#### Workflow-Pattern 4: Klinische Ergebnisansicht

Im Zusammenhang mit der Versorgung eines Patienten oder der Analyse von Kohortendaten erfolgt eine Einsicht einzelner oder aggregierter Datensätze ohne Neuberechnung.

**Ablauf**:

1. Berechtigter Nutzer mit lesender Zugriffsberechtigung selektiert Daten
1. Die vorhandenen Daten, bestehend aus Antworten und zugehörigen gespeicherten Scores, werden angezeigt

**Verwendete Capabilities**: `[populatable, displayable]`

**Beispiel**: Arzt-Dashboard im KIS

-------

#### Workflow-Pattern 5: Reine Datenerfassung

Im Zusammenhang mit der Versorgung eines Patienten findet eine reine Datenerfassung ohne Berechnungen, z.B. nachträgliche Transkription, statt.

**Ablauf**:

1. Berechtigter Nutzer (z.B. medizinische Fachkraft) erfasst die Antworten zu einem Fragebogen
1. Antworten werden in FHIR-konformer Zielstruktur, z.B. als FHIR QuestionnaireResponse, gespeichert
1. Optional findet ein nachgelagertes Scoring, z.B. durch externe Dienste, statt

**Verwendete Capabilities**: `[collectable, extractable]`

**Beispiel**: Papier-zu-Digital-Erfassung

-------

### Score-Repräsentation

Anhand der verschiedenen Workflow-Patterns wird ersichtlich, dass unterschiedliche Repräsentationsformen für die Darstellung eines Scores existieren.

Die grundlegende Repräsentationsform für einen berechneten Score ist die Abbildung als eigenständiges Item in einem FHIR QuestionnaireResponse. Falls für die weiterführenden Analysen nur der Score und nicht die tatsächlichen Antworten relevant sind, lässt sich der berechnete Score aus dem FHIR QuestionnaireResponse extrahieren und als FHIR Observation darstellen. Ein auf diese Weise extrahierter und gespeicherter Score kann, sofern empirisch validierte Regeln zum Mapping auf einen domänenspezifischen T-Score existieren und definiert wurden, auf den domänenspezifischen T-Score abbilden.

Auf diese Weise kann eine Instrument-unabhängige Auswertung und ein domänenspezifischer Vergleich der erhobenen Daten durchgeführt werden.

-------

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

-------

### Best Practices

#### Capability-Auswahl

Die Auswahl der Capabilities sollte sich nach dem Anwendungsfall richten:

* **Patientenportale**: `[collectable, calculatable, displayable]`
* **Mobile Apps**: Nur `[collectable]` (minimaler Footprint)
* **Server-Systeme**: `[populatable, calculatable, extractable]`
* **Reporting-Systeme**: Nur `[displayable]`

#### Performance-Überlegungen

* Berechnungen in der UI nur bei kleinen Fragebögen
* Server-seitige Berechnung für komplexe Scores
* Caching von ObservationDefinitions
* Batch-Processing für historische Daten

#### Fehlerbehandlung

* Validierung aller Pflichtfelder vor Score-Berechnung
* Klare Fehlermeldungen bei ungültigen Werten
* Fallback-Strategien für fehlende Capabilities
* Logging von Mapping-Fehlern

