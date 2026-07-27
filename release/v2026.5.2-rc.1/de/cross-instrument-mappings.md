# Cross-Instrument Mappings - MII IG PRO v2026.5.2-rc.1

## Cross-Instrument Mappings

### Überblick

Cross-Instrument Mapping ermöglicht die Übersetzung von Scores zwischen verschiedenen PRO-Instrumenten, die dasselbe Konstrukt messen. Dies ist essentiell für die Harmonisierung von Daten aus verschiedenen Quellen und die Vergleichbarkeit von Studienergebnissen.

**Verwandte Seiten:**

* [Domänen](domains.md) – Übersicht über die Gesundheitsdomänen
* [Domänen-basiertes Scoring](domain-based-scoring.md) – Methodische Grundlagen
* [Scoring](scoring.md) – FHIR-Profile und ConceptMaps

### Mapping-Methoden

#### 1. Equiperzentil-Linking

Die häufigste Methode basiert auf der Annahme, dass Personen mit demselben Perzentilrang in verschiedenen Instrumenten dasselbe Niveau des gemessenen Konstrukts aufweisen.

#### 2. IRT-basierte Kalibrierung

Item Response Theory ermöglicht die Platzierung verschiedener Instrumente auf einer gemeinsamen Metrik durch Co-Kalibrierung. Details zur IRT-Methodik siehe [Domänen-basiertes Scoring](domain-based-scoring.md#mapping-strategien).

#### 3. Regressionsbasierte Vorhersage

Lineare oder nicht-lineare Regressionsmodelle zur Vorhersage von Scores eines Instruments basierend auf einem anderen.

### Depressions-Domäne: Umfassende Mapping-Tabelle

Die folgende Abbildung zeigt validierte Mappings zwischen PROMIS Depression T-Scores und acht weiteren etablierten Depressionsskalen:

![](Mapping-depression-scales.png)

**Abbildung 1:** **Translations of PROMIS T-Scores to other scales – Umfassende Mapping-Tabelle für die Depressions-Domäne**

#### Interpretationshilfe zur Mapping-Tabelle

Die Tabelle zeigt für jeden PROMIS T-Score (horizontale Achse, 30-90):

* **Obere Zeile**: Korrespondierender Raw Score des jeweiligen Instruments
* **Untere Zeile (in Klammern)**: 95% Konfidenzintervall

**Beispiel-Lesart:**

* PROMIS T-Score von 60 entspricht: 
* PHQ-9: Score von 10 (95% CI: 7,55-8,91)
* BDI-II: Score von 20 (95% CI: 21,22-26,01)
* HADS: Score von 15 (95% CI: 14,74-15,75)
 

#### Unterstützte Instrumente im Depressions-Mapping

1. **BDI-II**(Beck Depression Inventory-II)
* Bereich: 0-63
* Cut-offs: Minimal (0-13), Mild (14-19), Moderat (20-28), Schwer (29-63)
* Siehe auch: [BDI-II in PRO-Bibliothek](bdi-ii.md)

1. **CES-D**(Center for Epidemiologic Studies Depression Scale)
* Bereich: 0-60
* Klinischer Cut-off: >=16
* Siehe auch: [Minimale Referenz-Fragebögen](minimal-reference-questionnaires.md)

1. **EPDS**(Edinburgh Postnatal Depression Scale)
* Bereich: 0-30
* Klinischer Cut-off: >=10
* Siehe auch: [Minimale Referenz-Fragebögen](minimal-reference-questionnaires.md)

1. **HADS**(Hospital Anxiety and Depression Scale - Depression Subscale)
* Bereich: 0-21
* Cut-offs: Normal (0-7), Mild (8-10), Moderat (11-14), Schwer (15-21)
* Siehe auch: [Minimale Referenz-Fragebögen](minimal-reference-questionnaires.md)

1. **K6**(Kessler Psychological Distress Scale)
* Bereich: 6-30
* Indikator für schwere psychische Erkrankung: >=13
* Siehe auch: [Minimale Referenz-Fragebögen](minimal-reference-questionnaires.md)

1. **PHQ-2**(Patient Health Questionnaire-2)
* Bereich: 0-6
* Screening Cut-off: >=3

1. **PHQ-8**(Patient Health Questionnaire-8)
* Bereich: 0-24
* Cut-offs ähnlich wie PHQ-9

1. **PHQ-9**(Patient Health Questionnaire-9)
* Bereich: 0-27
* Cut-offs: Minimal (0-4), Mild (5-9), Moderat (10-14), Mittel-Schwer (15-19), Schwer (20-27)
* Siehe auch: [PHQ-9 in PRO-Bibliothek](phq-9.md)

### Praktische Anwendung

#### Use Case 1: Studienharmonisierung

Eine multizentrische Studie verwendet verschiedene Instrumente:

* Zentrum A: PHQ-9
* Zentrum B: BDI-II
* Zentrum C: HADS

Lösung: Alle Scores werden auf PROMIS T-Scores gemappt für einheitliche Analyse.

#### Use Case 2: Instrumentenwechsel in Langzeitstudien

Patient wurde initial mit BDI-II (Score: 25) bewertet, Follow-up mit PHQ-9:

1. BDI-II Score 25 entspricht PROMIS T-Score ~62
1. Erwarteter PHQ-9 Score bei gleichem Schweregrad: ~11-12

#### Use Case 3: Meta-Analysen

Systematische Reviews können Effektstärken über Studien mit verschiedenen Instrumenten vergleichen durch Transformation auf gemeinsame PROMIS-Metrik.

### Wichtige Limitationen

#### 1. Konfidenzintervalle beachten

Die Konfidenzintervalle zeigen die Unsicherheit der Mappings. Bei kritischen klinischen Entscheidungen sollten diese Intervalle berücksichtigt werden.

#### 2. Populationsspezifität

Mappings wurden in spezifischen Populationen entwickelt und validiert. Generalisierbarkeit auf andere Populationen (z.B. verschiedene Kulturen, Altersgruppen) sollte geprüft werden.

#### 3. Konzeptuelle Unterschiede

Trotz Messung desselben Konstrukts können Instrumente unterschiedliche Aspekte betonen:

* PHQ-9: DSM-5 Kriterien-basiert
* BDI-II: Kognitive Symptome betont
* HADS: Somatische Symptome ausgeschlossen

#### 4. Floor- und Ceiling-Effekte

An den Extremen der Skalen kann die Mapping-Genauigkeit abnehmen, besonders bei:

* Sehr niedrigen Scores (Floor-Effekt)
* Sehr hohen Scores (Ceiling-Effekt)

### FHIR-Implementierung

#### Observation mit Mapping-Dokumentation

```
// FSH
Instance: Depression-Score-Mapped
InstanceOf: Observation
* code = LOINC#77861-3 "PROMIS Depression T-score"
* valueQuantity = 60 '[T-score]'
* derivedFrom = Reference(PHQ9-Response)
* method = SCT#702663005 "Equipercentile equating"
* note.text = "Mapped from PHQ-9 raw score of 10 (95% CI: 7.55-8.91)"

```

### Qualitätssicherung

#### Validierungsanforderungen

1. **Concurrent Validity**: Korrelation zwischen gemappten Scores >=0,8
1. **Classification Accuracy**: Übereinstimmung der Schweregradkategorien >=85%
1. **Test-Retest Reliability**: ICC >=0,75 für gemappte Scores

#### Dokumentationsstandards

Bei jedem Mapping dokumentieren:

* Quellinstrument und Raw Score
* Zielscore und Konfidenzintervall
* Mapping-Methode und Version
* Populationsreferenz

### Zukünftige Entwicklungen

#### Geplante Mappings (2026-2027)

* **Angst-Domäne**: GAD-7 nach/von PROMIS Anxiety nach/von HADS-A
* **Fatigue-Domäne**: FACIT-F nach/von PROMIS Fatigue nach/von FSS
* **Schmerz-Domäne**: BPI nach/von PROMIS Pain nach/von NRS

#### Methodische Verbesserungen

* Machine Learning-basierte Mappings
* Individuelle Präzisionsschätzungen
* Dynamische, populationsspezifische Mappings
* Real-time Mapping-Updates basierend auf neuen Daten

### Ressourcen und Tools

#### Online-Rechner

* [PROMIS Score Converter](https://www.healthmeasures.net/score-and-interpret/calculate-scores)
* PROsetta Stone (NIH-geförderte Mapping-Initiative)

#### Wissenschaftliche Publikationen

* Choi et al. (2014): "Establishing a common metric for depressive symptoms"
* Schalet et al. (2015): "Linking scores with patient-reported health outcome instruments"

#### Verwandte Dokumentation

* [Scoring Methodologie](scoring.md)
* [Terminologie-Strategien](terminology-strategies.md)

### Zusammenfassung

Cross-Instrument Mappings sind ein kraftvolles Werkzeug zur Harmonisierung von PRO-Daten. Die Depressions-Domäne zeigt exemplarisch, wie verschiedene etablierte Instrumente auf eine gemeinsame PROMIS-Metrik abgebildet werden können. Trotz inhärenter Limitationen ermöglichen diese Mappings bessere Datenintegration, Vergleichbarkeit und kontinuierliche Patientenbetreuung über verschiedene Settings hinweg.

