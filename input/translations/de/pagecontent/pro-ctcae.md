### Übersicht

Das **PRO-CTCAE** ist ein vom US National Cancer Institute (NCI) entwickeltes Messsystem zur patientenberichteten Erfassung symptomatischer Nebenwirkungen in onkologischen klinischen Studien. Anders als klassische PRO-Instrumente ist PRO-CTCAE keine einzelne Fragebogeninstanz, sondern eine **Item-Bibliothek**, aus der studien- und tumorspezifische Fragebögen zusammengestellt werden.

### Grundlegende Eigenschaften

| Eigenschaft | Beschreibung |
|---|---|
| **Instrument-Typ** | Item-Bibliothek (kein fester Fragebogen) |
| **Items** | 124 Items zu 78 Nebenwirkungen (Adverse Events) |
| **Attribute** | Frequency (Häufigkeit), Severity (Schwere), Interference (Beeinträchtigung) |
| **Antwortskalen** | 5-Punkt Likert (0-4) für die 3 Hauptattribute, binär (Ja/Nein) für Präsenz |
| **Sprachen** | 60+ validierte Übersetzungen inkl. Deutsch (NCI-autorisiert) |
| **Recall-Zeitraum** | Letzte 7 Tage |
| **Lizenz** | Frei verfügbar (NCI, kein Copyright) |
| **SNOMED CT** | Kein dedizierter Code (MII-kontrollierte Terminologie) |

### Item-Bibliothek-Konzept

PRO-CTCAE funktioniert als **modulare Item-Bank**. Investigatoren wählen die für ihre Studie relevanten Nebenwirkungen aus und stellen daraus einen tumorspezifischen Fragebogen zusammen:

```
124 Items (Item-Bibliothek)
  ├── Brustzentrum-Subset: 21 Symptome → 36 Items
  ├── Prostata-Subset: 19 Symptome → ~35 Items
  ├── Multiples Myelom: 19 Symptome → ~35 Items
  └── Weitere tumorspezifische Subsets nach Bedarf
```

Jedes Adverse Event hat 1-3 Items, abhängig von der AE-Konfiguration:

| Konfiguration | Items pro AE | Beispiel |
|---|---|---|
| Severity only | 1 | Mundtrockenheit |
| Frequency only | 1 | Durchfall |
| Interference/Amount only | 1 | Haarausfall |
| Frequency + Severity | 2 | Übelkeit |
| Severity + Interference | 2 | Müdigkeit |
| Frequency + Interference | 2 | Harndrang |
| Frequency + Severity + Interference | 3 | Schmerzen |
| Presence (Ja/Nein) | 1 | Hautausschlag |

### Scoring: Composite Grading Algorithm

### Prinzip

Der NCI Composite Grading Algorithm (Basch et al., Clinical Trials 2021) fasst die 1-3 Itemwerte einer Nebenwirkung zu einem einzelnen **Composite Grade (0-3)** zusammen, analog zu den CTCAE-Graden für symptomatische Nebenwirkungen.

### Algorithmus

179 Kombinationen aus Frequency, Severity und Interference werden auf Grades 0-3 abgebildet. Der Algorithmus wurde von 20 klinischen Investigators im Konsensverfahren entwickelt und quantitativ validiert.

**Beispiel: AE mit Frequency + Severity + Interference (Rank 7)**

| F\S\I | 0 | 1 | 2 | 3 | 4 |
|---|---|---|---|---|---|
| **F=1, S=0** | 0 | 1 | 1 | 2 | 2 |
| **F=1, S=1** | 1 | 1 | 1 | 2 | 2 |
| **F=1, S=2** | 1 | 2 | 2 | 2 | 3 |
| **F=2, S=2** | 2 | 2 | 2 | 3 | 3 |
| **F=3, S=3** | 2 | 2 | 3 | 3 | 3 |
| **F=4, S=4** | 2 | 2 | 3 | 3 | 3 |

