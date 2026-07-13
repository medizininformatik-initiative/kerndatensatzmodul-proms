# PROMIS Depression SF4a - MII IG PRO v2026.5.1

## PROMIS Depression SF4a

### PROMIS Depression Short Form 4a – Technische Dokumentation

Die vollständige Ressource finden Sie in der [Questionnaire-Definition](Questionnaire-mii-qst-pro-promis-depression-sf4a.md).

#### Hintergrund und Konzept

Das PROMIS Depression Short Form 4a repräsentiert einen modernen Ansatz zur präzisen Messung von Depressionssymptomen mittels Item Response Theory (IRT). Als Teil des Patient-Reported Outcomes Measurement Information System (PROMIS) wurde dieses Instrument vom US National Institute of Health (NIH) entwickelt und international validiert.

Die vier Items wurden aus einer umfassenden Item Bank von über 30 Depression-Items ausgewählt, um mit minimaler Testlänge maximale Messpräzision zu erreichen. Die IRT-basierte Kalibrierung ermöglicht die Konversion von Raw Scores in standardisierte T-Scores, die mit der US-Normalbevölkerung (Mean=50, SD=10) vergleichbar sind.

#### Psychometrische Eigenschaften

**Reliabilität**: Die interne Konsistenz (Cronbach's alpha) liegt typischerweise zwischen 0.85-0.92 für verschiedene Populationen. Die Test-Retest-Reliabilität über 2-4 Wochen beträgt r=0.80-0.88.

**Validität**: Konvergente Validität mit etablierten Depressionsskalen wie PHQ-9 (r=0.75-0.85) und BDI-II (r=0.78-0.88). Diskriminante Validität gegenüber anderen PROMIS-Domänen wie Angst (r=0.65) und körperlicher Funktion (r=-0.45).

**Kulturelle Adaptation**: Umfassende psychometrische Validierung für deutschsprachige Populationen durch das Charite Universitätsmedizin Berlin Team. Differential Item Functioning (DIF) Analysen bestätigen kulturelle Äquivalenz zwischen US- und deutschen Populationen.

#### Technische FHIR-Implementierung

**Questionnaire-Architektur**

Das Questionnaire folgt dem SDC (Structured Data Capture) Standard und implementiert erweiterte Capabilities für automatisierte Score-Berechnung. Die Implementierung nutzt FHIR-Variablen zur Vermeidung zirkulärer Abhängigkeiten zwischen Items und berechneten Scores.

```
// FSH
Instance: mii-qst-pro-promis-depression-sf4a
InstanceOf: MII_PR_PRO_Questionnaire
Usage: #definition

* status = #active
* name = "MII_Questionnaire_PROMIS_Depression_SF4a"
* title = "PROMIS Depression Short Form 4a"
* code = $LNC#77823-3

```

**Item-Struktur und Scoring**

Jedes der vier Items referenziert die offizielle PROMIS Item Bank Nomenklatur:

* promis-eddep04: "I felt worthless"
* promis-eddep06: "I felt helpless"
* promis-eddep29: "I felt depressed"
* promis-eddep05: "I felt like a failure"

Die Antwortoptionen folgen der standardisierten 5-stufigen PROMIS-Skala mit numerischen Werten 1-5, die für Score-Berechnungen auf 0-4 umkodiert werden.

**Variable-basierte Score-Berechnung**

```
// FSH
* item[+].linkId = "rawScore"
* item[=].type = #decimal
* item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
* item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].extension[=].valueExpression.expression =
  "%promis-eddep04.answer.value + %promis-eddep06.answer.value +
   %promis-eddep29.answer.value + %promis-eddep05.answer.value"

```

Die T-Score Konversion erfolgt über eine lookup-basierte FHIRPath-Expression, die die IRT-kalibrierten Transformationstabellen implementiert:

```
// FSH
* item[+].linkId = "depression-tscore"
* item[=].type = #decimal
* item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
* item[=].extension[=].valueExpression.expression =
  "iif(%rawScore = 4, 32.2,
   iif(%rawScore = 5, 37.0,
   iif(%rawScore = 6, 40.3,
   iif(%rawScore = 7, 42.9, ...))))"

```

#### Observation-Profile und Datenextraktion

**Raw Score Observation Profile**

Das `MII_PR_PRO_PROMIS_Depression_SF4a_Raw_Score` Profil definiert die Struktur für Raw Score Observations mit einem Wertebereich von 4-20 Punkten. Die Observation wird direkt aus der QuestionnaireResponse extrahiert und referenziert diese über das derivedFrom Element.

```
// FSH
Profile: MII_PR_PRO_PROMIS_Depression_SF4a_Raw_Score
* code = $LNC#77821-7 "PROMIS short form - emotional distress - depression 4a - version 1.0 raw score"
* valueQuantity.value MS
* valueQuantity.unit = "score"
* referenceRange.low.value = 4
* referenceRange.high.value = 20

```

**T-Score Observation Profile**

Das generische `MII_PR_PRO_Depression_T_Score` Profil wird für alle depressionsbezogenen T-Scores verwendet und ermöglicht eine konsistente Datenstruktur über verschiedene Depressionsinstrumente hinweg.

#### ObservationDefinition und Referenzdaten

**Europäische Populationsnormen**

Die ObservationDefinition `mii-obsdef-pro-depression-t-score` integriert umfassende europäische Referenzdaten aus der European Health Interview Survey (EHIS) Wave 3 Studie mit 287.530 Teilnehmern aus 29 europäischen Ländern.

**Deutsche Population (n=22.996)**:

* Mean: 46.5 (SD: 7.7)
* Median: 45.5
* IQR: 41.8-51.5

Diese Werte zeigen, dass die deutsche Population im Durchschnitt niedrigere Depressionswerte aufweist als die US-Normierung (Mean=50), was bei der klinischen Interpretation berücksichtigt werden muss.

**Geschlechtsspezifische Unterschiede**:

* Männer (Median): 44.11 (IQR: 38.06-50.40)
* Frauen (Median): 46.37 (IQR: 40.00-52.76)

#### Klinische Interpretation und Cut-off Werte

**Severity-Level basierend auf T-Scores**:

* Normal: T-Score <55 (innerhalb 0.5 SD der US-Norm)
* Mild: T-Score 55-59.9 (0.5-1.0 SD über Norm)
* Moderate: T-Score 60-69.9 (1.0-2.0 SD über Norm)
* Severe: T-Score 70 und höher (>2.0 SD über Norm)

**Europäische Kontextualisierung**: Aufgrund der niedrigeren europäischen Baseline-Werte sollten Cut-offs entsprechend angepasst werden. Ein T-Score von 55 entspricht etwa der 75. Perzentile der deutschen Population.

#### MII-Terminologie Integration

**Controlled Vocabulary Strategie**

Die Implementierung nutzt MII ValueSets, um zuverlässige Score-Berechnungen zu gewährleisten. Standard LOINC Answer Lists enthalten keine numerischen Scoring-Gewichte, was automatisierte FHIRPath-Berechnungen verhindert.

```
// FSH
* answerValueSet = "http://mii.de/fhir/pro/ValueSet/promis-depression-5point-scale"
// Alternative: Direct answerOptions with scoring extensions
* answerOption[0].valueCoding.extension[itemWeight].valueDecimal = 0
* answerOption[1].valueCoding.extension[itemWeight].valueDecimal = 1

```

**LOINC-Mapping für Interoperabilität**

Parallel zur MII-Terminologie werden offizielle LOINC-Codes verwendet, um internationale Interoperabilität zu gewährleisten. ConceptMaps verbinden MII-ValueSets mit LOINC Answer Lists für bidirektionale Übersetzung.

#### Qualitätssicherung und Validierung

**Automatisierte Konsistenzprüfungen**

Die SDC-Implementierung ermöglicht Real-time Validierung während der Datenerfassung:

* Vollständigkeitsprüfung aller vier Items
* Plausibilitätschecks für berechnete Scores
* Konsistenzvalidierung zwischen Raw Score und T-Score

**Retrospektive Score-Neuberechnung**

Für Qualitätssicherung können historische QuestionnaireResponses gegen die aktuelle Questionnaire-Definition validiert werden, um Berechnungsfehler oder Implementierungsinkonsistenzen zu identifizieren.

#### Integration in klinische Workflows

**Screening und Monitoring**

Das PROMIS Depression SF 4a eignet sich sowohl für initiales Screening als auch für longitudinales Monitoring von Behandlungsverläufen. Die kurze Testlänge (ca. 1-2 Minuten) ermöglicht häufige Messungen ohne Patientenbelastung.

**Interoperabilität mit anderen Instrumenten**

Cross-Walking Tabellen ermöglichen die Konversion zwischen PROMIS Depression T-Scores und anderen etablierten Depressionsskalen wie PHQ-9 oder BDI-II, wodurch historische Daten vergleichbar gemacht werden können.

#### Implementierungsempfehlungen

**Für klinische Anwendung**:

* Verwendung europäischer Referenzbereiche statt US-Normen
* Integration in elektronische Patientenakten über FHIR-Observations
* Longitudinale Verlaufsdokumentation für Therapiemonitoring

**Für Forschungsanwendung**:

* Standardisierte T-Score Metriken für Multi-Site-Studien
* Kompatibilität mit internationalen PROMIS-Implementierungen
* Möglichkeit für adaptive Testing-Erweiterungen

Diese umfassende Implementierung positioniert das PROMIS Depression SF 4a als Referenzbeispiel für moderne, IRT-basierte PRO-Instrumente im deutschen Gesundheitswesen und demonstriert die fortgeschrittenen Capabilities des MII PRO Moduls.

