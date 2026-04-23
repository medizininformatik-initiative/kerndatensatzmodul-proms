---
topic: EORTC-QLQ-BR42
---
# EORTC QLQ-BR42 Brustkrebs-Modul

## Übersicht

Das **EORTC QLQ-BR42** ist das aktuell validierte Brustkrebs-spezifische Ergänzungsmodul zum QLQ-C30. Es erfasst brustkrebsspezifische Symptome und Funktionsbereiche, die durch das generische QLQ-C30 nicht abgedeckt werden. Das Modul wird immer **gemeinsam mit dem QLQ-C30** eingesetzt (Q1-30 + Q31-72 = 72 Items gesamt).

### Evolution: BR23 → BR45 → BR42

| Version | Jahr | Items | Status | Änderungen |
|---|---|---|---|---|
| **QLQ-BR23** | 1996 | 23 | Veraltet (ersetzt durch BR42) | Original-Modul |
| **QLQ-BR45** | 2020 | 45 | Provisorisch (Phase III) | +22 Items für moderne Therapien |
| **QLQ-BR42** | 2024 | 42 | **Aktuell** (Phase IV, ESMO 2024) | -3 Items aus Endokrinen Skalen |

**Alle 23 Original-BR23-Items sind im BR42 enthalten** — volle Abwärtskompatibilität. BR23-Scores können direkt aus BR42-Daten berechnet werden.

### Grundlegende Eigenschaften

| Eigenschaft | Beschreibung |
|---|---|
| **Instrument-Typ** | Ergänzungsmodul zum QLQ-C30 |
| **Items** | 42 (Q31-72, fortlaufende Nummerierung nach QLQ-C30) |
| **Skalen** | 12 Multi-Item-Skalen + 1 Einzelitem |
| **Antwortskala** | 4-Punkt Likert (identisch mit QLQ-C30) |
| **Scoring** | Lineare Transformation 0-100 (identisch mit QLQ-C30) |
| **Recall** | Letzte 7 Tage (außer Sexualität: letzte 4 Wochen) |
| **Lizenz** | EORTC — frei für akademische Nutzung |

## Skalen und Items

### Funktionsskalen (höher = besser)

| Skala | Kürzel | Items | Item-Nr. | Reverse | Herkunft |
|---|---|---|---|---|---|
| Body Image | BI | 4 | Q39-42 | — | BR23 |
| Future Perspective | FU | 1 | Q43 | — | BR23 |
| Sexual Functioning | SX | 2 | Q44-45 | Q44, Q45 | BR23 |
| Sexual Enjoyment | SE | 1 | Q46 | Q46 | BR23 |
| Breast Satisfaction | BS | 2 | Q71-72 | Q71, Q72 | **Neu** |

### Symptomskalen (höher = schlechter)

| Skala | Kürzel | Items | Item-Nr. | Herkunft |
|---|---|---|---|---|
| Systemic Therapy Side Effects | SYS | 7 | Q31-34, Q36-38 | BR23 |
| Upset by Hair Loss | HU | 1 | Q35 | BR23 |
| Arm Symptoms | ARM | 3 | Q47-49 | BR23 |
| Breast Symptoms | BR | 4 | Q50-53 | BR23 |
| Endocrine Therapy Symptoms | ET | 7 | Q54-56, Q63-66 | **Neu** |
| Skin / Mucosis Symptoms | SM | 6 | Q57-62 | **Neu** |
| Endocrine Sexual Symptoms | ES | 3 | Q68-70 | **Neu** |

### Einzelitems (höher = schlechter)

| Item | Kürzel | Item-Nr. | Herkunft |
|---|---|---|---|
| Weight Gain | WG | Q67 | **Neu** |

### Konditionale Items

| Item | Bedingung |
|---|---|
| Q35 (Upset by Hair Loss) | Nur wenn Q34 (Hair Loss) ≠ "Not at all" |
| Q46 (Sexual Enjoyment) | Nur wenn sexuell aktiv (Q45 ≠ "Not at all") |
| Q69, Q70 (Vaginal Symptoms) | Nur wenn sexuell aktiv (Q45 ≠ "Not at all") |

## Scoring

### Berechnungsprinzip

Identisch mit dem QLQ-C30 — zwei Schritte:

**1. Raw Score:** Mittelwert der zugehörigen Items

$$RS = \frac{I_1 + I_2 + \ldots + I_n}{n}$$

**2. Lineare Transformation:**

Funktionsskalen: $S = \left(1 - \frac{RS - 1}{range}\right) \times 100$

Symptomskalen: $S = \frac{RS - 1}{range} \times 100$

Wobei range = 3 (da Items 1-4, also max - min = 3).

### Reverse Scoring

