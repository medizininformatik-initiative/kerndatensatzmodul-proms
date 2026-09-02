# Scoring - MII IG PRO v2026.7.0

## Scoring

### Überblick

Das MII PRO-Modul unterstützt drei Scoring-Kanäle entlang des Workflows **Questionnaire → QuestionnaireResponse → Observation**. Alle drei Kanäle führen zum selben Ergebnis: einer Score-Observation, die gegen die Score-Profile dieses Moduls valide ist. Sie unterscheiden sich darin, **wo gerechnet wird** und **was als autoritative Quelle des Algorithmus gilt**.

| | | | |
| :--- | :--- | :--- | :--- |
| **A — Client-Scoring** | Im Renderer (FHIRPath`calculatedExpression`) | `collectable`+`calculatable`+`displayable` | Interaktives Ausfüllen mit Live-Score |
| **B — Server-Scoring** | Auf dem Server (CQL Library,`Library/$evaluate`) | `populatable`+`calculatable`+`extractable` | On-Command-/Batch-Scoring score-loser QuestionnaireResponses |
| **C — Externes Scoring** | Im Quellsystem (REDCap, EDC, R, klinisches System) | `extractable`(reine Import-Schicht) | Vorberechnete Scores, FHIR als Transport- und Harmonisierungsschicht |

Das **Score-Item im Questionnaire** (readOnly, mit `code` und `observation-extract`) ist der gemeinsame Vertrag der Kanäle A und B: Kanal A füllt es live beim Ausfüllen, Kanal B füllt es nachträglich aus den Item-Antworten. Kanal C nutzt es bewusst **nicht** (siehe ETL-Regel unten).

Die Antwort-**Gewichte** sind in allen Kanälen dieselben: Sie sind normativ in den MII-CodeSystems definiert (`ordinalValue`-Extension an den Konzepten). Kanal A liest sie über die FHIRPath-Funktion `ordinal()`, Kanal B repliziert sie als geprüfte Lookup-Tabellen in der CQL-Library, Kanal C muss algorithmische Übereinstimmung mit den publizierten Scoring-Manualen der Instrumente nachweisen.

-------

### Kanal A — Client-Scoring (FHIRPath im Renderer)

Der Renderer wertet die `calculatedExpression` (SDC, `text/fhirpath`) live beim Ausfüllen aus; der Score landet unmittelbar im Score-Item der QuestionnaireResponse.

**Variable-basiertes Muster (empfohlen)** — vermeidet zirkuläre Abhängigkeiten zwischen Roh- und transformierten Scores:

```
// FSH — PROMIS Depression SF 4a
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "rawScore"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.item.where(linkId.matches('^promis-eddep(04|06|29|41)$')).answer.value.ordinal().sum()"

// Score-Item referenziert die Variable
* item[=].extension[+].url = $sdc-questionnaire-calculated-expression
* item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].extension[=].valueExpression.expression = "%rawScore"

```

**Geeignet für**: Summenscores, Subskalen, einfache Lookup-Transformationen (T-Score-Tabellen als `iif`-Ketten).

**Grenzen**: Der Renderer muss die SDC-Expressions unterstützen; komplexe Logik (Half-Rules für fehlende Items, Tariff-Algorithmen, statistische Konversionen) ist in FHIRPath nicht oder nur unwartbar abbildbar — solche Scores existieren ausschließlich in Kanal B.

-------

### Kanal B — Server-Scoring (CQL, on command)

Der **autoritative Kanal**. Jedes berechenbare Instrument erhält eine CQL-Library (`mii-lib-pro-{instrument}`), die als FHIR `Library`-Ressource mit beiden Inhaltsformen ausgeliefert wird: `text/cql` (lesbarer Quelltext) und `application/elm+json` (vorkompiliert, deterministisch in CI erzeugt).

**Anbindung an das Questionnaire** über die `cqf-library`-Extension mit **versionierter** Canonical (Reproduzierbarkeit — analog zum versionierten `meta.profile`):

```
// FSH
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-library"
* extension[=].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Library/mii-lib-pro-phq-9|1.0.0"

```

**Konvention define ↔ linkId**: Der Name des CQL-`define`, das einen Score berechnet, entspricht der `linkId` des zugehörigen Score-Items (bzw. wird über `item.code` aufgelöst). Damit kann eine generische Scoring-Strecke das Ergebnis dem richtigen Item bzw. der richtigen Observation zuordnen.

**Aufruf**: `Library/{id}/$evaluate` — pro QuestionnaireResponse oder als Batch über eine Kohorte. Hinweis für HAPI-FHIR-Implementierungen: `$populate`/`$extract` werten `calculatedExpression` **nicht** aus; serverseitiges Scoring läuft über `Library/$evaluate` bzw. eine vorgelagerte Scoring-Strecke.

**Einsatz**:

* QuestionnaireResponses, die **ohne Score** ankommen (mobile Erfassung, EDC-Ingestion, Teil-Instrumente)
* Scores, die FHIRPath nicht abbilden kann (EQ-5D-5L-Index-Tariff, EORTC-Half-Rule, PROMIS-16 PROPr, Score-Crosswalks wie BDI-II → PROMIS)
* Retrospektive Neuberechnung zur Qualitätssicherung (siehe unten)

**Vertrag zwischen Kanal A und B**: Wo derselbe Score in beiden Sprachen existiert, sichern Differential-Tests (identische Golden-QuestionnaireResponses durch beide Engines, Ergebnisse verglichen) die Übereinstimmung. Bei Abweichung gilt Kanal B als Referenz.

