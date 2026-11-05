---
topic: PHQ-D Panikblock (PHQ panic screening items 3a–3d)
---
## {{page-title}}

### Klinischer Kontext

Der **PHQ-D-Panikblock** umfasst die vier Ja/Nein-Screeningfragen zu **Angst- und Panikattacken** aus dem Gesundheitsfragebogen für Patienten (PHQ-D, Block 3a–3d; im Brief PHQ Block 2a–2d): Angstattacke in den letzten vier Wochen, früheres Auftreten, unerwartetes Auftreten der Anfälle, Beeinträchtigung bzw. Angst vor erneuten Anfällen.

**Interpretation** (PHQ-Algorithmus): Ein **Paniksyndrom** liegt nach dem PHQ nur vor, wenn alle vier Screeningfragen mit „Ja" beantwortet sind **und** zusätzlich mindestens vier der elf Symptomfragen 4a–4k bejaht werden. Die Symptomliste ist hier nicht modelliert (von PCOR-MII nicht erhoben); abbildbar ist nur die Screening-Stufe: vier Ja-Antworten = Screening positiv, weitere Abklärung erforderlich.

> **Abgrenzung:** Der Panikblock ist etwas anderes als der [GAD-7](GAD-7)/PHQ-4 (Häufigkeit von Angstsymptomen über zwei Wochen). Beide gehören zur PHQ-Familie und teilen den PHQ-D-Block-Namespace der linkIds.

### FHIR-Implementierung

> **Sprachstrategie:** Englisch als Primärsprache (Wortlaut des Brief PHQ, Pfizer; wortgleich mit Block 3a–3d des vollständigen PHQ), Deutsch als `translation`-Extension aus dem PHQ-D (Löwe et al. 2002) über das PCOR-MII Item Level Dictionary.

#### Questionnaire

**Canonical URL:** `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-panic`

**Capabilities:** Displayable, Collectable, Calculatable, Extractable, Domain-aligned

**Besonderheiten:**
- linkIds im PHQ-D-Block-Namespace: `phq-phq3a`…`phq-phq3d`; Zählitem `phq-panic-score-count`. Die linkIds `phq-phq4a`…`phq-phq4k` sind für die (nicht modellierte) Symptomliste reserviert.
- Sprungregel des Formulars als `enableWhen`: 3b–3d nur bei 3a = Ja.
- Antworten über das geteilte RuleSet `YesNoAnswerOptions` mit SNOMED CT `373067005`/`373066001`, Gewichte 0/1.
- Zählitem via FHIRPath: `%resource.item.where(linkId.matches('^phq-phq3[a-d]$')).answer.value.weight().sum()` — technischer Zwischenwert, kein validierter Summenscore.
- Kein LOINC-Code für die Panik-Screeningitems bekannt; Kodierung über den MII-Questionnaire-Katalog (`phq-panic`).

Die vollständige Ressource: Questionnaire-Definition im Artefakt-Register.

#### Score-Repräsentation

1. **Berechnetes Item** in der QuestionnaireResponse (linkId: `phq-panic-score-count`, 0–4)
2. **Observation** mit MII-Score-Code `phq-panic-count`
3. **ObservationDefinition:** `mii-obsdef-pro-score-phq-panic` — Wertebereich 0–4, Screening positiv nur bei 4

Die Screening-Stufe ist als `qualifiedInterval` **dokumentiert**, nicht als ausführbare Interpretationslogik (siehe [Scoring](Scoring)).

### Lizenz

PHQ © Pfizer Inc. — **frei verfügbar**, keine Genehmigung für Reproduktion, Übersetzung, Darstellung oder Nutzung erforderlich. Deutsche Fassung: PHQ-D (Löwe, Spitzer, Zipfel & Herzog 2002).

### Quellen

- Spitzer RL, Kroenke K, Williams JBW. Validation and utility of a self-report version of PRIME-MD: the PHQ primary care study. *JAMA* 1999;282(18):1737–1744. doi:10.1001/jama.282.18.1737
- Löwe B, Spitzer RL, Zipfel S, Herzog W. PHQ-D. Gesundheitsfragebogen für Patienten. Pfizer, Karlsruhe 2002.
- PHQ Instruction Manual (Pfizer): „Panic Syndrome if #3a-d are all 'YES' and 4 or more of #4a-k are 'YES'."
