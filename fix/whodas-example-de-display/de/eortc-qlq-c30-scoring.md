# EORTC QLQ-C30 Scoring - MII IG PRO v2026.5.0

## EORTC QLQ-C30 Scoring

### Übersicht

Das **EORTC QLQ-C30** (European Organisation for Research and Treatment of Cancer Quality of Life Questionnaire - Core 30) ist ein standardisiertes, international anerkanntes Instrument zur Erfassung der gesundheitsbezogenen Lebensqualität von Krebspatienten.

#### Grundlegende Eigenschaften

* **30 Fragen** in englischer Sprache (primär) mit deutschen Übersetzungen
* **Multidimensionale Erfassung** der Lebensqualität über 15 Subskalen
* **Standardisierte 0-100 Punkteskala** nach linearer Transformation
* **Validiert** für onkologische Patienten in unterschiedlichen Behandlungsphasen
* **Modular erweiterbar** durch krankheitsspezifische Zusatzmodule

### Fragebogen-Struktur

#### Funktionsskalen (5 Skalen)

**Bewertung: Höhere Werte = Bessere Funktion/Lebensqualität**

| | | |
| :--- | :--- | :--- |
| **Körperliche Funktionsfähigkeit**(PF) | Q1-5 | Schwierigkeiten bei körperlichen Aktivitäten |
| **Rollenfunktion**(RF) | Q6-7 | Einschränkungen bei Arbeit/täglichen Aktivitäten |
| **Emotionale Funktionsfähigkeit**(EF) | Q21-24 | Emotionale Belastung und Stimmung |
| **Kognitive Funktionsfähigkeit**(CF) | Q20, Q25 | Konzentration und Gedächtnis |
| **Soziale Funktionsfähigkeit**(SF) | Q26-27 | Sozialer Rückzug und Familienaktivitäten |

#### Symptomskalen (3 Skalen)

**Bewertung: Höhere Werte = Stärkere Symptombelastung**

| | | |
| :--- | :--- | :--- |
| **Fatigue**(FA) | Q10, Q12, Q18 | Müdigkeit und Erschöpfung |
| **Übelkeit/Erbrechen**(NV) | Q14-15 | Gastrointestinale Symptome |
| **Schmerz**(PA) | Q9, Q19 | Schmerzintensität und -beeinträchtigung |

#### Einzelsymptome (6 Items)

**Bewertung: Höhere Werte = Stärkere Symptombelastung**

| | | |
| :--- | :--- | :--- |
| **Dyspnoe**(DY) | Q8 | Atembeschwerden |
| **Schlaflosigkeit**(SL) | Q11 | Schlafstörungen |
| **Appetitlosigkeit**(AP) | Q13 | Verminderter Appetit |
| **Verstopfung**(CO) | Q16 | Obstipation |
| **Durchfall**(DI) | Q17 | Diarrhoe |
| **Finanzielle Schwierigkeiten**(FI) | Q28 | Ökonomische Belastung |

#### Globale Gesundheit/Lebensqualität (1 Skala)

**Bewertung: Höhere Werte = Bessere Lebensqualität**

| | | | |
| :--- | :--- | :--- | :--- |
| **Globale Lebensqualität**(QL) | Q29-30 | Gesamtbeurteilung von Gesundheit und Lebensqualität | 7-Punkt-Skala (1-7) |

### Antwortskalen

#### Standard 4-Punkt-Skala (Q1-28)

1. **"Überhaupt nicht"**/**"Not at all"**
1. **"Wenig"**/**"A little"**
1. **"Mäßig"**/**"Quite a bit"**
1. **"Sehr"**/**"Very much"**

#### 7-Punkt-Skala (Q29-30)