### Average Composite Score (ACS)

Der ACS ist der Mittelwert aller Composite Grades zu einem Messzeitpunkt und reflektiert die **Gesamtbelastung durch Nebenwirkungen**:

```
ACS = Summe(Composite Grades) / Anzahl(bewertete Symptome)
```

- Bereich: 0.0 - 3.0 (kontinuierlich)
- Symptome mit Opt-Out-Antworten werden ausgeschlossen (nicht als 0 gewertet)

### FHIR-Implementierung

### Architektur

Die PRO-CTCAE Implementierung nutzt eine **CQL-basierte Scoring-Architektur**:

```
QuestionnaireResponse (Rohantworten)
  │
  ├── Form Renderer → calculatedExpression → Score im QR → $extract → Observations
  │   (Client-seitig, für interaktive Formulare)
  │
  └── Library/$evaluate → CQL CompositeGrade() → FastAPI ETL → Observations
      (Server-seitig, für Import/ETL-Strecken)
```

**Architektur-Entscheidung (Spike April 2026):** HAPI FHIR CR evaluiert `calculatedExpression` weder bei `$extract` noch bei `$populate`. Server-seitiges Scoring erfolgt über `Library/$evaluate` mit einer dedizierten CQL Library.

### Ressourcen-Übersicht

| Ressource | Id | Beschreibung |
|---|---|---|
| **CodeSystem** | `mii-cs-pro-pro-ctcae` | 124 Items, 78 AEs, EN+DE, Opt-Out-Codes |
| **ValueSet (9x)** | `mii-vs-pro-pro-ctcae-*` | Frequency, Severity, Interference, Presence + Spezialskalen |
| **Questionnaire** | `mii-qst-pro-pro-ctcae-breast-de` | Brustzentrum-Subset (21 Symptome, DE) |
| **ObservationDefinition** | `mii-obsdef-pro-score-proctcae-composite-grade` | Composite Grade (0-3) |
| **ObservationDefinition** | `mii-obsdef-pro-score-proctcae-acs` | Average Composite Score (0.0-3.0) |
| **CQL Library** | `mii-lib-pro-ctcae` | CompositeGrade(), ACS, Opt-Out-Handling |

### CQL Library

Die CQL Library `PRO_CTCAE` implementiert den vollständigen NCI Composite Grading Algorithm:

```cql
// Haupteintrittspunkt — gibt Tuple {score, absentReason} zurück
define CompositeGradeResult:
  case
    when optOutNotApplicable then Tuple { score: null, absentReason: 'not-applicable' }
    when optOutPreferNotToAnswer then Tuple { score: null, absentReason: 'asked-declined' }
    else Tuple { score: CompositeGrade, absentReason: null }
  end

// ACS mit Opt-Out-Filtering
define ACSResult:
  Tuple {
    score: Avg(compositeScores where not null),
    scoredCount: Count(compositeScores where not null),
    excludedCount: Count(compositeScores where null)
  }
```

### dataAbsentReason bei Opt-Out-Antworten

Einige PRO-CTCAE Items haben Opt-Out-Optionen (z.B. "Nicht sexuell aktiv", "Trifft nicht auf mich zu"). Diese führen zu keinem Score — die resultierende Observation erhält stattdessen `dataAbsentReason`:

| Opt-Out Antwort | FHIR dataAbsentReason | Beschreibung |
|---|---|---|
| Trifft nicht auf mich zu | `not-applicable` | Frage ist für den Patienten nicht relevant |
| Nicht sexuell aktiv | `not-applicable` | Domäne nicht zutreffend |
| Möchte nicht antworten | `asked-declined` | Patient verweigert die Antwort |

### Spezielle Antwortskalen

Neben den 4 Basis-Skalen gibt es erweiterte Skalen für spezifische Items:

