---
topic: PC-PTSD (Primary Care PTSD Screen)
---
## {{page-title}}

### Klinischer Kontext

Der **PC-PTSD (Primary Care PTSD Screen)** ist ein Kurzscreening auf eine **posttraumatische Belastungsstörung** für die Primärversorgung. Vier Ja/Nein-Fragen erfassen die Kernbereiche Wiedererleben, Vermeidung, Übererregung und emotionale Taubheit — bezogen auf ein zuvor erlebtes belastendes Ereignis.

**Scoring und Interpretation** (Summenwert 0–4): Jede Ja-Antwort zählt einen Punkt. Verbreitet gilt ein Screening ab **drei Punkten** als auffällig und begründet eine weitergehende Diagnostik.

> **Wichtige Abgrenzung:** Hier ist die **Vier-Item-Fassung** abgebildet, wie sie in PCOR-MII erhoben wird. Davon zu unterscheiden ist der neuere **PC-PTSD-5** für DSM-5 mit fünf Items, für den LOINC eigene Codes führt (`102010-6`, `LP436025-3`). Beide sind eigenständige Instrumente und dürfen nicht vermischt werden.

### FHIR-Implementierung

> **Sprachstrategie:** Deutsch als Primärsprache. Das Original ist zwar englisch (Prins et al. 2003), der wortgetreue englische Itemtext lag jedoch nicht belegbar vor — deshalb wird bewusst **keine** englische Fassung behauptet oder erfunden. Die deutschen Texte stammen aus dem PCOR-MII Item Level Dictionary (validierte Fassung Schäfer & Schulze 2010).

#### Questionnaire

**Canonical URL:** `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-pc-ptsd`

**Capabilities:** Displayable, Collectable, Calculatable, Extractable, Domain-aligned

**Besonderheiten:**
- linkIds `pc-ptsd-q01`…`pc-ptsd-q04`, Score-Item `pc-ptsd-score-total`.
- Ein einleitendes `display`-Item trägt den Stamm, der für alle vier Fragen gilt (Bezug auf das belastende Ereignis und den Zeitraum der letzten vier Wochen).
- Antworten über das geteilte RuleSet `YesNoAnswerOptions` mit SNOMED CT `373067005`/`373066001`, Gewichte 0/1.
- Score-Berechnung via FHIRPath: `%resource.item.where(linkId.matches('^pc-ptsd-q0[1-4]$')).answer.value.ordinal().sum()`.
- Für die Vier-Item-Fassung existiert kein LOINC- oder SNOMED-Code (die vorhandenen LOINC-Codes betreffen den PC-PTSD-5); Kodierung über den MII-Questionnaire-Katalog.

Die vollständige Ressource: Questionnaire-Definition im Artefakt-Register.

#### Score-Repräsentation

1. **Berechnetes Item** in der QuestionnaireResponse (linkId: `pc-ptsd-score-total`)
2. **Observation** mit MII-Score-Code `pc-ptsd-total`
3. **ObservationDefinition:** `mii-obsdef-pro-score-pc-ptsd` — Wertebereich 0–4 {score}, höher = stärkerer Verdacht auf eine posttraumatische Belastungsstörung

Der Cut-off ist als `qualifiedInterval` **dokumentiert**, nicht als ausführbare Interpretationslogik (siehe [Scoring](Scoring)).

### Lizenz

**Frei verfügbar** laut DIZ-Implementierungsliste PCOR-MII.

### Quellen

- Prins A, Ouimette P, Kimerling R, et al. The Primary Care PTSD Screen (PC-PTSD): development and operating characteristics. *Primary Care Psychiatry* 2003;9(1):9–14.
- Schäfer I, Schulze C. Deutsche Version des Primary Care PTSD Screen. 2010. (deutsche Fassung, Quelle der hier verwendeten Itemtexte)
