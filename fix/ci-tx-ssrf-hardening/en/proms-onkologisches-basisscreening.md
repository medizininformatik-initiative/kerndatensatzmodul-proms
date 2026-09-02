# Onkologisches Basisscreening (PRO-CTCAE) - MII IG PRO v2026.6.0

## Onkologisches Basisscreening (PRO-CTCAE)

 
There is no translation page available for the current page, so it has been rendered in the default language 

### Überblick

Das **Onkologische Basisscreening** ist ein PRO-CTCAE-basiertes Symptom-Screening-Instrument für die allgemeine onkologische Versorgung. Es bildet die gleichen Symptome ab wie das palliativmedizinische [MIDOS2](midos2.md), nutzt jedoch die differenzierteren PRO-CTCAE-Antwortskalen.

**Grundlegende Eigenschaften:**

* **23 Items** aus 10 PRO-CTCAE Adverse-Event-Konzepten
* **Antwortskalen**: 5-stufige PRO-CTCAE-Skalen (Häufigkeit / Schweregrad / Beeinträchtigung)
* **Zeitbezug**: Letzte 7 Tage
* **Lizenz**: PRO-CTCAE ist ein Produkt des US National Cancer Institute (NCI), frei verwendbar
* **Quelle**: PRO-CTCAE Item Library v1.0, deutsche Übersetzung NCI-autorisiert
* **Administration**: 5-10 Minuten

### Abgrenzung zum vollständigen PRO-CTCAE

Das Onkologische Basisscreening ist eine **kuratierte Auswahl** aus der PRO-CTCAE-Itembank (124 Items / 78 Adverse Events). Die Symptomauswahl orientiert sich an den MIDOS2-Symptomen und repräsentiert die häufigsten und klinisch relevantesten Symptome onkologischer Patienten.

Weitere PRO-CTCAE-Derivate im IG:

* [PRO-CTCAE Breast-DE](Questionnaire-mii-qst-pro-pro-ctcae-breast-de.md) — 21 Items für Brustkrebspatientinnen
* PRO-CTCAE Complete Master **(geplant, derzeit nur als CodeSystem verfügbar)**

### Symptomauswahl und Item-Mapping

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| 1 | Schmerz | #48 General Pain | frq+sev+int | 3 |
| 2 | Müdigkeit | #53 Fatigue | sev+int | 2 |
| 3 | Übelkeit | #9 Nausea | frq+sev | 2 |
| 4 | Erbrechen | #10 Vomiting | frq+sev | 2 |
| 5 | Appetitmangel | #8 Decreased Appetite | sev+int | 2 |
| 6 | Verstopfung | #15 Constipation | sev | 1 |
| 7 | Luftnot/Kurzatmigkeit | #19 Shortness of Breath | sev+int | 2 |
| 8 | Mutlosigkeit | #55 Discouraged | frq+sev+int | 3 |
| 9 | Traurigkeit | #56 Sad | frq+sev+int | 3 |
| 10 | Angst | #54 Anxiety | frq+sev+int | 3 |
|   | **Summe** | **10 AEs** |   | **23 Items** |

### Antwortskalen

#### Häufigkeit (Frequency, 5-stufig)

| | | |
| :--- | :--- | :--- |
| 0 | Nie | Never |
| 1 | Selten | Rarely |
| 2 | Gelegentlich | Occasionally |
| 3 | Häufig | Frequently |
| 4 | Fast immer | Almost constantly |

#### Schweregrad (Severity, 5-stufig)

| | | |
| :--- | :--- | :--- |
| 0 | Gar nicht | None |
| 1 | Ein wenig | Mild |
| 2 | Mäßig | Moderate |
| 3 | Ziemlich | Severe |
| 4 | Sehr | Very severe |

#### Beeinträchtigung (Interference, 5-stufig)

Skala wie Severity (in der deutschen NCI-Übersetzung identisch betextet).

### Score-Berechnung

Das Onkologische Basisscreening folgt der **PRO-CTCAE Composite Grading Algorithm** (Basch et al. 2014). Pro Symptom wird ein Composite Grade aus den vorhandenen Attributen berechnet (Rank 1-7 je nach Attributkombination). Die genaue Berechnung erfolgt CQL-basiert über die etablierte PRO-CTCAE-Library (`mii-lib-pro-ctcae`).

| | |
| :--- | :--- |
| 0 | Kein Symptom |
| 1 | Mildes Symptom |
| 2 | Moderates Symptom |
| 3 | Schweres Symptom |

Zusätzlich kann ein **Average Composite Score (ACS)** über alle erfassten Symptome berechnet werden — ein aggregiertes Maß für die Gesamtbelastung.

### Mapping zu MIDOS2

| | |
| :--- | :--- |
| Schmerz | #48 General Pain (1:1) |
| Übelkeit | #9 Nausea (1:1) |
| Erbrechen | #10 Vomiting (1:1) |
| Luftnot | #19 Shortness of Breath (1:1) |
| Verstopfung | #15 Constipation (1:1) |
| Müdigkeit + Schwäche | #53 Fatigue (PRO-CTCAE bündelt) |
| Appetitmangel | #8 Decreased Appetite (1:1) |
| Depressivität | #55 Discouraged + #56 Sad (PRO-CTCAE zerlegt) |
| Angst + Anspannung | #54 Anxiety (PRO-CTCAE bündelt) |
| Wohlbefinden gesamt | **kein PRO-CTCAE-Äquivalent** |

Eine ConceptMap auf Antwort-Ebene (4-stufig ↔ 5-stufig) ist für eine spätere Iteration vorgesehen.

### FHIR-Implementierung

> **Sprachstrategie:** Deutsch als Primärsprache, Englisch als Translation. Die Item-Wordings stammen direkt aus dem NCI-autorisierten deutschen PRO-CTCAE Item Library v1.0.

#### Questionnaire

**Canonical URL:** `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-pro-ctcae-onkologisches-basisscreening`

**Implementierte Capabilities:**

* Displayable, Collectable, Extractable, Domain-aligned
* **Calculatable** aktiviert nach Anbindung der CQL Library

Die vollständige Ressource finden Sie in der [Questionnaire-Definition](Questionnaire-mii-qst-pro-pro-ctcae-onkologisches-basisscreening.md).

#### Wiederverwendete Ressourcen

Das Onkologische Basisscreening referenziert das bestehende [PRO-CTCAE CodeSystem](CodeSystem-mii-cs-pro-pro-ctcae.md) und die etablierten ValueSets für Frequency, Severity und Interference.

### Literatur

1. **Basch E, Reeve BB, Mitchell SA, et al.** (2014) **Development of the National Cancer Institute's Patient-Reported Outcomes Version of the Common Terminology Criteria for Adverse Events (PRO-CTCAE)** Journal of the National Cancer Institute. 106(9):dju244 (DOI 10.1093/jnci/dju244)
1. **National Cancer Institute (2025)** **PRO-CTCAE Item Library v1.0 — Deutsche Übersetzung** healthcaredelivery.cancer.gov/pro-ctcae
1. **Hamacher S, Hellmich M, Lorenz C, et al.** (2023) **Developing tumor-specific PRO-CTCAE item sets — methodological approach and example for breast cancer patients in Germany** BMC Cancer. 23:638 (DOI 10.1186/s12885-023-11115-7)

-------

> **Status:** Diese Implementierung ist als `draft` und `experimental` markiert. Eine `derivedFrom`-Beziehung zu einem vollständigen PRO-CTCAE Master Questionnaire ist geplant.

