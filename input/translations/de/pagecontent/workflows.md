- [Capabilities](#capabilities)
- [Workflow-Patterns](#workflow-patterns)
    - [Standard Workflow](#standard-workflow)
    - [Direkte Erfassung mit Echtzeit-Berechnung](#workflow-pattern-1-direkte-erfassung-mit-echtzeit-berechnung)
    - [Mobile Erfassung mit Server-Berechnung](#workflow-pattern-2-mobile-erfassung-mit-server-berechnung)
    - [Historische Neuberechnung](#workflow-pattern-3-historische-neuberechnung)
    - [Klinische Ergebnisansicht](#workflow-pattern-4-klinische-ergebnisansicht)
    - [Reine Datenerfassung](#workflow-pattern-5-reine-datenerfassung)
- [Score-Repräsentation](#score-repräsentation)
- [Implementierungsmuster](#implementierungsmuster)
    - [Calculated Expressions](#calculated-expressions)
    - [Initial Expressions für Populatable](#initial-expressions-für-populatable)
    - [Extraction zu Observations](#extraction-zu-observations)
- [Best Practices](#best-practices)
    - [Capability-Auswahl](#capability-auswahl)
    - [Performance-Überlegungen](#performance-überlegungen)
    - [Fehlerbehandlung](#fehlerbehandlung)

---

Auf Grundlage der Anwendungsszenarien und den dort abgeleiteten Anforderungen (siehe [Anwendungsfälle](use-cases.html)) lassen sich Implementierungsansätze ableiten. Im Nachfolgenden werden diese Implementierungsansätze in Form von abstrahierten *Workflows*, die den Charakter einer Musterlösung aufweisen, näher vorgestellt. Die Grundlage für die Definition eines Workflows bilden die sogenannten *Capabilities*.

### Capabilities

Anhand der Anwendungsszenarien wird deutlich, dass Fragebögen auf verschiedene Arten und Weisen erhoben, verarbeitet und angezeigt sowie zu verschiedenen Zwecken verwendet werden können.

Das Modul muss also die übergeordnete Anforderung erfüllen, Fragebögen möglichst flexibel für unterschiedliche Zwecke, bei gleichzeitiger Wahrung der semantischen Konsistenz und über verschiedene Anwendungsfälle hinweg, bereitzustellen. Um diese Anforderung zu erfüllen, muss zusätzlich zur Definition eines standardisierten Fragebogens spezifiziert werden, zu welchem Zweck dieser eingesetzt werden soll, besser, durch die Unterstützung welcher Fähigkeiten der intendierte Zweck erfüllt wird.

Deshalb wurden folgende Fähigkeiten (*Capabilities*), die zur Definition eines Fragebogens hinzugezogen werden können und beliebig kombinierbar sind, festgelegt:

- `collectable` (erfassbar): Wie Daten von Nutzern **eingegeben** werden
- `populatable` (vorausfüllbar): Wie existierende Daten **geladen** werden
- `calculatable` (berechenbar): Wie Scores aus Daten **berechnet** werden
- `displayable` (anzeigbar): Wie Daten/Ergebnisse **dargestellt** werden
- `extractable` (extrahierbar): Wie Daten aus dem Fragebogenformat in andere FHIR-Ressourcen **überführt** werden

### Workflow-Patterns

#### Standard Workflow

Der Standard-Workflow orientiert sich an der FHIR-Kernspezifikation und den vorgesehenen FHIR Ressourcen zur Definition von Fragebögen, zur Abbildung von Antwortbögen sowie zur Extraktion erhobener Antworten als weiterverarbeitbare Wertangabe.

**Ablauf**:

1. Üblicherweise füllt ein Patient einen Fragebogen, der als FHIR Questionnaire (Q) definiert ist und über ein User Interface (UI) angezeigt wird, aus
2. Die eingegebenen Antworten werden danach als FHIR QuestionnaireResponse (QR) gespeichert, wenn vorgesehen ein Score ermittelt

<div style="text-align: center;">
<img src="Workflow_Standard.svg" alt="MII PRO Workflow-Pattern: Standard" width="40%"/>
</div>

**Verwendete Capabilities**: displayable, collectable

**Beispiel**: Erhebung von Symptomschwere mit EORTC-QLQ-Fragebögen begleitend zu und folgend auf eine/r Strahlentherapie/Systemtherapie-Behandlung in der Onkologie

---

#### Workflow-Pattern 1: Direkte Erfassung mit Echtzeit-Berechnung

Dieses Workflow-Pattern fokussiert eine direkte, d.h. nicht zeitversetzte, Beantwortung eines Fragebogens über ein User Interface (UI) und einer Score-Berechnung nach erfolgter Eingabe der Antworten.

**Ablauf**:

1. Ein Patient füllt einen Fragebogen über ein UI aus, in dem er die enthaltenen Fragen beantwortet
2. Anhand der Antworten und der definierten Score-Berechnungsvorschrift wird der Score in Echtzeit berechnet
3. Optional werden die Antworten und der berechnete Score auf einem Server, z.B. FHIR Server, für die Weiterverarbeitung gespeichert
4. Der berechnete Score wird dem Patienten sofort im UI angezeigt

<div style="text-align: center;">
<img src="Workflow_Capability-Echtzeit.svg" alt="MII PRO Workflow-Pattern: Capability-basierte Variante, Echtzeit-Berechnung" width="40%"/>
</div>

**Verwendete Capabilities:** `[collectable, calculatable, displayable, extractable]`

**Beispiel**: DiGA-Smartphone-App mit In-App-Scoreberechnung

---

#### Workflow-Pattern 2: Mobile Erfassung mit Server-Berechnung

Dieses Workflow-Pattern fokussiert die alleinige Beantwortung eines Fragebogens über ein User Interface auf Clientseite und einer anschließenden Score-Berechnung und Speicherung auf Serverseite.

**Ablauf**:

1. Ein Patient füllt einen Fragebogen, z.B. über eine Mobile App, aus, in dem er die enthaltenen Fragen beantwortet
2. Anschließend werden die Antworten, ggf. eine Information zum ausgefüllten Fragebogen, an den Server gesendet
3. Der Server berechnet anhand der definierten Score-Berechnungsvorschrift den Score und extrahiert ggf. relevante Antworten als eigenständiges Datum
4. Die berechneten und extrahierten Daten werden z.B. in einem FHIR Server gespeichert

<div style="text-align: center;">
<img src="Workflow_Capability-Server.svg" alt="MII PRO Workflow-Pattern: Capability-basierte Variante, Server-Berechnung" width="50%"/>
</div>

**Verwendete Capabilities:**

- Client (Mobile App): `[collectable]`
- Server (Server): `[populatable, calculatable, extractable]`

**Beispiel**: Leichtgewichtige mobile PRO-App

---

#### Workflow-Pattern 3: Historische Neuberechnung

Dieses Workflow-Pattern beschreibt die erneute, ggf. über einen Dienst automatisiert ausgeführte, Score-Berechnung ohne weitere Nutzerinteraktion.

**Ablauf**:

1. Die bereits in der Vergangenheit erfassten Antworten zu einem Fragebogen werden einem Dienst bereitgestellt
2. Der Dienst lädt den zugrunde liegenden Fragebogen und die Score-Berechnungsvorschriften
3. Der Dienst berechnet anhand der neuen Score-Berechnungsvorschrift den Score
4. Die berechneten und extrahierten Daten werden z.B. in einem FHIR Server gespeichert

<div style="text-align: center;">
<img src="Workflow_Capability-Historisch.svg" alt="MII PRO Workflow-Pattern: Capability-basierte Variante, Historische Neuberechnung" width="40%"/>
</div>

**Verwendete Capabilities:** `[populatable, calculatable, extractable]`

**Beispiel**: Migration auf neue Scoring-Algorithmen oder Datenharmonisierung

---

#### Workflow-Pattern 4: Klinische Ergebnisansicht

Im Zusammenhang mit der Versorgung eines Patienten oder der Analyse von Kohortendaten erfolgt eine Einsicht einzelner oder aggregierter Datensätze ohne Neuberechnung.

**Ablauf**:

1. Berechtigter Nutzer mit lesender Zugriffsberechtigung selektiert Daten
2. Die vorhandenen Daten, bestehend aus Antworten und zugehörigen gespeicherten Scores, werden angezeigt

**Verwendete Capabilities**: `[populatable, displayable]`

**Beispiel**: Arzt-Dashboard im KIS

---

#### Workflow-Pattern 5: Reine Datenerfassung

Im Zusammenhang mit der Versorgung eines Patienten findet eine reine Datenerfassung ohne Berechnungen, z.B. nachträgliche Transkription, statt.

**Ablauf**:

1. Berechtigter Nutzer (z.B. medizinische Fachkraft) erfasst die Antworten zu einem Fragebogen
2. Antworten werden in FHIR-konformer Zielstruktur, z.B. als FHIR QuestionnaireResponse, gespeichert
3. Optional findet ein nachgelagertes Scoring, z.B. durch externe Dienste, statt

**Verwendete Capabilities**: `[collectable, extractable]`

**Beispiel**: Papier-zu-Digital-Erfassung

---

### Score-Repräsentation

Anhand der verschiedenen Workflow-Patterns wird ersichtlich, dass unterschiedliche Repräsentationsformen für die Darstellung eines Scores existieren.

<div style="text-align: center;">
<img src="Workflow_Score_Repraesentation.svg" alt="MII PRO Workflow-Pattern: Score Repräsentationsebenen" width="60%"/>
</div>

Die grundlegende Repräsentationsform für einen berechneten Score ist die Abbildung als eigenständiges Item in einem FHIR QuestionnaireResponse. Falls für die weiterführenden Analysen nur der Score und nicht die tatsächlichen Antworten relevant sind, lässt sich der berechnete Score aus dem FHIR QuestionnaireResponse extrahieren und als FHIR Observation darstellen. Ein auf diese Weise extrahierter und gespeicherter Score kann, sofern empirisch validierte Regeln zum Mapping auf einen domänenspezifischen T-Score existieren und definiert wurden, auf den domänenspezifischen T-Score abbilden.

<div style="text-align: center;">
<img src="Workflow_Domain_Mapping.svg" alt="MII PRO Domain Mapping-Patterns" width="30%"/>
</div>

Auf diese Weise kann eine Instrument-unabhängige Auswertung und ein domänenspezifischer Vergleich der erhobenen Daten durchgeführt werden.

---

### Erhebungskontext {#collection-context}

Eine QuestionnaireResponse oder Score-Observation sagt für sich allein nicht,
*zu welchem Zeitpunkt im Versorgungs- oder Studienverlauf* sie erhoben wurde.
Veränderungsscores, MCID/MID, Verlaufsdarstellungen und Registerauswertungen
brauchen genau das: Der PHQ-9 bei Aufnahme, bei Entlassung und drei Monate
später bildet nur dann eine Messreihe, wenn jede Instanz ihre Position trägt.
Die Extension
[Collection Context](StructureDefinition-mii-ex-pro-collection-context.html)
(Ballot-Kommentar HDB-1030) hält sie an der QuestionnaireResponse und an jeder
daraus abgeleiteten Score-Observation fest.

| Sub-Extension | Inhalt | Modus |
|---|---|---|
| `triggerType` | [Trigger-Ereignistyp](ValueSet-mii-vs-pro-trigger-event-type.html): Baseline, prä-/post-interventionell, Entlassung, Follow-up, kliniker- oder patienteninitiiert, Screening, Diagnostik, Monitoring, Studienendpunkt … | Routine |
| `triggerDate` | Datum des auslösenden Ereignisses (OP, Entlassung), **nicht** das Ausfülldatum; Follow-ups beziehen sich auf das Referenzereignis | Routine |
| `protocol` | Canonical des Studien- oder Pfadprotokolls (PlanDefinition) | Protokoll |
| `protocolPosition` | Position im Protokoll, z. B. Visitencode `FU-3M` | Protokoll |

Mindestens `triggerType` oder `protocol` ist Pflicht (Invariante `mii-pro-cc-1`);
beide Modi sind kombinierbar, etwa wenn die Entlassung zugleich Referenzereignis
einer Studie ist.

Regeln:

* Der Formular-Filler oder das anfordernde System setzt den Kontext aus dem
  Launch-Context bzw. aus `QuestionnaireResponse.basedOn` (CarePlan /
  ServiceRequest), nie die Patientin oder der Patient. Gemeint ist nicht das
  Zeitfenster im Instrument („in den letzten zwei Wochen").
* Score-Observations übernehmen den Wert der QuestionnaireResponse, aus der sie
  abgeleitet sind (`derivedFrom`); eine Messreihe lässt sich so allein über
  Observations abfragen.
* `encounter` bindet die Erhebung an die Behandlungsepisode, `basedOn` an den
  Erhebungsplan; beide sind in beiden Profilen must-support.
* Eine Messreihe ist Person + Score-Code + Erhebungskontext. Die
  [PHQ-9-Beispiele](Observation-mii-exa-pro-phq-9-observation.html) zeigen
  Baseline, [Entlassung](Observation-mii-exa-pro-phq-9-observation-discharge.html)
  und [3-Monats-Follow-up](Observation-mii-exa-pro-phq-9-observation-follow-up-3m.html).

Die Trigger-Ereignistypen erweitern den NHS Wales PROMs Trigger Event Type um
Messreihenpositionen, Zweck-Konzepte und Studienendpunkte; die Property `axis`
unterscheidet Ereignis und Zweck. Die
[ConceptMap](ConceptMap-mii-cm-pro-trigger-event-type-to-wales.html) bildet auf
Wales ab. Ein vollständig ausmodelliertes Studienbeispiel (Protokoll als
PlanDefinition, Probandenplan als CarePlan) liegt im Repository unter
`docs/discussion/hdb-1030-erhebungskontext/`.

---

### Implementierungsmuster

#### Calculated Expressions

Scores werden mittels FHIRPath-Expressions berechnet:

```
// Einfache Summe
%resource.item.answer.value.weight().sum()

// Gewichtete Summe mit Selektion
%resource.item.where(linkId.matches('^item-[1-9]$')).answer.value.weight().sum()

// Mit Variablen für komplexe Berechnungen
%rawScore = %resource.item.answer.value.weight().sum()
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

### Best Practices

#### Capability-Auswahl

Die Auswahl der Capabilities sollte sich nach dem Anwendungsfall richten:

- **Patientenportale**: `[collectable, calculatable, displayable]`
- **Mobile Apps**: Nur `[collectable]` (minimaler Footprint)
- **Server-Systeme**: `[populatable, calculatable, extractable]`
- **Reporting-Systeme**: Nur `[displayable]`

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
