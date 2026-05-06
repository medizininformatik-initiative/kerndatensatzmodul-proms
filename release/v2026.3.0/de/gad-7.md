# GAD-7 - MII IG PRO v2026.3.0

## GAD-7

### Klinischer Kontext

Der GAD-7 (Generalized Anxiety Disorder Scale-7) ist ein validiertes Screening-Instrument für generalisierte Angststörungen mit sieben Items. Das Instrument erfasst die Häufigkeit von Angstsymptomen über einen Zeitraum von zwei Wochen auf einer vierstufigen Skala (0-3).

**Scoring und Interpretation:**

* 0-4: Minimale Angst
* 5-9: Milde Angst
* 10-14: Moderate Angst
* 15-21: Schwere Angst

**Onkologie-spezifische Cut-offs:** Neuere Evidenz empfiehlt Cut-off ≥7 oder ≥8 für Krebspatienten (Sensitivität/Spezifität optimiert für onkologische Populationen).

**Kurzform GAD-2:** Die ersten zwei Items (nervös/ängstlich + Sorgen nicht kontrollieren können) bilden den GAD-2 mit Cut-off ≥3.

### FHIR-Implementierung

> **Sprachstrategie:** Der GAD-7 wird mit Englisch als Primärsprache implementiert, da die Originalversion des Instruments in Englisch verfasst ist. Deutsche Übersetzungen sind als Translations hinterlegt. Dies gewährleistet die korrekte Validierung gegen LOINC-Terminologien.

#### Questionnaire

**Canonical URL:** `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-gad-7`

**Implementierte Capabilities:**

* Displayable, Collectable, Populatable, Calculatable, Extractable, Domain-aligned

**Besonderheiten:**

* Automatische Score-Berechnung via FHIRPath: `%resource.item.where(linkId.matches('^phq-gad7-q0[1-7]$')).answer.value.ordinal().sum()`
* Populatable für server-seitige Berechnungen implementiert
* LOINC-kodierte Antwortoptionen mit ordinalValue-Extension
* PROMIS Anxiety T-Score Crosswalk integriert (PROsetta Stone)

Die vollständige Ressource finden Sie in der [Questionnaire-Definition](Questionnaire-mii-qst-pro-gad-7.md).

#### Score-Repräsentation

Der GAD-7 Score wird auf mehreren Ebenen repräsentiert:

1. **Als berechnetes Item**in der QuestionnaireResponse (linkId:`phq-gad7-score-total`)
1. **Als Observation**mit LOINC-Code 70274-6 "GAD-7 total score"
1. **Als Domain-Score**gemappt auf PROMIS Anxiety T-Score

**ObservationDefinition:** `mii-obsdef-pro-score-gad-7`

* Definiert Wertebereich: 0-21 {score}
* Spezifiziert Interpretationsrichtlinien
* Score-Richtung: decrease (niedrigerer Wert = bessere Gesundheit)

### Domain-Mapping

Der GAD-7 kann auf PROMIS Anxiety T-Scores gemappt werden (PROsetta Stone Crosswalk):

| | | |
| :--- | :--- | :--- |
| 0-4 | ~33.8–49.2 | Minimal |
| 5-9 | ~51.3–58.1 | Mild |
| 10-14 | ~59.6–64.8 | Moderat |
| 15-21 | ~66.0–75.7 | Schwer |

### Validierung

**Technisch:** Score-Bereich 0-21, alle 7 Items für validen Score erforderlich, Ordinal-Werte: 0, 1, 2, 3

**Klinisch:** Sensitivität 89%, Spezifität 82% für generalisierte Angststörung (Cut-off ≥10), Cronbach's Alpha: 0.92, Test-Retest-Reliabilität: ICC 0.83

### Referenzen

* Spitzer RL, Kroenke K, Williams JBW, Löwe B. A Brief Measure for Assessing Generalized Anxiety Disorder: The GAD-7. Arch Intern Med. 2006;166(10):1092–1097. [DOI: 10.1001/archinte.166.10.1092](https://doi.org/10.1001/archinte.166.10.1092)
* Löwe B, et al. Validation and Standardization of the Generalized Anxiety Disorder Screener (GAD-7) in the General Population. Med Care. 2008;46(3):266–274. [DOI: 10.1097/MLR.0b013e318160d093](https://doi.org/10.1097/MLR.0b013e318160d093)