1. **"Sehr schlecht"**/**"Very poor"**
1. **"Schlecht"**/**"Poor"**
1. **"Mittelmäßig"**/**"Fair"**
1. **"Gut"**/**"Good"**
1. **"Sehr gut"**/**"Very good"**
1. **"Ausgezeichnet"**/**"Excellent"**
1. **"Vollkommen"**/**"Perfect"**

### Score-Berechnung

#### Schritt 1: Rohwert-Berechnung

Für jede Skala wird der Mittelwert der zugehörigen Items berechnet:

```
Rohwert = (Summe der Itemwerte) / Anzahl Items

```

#### Schritt 2: Lineare Transformation (0-100 Skala)

##### Funktionsskalen (Inversion erforderlich)

```
Funktions-Score = (1 - (Rohwert - 1) / (max - 1)) x 100

```

**Für 4-Punkt-Skala:**

```
Funktions-Score = (1 - (Rohwert - 1) / 3) x 100

```

##### Symptomskalen und Einzelsymptome

```
Symptom-Score = ((Rohwert - 1) / (max - 1)) x 100

```

**Für 4-Punkt-Skala:**

```
Symptom-Score = ((Rohwert - 1) / 3) x 100

```

##### Globale Lebensqualität

```
QL-Score = ((Rohwert - 1) / 6) x 100

```

#### Score-Interpretation

| | | |
| :--- | :--- | :--- |
| **0-25** | Schwere Funktionseinschränkung | Keine/geringe Symptombelastung |
| **26-50** | Moderate Funktionseinschränkung | Leichte Symptombelastung |
| **51-75** | Leichte Funktionseinschränkung | Moderate Symptombelastung |
| **76-100** | Keine/geringe Funktionseinschränkung | Schwere Symptombelastung |

### FHIR-Implementierung

#### Questionnaire-Resource

* **URL**: `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-eortc-qlq-c30`
* **Primärsprache**: Englisch (`language = #en`)
* **Übersetzungen**: Deutsche Übersetzungen über CodeSystem-Designations
* **Antwortoptionen**: MII CodeSystems mit `ordinalValue`-Properties für Scoring

#### CodeSystem & ValueSets

* **CodeSystem**: `mii-cs-pro-eortc-qlq-c30` – CodeSystem für Darstellung der Antwortspektren in Englisch mit deutscher Übersetzung
* **ValueSets**: 
* `mii-vs-pro-eortc-qlq-c30-scale-4pt` – Standard 4-point scale
* `mii-vs-pro-eortc-qlq-c30-scale-7pt` – Global QoL 7-point scale
* `mii-vs-pro-eortc-qlq-c30-scale-role` – Role functioning scale
 

#### Scoring-Implementierung

Automatische Score-Berechnung über SDC `calculatedExpression`:

```
// FHIRPath
// Beispiel: Körperliche Funktionsfähigkeit (Q1-5, invertiert)
(1 - (%resource.item.where(linkId.matches('^qlq-c30-q0[1-5]$')).answer.value.weight().sum()/5 - 1) / 3) * 100

// Beispiel: Fatigue (Q10, Q12, Q18, standard)
((%resource.item.where(linkId in ('qlq-c30-q10'|'qlq-c30-q12'|'qlq-c30-q18')).answer.value.weight().sum()/3 - 1) / 3) * 100

```

#### ObservationDefinition-Resources

Für jede Subskala existiert eine separate ObservationDefinition:

* Funktionsskalen: `mii-obsdef-pro-eortc-qlq-c30-pf`, `mii-obsdef-pro-eortc-qlq-c30-rf`, etc.
* Symptomskalen: `mii-obsdef-pro-eortc-qlq-c30-fa`, `mii-obsdef-pro-eortc-qlq-c30-nv`, etc.
* Einzelsymptome: `mii-obsdef-pro-eortc-qlq-c30-dy`, `mii-obsdef-pro-eortc-qlq-c30-sl`, etc.
* Globale QoL: `mii-obsdef-pro-eortc-qlq-c30-ql`

### Fehlende Werte (Missing Data)

#### EORTC-Richtlinien

* **Mindestens 50% der Items** einer Skala müssen beantwortet sein
* **Ersetzung** fehlender Werte durch Mittelwert der verfügbaren Items der Skala
* **Ausschluss** der Skala bei mehr als 50% fehlenden Werten

#### FHIR-Implementierung

Missing Data Handling über FHIRPath-Expressions:

```
// Prüfung auf ausreichende Antworten (Beispiel PF-Skala)
%resource.item.where(linkId.matches('^qlq-c30-q0[1-5]$')).where(answer.exists()).count() >= 3

```

### Referenzen

1. **Aaronson NK, et al.** (1993) **The European Organization for Research and Treatment of Cancer QLQ-C30: a quality-of-life instrument for use in international clinical trials in oncology** J Natl Cancer Inst. 85(5):365-76
1. **Fayers PM, et al.** (2001) **The EORTC QLQ-C30 Scoring Manual (3rd Edition)** European Organisation for Research and Treatment of Cancer, Brussels [https://www.eortc.org/app/uploads/sites/2/2018/02/SCmanual.pdf](https://www.eortc.org/app/uploads/sites/2/2018/02/SCmanual.pdf)

### Verwendung im MII-Kontext

Das EORTC QLQ-C30 wird im **MII PRO-Modul** als Referenzinstrument für:

* **Onkologische Lebensqualitätsmessung** in klinischen und Forschungsumgebungen
* **Cross-Domain-Harmonisierung** mit anderen PRO-Instrumenten, v.a. Mapping auf PROMIS-Skalen
* **Population-Based Scoring** und Normwertvergleiche
* **Modular erweiterte Assessments** durch krankheitsspezifische EORTC-Module

-------

**Diese Implementierung folgt den MII-Terminologie-Strategien und verwendet MII CodeSystems für Score-Berechnungen.**