Items Q44, Q45, Q46, Q71, Q72 müssen vor der Berechnung umgekehrt werden: $I_{reversed} = range + 1 - I = 4 + 1 - I = 5 - I$

### Score-Granularität

Die Anzahl der möglichen diskreten Score-Werte hängt von der Itemanzahl ab:

| Items | Mögliche Scores | Kleinste Differenz |
|---|---|---|
| 1 Item (FU, SE, HU, WG) | 4 | 33.3 Punkte |
| 2 Items (SX, BS) | 7 | 16.7 Punkte |
| 3 Items (ARM, ES) | 10 | 11.1 Punkte |
| 4 Items (BI, BR) | 13 | 8.3 Punkte |
| 6 Items (SM) | 19 | 5.6 Punkte |
| 7 Items (SYS, ET) | 22 | 4.8 Punkte |

Dies ist bei der Interpretation von Score-Änderungen zu berücksichtigen.

## BR23-Kompatibilität

### Item-Zuordnung BR23 → BR42

| BR23-Skala | BR23 Items (1-23) | BR42 Items (31-72) | Score identisch? |
|---|---|---|---|
| Body Image | 9-12 | Q39-42 | **Ja** |
| Future Perspective | 13 | Q43 | **Ja** |
| Sexual Functioning | 14-15 | Q44-45 | **Ja** |
| Sexual Enjoyment | 16 | Q46 | **Ja** |
| Systemic Therapy SE | 1-4, 6-8 | Q31-34, Q36-38 | **Ja** |
| Upset by Hair Loss | 5 | Q35 | **Ja** |
| Arm Symptoms | 17-19 | Q47-49 | **Ja** |
| Breast Symptoms | 20-23 | Q50-53 | **Ja** |

Alle 8 BR23-Skalen verwenden identische Items, identische Formeln und produzieren identische Scores. Ein BR42-Datensatz enthält automatisch alle BR23-Scores.

### BR45 → BR42 Änderungen

| Skala | BR45 | BR42 | Änderung |
|---|---|---|---|
| Endocrine Therapy | 10 Items | 7 Items | 3 Items entfernt |
| Endocrine Sexual | 4 Items | 3 Items | 1 Item entfernt |
| Breast Satisfaction | Q74-75 | Q71-72 | Umnummeriert |

**Hinweis:** BR45- und BR42-Scores für Endocrine Therapy und Endocrine Sexual sind aufgrund unterschiedlicher Itemanzahl **nicht direkt vergleichbar** (unterschiedliche Score-Granularität).

## FHIR-Implementierung

### Ressourcen

| Ressource | Id | Beschreibung |
|---|---|---|
| **Questionnaire** | `mii-qst-pro-eortc-qlq-br42` | 42 Items, gruppiert nach Skalen |
| **ObservationDefinition (13x)** | `mii-obsdef-pro-score-eortc-qlq-br42-*` | Je Skala eine ObsDef (0-100) |

### Wiederverwendung von QLQ-C30 Komponenten

| Komponente | Wiederverwendet? |
|---|---|
| Antwort-CodeSystem | Ja — `mii-cs-pro-eortc-qlq-c30` |
| Antwort-ValueSet (4-Punkt) | Ja — `mii-vs-pro-eortc-qlq-c30-scale-4pt` |
| Scoring-Formel | Ja — identische lineare Transformation |
| CQL Library (geplant) | Ja — EORTC_Core + EORTC_Breast |

### Beziehung zum QLQ-C30

```
Patient füllt aus:
  QLQ-C30 (Q1-30)  +  QLQ-BR42 (Q31-72)
       ↓                    ↓
  15 C30-Scores     13 BR42-Scores     8 BR23-Scores (gratis)
       ↓                    ↓                ↓
            Gemeinsame CQL Library (EORTC_Core)
```

## Referenzen

1. Bjelic-Radisic V, et al. An international update of the EORTC questionnaire for assessing quality of life in breast cancer patients: EORTC QLQ-BR45. *Ann Oncol.* 2020;31(2):283-288.
2. EORTC QLQ-BR42 Phase IV validation. *ESMO Open.* 2024 (270MO oral presentation).
3. Sprangers MAG, et al. The European Organization for Research and Treatment of Cancer breast cancer–specific quality-of-life questionnaire module: First results from a three-country field study. *J Clin Oncol.* 1996;14(10):2756-2768.
4. EORTC QLQ-BR45 Scoring Manual. Available at: https://www.eortc.be/qol/ScoringInstructions/BR45%20Summary.pdf
5. EORTC QLQ-BR42 Module (English Final). Available at: https://www.eortc.org/app/uploads/sites/2/2024/04/BR42-Module-English-FINAL.doc
