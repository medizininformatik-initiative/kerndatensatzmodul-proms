### Klinischer Kontext

Der **Whiteley-7 (WI-7)** ist eine Kurzform des Whiteley Index zur Erfassung von **Krankheitsangst und Somatisierung**. Fink et al. leiteten ihn 1999 aus der längeren Fassung ab: Von den ursprünglichen Items blieben die sieben mit den höchsten Faktorladungen übrig, die restlichen wurden wegen Ladungen unter 0,5 verworfen.

**Scoring und Interpretation** (Summenwert 0–7): Sieben binäre Items, jede Ja-Antwort zählt einen Punkt. Die Autoren weisen darauf hin, dass die Items im Rasch-Modell als gleichwertig behandelt und damit schlicht aufaddiert werden dürfen.

Ein einzelner verbindlicher Trennwert wird in der Originalpublikation **nicht** festgelegt. Stattdessen berichten Fink et al. zwei explorative Cut-points (0/1 und 1/2) mit unterschiedlichem Verhältnis von Sensitivität und Spezifität; beide sind in der ObservationDefinition dokumentiert.

Das Paper beschreibt zusätzlich zwei Subskalen (Illness Conviction, Illness Worrying), von denen die Krankheitsüberzeugung psychometrisch besser abschneidet. Sie sind im MII-PRO-Modul **bewusst nicht implementiert** — nur der Gesamtwert.

### FHIR-Implementierung

> **Sprachstrategie:** Englisch als Primärsprache (Original nach Fink et al. 1999, Table I), deutsche Texte als Translations aus dem PCOR-MII Item Level Dictionary.

#### Questionnaire

**Canonical URL:** `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-wi-7`

**Capabilities:** Displayable, Collectable, Calculatable, Extractable, Domain-aligned

**Besonderheiten:**
- linkIds `wi7-q01`…`wi7-q07`, Score-Item `wi7-score-total`.
- Antworten über das geteilte RuleSet `YesNoAnswerOptions` mit SNOMED CT `373067005`/`373066001` und ordinalen Gewichten 0/1 — dieselbe Skala wie SCOFF und PC-PTSD.
- Score-Berechnung via FHIRPath: `%resource.item.where(linkId.matches('^wi7-q0[1-7]$')).answer.value.ordinal().sum()`.
- Weder LOINC noch SNOMED CT führen einen Code für das Instrument selbst (geprüft); Kodierung über den MII-Questionnaire-Katalog.

Die vollständige Ressource: [Questionnaire-Definition](Questionnaire-mii-qst-pro-wi-7.html).

#### Score-Repräsentation

1. **Berechnetes Item** in der QuestionnaireResponse (linkId: `wi7-score-total`)
2. **Observation** mit MII-Score-Code `wi-7-total`
3. **ObservationDefinition:** `mii-obsdef-pro-score-wi-7` — Wertebereich 0–7 {score}, höher = stärker ausgeprägte Krankheitsangst

Die beiden Cut-points sind als `qualifiedInterval` **dokumentiert**, nicht als ausführbare Interpretationslogik (siehe [Scoring](scoring.html)).

### Lizenz

**Frei verfügbar.** Die Originalpublikation trifft keine ausdrückliche Lizenzaussage zur Skala selbst; die DIZ-Implementierungsliste PCOR-MII führt sie als frei verfügbar.

### Quellen

- Fink P, Ewald H, Jensen J, Sørensen L, Engberg M, Holm M, Munk-Jørgensen P. Screening for somatization and hypochondriasis in primary care and neurological in-patients: a seven-item scale for hypochondriasis and somatization. *Journal of Psychosomatic Research* 1999;46(3):261–273. doi:10.1016/S0022-3999(98)00092-0
- Rief W, Hiller W, Geissner E, Fichter MM. Hypochondrie: Erfassung und erste klinische Ergebnisse. *Zeitschrift für klinische Psychologie* 1994;23(1):34–42. (deutsche Fassung des längeren Whiteley Index)
