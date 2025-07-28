## {{page-title}}

### Überblick

Das MII PRO Modul unterstützt verschiedene Scoring-Strategien entlang des Workflows **Questionnaire → QuestionnaireResponse → Observation**. Die Wahl der Scoring-Methode hängt von organisatorischen Anforderungen, technischer Infrastruktur und Anwendungsfällen ab.

Die Scoring-Strategien lassen sich in zwei grundlegende Kategorien einteilen:
- **Out-of-FHIR Scoring**: Externe Berechnung mit FHIR als Transportschicht
- **In-FHIR Scoring**: Native FHIR-basierte Berechnungslogik

---

### Out-of-FHIR Scoring-Strategien

#### 1. Keine Berechnung - Reine Datensammlung
**Anwendungsfall**: Strukturierte Datensammlung ohne Score-Berechnungen
- Questionnaire mit grundlegenden Items
- QuestionnaireResponse für Rohdaten
- Keine automatische Observation-Erstellung
- **Beispiel**: Datensammlung für spätere externe Analyse

#### 2. Vorberechnete Scores (Import-basiert)
**Anwendungsfall**: Integration externer PRO-Systeme (REDCap, klinische Systeme)
- Scores werden extern berechnet und als Observations importiert
- FHIR dient als Interoperabilitätsschicht
- `derivedFrom` verweist auf ursprüngliche QuestionnaireResponse
- **Beispiel**: REDCap-basierte Studien mit etablierten Scoring-Algorithmen

#### 3. Externe API-basierte Berechnung
**Anwendungsfall**: Spezialisierte Scoring-Services (R-Libraries, statistische Pakete)
- QuestionnaireResponse wird an externe API übertragen
- Berechnung erfolgt in optimierter Umgebung
- Ergebnis-Observations werden zurück in FHIR gespeichert
- **Beispiel**: Komplexe psychometrische Berechnungen, IRT-basierte Scores

---

### In-FHIR Scoring-Strategien

#### 4. FHIRPath-basierte Inline-Berechnung
**Anwendungsfall**: Real-time Scoring mit moderater Komplexität

**Implementierungsansatz - Variable-basiert (Empfohlen)**:
```fhir
// PROMIS Depression SF 4a Beispiel
* item[0].extension[variable].valueExpression.expression = "%rawScore"
* item[0].extension[variable].valueExpression.name = "rawScore"
* item[0].extension[initialExpression].valueExpression.expression = 
  "item.descendants().where(linkId='promis-eddep04').answer.value + 
   item.descendants().where(linkId='promis-eddep06').answer.value + ..."

// T-Score Konversion
* item[1].extension[calculatedExpression].valueExpression.expression = 
  "iif(%rawScore = 4, 41.0, 
   iif(%rawScore = 5, 45.5, 
   iif(%rawScore = 6, 49.0, ...)))"
```

**Vorteile**:
- Vermeidung zirkulärer Abhängigkeiten
- Klare Trennung zwischen Rohscore und transformierten Scores
- Bessere Wartbarkeit und Debugging

#### 5. CQL-basierte Berechnung
**Anwendungsfall**: Komplexe statistische Berechnungen, bevölkerungsbasierte Normierung

```cql
library PHQ9Scoring version '1.0.0'

define "PHQ-9 Raw Score":
  Sum(QuestionnaireResponse.item.answer.value)

define "PHQ-9 Severity Category":
  case
    when "PHQ-9 Raw Score" between 0 and 4 then 'minimal'
    when "PHQ-9 Raw Score" between 5 and 9 then 'mild'
    when "PHQ-9 Raw Score" between 10 and 14 then 'moderate'
    when "PHQ-9 Raw Score" between 15 and 19 then 'moderately severe'
    else 'severe'
  end
```

#### 6. SDC Extraction-basierte Methoden

**6a. Observation-based Extraction**
- Direkte Konvertierung von Questionnaire-Items zu Observations
- Ein Observation pro berechneten Score
- Geeignet für Standard-Scores

**6b. Definition-based Extraction**
- Mapping zu verschiedenen FHIR-Ressourcentypen
- Flexible Zielstrukturen (Condition, DiagnosticReport, etc.)
- Geeignet für komplexe klinische Workflows

**6c. StructureMap-based Extraction**
- FHIR Mapping Language für komplexe Transformationen
- Geeignet für item-basierte Architektur
- Unterstützt komponentenbasierte Observations

---

### Multi-Score Questionnaires

Komplexe Fragebögen generieren oft mehrere Scores. **Beispiel EQ-5D-5L**:

```fhir
// Index Score (Präferenz-basiert)
* item[score-index].code = SCT#736534008 "EuroQol EQ-5D-5L index value"

// VAS Score (Selbsteinschätzung)  
* item[score-vas].code = SCT#736535009 "EuroQol EQ-5D-5L visual analog scale"

// Profile Score (Domänen-spezifisch)
* item[score-profile].code = MII#eq5d5l-profile "EQ-5D-5L Profile Score"
```

**ObservationDefinition-Integration**:
- Separate ObservationDefinitions pro Score-Typ
- Bevölkerungsspezifische Referenzbereiche
- Score-Health-Korrelations-Extensions

---

### Erweiterte Scoring-Konzepte

#### Score-Mapping und Cross-Walking
**Anwendungsfall**: Harmonisierung zwischen verschiedenen PRO-Instrumenten

```fhir
// PHQ-9 → PROMIS Depression Mapping
* derivedFrom[0] = Reference(PHQ9-QuestionnaireResponse)
* code = LOINC#77861-3 "PROMIS Depression T-score"
* method.text = "PHQ-9 to PROMIS Depression conversion algorithm (Choi et al. 2014)"
```

#### Measure/MeasureReport-basierte Analysen
**Anwendungsfall**: Longitudinale Analysen, Populationsmetriken

```cql
library PRO_Population_Metrics version '1.0.0'

define "Depression Prevalence":
  Count(Observation where code = LOINC#44261-6 and value > 9) / 
  Count(Observation where code = LOINC#44261-6)
```

---

### Implementierungsempfehlungen

#### Für einfache Scores:
- **Out-of-FHIR**: Vorberechnete Imports aus etablierten Systemen
- **In-FHIR**: Variable-basierte FHIRPath-Berechnung

#### Für komplexe Scores:
- **Out-of-FHIR**: Externe API-basierte Berechnung
- **In-FHIR**: CQL-Libraries mit Measure/MeasureReport

#### Für Multi-Score Questionnaires:
- Separate ObservationDefinitions pro Score
- Variable-basierte Berechnung zur Abhängigkeitsvermeidung
- Score-Health-Korrelations-Extensions für klinische Interpretation

#### Für Score-Harmonisierung:
- ConceptMaps für terminologische Mappings
- StructureMaps für komplexe Datentransformationen
- CQL-Libraries für statistische Konversionen

---

### Qualitätssicherung

**Score-Validierung**:
- Retrospektive Neuberechnung zur Konsistenzprüfung
- Vergleich zwischen verschiedenen Berechnungsmethoden
- Identifikation von Rundungsfehlern und Implementierungsunterschieden

**Referenzdaten**:
- Integration europäischer Populationsnormen (EHIS Wave 3)
- Alters- und geschlechtsspezifische Referenzbereiche
- Kulturspezifische Anpassungen für deutsche Populationen