# PHQ-D Panikblock - MII IG PRO v2027.0.0-rc.1

* [**Table of Contents**](toc.md)
* [**PRO Library**](pro-library.md)
* **PHQ-D Panikblock**

## PHQ-D Panikblock

### Klinischer Kontext

Der **PHQ-D-Panikblock** umfasst die vier Ja/Nein-Screeningfragen zu **Angst- und Panikattacken** aus dem Gesundheitsfragebogen für Patienten (PHQ-D, Block 3a–3d; im Brief PHQ Block 2a–2d). Erfragt werden eine Angstattacke in den letzten vier Wochen, ein früheres Auftreten, das unerwartete Auftreten der Anfälle und die Beeinträchtigung bzw. Angst vor erneuten Anfällen.

**Interpretation** (PHQ-Algorithmus): Ein **Paniksyndrom** liegt nach dem PHQ nur vor, wenn alle vier Screeningfragen mit „Ja" beantwortet sind **und** zusätzlich mindestens vier der elf Symptomfragen 4a–4k bejaht werden. Die Symptomliste 4a–4k ist hier nicht modelliert (von PCOR-MII nicht erhoben); abbildbar ist damit nur die Screening-Stufe: vier Ja-Antworten = Screening positiv, weitere Abklärung erforderlich.

> **Abgrenzung:** Der Panikblock ist etwas anderes als der [GAD-7](gad-7.md)/PHQ-4 (Häufigkeit von Angstsymptomen über zwei Wochen). Beide gehören zur PHQ-Familie und teilen den PHQ-D-Block-Namespace der linkIds.

### FHIR-Implementierung

> **Sprachstrategie:** Englisch als Primärsprache (Wortlaut des Brief PHQ, Pfizer; wortgleich mit Block 3a–3d des vollständigen PHQ), Deutsch als `translation`-Extension aus dem PHQ-D (Löwe et al. 2002) über das PCOR-MII Item Level Dictionary.

#### Questionnaire

**Canonical URL:** `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-panic`

**Capabilities:** Displayable, Collectable, Calculatable, Extractable, Domain-aligned

**Besonderheiten:**

* linkIds im PHQ-D-Block-Namespace: `phq-phq3a`…`phq-phq3d`; Zählitem `phq-panic-score-count`. Die linkIds `phq-phq4a`…`phq-phq4k` sind für die (nicht modellierte) Symptomliste reserviert.
* Sprungregel des Formulars („Wenn Nein, weiter mit der nächsten Frage") als `enableWhen`: 3b–3d werden nur bei 3a = Ja angezeigt.
* Antworten über das geteilte RuleSet `YesNoAnswerOptions` mit SNOMED CT `373067005`/`373066001`, Gewichte 0/1.
* Zählitem via FHIRPath: `%resource.item.where(linkId.matches('^phq-phq3[a-d]$')).answer.value.weight().sum()` — ein technischer Zwischenwert, kein validierter Summenscore.
* LOINC führt die Panik-Screeningitems nach unserem Kenntnisstand nicht als eigene Codes; Kodierung über den MII-Questionnaire-Katalog (`phq-panic`).

Die vollständige Ressource: [Questionnaire-Definition](Questionnaire-mii-qst-pro-phq-panic.md).

#### Score-Repräsentation

1. **Berechnetes Item**in der QuestionnaireResponse (linkId:`phq-panic-score-count`, 0–4)
1. **Observation**mit MII-Score-Code`phq-panic-count`
1. **ObservationDefinition:**`mii-obsdef-pro-score-phq-panic`— Wertebereich 0–4, Screening positiv nur bei 4

Die Screening-Stufe ist als `qualifiedInterval` **dokumentiert**, nicht als ausführbare Interpretationslogik (siehe [Scoring](scoring.md)). Ein auffälliges Screening ersetzt keine Diagnostik.

### Lizenz

**Frei verfügbar** (PHQ © Pfizer Inc., keine Genehmigung für Reproduktion, Übersetzung, Darstellung oder Nutzung erforderlich).

### Quellen

* Spitzer RL, Kroenke K, Williams JBW. Validation and utility of a self-report version of PRIME-MD: the PHQ primary care study. **JAMA** 1999;282(18):1737–1744. doi:10.1001/jama.282.18.1737
* Löwe B, Spitzer RL, Zipfel S, Herzog W. PHQ-D. Gesundheitsfragebogen für Patienten. Pfizer, Karlsruhe 2002. (Deutsche Fassung, Quelle der Itemtexte über das PCOR-MII Item Level Dictionary)
* PHQ Instruction Manual (Pfizer): „Panic Syndrome if #3a-d are all 'YES' and 4 or more of #4a-k are 'YES'."

