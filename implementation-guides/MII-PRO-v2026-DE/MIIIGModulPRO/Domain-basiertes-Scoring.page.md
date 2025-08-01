## {{page-title}}

### Konzept des Domain-basierten Scorings

Domain-basiertes Scoring ermöglicht die konsistente Messung und Vergleichbarkeit von Gesundheitsoutcomes über verschiedene Messinstrumente hinweg. Anstatt isolierte, instrumentenspezifische Scores zu verwenden, werden Messungen auf übergeordnete Gesundheitsdomänen standardisiert.

#### Grundprinzip

**Instrumentenunabhängige Metriken**: Verschiedene Fragebögen können dieselbe Gesundheitsdomäne messen (z.B. Depression durch PHQ-9, BDI-II, PROMIS Depression). Domain-basiertes Scoring ermöglicht die Harmonisierung dieser Messungen auf eine gemeinsame Metrik.

**Standardisierte T-Score Metriken**: Alle Domänen-Scores werden auf T-Score Skalen (Mean=50, SD=10) standardisiert, wodurch direkte Vergleiche zwischen verschiedenen Instrumenten und Populationen möglich werden.

**Longitudinale Vergleichbarkeit**: Patienten können über die Zeit mit verschiedenen Instrumenten erfasst werden, ohne Kontinuität der Messung zu verlieren.

#### Implementierte Gesundheitsdomänen

**Depression Domain**

Die Depression-Domäne ist die erste vollständig implementierte Domain im MII PRO Modul und dient als Referenzmodell für weitere Domänen.

**Implementierte Instrumente**:
- **PROMIS Depression SF 4a**: IRT-basierte T-Scores (32-80 Bereich)
- **PHQ-9**: Raw Scores (0-27) mit Mapping zu Depression T-Scores
- **BDI-II**: Raw Scores (0-63) mit Mapping zu Depression T-Scores

**Gemeinsame ObservationDefinition**: `mii-obsdef-pro-depression-t-score`
- **LOINC-Code**: 77861-3 "PROMIS emotional distress - depression - version 1.0 T-score"
- **Referenzbereiche**: Europäische EHIS Wave 3 Population (n=287,530)
- **Geschlechts- und altersspezifische Normen**: Deutsche und europäische Subpopulationen

#### Technische FHIR-Implementierung

**ObservationDefinition als Domain-Anker**

Die ObservationDefinition fungiert als zentraler Anker für die Depression-Domäne und definiert:
- Einheitliche Kodierung und Terminologie
- Populationsspezifische Referenzbereiche
- Klinische Interpretationsrichtlinien
- Qualitätsmetriken und Validierungsregeln

```fhir
Instance: mii-obsdef-pro-depression-t-score
InstanceOf: mii-pr-pro-score-blueprint
* code = $LNC#77861-3 "PROMIS emotional distress - depression - version 1.0 T-score"
* quantitativeDetails.unit = $UCUM#{score}
* qualifiedInterval[+].category = #reference
* qualifiedInterval[=].context.text = "German general population - EHIS wave 3"
```

**Score-Instance Profile als Implementation Layer**

Das `MII_PR_PRO_Depression_T_Score` Profil implementiert die konkreten Observation-Instanzen und referenziert die ObservationDefinition über das instantiates Element (R5 backport extension).

**Instrument-spezifische Ableitungsstrategien**

**Direkte IRT-Berechnung (PROMIS)**:
```fhir
* derivedFrom only Reference(QuestionnaireResponse)
* method = IRT-based T-score calculation
```

**Cross-Walking Mapping (PHQ-9, BDI-II)**:
```fhir
* derivedFrom[0] only Reference(QuestionnaireResponse)  // Ursprüngliche Questionnaire Response
* derivedFrom[1] only Reference(Observation)           // Instrument-spezifischer Raw Score
* method = Cross-walking table mapping
```

#### Cross-Instrument Mapping Strategien

**PHQ-9 → PROMIS Depression T-Score Mapping**




