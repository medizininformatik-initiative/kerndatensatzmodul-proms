# GAD-7 - MII IG PRO v2026.7.0

## GAD-7

### Klinischer Kontext

Der **GAD-7** (Generalized Anxiety Disorder Scale-7) ist das Standardinstrument zum Screening auf eine **generalisierte Angststörung**. Sieben Items erfassen die Häufigkeit von Angstsymptomen in den letzten zwei Wochen auf einer vierstufigen Skala (0 = überhaupt nicht bis 3 = beinahe jeden Tag).

**Scoring und Interpretation** (Summenwert 0–21, Spitzer et al. 2006):

* 0–4: Minimale Angstsymptomatik
* 5–9: Leichte Angstsymptomatik
* 10–14: Moderate Angstsymptomatik — weitere Abklärung empfohlen
* 15–21: Schwere Angstsymptomatik

**Zusammenhang mit der PHQ-Familie:** Der GAD-7 stammt von denselben Autoren wie der PHQ-9 und teilt dessen Antwortskala. Die **ersten beiden Items bilden den GAD-2**, und zusammen mit zwei PHQ-9-Items ergeben sie den **PHQ-4** — das Ultrakurzscreening für Angst und Depression. Genau deshalb tragen die Items im MII-PRO-Modul die linkIds des gemeinsamen PHQ-D-Block-Namespace (`phq-phq5a`…`phq-phq5g`) und nicht eine instrumenteneigene Nummerierung: Dieselbe Frage soll instrumentenübergreifend denselben linkId tragen.

### FHIR-Implementierung

> **Sprachstrategie:** Englisch als Primärsprache (Original nach Spitzer et al. 2006), deutsche Texte als Translations (PHQ-D, Löwe et al. 2002; validiert an über 5.000 Personen der deutschen Allgemeinbevölkerung).

#### Questionnaire

**Canonical URL:** `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-gad-7`

**Capabilities:** Displayable, Collectable, Calculatable, Extractable, Domain-aligned

**Besonderheiten:**

* linkIds im PHQ-D-Block-Namespace: `phq-phq5a`…`phq-phq5g`, Score-Item `phq-gad7-score-total`.
* Antwortskala über das geteilte RuleSet `Phq4PointFrequencyAnswerOptions` — inline `answerOption` mit den LOINC-Antwortcodes der Liste LL358-3 (`LA6568-5`…`LA6571-9`) und ordinalen Gewichten 0–3. Dieselbe Skala wie PHQ-9.
* Score-Berechnung via FHIRPath: `%resource.item.where(linkId.matches('^phq-phq5[a-g]$')).answer.value.ordinal().sum()`.
* LOINC-Panel `69737-5`, Score-Item mit LOINC `70274-6`.

**Item-Nummerierung:** Die ConceptMap [`mii-cm-pro-gad-7-linkids`](ConceptMap-mii-cm-pro-gad-7-linkids.md) bildet die übliche GAD-7-Nummerierung (Item 1–7) auf die kanonischen linkIds ab — eine Lesehilfe für die Übernahme von Daten aus Fremdsystemen.

Die vollständige Ressource: [Questionnaire-Definition](Questionnaire-mii-qst-pro-gad-7.md).

#### Score-Repräsentation

1. **Berechnetes Item**in der QuestionnaireResponse (linkId:`phq-gad7-score-total`)
1. **Observation**mit LOINC-Code`70274-6`
1. **ObservationDefinition:**`mii-obsdef-pro-score-gad-7`— Wertebereich 0–21 {score}, höher = stärkere Angstsymptomatik

Die vier Schweregradstufen sind als `qualifiedInterval` **dokumentiert**, aber nicht als ausführbare Interpretationslogik ausgeliefert (siehe [Scoring](scoring.md)).

> **Nicht enthalten:** Eine PROMIS-Anxiety-T-Score-Umrechnung. Score-Konversionen zwischen Instrumenten werden künftig als CQL-Library modelliert und nicht als FHIRPath-Ausdruck im Questionnaire.

### Lizenz

GAD-7 © Pfizer Inc., entwickelt von Spitzer, Kroenke, Williams und Löwe — **frei verfügbar**, keine Genehmigung für Reproduktion, Übersetzung, Darstellung oder Nutzung erforderlich. Deutsche Fassung: PHQ-D (Löwe, Spitzer, Zipfel & Herzog 2002).

### Quellen

* Spitzer RL, Kroenke K, Williams JBW, Löwe B. A brief measure for assessing generalized anxiety disorder: the GAD-7. **Archives of Internal Medicine** 2006;166(10):1092–1097. doi:10.1001/archinte.166.10.1092
* Löwe B, Decker O, Müller S, et al. Validation and standardization of the Generalized Anxiety Disorder Screener (GAD-7) in the general population. **Medical Care** 2008;46(3):266–274. doi:10.1097/MLR.0b013e318160d093
* Esser P, Hartung TJ, Friedrich M, et al. The Generalized Anxiety Disorder Screener (GAD-7) and the anxiety module of the Hospital and Depression Scale (HADS-A) as screening tools for generalized anxiety disorder among cancer patients. **Psycho-Oncology** 2018;27(6):1509–1516. doi:10.1002/pon.4681

