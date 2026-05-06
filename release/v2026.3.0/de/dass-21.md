# DASS-21 - MII IG PRO v2026.3.0

## DASS-21

### Überblick

Die **Depression Anxiety Stress Scales - Short Form (DASS-21)** ist ein validiertes Selbstbeurteilungsinstrument zur gleichzeitigen Erfassung von **Depression**, **Angst** und **Stress**. Das Instrument wurde von Lovibond & Lovibond (1995) an der University of New South Wales (UNSW) entwickelt und ist als Kurzform der 42-Item-Vollversion (DASS-42) konzipiert.

**Grundlegende Eigenschaften:**

* **21 Items** auf einer 4-Punkt-Likert-Skala (0-3)
* **3 Subskalen** mit je 7 Items: Depression, Angst, Stress
* **Zeitbezug**: Letzte Woche
* **Lizenz**: Public Domain – frei verfügbar ohne Lizenzgebühren
* **Deutsche Validierung**: Nilges & Essau (2015)
* **Administration**: 5-10 Minuten

### Fragebogenstruktur

#### Antwortskala (4-Punkt-Likert)

| | | |
| :--- | :--- | :--- |
| 0 | Did not apply to me at all | Traf gar nicht auf mich zu |
| 1 | Applied to me to some degree | Traf bis zu einem gewissen Grad auf mich zu |
| 2 | Applied to me to a considerable degree | Traf in beträchtlichem Maße auf mich zu |
| 3 | Applied to me very much | Traf sehr stark auf mich zu |

#### Subskalen und Item-Zuordnung

| | | |
| :--- | :--- | :--- |
| **Depression** | 3, 5, 10, 13, 16, 17, 21 | Dysphorie, Hoffnungslosigkeit, Abwertung des Lebens, Selbstabwertung, mangelndes Interesse/Engagement, Anhedonie, Trägheit |
| **Angst** | 2, 4, 7, 9, 15, 19, 20 | Autonome Erregung, Skelettmuskeleffekte, situative Angst, subjektives Angsterleben |
| **Stress** | 1, 6, 8, 11, 12, 14, 18 | Schwierigkeiten beim Entspannen, nervöse Erregung, leichte Reizbarkeit, Ungeduld |

### Score-Berechnung

#### Rohwerte (DASS-21)

Für jede Subskala wird die Summe der 7 zugehörigen Items berechnet:

```
Rohwert = Summe der 7 Item-Antworten (Bereich: 0-21)

```

#### DASS-42 Äquivalente

Da die publizierten Schweregrad-Cut-offs auf der DASS-42-Vollversion basieren, werden die DASS-21-Rohwerte mit 2 multipliziert:

```
DASS-42-Äquivalent = DASS-21-Rohwert x 2 (Bereich: 0-42)

```

#### Schweregrad-Cut-offs (DASS-42 Äquivalente)

| | | | |
| :--- | :--- | :--- | :--- |
| **Normal** | 0-9 | 0-7 | 0-14 |
| **Mild** | 10-13 | 8-9 | 15-18 |
| **Moderat** | 14-20 | 10-14 | 19-25 |
| **Schwer** | 21-27 | 15-19 | 26-33 |
| **Extrem schwer** | 28+ | 20+ | 34+ |

#### Schweregrad-Cut-offs (DASS-21 Rohwerte)

| | | | |
| :--- | :--- | :--- | :--- |
| **Normal** | 0-4 | 0-3 | 0-7 |
| **Mild** | 5-6 | 4-5 | 8-9 |
| **Moderat** | 7-10 | 6-7 | 10-12 |
| **Schwer** | 11-13 | 8-9 | 13-16 |
| **Extrem schwer** | 14+ | 10+ | 17+ |

### FHIR-Implementierung

> **Sprachstrategie:** Die DASS-21 wird mit Englisch als Primärsprache implementiert, da die Originalversion des Instruments in Englisch verfasst ist. Deutsche Übersetzungen nach Nilges & Essau (2015) sind als Translations hinterlegt.

> **Terminologie-Strategie:** Die DASS-21-Implementierung verwendet **MII-kontrollierte Terminologie** (keine LOINC-Codes), da LOINC derzeit keine vollständigen DASS-21-Kodierungen bereitstellt. Die SNOMED CT Codes `416954004 |Depression anxiety stress scales depression score|` und `416767005 |Depression anxiety stress scales stress score|` werden für die Score-Kodierung verwendet.

#### Questionnaire

**Canonical URL:** `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-dass-dass21`

**Implementierte Capabilities:**

* Displayable, Collectable, Calculatable, Extractable, Domain-aligned

**Besonderheiten:**

* Automatische Score-Berechnung via FHIR-Variablen und FHIRPath
* 6 berechnete Score-Items: 3 Rohwerte + 3 DASS-42-Äquivalente
* MII CodeSystem mit ordinalValue-Extensions für Scoring