Empirisch validierte Konversionstabellen ermöglichen die Transformation von PHQ-9 Scores (0-27) zu PROMIS Depression T-Scores. Diese Mappings basieren auf klinischen Studien mit parallel administrierten Instrumenten.
Alternativ ist es möglich, die Verteilungskurven der einzelnene Items entsprechend der Item Response Theory (IRT) zu berechnen. 
Eine Erstellung einer Mapping-Tabelle kann anschließend auf Basis des Interperzentil-Matchings der Verteilung vorgenommen werden. 
Bei diesem Vorgehen sind aber mehrere Sachen zu beachten: 
1. Beim Mapping werden. Die erreichbaren Minimal- und Maximalwerte der Skalen können dabei theroetisch über- oder unterschritten werden. 
2. Ein Mapping kann ein Runden der Werte notwendig machen. 
3. Gerade beim Mapping von kleineren Instrumenten auf größere Skalen findet eine starke Verzerrung durch die Konvertierung einer kontinuerilichen Verteilungsfunktion in diskrete Werte statt. Daher ist dieser Ansatz ohne weitere Validierung derzeit noch nicht für die Anwendung in medizinischen Produktivsystemen geeignet. Eine Verwendung zu Forschungszwecken ist bei Anwendung der korrekten und bei Berücksichtigung des Mappingfehlers unproblematisch. 
4. 


 


**Beispiel-Mapping**:
```
PHQ-9 Score  →  PROMIS T-Score
0-4          →  40-45 (minimal)
5-9          →  45-55 (mild)  
10-14        →  55-65 (moderate)
15-19        →  65-75 (moderately severe)
20-27        →  75-85 (severe)
```

**BDI-II → PROMIS Depression T-Score Mapping**

Ähnliche Konversionstabellen für BDI-II Scores (0-63) ermöglichen die Integration historischer BDI-II Daten in die standardisierte Depression T-Score Metrik.

**Mapping-Validierung**: Alle Cross-Walking Tabellen werden durch empirische Korrelationsstudien validiert und regelmäßig gegen neue Populationsdaten adjustiert.

#### Qualitätssicherung und Validierung

**Multi-Instrument Konsistenzprüfung**

Bei Patienten mit mehreren Depression-Assessments können Cross-Instrument Konsistenzprüfungen durchgeführt werden:
- Vergleich von T-Scores aus verschiedenen Instrumenten
- Identifikation von Ausreißern oder inkonsistenten Messungen
- Longitudinale Plausibilitätschecks

**Populationsspezifische Validierung**

Domain-basierte Scores werden kontinuierlich gegen populationsspezifische Normdaten validiert:
- Deutsche vs. europäische vs. US-Referenzbereiche
- Alters- und geschlechtsspezifische Adjustierungen
- Klinische vs. Allgemeinbevölkerung Normen

#### Erweiterte Anwendungen

**Composite Domain Scores**

Zukünftige Implementierungen können Composite Scores über mehrere Instrumente hinweg berechnen:
- Gewichtete Mittelwerte bei mehrfachen Assessments
- Konfidenzintervalle für aggregierte Messungen
- Measurement Error Propagation über Instrument-Grenzen

**Longitudinale Domain-Tracking**

Domain-basiertes Scoring ermöglicht nahtloses longitudinales Tracking auch bei wechselnden Instrumenten:
- Kontinuierliche T-Score Zeitreihen über verschiedene Assessments
- Reliable Change Index Berechnungen domain-übergreifend
- Therapie-Response Monitoring unabhängig vom verwendeten Instrument

#### Integration in klinische Workflows

**Klinische Entscheidungsunterstützung**

Domain-basierte T-Scores ermöglichen standardisierte klinische Entscheidungsregeln:
- Einheitliche Cut-off Werte für Behandlungsindikationen
- Vergleichbare Severity-Kategorisierung über Instrumente hinweg
- Integrierte Clinical Decision Support Systems

**Qualitätsindikatoren**

Domain-Scores fungieren als standardisierte Qualitätsindikatoren für Versorgungsqualität:
- Behandlungsoutcome-Monitoring auf Populationsebene
- Benchmarking zwischen Einrichtungen mit verschiedenen Assessment-Strategien
- Longitudinale Trend-Analysen unabhängig von Instrumentenwechseln

#### Strategische Vorteile

**Interoperabilität**: Domain-basiertes Scoring maximiert Interoperabilität zwischen Einrichtungen mit verschiedenen PRO-Strategien.

**Skalierbarkeit**: Das Domain-Konzept lässt sich auf weitere Gesundheitsbereiche (Angst, Schmerz, körperliche Funktion) übertragen.

**Zukunftssicherheit**: Neue Instrumente können in bestehende Domain-Strukturen integriert werden, ohne historische Datenkompatibilität zu verlieren.

**Forschungsintegration**: Standardisierte Domain-Metriken erleichtern Multi-Site-Studien und Meta-Analysen über verschiedene Assessment-Strategien hinweg.

Diese umfassende Domain-basierte Scoring-Strategie positioniert das MII PRO Modul als innovativen Ansatz für harmonisierte Outcome-Messung im deutschen Gesundheitswesen und bietet eine solide Foundation für zukünftige Erweiterungen und internationale Kooperationen.