| ValueSet | Items | Zusätzliche Optionen |
|---|---|---|
| `severity-radiation` | Radiatio (#36) | + "Trifft nicht auf mich zu" |
| `severity-sexual` | Erektion, Sexuelles Interesse, Vaginalschmerz (#66, 68, 71) | + "Nicht sexuell aktiv" + "Möchte nicht antworten" |
| `frequency-sexual` | Ejakulationsprobleme (#67) | + "Nicht sexuell aktiv" + "Möchte nicht antworten" |
| `presence-na` | Regelblutung, Injektionsstelle (#57, 58, 79) | + "Trifft nicht auf mich zu" |
| `presence-sexual` | Orgasmus (#69, 70) | + "Nicht sexuell aktiv" + "Möchte nicht antworten" |

### Brustzentrum-Subset (21 Symptome)

Das erste implementierte Subset basiert auf der Validierungsstudie von Hamacher et al. (BMC Cancer 2023) an drei deutschen ambulanten Tumorzentren mit 101 Brustkrebspatientinnen.

### Ausgewählte Symptome

| # | Symptom | AE-Nr. | Attribute | Items |
|---|---|---|---|---|
| 1 | Müdigkeit/Erschöpfung | 53 | Sev + Int | 2 |
| 2 | Taubheit/Kribbeln | 39 | Sev + Int | 2 |
| 3 | Übelkeit | 9 | Frq + Sev | 2 |
| 4 | Muskelschmerzen | 50 | Frq + Sev + Int | 3 |
| 5 | Schlafprobleme | 52 | Sev + Int | 2 |
| 6 | Haarausfall | 27 | Amount | 1 |
| 7 | Gelenkschmerzen | 51 | Frq + Sev + Int | 3 |
| 8 | Verschwommenes Sehen | 41 | Sev + Int | 2 |
| 9 | Konzentrationsprobleme | 46 | Sev + Int | 2 |
| 10 | Schmerzen (allgemein) | 48 | Frq + Sev + Int | 3 |
| 11 | Durchfall | 16 | Frq | 1 |
| 12 | Verstopfung | 15 | Sev | 1 |
| 13 | Geschmacksveränderungen | 7 | Sev | 1 |
| 14 | Schwindel | 40 | Sev + Int | 2 |
| 15 | Kurzatmigkeit | 19 | Sev + Int | 2 |
| 16 | Herzklopfen | 23 | Frq + Sev | 2 |
| 17 | Gedächtnisprobleme | 47 | Sev + Int | 2 |
| 18 | Arm-/Beinschwellung | 22 | Frq + Sev + Int | 3 |
| 19 | Hautausschlag | 24 | Präsenz | 1 |
| 20 | Nagelfurchen | 32 | Präsenz | 1 |
| 21 | Nagelverfärbungen | 33 | Präsenz | 1 |

**Gesamt: 36 Items**

### Referenzen

1. Basch E, Reeve BB, Mitchell SA, et al. Development of the National Cancer Institute's Patient-Reported Outcomes Version of the Common Terminology Criteria for Adverse Events (PRO-CTCAE). *J Natl Cancer Inst.* 2014;106(9):dju244.
2. Basch E, Becker C, Rogak LJ, et al. Composite grading algorithm for the National Cancer Institute's Patient-Reported Outcomes version of the Common Terminology Criteria for Adverse Events (PRO-CTCAE). *Clinical Trials.* 2021;18(1):104-114.
3. Haverkamp C, et al. Validation of the German patient-reported outcomes version of the common terminology criteria for adverse events (PRO-CTCAE). *Ann Oncol.* 2016;27(suppl_6):vi369.
4. Hamacher S, et al. Developing tumor-specific PRO-CTCAE item sets: analysis of a cross-sectional survey in three German outpatient cancer centers. *BMC Cancer.* 2023;23:638.
5. NCI PRO-CTCAE Item Library v1.0 — German. Available at: https://healthcaredelivery.cancer.gov/pro-ctcae/