-------

### Kanal C — Externes Scoring (vorberechnet, nur gemappt)

Der Score wurde außerhalb von FHIR berechnet — in REDCap, einem EDC-System, einer R-Pipeline oder einem klinischen Primärsystem — und wird lediglich als Observation in die MII-Strukturen **gemappt**. FHIR ist hier Transport- und Harmonisierungsschicht, nicht Berechnungsumgebung.

**Anforderungen an die importierte Score-Observation**:

* `meta.profile` mit versionierter Canonical des passenden Score-Profils
* `derivedFrom` → QuestionnaireResponse, **sofern** die Item-Antworten mit übermittelt wurden
* `method` benennt den Algorithmus bzw. das Scoring-Manual (inkl. Version/Publikation)
* Provenance des Quellsystems, wenn keine QuestionnaireResponse existiert (Score ohne Rohdaten)

**Vertrauensmodell**: Das MII-Modul rechnet importierte Scores nicht automatisch nach — die Verantwortung für algorithmische Korrektheit liegt beim Quellsystem. **Empfohlene Qualitätssicherung**: Liegen die Item-Antworten vor, kann der Score über Kanal B nachgerechnet und verglichen werden; Abweichungen deuten auf Implementierungsunterschiede im Quellsystem hin (Rundung, Missing-Handling, veraltete Manuale).

-------

### ETL-Regel: Score in die QuestionnaireResponse schreiben oder direkt eine Observation anlegen?

Für Import- und Scoring-Strecken gilt eine klare Trennung nach Kanal:

**Kanal B (Server rechnet aus den Antworten):** Die Strecke **darf** das Score-Item der QuestionnaireResponse befüllen **und** extrahiert die Observation. Der Score ist aus genau den Antworten dieser QuestionnaireResponse abgeleitet — das Score-Item dokumentiert dann wahrheitsgemäß das Ergebnis der modulkonformen Berechnung.

**Kanal C (Score kommt vorberechnet an):** Die Strecke legt **ausschließlich die Observation an und verändert die QuestionnaireResponse nicht.** Begründung:

1. **Dokumentintegrität**: Die QuestionnaireResponse ist das Erfassungsdokument — sie bezeugt, was zum Erfassungszeitpunkt erhoben (und ggf. berechnet) wurde. Ein nachträglich injizierter Fremd-Score fingiert ein Erfassungsereignis, das nie stattgefunden hat.
1. **Struktur**: Teil-Instrumente und Fremdsysteme liefern QuestionnaireResponses häufig ohne Score-Item (oder ganz ohne QuestionnaireResponse) — das Befüllen wäre gar nicht einheitlich möglich.
1. **Abfragemuster**: Konsumenten des Kerndatensatzes suchen Scores als Observations, nicht in QuestionnaireResponse-Items. Die Observation mit`derivedFrom`,`method`und Provenance trägt alle nötige Nachvollziehbarkeit.

Sonderfall: Liefert ein Fremdsystem eine QuestionnaireResponse, deren Score-Item bereits **client-seitig** (Kanal A) gefüllt wurde, bleibt diese unverändert — die Extraktion erzeugt daraus regulär die Observation.

-------

### Multi-Score-Questionnaires

Komplexe Fragebögen erzeugen mehrere Scores (Beispiel EQ-5D-5L: Index, VAS, Profil; PROMIS-29: acht Domänen jeweils Raw + T-Score). Pro Score gilt:

* ein eigenes Score-Item mit eindeutigem `code`,
* eine eigene ObservationDefinition (inkl. populationsspezifischer Referenzbereiche),
* in Kanal A das Variable-Muster zur Vermeidung zirkulärer Abhängigkeiten,
* in Kanal B ein eigenes `define` in derselben Instrument-Library.

-------

### Qualitätssicherung

* **Differential-Tests Kanal A ↔ B**: identische Test-QuestionnaireResponses (Minimum, Maximum, uniforme Antworten, fehlende Items, Opt-outs) durch beide Engines; Ergebnisse müssen exakt übereinstimmen.
* **Gewichts-Konsistenz**: CI-Prüfung, dass die Lookup-Tabellen der CQL-Libraries mit den `ordinalValue`-Gewichten der CodeSystems übereinstimmen.
* **Import-Validierung (Kanal C)**: stichprobenhafte Nachberechnung über Kanal B, wo Item-Antworten vorliegen.
* **Versionsbindung**: Score-Observations referenzieren die Library-Version (bzw. das Scoring-Manual) — jede Score-Zahl bleibt auf ihren Algorithmus rückführbar.

-------

### Abgrenzung: Klinische Interpretation

Cut-off-Werte, Schweregrad-Kategorien und Vergleichsmetriken (MID/MCID) werden in diesem Modul bewusst **nicht als ausführbare Logik** ausgeliefert, sondern ausschließlich dokumentiert (siehe **Abgeleitete Metriken**). Hintergrund: Software, die aus PRO-Antworten Scores berechnet **und klinisch interpretiert**, kann als Medizinprodukte-Software im Sinne der EU-MDR qualifizieren (vgl. MDCG 2019-11; Regel 11 Anhang VIII MDR). Die Qualifizierung richtet sich nach der Zweckbestimmung des jeweiligen Herstellers/Betreibers der ausführenden Software — nicht nach dieser Spezifikation. Implementierungen in der Versorgung können die MDR-Relevanz eines Formulars maschinenlesbar über die gematik-Extension `ISiKMpFormularExtension` (ISiK ab Stufe 6) kennzeichnen.

