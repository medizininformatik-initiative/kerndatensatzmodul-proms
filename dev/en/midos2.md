# MIDOS2 (Palliativmedizin) - MII IG PRO v2026.6.0

## MIDOS2 (Palliativmedizin)

 
There is no translation page available for the current page, so it has been rendered in the default language 

### Überblick

Das **Minimale Dokumentationssystem für Palliativpatienten (MIDOS2)** ist ein etabliertes deutsches Symptom-Screening-Instrument für die Palliativmedizin. Es wurde von der **Deutschen Gesellschaft für Palliativmedizin (DGP)** als deutsche Adaption des Edmonton Symptom Assessment System (ESAS, Bruera et al. 1991) entwickelt und durch Stiel et al. (2010, 2012) validiert und weiterentwickelt.

**Grundlegende Eigenschaften:**

* **13 Items**: 11 Symptom-Items + 1 Wohlbefinden-Item + 1 freitext für sonstige Beschwerden
* **Antwortskala**: 4-stufige DGP-Skala für Symptome (keine / leichte / mittlere / starke), separate 4-stufige Skala für Wohlbefinden
* **Zeitbezug**: Aktuell (letzte Tage)
* **Lizenz**: DGP, frei für klinische und Forschungszwecke
* **Validierung (DE)**: Stiel et al. 2010, 2012
* **Administration**: 2-5 Minuten

### Fragebogenstruktur

#### Symptom-Skala (4-stufig)

| | | |
| :--- | :--- | :--- |
| 0 | keine | none |
| 1 | leichte | mild |
| 2 | mittlere | moderate |
| 3 | starke | severe |

#### Wohlbefinden-Skala (4-stufig)

| | | |
| :--- | :--- | :--- |
| 0 | sehr gut | very good |
| 1 | eher gut | rather good |
| 2 | eher schlecht | rather poor |
| 3 | sehr schlecht | very poor |

#### Symptom-Items

| | | |
| :--- | :--- | :--- |
| 1 | Schmerz | 22253000 |Pain (finding)| |
| 2 | Übelkeit | 422587007 |Nausea (finding)| |
| 3 | Erbrechen | 422400008 |Vomiting (disorder)| |
| 4 | Luftnot | 267036007 |Dyspnea (finding)| |
| 5 | Verstopfung | 14760008 |Constipation (finding)| |
| 6 | Schwäche | **zu verifizieren** |
| 7 | Müdigkeit | 84229001 |Fatigue (finding)| |
| 8 | Appetitmangel | 79890006 |Loss of appetite (finding)| |
| 9 | Depressivität | 35489007 |Depressed mood (finding)| |
| 10 | Angst | 48694002 |Anxiety (finding)| |
| 11 | Anspannung | **zu verifizieren** |
| 12 | Wohlbefinden gesamt | — |
| 13 | Andere Beschwerden (freitext) | — |

> SNOMED-Kandidaten sind Stand der Recherche und müssen via Terminologieserver-Validierung bestätigt werden.

### Score-Berechnung

#### Symptom-Summen-Score

Summe der 11 Symptom-Items (jeweils 0-3), Wertebereich 0-33:

```
symptomSumScore = Summe(Item 1..11) ∈ [0, 33]

```

Höhere Werte indizieren stärkere Symptomlast.

#### Wohlbefinden-Score

Einzelnes Item, Wertebereich 0-3 — wird nicht in den Summen-Score eingerechnet, sondern separat als globale Lebensqualitäts-Komponente berichtet.

### Verhältnis zum PRO-CTCAE Onkologischen Basisscreening

MIDOS2 und das [PRO-CTCAE Onkologische Basisscreening](proms-onkologisches-basisscreening.md) bilden konzeptuell **dieselbe Symptomliste** ab — mit unterschiedlicher Granularität der Antwortskalen:

| | | |
| :--- | :--- | :--- |
| Skalenformat | 4-stufig (DGP) | 5-stufig (PRO-CTCAE) |
| Items pro Symptom | 1 (Severity) | 1-3 (Frequency/Severity/Interference) |
| Zielgruppe | Palliativmedizin | Onkologie |
| Authority | DGP | DKG (Symptomauswahl) + NCI (Items) |

Eine ConceptMap zwischen den Antwortskalen ist für eine spätere Iteration vorgesehen.

### FHIR-Implementierung

> **Sprachstrategie:** Deutsch als Primärsprache, Englisch als Translation. MIDOS2 ist ein originär deutsches Instrument.

> **Terminologie-Strategie:** MII-kontrollierte Antwort-Codes (eigene CodeSystem). Symptom-Items mit SNOMED-Property für externe Interoperabilität.

#### Questionnaire

**Canonical URL:** `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-midos-midos2`

**Implementierte Capabilities:**

* Displayable, Collectable, Calculatable, Extractable, Domain-aligned

Die vollständige Ressource finden Sie in der [Questionnaire-Definition](Questionnaire-mii-qst-pro-midos-midos2.md).

#### CodeSystem und ValueSets

**CodeSystem:** `mii-cs-pro-midos2` — Item-Codes und beide Antwortskalen mit deutschen Primärtexten und englischen Translations

Die vollständige Ressource finden Sie in der [CodeSystem-Definition](CodeSystem-mii-cs-pro-midos2.md).

**ValueSets:**

* `mii-vs-pro-midos2-severity` — DGP-Symptom-Skala
* `mii-vs-pro-midos2-wellbeing` — Wohlbefinden-Skala

#### Score-Berechnung (FHIRPath)

```
// FHIR Variable: symptomSumScore
%resource.item.where(linkId.matches('^midos2-q(0[1-9]|1[01])-')).answer.value.ordinal().sum()

```

### Literatur

1. **Stiel S, Pollok A, Elsner F, et al.** (2012) **Validation of the Symptom and Problem Checklist of the German Hospice and Palliative Care Evaluation (HOPE)** Schmerz. (DOI 10.1007/s00482-011-1124-7)
1. **Stiel S, Matthes ME, Bertram L, et al.** (2010) **Evaluation und Weiterentwicklung der Minimal Documentation System (MIDOS)** Schmerz. 24(4):416-424 (DOI 10.1007/s00482-010-0972-5)
1. **Bruera E, Kuehn N, Miller MJ, Selmser P, Macmillan K.** (1991) **The Edmonton Symptom Assessment System (ESAS): A simple method for the assessment of palliative care patients** Journal of Palliative Care. 7(2):6-9 (PMID 1714502)
1. **Hui D, Bruera E.** (2017) **The Edmonton Symptom Assessment System 25 Years Later: Past, Present, and Future Developments** Journal of Pain and Symptom Management. 53(3):630-643 (DOI 10.1016/j.jpainsymman.2016.10.370)

-------

> **Status:** Diese Implementierung ist als `draft` und `experimental` markiert. Die Quellverifikation gegen Stiel et al. 2010/2012 ist Teil von Bead `kerndatensatzmodul-proms-5jd` und steht aus.