Die vollständige Ressource finden Sie in der [Questionnaire-Definition](Questionnaire-mii-qst-pro-dass-dass21.md).

#### CodeSystem und ValueSet

**CodeSystem:** `mii-cs-pro-dass-21` – Item-Codes und Antwortskala mit englischen Primärtexten und deutschen Übersetzungen (Nilges & Essau 2015)

Die vollständige Ressource finden Sie in der [CodeSystem-Definition](CodeSystem-mii-cs-pro-dass-21.md).

**ValueSet:** `mii-vs-pro-dass-21-answer-list` – 4-Punkt-Likert-Antwortskala (0-3)

Die vollständige Ressource finden Sie in der [ValueSet-Definition](ValueSet-mii-vs-pro-dass-21-answer-list.md).

#### Score-Repräsentation

Die DASS-21 generiert 6 Scores auf zwei Ebenen:

**Rohwerte (DASS-21, Bereich 0-21):**

* **Depression Rohwert** (`mii-obsdef-pro-score-dass21-depression-raw`) – SNOMED: 416954004
* **Angst Rohwert** (`mii-obsdef-pro-score-dass21-anxiety-raw`)
* **Stress Rohwert** (`mii-obsdef-pro-score-dass21-stress-raw`) – SNOMED: 416767005

**DASS-42-Äquivalente (Rohwert x 2, Bereich 0-42):**

* **Depression Äquivalent** (`mii-obsdef-pro-score-dass21-depression-equiv`) – SNOMED: 416954004
* **Angst Äquivalent** (`mii-obsdef-pro-score-dass21-anxiety-equiv`)
* **Stress Äquivalent** (`mii-obsdef-pro-score-dass21-stress-equiv`) – SNOMED: 416767005

#### Scoring-Implementierung

Automatische Score-Berechnung über FHIR-Variablen und SDC `calculatedExpression`:

```
// FHIRPath - Variable: depressionRaw
%resource.item.where(linkId.matches('^dass-dass21-q(03|05|10|13|16|17|21)$')).answer.value.ordinal().sum()

// FHIRPath - Variable: anxietyRaw
%resource.item.where(linkId.matches('^dass-dass21-q(02|04|07|09|15|19|20)$')).answer.value.ordinal().sum()

// FHIRPath - Variable: stressRaw
%resource.item.where(linkId.matches('^dass-dass21-q(01|06|08|11|12|14|18)$')).answer.value.ordinal().sum()

// DASS-42 Äquivalent (Beispiel Depression)
%depressionRaw * 2

```

### Psychometrische Eigenschaften

#### Interne Konsistenz

* **Depression**: Cronbach's alpha = 0.88 (deutsche Version, Nilges & Essau 2015)
* **Angst**: Cronbach's alpha = 0.76
* **Stress**: Cronbach's alpha = 0.86

#### Faktorenstruktur

* Konfirmatorisches **3-Faktoren-Modell** mit guter Passung
* Klare Zuordnung der Items zu Depression, Angst und Stress
* Diskriminante Validität zwischen den drei Subskalen

#### Klinische Verwendung

* **Screening**: Gleichzeitige Erfassung von Depression, Angst und Stress
* **Verlaufskontrolle**: Sensitivität für Veränderungen über die Zeit
* **Differentialdiagnostik**: Unterscheidung zwischen affektiven und Angststörungen
* **Forschung**: Breite Anwendung in klinischen und epidemiologischen Studien

### Domain-Zuordnung

Die DASS-21-Subskalen sind folgenden Gesundheitsdomänen zugeordnet:

| | | |
| :--- | :--- | :--- |
| Depression | Depression | PHQ-9, BDI-II, PROMIS Depression |
| Angst | Angst | GAD-7, PROMIS Anxiety |
| Stress | Psychische Belastung | K6, PSS-10 |

### Literatur

1. **Lovibond SH, Lovibond PF.** (1995) **Manual for the Depression Anxiety Stress Scales (2nd ed.)** Sydney: Psychology Foundation of Australia
1. **Nilges P, Essau C.** (2015) **Die Depressions-Angst-Stress-Skalen: Der DASS – ein Screeninginstrument nicht nur für Schmerzpatienten** Schmerz. 29(6):649-57
1. **Bibi A, Lin M, Zhang XC, Margraf J.** (2020) **Psychometric properties and measurement invariance of Depression, Anxiety and Stress Scales (DASS-21) across cultures** International Journal of Psychology. 55(6):916-925

-------

**Diese Implementierung folgt den MII-Terminologie-Strategien und verwendet MII CodeSystems für Score-Berechnungen. Die DASS-21 ist Public Domain und kann ohne Lizenzgebühren verwendet werden.**

