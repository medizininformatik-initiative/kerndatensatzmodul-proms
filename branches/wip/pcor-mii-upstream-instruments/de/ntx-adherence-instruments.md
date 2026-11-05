# NTx Adherence Instruments (metadata-only) - MII IG PRO v2027.0.0-rc.1

* [**Table of Contents**](toc.md)
* [**PRO Library**](pro-library.md)
* **NTx Adherence Instruments (metadata-only)**

## NTx Adherence Instruments (metadata-only)

### Klinischer Kontext

Im PCOR-MII-Anwendungsfall **Nierentransplantation (NTx)** werden drei Instrumente zur **Medikamentenadhärenz** und **Symptomlast** erhoben: **BAASIS** (Selbstauskunft zur Einnahme immunsuppressiver Medikation), **ABQ** (Barrieren der Adhärenz) und **MTSOSD-R59** (Symptomlast mit Belastungsbewertung). BAASIS und ABQ hängen zusammen: Der ABQ wird nur bei Hinweis auf Nichtadhärenz erhoben.

> **Wichtig:** Alle drei Instrumente sind **metadata-only (Tier B)**. Dieses Modul liefert Struktur, linkIds, Typen, Wertebereiche und Bedingungen, aber **keinen Itemwortlaut und keine Antwortbezeichnungen**. Die Item-Texte sind neutrale Labels, die Antwortstufen heißen neutral „Stufe n“. Die Vollversionen werden ausschließlich über den zugriffsbeschränkten Form Server verteilt, nie im Package.

### Lizenz

Für alle drei Instrumente gilt: Eine Veröffentlichung der konkreten Items einschließlich Antwortmöglichkeiten ist nicht erlaubt. Die wissenschaftliche Nutzung ohne Pharma-Beteiligung ist kostenfrei; **jedes Zentrum benötigt eine eigene Lizenzvereinbarung**.

| | | |
| :--- | :--- | :--- |
| BAASIS | Universität Basel | Nutzungserlaubnis:[https://baasis.nursing.unibas.ch/how-to-obtain](https://baasis.nursing.unibas.ch/how-to-obtain) |
| ABQ | Müller S, Kohlmann T, Wilke T (2015) | Lizenzvereinbarung je Zentrum; Bezugsweg zu klären |
| MTSOSD-R59 | KU Leuven | Kontakt: joke.willems@kuleuven.be |

Capabilities aller drei: **Extractable**; nicht displayable, nicht collectable, nicht domain-aligned. Beim ABQ ist zusätzlich **Calculatable** gesetzt.

### BAASIS

**Canonical URL:** `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-baasis`

**Struktur:** 10 Variablen. Ja/Nein-Items über das geteilte RuleSet `YesNoAnswerOptions` (SNOMED CT). Häufigkeits-Teilfragen auf einer neutralen 5-stufigen Skala (`mii-cs-pro-baasis-frequency`, Stufe 1–5, Gewichte 1–5). Die Items 4 und 5 beziehen sich auf einen Rückblick von einem Jahr.

| | | |
| :--- | :--- | :--- |
| `baasis-q1a` | Ja/Nein | – |
| `baasis-q1a-freq` | Stufe 1–5 | Item 1A = ja |
| `baasis-q1b` | Ja/Nein | Item 1A = ja |
| `baasis-q1b-freq` | Stufe 1–5 | Item 1B = ja |
| `baasis-q2` | Ja/Nein | – |
| `baasis-q2-freq` | Stufe 1–5 | Item 2 = ja |
| `baasis-q3` | Ja/Nein | – |
| `baasis-q4` | Ja/Nein | – |
| `baasis-q5` | Ja/Nein | – |
| `baasis-q5a` | Ja/Nein | Item 5 = ja |

**Scoring:** Es gibt keinen Summenscore. Die Klassifikation als nicht adhärent ergibt sich dichotom, wenn bei irgendeinem der Items 1A, 2, 3 oder 4 mit „ja“ geantwortet wurde. Dies ist **nur dokumentiert**, nicht als ausführbarer Ausdruck ausgeliefert.

### ABQ

**Canonical URL:** `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-abq`

**Struktur:** 16 Items (`abq-q01`…`abq-q16`) auf einer neutralen 4-stufigen Skala (`mii-cs-pro-abq-answers`, Stufe 1–4, Gewichte 1–4). Das Score-Item `abq-score-total` berechnet die Summe per FHIRPath-Variable.

**Bedingung (Cross-Questionnaire):** Laut Item Level Dictionary wird der ABQ nur erhoben, wenn BAASIS 1A, 2, 3 oder 4 mit „ja“ beantwortet wurde. Diese Bedingung ist **nicht als `enableWhen`** modelliert, sondern als Kommentar dokumentiert und vom aufrufenden Prozess zu steuern. Für den ersten ABQ-Eintrag nennt das Dictionary nur BAASIS 1A; vermutlich eine Inkonsistenz, die zu klären ist.

**Scoring:** Summe der 16 Items, Bereich **16–64**, höhere Werte bedeuten mehr Adhärenzbarrieren. ObservationDefinition `mii-obsdef-pro-score-abq` (Katalogcode `abq-total`). Es werden keine Cut-offs ausgeliefert.

> **Offen:** Ob die Gewichte 1–4 in der Reihenfolge der Antwortstufen die Barrierenstärke in der erwarteten Richtung abbilden, ist nicht gegen das Originalinstrument verifiziert und vor produktiver Nutzung zu prüfen.

### MTSOSD-R59

**Canonical URL:** `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-mtsosd-r59`

**Struktur:** 59 Symptome plus 3 Freitext-Symptome, Symptom 27 geschlechtsspezifisch (insgesamt 62 Symptom-Einträge). Je Symptom zwei Items: **Auftreten** (neutrale 5-stufige Skala, `mii-cs-pro-mtsosd-r59-occurrence`, Stufe 0–4, Gewichte 0–4) und **Belastung** (Integer, Suffix `-distress`).

| | | |
| :--- | :--- | :--- |
| `mtsosd-r59-q01`…`q59` | Stufe 0–4 | – |
| `mtsosd-r59-q27-male`,`-q27-female` | Stufe 0–4 | Geschlecht (extern) |
| `mtsosd-r59-qNN-distress` | Integer | Auftreten ≠ Stufe 0 |
| `mtsosd-r59-q60`…`q62` | Freitext | – |
| `mtsosd-r59-q60-distress`…`q62-distress` | Integer | Freitext vorhanden |

**Bedingungen:** Die Steuerung von Symptom 27 über das Geschlecht ist eine Cross-Questionnaire-Bedingung und nicht als `enableWhen` modelliert. Der Questionnaire wird per Skript erzeugt (`scripts/generate-mtsosd-r59-stub.py`).

> **Offen:** Die Stufenzahl der visuellen Belastungsskala ist im Item Level Dictionary nicht dokumentiert; die Belastung ist daher ohne Minimum und Maximum modelliert.

**Scoring:** Es wird kein Score ausgeliefert. Summen über Auftreten und Belastung existieren in der Literatur, ihre Definition ist hier nicht verifiziert.

### Quellen

* Universität Basel. BAASIS — Basel Assessment of Adherence to Immunosuppressive Medications Scale. [https://baasis.nursing.unibas.ch](https://baasis.nursing.unibas.ch)
* Müller S, Kohlmann T, Wilke T. Adherence Barriers Questionnaire (ABQ). 2015.
* KU Leuven. MTSOSD-R59. Kontakt: joke.willems@kuleuven.be
* PCOR-MII Item Level Dictionary, Blatt NTx (Strukturquelle; Wortlaut bewusst nicht übernommen).

