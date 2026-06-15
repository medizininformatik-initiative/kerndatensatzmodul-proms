# Domain-Based Scoring - MII IG PRO v2026.4.1

## Domain-Based Scoring

### Übersicht

Domänen-basiertes Scoring ermöglicht die Vergleichbarkeit verschiedener PRO-Instrumente durch Abbildung auf gemeinsame Gesundheitsdomänen. Statt isolierter Fragebogen-Scores werden Messwerte auf standardisierte Domänen-Metriken – primär PROMIS T-Scores (Mittelwert=50, SD=10) – transformiert.

Dieser Ansatz adressiert eine zentrale Herausforderung der modernen Versorgungsforschung: die Harmonisierung patientenberichteter Outcomes, die mit heterogenen Instrumenten über verschiedene klinische Standorte, Studien und Versorgungskontexte hinweg erhoben werden.

### Aktuelle wissenschaftliche Evidenz für domänen-basierte Harmonisierung

Zwei rezente Publikationen aus 2025 liefern empirische Evidenz für die methodische Validität des domänen-basierten Harmonisierungsansatzes:

**Intra-Domänen Harmonisierung (Riazy et al., 2025)**

Die Studie von Riazy et al. präsentiert populationsbasierte Referenzdaten für sechs etablierte Depressionsinstrumente (PHQ-9, PHQ-8, CES-D 8, PROMIS Depression SF 4a/8a, WHO-5) aus 29 europäischen Ländern (n=287.530) basierend auf der EHIS Wave 3 Erhebung. Die Arbeit demonstriert die Machbarkeit der Harmonisierung verschiedener Instrumente innerhalb einer einzelnen Gesundheitsdomäne und unterstützt damit den im MII PRO Modul verfolgten Ansatz der domänenspezifischen Score-Transformation.

Referenz: Riazy L, Grote M, Liegl G, Rose M, Fischer F. Cross-Sectional Reference Data From 29 European Countries for 6 Frequently Used Depression Measures. **JAMA Netw Open**. 2025;8(6):e2517394.

**Cross-Domänen Harmonisierung (Oerlemans et al., 2025)**

Oerlemans et al. entwickelten und validierten Crosswalks zwischen dem multidimensionalen EORTC QLQ-C30 und domänenspezifischen PROMIS-Instrumenten. Die erreichten Korrelationen (r = 0,65-0,85) über sieben Gesundheitsdomänen hinweg demonstrieren die Praktikabilität der Transformation von Multi-Domain-Assessments in domänenspezifische Metriken. Diese Methodik ermöglicht die Integration etablierter umfassender Instrumente in eine domänen-basierte Architektur.

Referenz: Oerlemans S, et al. Crosswalks between EORTC QLQ-C30 and PROMIS measures: Harmonizing patient-reported outcomes across cancer trials. **J Clin Epidemiol**. 2025. DOI: 10.1016/j.jclinepi.2025.111705.

**Implikationen für die MII PRO Implementierung**

Diese Arbeiten liefern wichtige empirische Grundlagen für die konzeptionelle Ausrichtung des MII PRO Moduls:

* Die methodische Validität der Harmonisierung über verschiedene Instrumente ist nachgewiesen
* Sowohl intra-domäne als auch cross-domäne Transformationen zeigen akzeptable psychometrische Eigenschaften
* Die internationale Forschungsgemeinschaft bewegt sich in Richtung harmonisierter, domänenbasierter PRO-Systeme

Die zeitliche Nähe dieser Publikationen zum Ballotierungsprozess verhinderte ihre vollständige Integration in die aktuelle Version, sie bestätigen jedoch die gewählte Architektur und informieren zukünftige Entwicklungen.

**Verwandte Seiten:**

* [Gesundheitsdomänen](domains.md) – Definition der 9 PROMIS Core Domains
* [Cross-Instrument Mappings](cross-instrument-mappings.md) – Konkrete Mapping-Tabellen
* [Scoring Methodologie](scoring.md) – Technische Details

### Kernkonzept

#### Von Instrumenten zu Domänen

Verschiedene Fragebögen messen oft dasselbe Konstrukt:

* **Depression**: PHQ-9, BDI-II, PROMIS Depression, HADS-D
* **Angst**: GAD-7, PROMIS Anxiety, HADS-A
* **Körperliche Funktion**: PROMIS PF, SF-36 PF, HAQ

Domänen-basiertes Scoring ermöglicht die Vergleichbarkeit durch Transformation auf eine gemeinsame Metrik (T-Scores mit Mittelwert=50, SD=10).

