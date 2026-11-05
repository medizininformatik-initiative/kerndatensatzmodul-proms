# Derived Metrics - MII IG PRO v2027.0.0-ballot.1

* [**Table of Contents**](toc.md)
* [**Scoring**](scoring.md)
* **Derived Metrics**

## Derived Metrics

Abgeleitete Metriken sind der Schritt **nach** dem Scoring: Ein berechneter Score wird erst dann klinisch handlungsleitend, wenn etwas ihn gegen Referenzwissen vergleicht und eine Schlussfolgerung zieht — Schweregradeinstufung, Schwellenwert-Alarm, Verlaufsänderung, Versorgungsempfehlung. Diese Seite beschreibt das Konzept, auf das das Modul hinarbeitet; die Bausteine folgen dem Datenfluss.

> **Status:** Konzept (Roadmap 2027). Heute ausgeliefert: die Score-Observations und die ObservationDefinitions mit dokumentierten Referenzbereichen. Der Interpretationsschritt selbst ist bewusst noch **keine** ausführbare Logik — siehe die [MDR-Abgrenzung auf der Scoring-Seite](scoring.md).

### Die Pipeline

```
QuestionnaireResponse
      │  (Scoring — Kanäle A/B, siehe Scoring)
      ▼
Observation (Score)                    ObservationDefinition
      │                                  qualifiedInterval:
      │   FHIR CDS Hooks                 Cut-offs, Schweregrade,
      ▼   (z. B. bei Observation-Anlage) Populationsnormen
CDS-Service ──── vergleicht Score ───────────┘
      │          gegen die Definition
      ▼
Ergebnis: CDS Cards / PlanDefinition ($apply) → CarePlan, ServiceRequest, Task

```

### 1. Die Score-Observation ist der Auslöser

Jeder berechnete Score landet als **Observation** konform zu `mii-pr-pro-score-instance`, mit `derivedFrom` auf die QuestionnaireResponse. Die Anlage dieser Observation ist der natürliche Triggerpunkt: Ein **CDS-Hooks**-Service, der auf Score-Anlagen abonniert ist (oder ein Subscription-basiertes Äquivalent), erhält das Ereignis, ohne dass Formular-Client oder ETL-Strecke Interpretationslogik kennen müssen.

### 2. Die ObservationDefinition ist der Vergleichsmaßstab

Die ObservationDefinitions des Moduls sind kein Dokumentationsschmuck — sie sind das **maschinenlesbare Vergleichswissen**:

* `quantitativeDetails` legt Einheit und Wertebereich fest,
* `qualifiedInterval` trägt die publizierten Cut-offs und Schweregrade (z. B. PHQ-9: 5/10/15/20; GAD-7: 5/10/15), jeweils mit `context` (Kategorie) und `appliesTo`/`age` (Population),
* die [Score-Health-Correlation-Extension](StructureDefinition-mii-ex-pro-score-score-health-correlation.md) sagt dem Service, **welche Richtung schlecht ist** — ohne sie ist „Score um 10 gestiegen" nicht interpretierbar (EORTC-Funktionsskalen steigen mit der Gesundheit, Symptomskalen mit der Last).

Ein CDS-Service braucht damit kein einprogrammiertes Instrumentenwissen: Er löst die `instantiates`-Referenz der Observation zur ObservationDefinition auf und wertet die dort gefundenen Intervalle aus. Neues Instrument, derselbe Service.

### 3. Das Ergebnis ist selbst ein FHIR-Artefakt

Das Vergleichsergebnis soll nicht in einem proprietären Alarm verschwinden. Zwei komplementäre Formen:

* **CDS Cards** (die CDS-Hooks-Antwort) für den interaktiven Moment: „PHQ-9 = 18, Stufe **mittelschwer bis schwer**; Vorschlag: …" — angezeigt im Primärsystem am Ort der Versorgung.
* **PlanDefinition / ActivityDefinition** für das stehende Wissen: Die Regel „PHQ-9 ≥ 15 → psychiatrische Abklärung empfehlen" lebt als PlanDefinition; `$apply` instanziiert sie für die konkrete Patientin in einen **CarePlan**, **ServiceRequest** oder **Task**. So bleibt die Empfehlung selbst versionierbar, reviewbar und — wie alles hier — eine gewöhnliche FHIR-Ressource.

Longitudinale Metriken (Änderungsscores, Reliable-Change-Indizes, MID/MCID-Überschreitung) folgen demselben Muster: Das Vergleichswissen erweitert die ObservationDefinition-Seite, die Berechnung liegt in CQL, das Ergebnis ist wieder eine Observation oder eine Card.

### Warum dieser Verantwortungsschnitt

* **Trennung von Messung und Urteil.** Scoring (Arithmetik, instrumentendefiniert) bleibt in den Scoring-Kanälen; Interpretation (klinisch, kontextabhängig) sitzt hinter einer expliziten Service-Grenze. Diese Grenze ist zugleich die **regulatorische** — siehe die Medizinprodukte-Abgrenzung.
* **Eine Quelle der Vergleichswahrheit.** Cut-offs leben einmal, in der ObservationDefinition — nicht kopiert in jeden Renderer und jeden ETL-Job.
* **Populationsspezifische Bereiche** (Altersstrata, indikationsspezifische Normen) sind zusätzliche `qualifiedInterval`s mit `appliesTo` — der Service wählt das zutreffende; die Pipeline-Form ändert sich nicht.

### Offene Designfragen (2027)

1. Hook-Wahl und Granularität: dedizierter PRO-Hook vs. generisches`observation-create`; Batch-Scoring vs. Einzelereignisse.
1. Wo CQL endet und PlanDefinition-Logik beginnt — dieselbe Grenzfrage wie in der[Drei-Kanal-Scoring-Architektur](scoring.md).
1. Governance der Empfehlungsartefakte: Wer reviewt und versioniert PlanDefinitions mit klinischen Schwellenwerten (TF-KDS vs. Fachgesellschaften)?
1. MID/MCID: nach aktueller Entscheidung als Text dokumentiert; eine maschinenlesbare Repräsentation würde das Vergleichsvokabular erweitern.

