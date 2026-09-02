# SSD-12 - MII IG PRO v2026.6.0

## SSD-12

### Klinischer Kontext

Die **SSD-12 (Somatic Symptom Disorder – B Criteria Scale)** erfasst die **psychologischen Merkmale** der somatischen Belastungsstörung nach DSM-5 — also nicht die körperlichen Beschwerden selbst, sondern den Umgang damit: übermäßige Gedanken, Gefühle und Verhaltensweisen in Bezug auf die eigenen Symptome.

Zwölf Items decken die drei B-Kriterien des DSM-5 ab (kognitiv, affektiv, behavioral) und werden auf einer fünfstufigen Häufigkeitsskala beantwortet (0 = nie bis 4 = sehr oft).

**Scoring** (Summenwert 0–48): Einfache Summe über alle zwölf Items; höhere Werte zeigen eine stärkere psychologische Belastung an. Ein Trennwert wird hier bewusst nicht dokumentiert, da er im Rahmen dieser Umsetzung nicht belastbar belegt werden konnte.

**Ergänzung zum PHQ-15:** Während der [PHQ-15](phq-15.md) die Schwere der körperlichen Beschwerden misst, erfasst die SSD-12 die psychologische Reaktion darauf. Erst zusammen bilden sie beide Kriteriengruppen der somatischen Belastungsstörung ab.

### FHIR-Implementierung

> **Sprachstrategie:** Deutsch als Primärsprache — die deutsche Fassung ist die in PCOR-MII erhobene. Ob Deutsch die Originalsprache des Instruments ist, ist ungeklärt: Dafür sprechen das deutsche Entwicklerteam (Löwe/UKE Hamburg, Henningsen/TU München) und die deutschsprachige Entwicklungsstichprobe, dagegen die englischsprachige Entwicklungspublikation und eine eigene Validierungsarbeit der deutschen Fassung von 2025. Solange das nicht belegt ist, wird kein englischer Itemtext behauptet.

#### Questionnaire

**Canonical URL:** `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-ssd-12`

**Capabilities:** Displayable, Collectable, Calculatable, Extractable, Domain-aligned

**Besonderheiten:**

* linkIds `ssd12-q01`…`ssd12-q12`, Score-Item `ssd12-score-total`.
* Eigene, instrumentenspezifische Antwortskala: MII-CodeSystem `mii-cs-pro-ssd-12-answers` mit `ordinalValue`-Property 0–4, gebunden über `answerValueSet` (`mii-vs-pro-ssd-12-answers`). Die Wortwahl der Antwortstufen ist Teil des validierten Instruments und wird deshalb nicht durch eine generische Skala ersetzt.
* Die `display`-Werte der Antwortkonzepte sind **deutsch** (englische Bezeichnungen als `designation`), passend zur Sprache des Fragebogens — siehe Hinweis unten.
* Score-Berechnung via FHIRPath: `%resource.item.where(linkId.matches('^ssd12-q(0[1-9]|1[0-2])$')).answer.value.ordinal().sum()`.
* Weder LOINC noch SNOMED CT führen einen Code für die SSD-12. Die LOINC-Codes `94027-0`/`94028-8` betreffen generische DSM-5-SSD-Konzepte und wurden bewusst **nicht** verwendet, um keine falsche Abdeckung zu suggerieren.

> **Hinweis zur Display-Sprache:** In einer Ressource mit `language = #de` erwartet der FHIR-Validator den deutschen Display im `valueCoding`. Ein englischer Display lässt die gesamte `answerValueSet`-Prüfung fehlschlagen — mit der irreführenden Meldung, der Wert sei nicht im ValueSet enthalten.

Die vollständige Ressource: [Questionnaire-Definition](Questionnaire-mii-qst-pro-ssd-12.md).

#### Score-Repräsentation

1. **Berechnetes Item**in der QuestionnaireResponse (linkId:`ssd12-score-total`)
1. **Observation**mit MII-Score-Code`ssd-12-total`
1. **ObservationDefinition:**`mii-obsdef-pro-score-ssd-12`— Wertebereich 0–48 {score}, höher = stärkere psychologische Belastung

### Lizenz

**Frei verfügbar** laut DIZ-Implementierungsliste PCOR-MII.

### Quellen

* Toussaint A, Murray AM, Voigt K, Herzog A, Gierk B, Kroenke K, Rief W, Henningsen P, Löwe B. Development and validation of the Somatic Symptom Disorder-B Criteria Scale (SSD-12). **Psychosomatic Medicine** 2016;78(1):5–12. doi:10.1097/PSY.0000000000000240
* Toussaint A, Löwe B, Brähler E, Jordan P. The Somatic Symptom Disorder – B Criteria Scale (SSD-12): factorial structure, validity and population-based norms. **Journal of Psychosomatic Research** 2017;97:9–17. doi:10.1016/j.jpsychores.2017.03.017