### Implementierung: Depressions-Domäne

Die Depressions-Domäne demonstriert als erste vollständig implementierte Domäne den Ansatz:

#### FHIR-Architektur

```
ObservationDefinition: mii-obsdef-pro-depression-t-score
+-- Code: LOINC#77861-3 "PROMIS Depression T-score"
+-- Referenzbereiche: EHIS Wave 3 (n=287.530)
+-- Populationsnormen: DE, EU, altersstratifiziert

Observation: Depression T-Score Instance
+-- instantiates: ObservationDefinition
+-- derivedFrom: QuestionnaireResponse oder Raw Score
+-- method: IRT-Berechnung oder Cross-Walking

```

#### Europäische Referenzdaten für Depression

Riazy et al. (2025) liefern umfassende Referenzdaten aus 29 europäischen Ländern für 6 häufig verwendete Depressionsinstrumente ([JAMA Netw Open 2025](https://doi.org/10.1001/jamanetworkopen.2025.17394)):

**Instrumente mit Normdaten:**

* PHQ-9 (Patient Health Questionnaire-9)
* PHQ-8 (ohne Suizidalität)
* CES-D 8 (Center for Epidemiologic Studies Depression Scale)
* PROMIS Depression SF 4a und SF 8a
* WHO-5 Well-Being Index

**Stichprobe:**

* N = 287.530 Teilnehmer aus EHIS Wave 3
* Repräsentativ für 29 EU-Länder
* Stratifiziert nach Alter, Geschlecht, Land

**Anwendung für MII PRO:**

* Populationsspezifische Referenzbereiche für Deutschland
* Ermöglicht faire Benchmarks zwischen Einrichtungen
* Basis für altersstratifizierte Cut-offs
* Unterstützt Cross-Walking zwischen Instrumenten

#### Mapping-Strategien

**1. Item Response Theory (IRT)**

![](IRT-Antwortwahrscheinlichkeiten.png)

**Abbildung 1:** **Item Response Theory – Antwortwahrscheinlichkeiten in Abhängigkeit von der Merkmalsausprägung**

Die Abbildung zeigt die charakteristischen Kurven der Item Response Theory:

* Bei niedriger Merkmalsausprägung (z.B. geringe Depression) ist die Wahrscheinlichkeit für "Nie" am höchsten
* Mit steigender Merkmalsausprägung verschieben sich die Wahrscheinlichkeiten zu "Selten", "Oft" und schließlich "Immer"
* Die Überlappungsbereiche zeigen Unsicherheitszonen, wo verschiedene Antworten ähnlich wahrscheinlich sind

IRT-Vorteile:

* Direkte Berechnung aus Item-Antworten
* Präzise, aber aufwendig zu implementieren
* Ideal für PROMIS-Instrumente

**2. Cross-Walking Tabellen**

* Empirisch validierte Konversionstabellen
* PHQ-9 (0-27) nach T-Score (40-85)
* BDI-II (0-63) nach T-Score (40-85)
* EORTC QLQ-C30 nach PROMIS T-Scores (siehe Oerlemans et al. 2025)
* Basierend auf Equiperzentil-Matching

**Neue validierte Crosswalks (2025):** Oerlemans et al. haben umfassende Crosswalks zwischen EORTC QLQ-C30 und PROMIS entwickelt ([J Clin Epidemiol 2025](https://www.jclinepi.com/article/S0895-4356(25)00186-6/fulltext)):

* Physical Functioning nach PROMIS Physical Function (r > 0,80)
* Fatigue nach PROMIS Fatigue (r > 0,85)
* Emotional Functioning nach PROMIS Anxiety/Depression (r > 0,75)
* Pain nach PROMIS Pain Interference (r > 0,80)
* Social Functioning nach PROMIS Social Function (r > 0,70)
* Cognitive Functioning nach PROMIS Cognitive Function (r = 0,65)
* Global Health/QoL nach PROMIS Global Health (r > 0,75)

#### Mapping-Limitationen

Bei der Anwendung von Cross-Walking sind folgende Einschränkungen zu beachten:

1. **Bereichsüberschreitungen**: Extreme Werte können theoretische Grenzen überschreiten
1. **Diskretisierung**: Kontinuierliche Verteilungen werden auf diskrete Werte abgebildet
1. **Präzisionsverlust**: Besonders bei kurzen Instrumenten (z.B. 4-Item nach Full Domain)
1. **Validierungsbedarf**: Mappings bedürfen populationsspezifischer Validierung

**Empfehlung**: Für klinische Entscheidungen sollten Mapping-Konfidenzintervalle berücksichtigt werden. Für Forschungszwecke ist die Verwendung bei transparenter Dokumentation des Mapping-Fehlers unproblematisch.

### Das PRO-Spannungsfeld

![](PRO-Spannungsfeld.png)

**Abbildung 2:** **Das Spannungsfeld zwischen Item-Anzahl, Messbereich und Präzision**

Diese Abbildung illustriert ein fundamentales Dilemma bei der PRO-Auswahl:

* **PROM A** (oben): Wenige Items, aber eingeschränkter Messbereich oder Präzision
* **PROM B** (unten): Breiter Messbereich und hohe Präzision, aber mehr Items erforderlich

Domänen-basiertes Scoring löst dieses Dilemma durch:

* **Flexible Instrumentenauswahl** je nach Kontext
* **Item Banking** für adaptive Tests
* **Harmonisierte Scores** trotz unterschiedlicher Instrumente

### Item Banking und Adaptive Messung

![](itembanking.png)

**Abbildung 3:** **Item Banking für die Domäne Körperliche Funktionsfähigkeit**

Das Item Banking Konzept ermöglicht:

* **Populationsspezifische Item-Auswahl**: Verschiedene Items für klinische Stichproben vs. Normalbevölkerung
* **Adaptive Messung**: Items werden basierend auf der geschätzten Fähigkeit ausgewählt
* **Beispiele im Bild**: 
* Einfache Items (links): "selbst ankleiden?", "vom Stuhl aufstehen?", "Zähne putzen?"
* Mittlere Items (Mitte): "kurzen Spaziergang machen?", "Einkaufstasche tragen?"
* Schwierige Items (rechts): "5km laufen?", "über ein Hindernis klettern?", "am Triathlon teilnehmen?"
 

Diese adaptive Strategie ermöglicht präzise Messung über das gesamte Fähigkeitsspektrum mit minimaler Belastung für Patienten.

### Praktische Anwendung

#### Use Case 1: Longitudinales Monitoring

Patient startet mit PHQ-9 in Hausarztpraxis, wechselt zu PROMIS Depression in Klinik:

* Beide Scores werden auf Depression T-Score gemappt
* Kontinuierliche Verlaufskurve trotz Instrumentenwechsel
* Reliable Change Index über Instrumente hinweg berechenbar

#### Use Case 2: Multi-Site Studien

Verschiedene Zentren nutzen unterschiedliche Instrumente:

* Zentrum A: BDI-II
* Zentrum B: PHQ-9
* Zentrum C: PROMIS Depression

Alle Daten vergleichbar durch Domain T-Scores.

#### Use Case 3: Qualitätssicherung

Benchmarking zwischen Einrichtungen:

* Einheitliche Outcome-Metriken trotz verschiedener Assessment-Strategien
* Populationsadjustierte Vergleiche möglich
* Faire Qualitätsindikatoren

### Technische Implementierung

#### ConceptMaps für Mapping

```
// FSH
Instance: PHQ9-to-PROMIS-Depression
InstanceOf: ConceptMap
* sourceCanonical = "Questionnaire/phq-9"
* targetCanonical = "ObservationDefinition/depression-t-score"
* group.element[+]
  * code = #score-range-0-4
  * target.code = #t-score-40-45
  * target.equivalence = #equivalent

```

#### CQL für komplexe Berechnungen (ab 2026)

```
// CQL
define "Depression T-Score from PHQ-9":
  case
    when PHQ9Score between 0 and 4 then 42.5
    when PHQ9Score between 5 and 9 then 50.0
    when PHQ9Score between 10 and 14 then 60.0
    when PHQ9Score between 15 and 19 then 70.0
    when PHQ9Score >= 20 then 77.5
    else null
  end

```

### Implementierungsstatus

**Vollständig implementiert:**

* Depressions-Domäne mit Mappings zwischen PHQ-9, BDI-II, PROMIS Depression und weiteren Instrumenten
* ObservationDefinitions mit populationsspezifischen Referenzbereichen

**In Entwicklung:**

* PROMIS-29 Domänen (Physical Function, Anxiety, Fatigue, Sleep Disturbance, Social Function, Pain)
* PROMIS Cognitive Function 4a
* Automatisierte Score-Transformation via CQL

**Geplant (2026+):**

* Erweiterte Domänen-Mappings für Angst, Fatigue, Physical Function
* Item-basierte Score-Berechnung
* Computer Adaptive Testing (CAT) Integration

### FHIR-Architektur Übersicht

Domänen-Scores werden als FHIR Observations mit spezifischen ObservationDefinitions abgebildet:

```
// Struktur
ObservationDefinition
+-- code: LOINC-Code für Domänen-Score (z.B. 77861-3 für PROMIS Depression)
+-- method: Berechnungsmethode (IRT, Cross-Walking, Equiperzentil)
+-- qualifiedInterval: Populationsspezifische Referenzbereiche
+-- preferredReportName: Standardisierte Bezeichnung

Observation
+-- code: Verweis auf ObservationDefinition
+-- valueQuantity: T-Score (Mittelwert=50, SD=10)
+-- derivedFrom: Quell-QuestionnaireResponse oder -Observation
+-- method: Verwendete Mapping-Methode

```

### Anwendungsfälle

**Klinische Versorgung:**

* Kontinuierliche Verlaufsmessung bei Instrumentenwechsel
* Einheitliche Schwellenwerte für klinische Entscheidungen

**Forschung:**

* Meta-Analysen über Studien mit verschiedenen Instrumenten
* Harmonisierung von Registerdaten

**Qualitätssicherung:**

* Institutionsübergreifende Outcome-Vergleiche
* Populationsnormierte Benchmarks

### Zukünftige Erweiterungen

#### Geplante Domänen (2026-2027)

* **Angst-Domäne**: GAD-7, PROMIS Anxiety, HADS-A
* **Schmerz-Domäne**: BPI, PROMIS Pain, NRS
* **Körperliche Funktion**: PROMIS PF, HAQ, WHODAS

#### Erweiterte Funktionalität

* **Composite Scores**: Gewichtete Aggregation mehrerer Instrumente
* **Adaptive Schwellenwerte**: Populationsspezifische Cut-offs
* **Measurement Error Propagation**: Unsicherheitsquantifizierung

### Vorteile für die Praxis

1. **Kontinuität**: Instrumentenwechsel ohne Datenverlust
1. **Vergleichbarkeit**: Einrichtungsübergreifende Benchmarks
1. **Flexibilität**: Freie Instrumentenwahl bei erhaltener Vergleichbarkeit
1. **Skalierbarkeit**: Neue Instrumente integrierbar ohne Systemumbau

### ObservationDefinition Katalog

Da ObservationDefinitions in FHIR R4 keine kanonischen URLs unterstützen und nicht direkt im IG gerendert werden können, bietet die folgende Übersicht einen strukturierten Zugang zu allen definierten Score-Definitionen:

#### Depression und Stimmung

| Instrument | Score-Typ | LOINC Code | Bereich | ObservationDefinition | Observation Profile | |————|———–|————|———|———————-|———————| | PHQ-9 | Total Score | 44261-6 | 0-27 | mii-obsdef-pro-phq-9-total-score | MII_PR_PRO_PHQ9_Score | | BDI-II | Total Score | 89209-1 | 0-63 | mii-obsdef-pro-score-bdi-ii | MII_PR_PRO_BDI_II_Score | | PROMIS Depression | T-Score | 77861-3 | 20-80 | mii-obsdef-pro-depression-t-score | MII_PR_PRO_Depression_TScore | | PROMIS-29 Depression | T-Score | 71958-6 | 20-80 | mii-obsdef-pro-promis-29-depression-tscore | MII_PR_PRO_PROMIS_29_Depression_TScore | | PROMIS Cognitive Function SF4a | Raw Score | 81533-2 | 4-20 | mii-obsdef-pro-promis-cognitive-function-sf4a-raw-score | MII_PR_PRO_PROMIS_Cognitive_Function_SF4a_Raw_Score | | PROMIS Cognitive Function SF4a | T-Score | 81538-1 | 20-80 | mii-obsdef-pro-promis-cognitive-function-sf4a-tscore | MII_PR_PRO_PROMIS_Cognitive_Function_SF4a_TScore |

#### Angst und Stress

| Instrument | Score-Typ | LOINC Code | Bereich | ObservationDefinition | Observation Profile | |————|———–|————|———|———————-|———————| | PROMIS-29 Anxiety | T-Score | 71953-7 | 20-80 | mii-obsdef-pro-promis-29-anxiety-tscore | MII_PR_PRO_PROMIS_29_Anxiety_TScore |

#### Körperliche Funktion

| Instrument | Score-Typ | LOINC Code | Bereich | ObservationDefinition | Observation Profile | |————|———–|————|———|———————-|———————| | PROMIS-29 Physical Function | T-Score | 71962-8 | 20-80 | mii-obsdef-pro-promis-29-physical-function-tscore | MII_PR_PRO_PROMIS_29_Physical_Function_TScore |

#### Lebensqualität (Multi-Domain)

| Instrument | Score-Typ | LOINC Code | Bereich | ObservationDefinition | Observation Profile | |————|———–|————|———|———————-|———————| | EQ-5D-5L | Index Score | 91382-2 | -0,661 bis 1,0 | mii-obsdef-pro-score-eq5d5l-index | MII_PR_PRO_Observation_EQ5D5L_Index | | EQ-5D-5L | VAS | 91383-0 | 0-100 | mii-obsdef-pro-score-eq5d5l-vas | MII_PR_PRO_Observation_EQ5D5L_VAS | | EQ-5D-5L | Profile | 91381-4 | 11111-55555 | mii-obsdef-pro-score-eq5d5l-profile | MII_PR_PRO_Observation_EQ5D5L_Profile |

#### Müdigkeit und Schlaf

| Instrument | Score-Typ | LOINC Code | Bereich | ObservationDefinition | Observation Profile | |————|———–|————|———|———————-|———————| | PROMIS-29 Fatigue | T-Score | 71959-4 | 20-80 | mii-obsdef-pro-promis-29-fatigue-tscore | MII_PR_PRO_PROMIS_29_Fatigue_TScore | | PROMIS-29 Sleep Disturbance | T-Score | 71964-4 | 20-80 | mii-obsdef-pro-promis-29-sleep-disturbance-tscore | MII_PR_PRO_PROMIS_29_Sleep_Disturbance_TScore |

#### Schmerz

| Instrument | Score-Typ | LOINC Code | Bereich | ObservationDefinition | Observation Profile | |————|———–|————|———|———————-|———————| | PROMIS-29 Pain Intensity | 0-10 Skala | 71965-1 | 0-10 | mii-obsdef-pro-promis-29-pain-intensity | MII_PR_PRO_PROMIS_29_Pain_Intensity | | PROMIS-29 Pain Interference | T-Score | 71961-0 | 20-80 | mii-obsdef-pro-promis-29-pain-interference-tscore | MII_PR_PRO_PROMIS_29_Pain_Interference_TScore |

#### Soziale Funktion

| Instrument | Score-Typ | LOINC Code | Bereich | ObservationDefinition | Observation Profile | |————|———–|————|———|———————-|———————| | PROMIS-29 Social Function | T-Score | 71966-9 | 20-80 | mii-obsdef-pro-promis-29-social-function-tscore | MII_PR_PRO_PROMIS_29_Social_Function_TScore |

#### Technische Hinweise

**ObservationDefinition Eigenschaften:**

* **instantiatesCanonical**: Alle Observation Profiles referenzieren ihre ObservationDefinition über die instantiatesCanonical Extension
* **ScoreHealthCorrelation**: Definiert ob höhere Werte bessere oder schlechtere Gesundheit bedeuten
* **T-Score Metrik**: PROMIS T-Scores verwenden Mittelwert=50, SD=10 als Normierung
* **Populationsnormen**: Referenzbereiche basieren auf deutschen oder europäischen Normstichproben

**Verwendung in der Praxis:**

```
// FSH
Observation
+-- code: LOINC Code aus ObservationDefinition
+-- valueQuantity: Berechneter Score
+-- extension[instantiatesCanonical]: Verweis auf ObservationDefinition
+-- derivedFrom: QuestionnaireResponse oder andere Observation

```

### Zusammenfassung

Domänen-basiertes Scoring ist essentiell für die Harmonisierung von PRO-Daten im deutschen Gesundheitswesen. Die Depressions-Domäne zeigt die praktische Umsetzbarkeit und bildet die Grundlage für weitere Domänen. Trotz methodischer Herausforderungen beim Cross-Walking überwiegen die Vorteile für Versorgung und Forschung deutlich.

**Weiterführende Informationen:**

* [Gesundheitsdomänen](domains.md) – Detaillierte Beschreibung aller 9 PROMIS Domänen
* [Cross-Instrument Mappings](cross-instrument-mappings.md) – Konkrete Konversionstabellen für Depression
* [PHQ-9 Implementierung](phq-9.md) – Referenzimplementierung

