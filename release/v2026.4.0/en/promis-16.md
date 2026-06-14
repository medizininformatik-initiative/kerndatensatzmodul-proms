# PROMIS-16 - MII IG PRO v2026.2.0

## PROMIS-16

 
There is no translation page available for the current page, so it has been rendered in the default language 

### Übersicht

**Status**: Implementiert — alle 16 Items, ohne Score-Berechnung **Version**: 2026.5.0 **Stand**: 2026-06-10

Der **PROMIS-16 Profile v1.0** ist ein ultrakurzes Multi-Domain-Instrument zur Erfassung der gesundheitsbezogenen Lebensqualität (HRQoL). Mit nur **16 Items über 8 Domänen** (je 2 Items pro Domäne) ist es deutlich kürzer als der [PROMIS-29](promis-29.md) und für Settings mit hoher Erhebungslast geeignet — etwa wiederholte Messungen im klinischen Verlauf oder als Screening-Instrument.

Quelle: **Edelen et al. 2024** – **PROMIS®-16: development and preliminary psychometric evaluation** (Qual Life Res, [doi:10.1007/s11136-023-03597-6](https://doi.org/10.1007/s11136-023-03597-6))

### Abgedeckte Domänen

| | | |
| :--- | :--- | :--- |
| Physical Function | 2 | PFA21, PFA23 |
| Anxiety | 2 | EDANX40, EDANX41 |
| Depression | 2 | EDDEP29, EDDEP41 |
| Fatigue | 2 | HI7, AN3 |
| Sleep Disturbance | 2 | SLEEP25, SLEEP90 |
| Social Roles & Activities | 2 | SRPPER31_CaPS, SRPPER46_CaPS |
| Pain Interference | 2 | PAININ9, PAININ31 |
| Cognitive Function | 2 | PC27, PC-CaPS3R |

### Technische Details

#### Questionnaire Resource

```
Questionnaire/mii-qst-pro-promis-16

```

**Capabilities**:

* Displayable
* Collectable
* Extractable
* Domain-aligned
* **Calculatable**: bewusst false — pattern-basierter T-Score-Lookup je Domäne (5×5 = 25 Werte aus Supplement S4 von Edelen et al.) wird über eine eigene CQL Library `mii-lib-promis-16` realisiert (analog zur Architektur für PHQ-9 und EQ-5D)

#### Score-Berechnung (in dieser Version nicht implementiert)

PROMIS-16 ist eigentlich **"PROMIS-16 Profile v2.1 (PROPr)"** und ist auf die Berechnung des **PROMIS-Präferenz-Scores (PROPr)** ausgelegt — eines einzelnen Utility-Scores (analog zum EQ-5D-Index), der für vergleichende Wirksamkeits- und Kosten-Nutzen-Analysen verwendet wird. Die vollständige Score-Berechnung erfolgt in 3 Stufen:

1. **8 Domänen-T-Scores**— je Domäne aus einem 5×5-Antwortmusterraster (25 Kombinationen, Pattern-Lookup nach Edelen et al. 2024 Supplement S4)
1. **PROMIS-Theta-Werte**— IRT-basierte latente Konstrukte je Domäne
1. **PROPr Summary Score**— utility-basiert, abgeleitet aus den 8 Thetas (Dewitt et al. 2018)

**In der aktuellen Version (2026.5.0)** ist die Score-Berechnung bewusst **nicht implementiert**. Das Questionnaire trägt entsprechend `calculatable = false` und dient zunächst der reinen Datenerfassung. Die Score-Berechnung soll später über eine CQL Library `mii-lib-promis-16` und/oder Anbindung an die offizielle PROMIS Assessment Center API ergänzt werden, sobald die internen Anforderungen geklärt sind.

**Hinweis zum Anwendungszweck** (laut PHO): Der PROPr-Score ist für **Berichterstattung auf Gruppenebene** vorgesehen. Für die präzise individuelle klinische Bewertung sind Domain-Scores allein laut PHO nicht zuverlässig — sie können aber als Screening dienen.

Referenz Score-Methodik: Dewitt B, Feeny D, Fischhoff B, et al. **Estimation of a Preference-Based Summary Score for PROMIS: The PROMIS®-Preference (PROPr) Scoring System.** Med Decis Making. 2018;38(6):683-698. [doi:10.1177/0272989X18776637](https://doi.org/10.1177/0272989X18776637)

### Sprachunterstützung

**Primärsprache**: Englisch (validiertes Original) **Deutsche Übersetzung**: über `translation`-Extension; Wordings aus dem **PCOR-MII Master Item-Level Dictionary** (kuratiert durch CPCOR Charité — siehe [Lizenzierung](#lizenzierung-urheberrecht) unten)

### Implementierungsstand

Alle 16 Items sind in `input/fsh/definitions/promis-16/mii-qst-pro-promis-16.fsh` mit den offiziellen Wordings aus dem PHO PDF "PROMIS-16 Profile v2.1 (PROPr), German, 20 September 2024" implementiert. Die Wordings wurden automatisiert gegen das PCOR-MII Master Item-Level Dictionary verifiziert (`MATCH=15, DIFF=0`).

Die fünf PROMIS-16-spezifischen LOINC-Codes (Sleep25, Sleep90, SRPPER31-CaPS, PC27r, PC-CaPS3r) sind im FSH-File als TODO markiert — sie müssen noch gegen die offizielle LOINC-Liste verifiziert werden, sobald die PROMIS-16 Panel-Codes in LOINC publiziert sind.

Score-Berechnung (PROPr + Domain T-Scores) ist **bewusst nicht implementiert** in dieser Version — siehe Abschnitt [Score-Berechnung](#score-berechnung-in-dieser-version-nicht-implementiert).

### Item-Überlapp mit PROMIS-29 / Cog Fn SF 4a

11 der 16 PROMIS-16-Items finden sich auch im PROMIS-29-Korpus, 5 sind PROMIS-16-spezifisch:

| | | |
| :--- | :--- | :--- |
| PFA21, PFA23 | ✓ | – |
| EDANX40, EDANX41 | ✓ | – |
| EDDEP29, EDDEP41 | ✓ | – |
| HI7, AN3 | ✓ | – |
| **Sleep25** | – | – |
| **Sleep90** | – | – |
| **SRPPER31_CaPS** | – | – |
| SRPPER46_CaPS | ✓ | – |
| PAININ9, PAININ31 | ✓ | – |
| **PC27r** | – | – (4a hat andere PC-Items) |
| **PC-CaPS3r** | – | – |

**Praktische Konsequenz**: Wer PROMIS-29 + Cog Fn SF 4a erhebt, kann **kein vollständiges PROMIS-16** extrahieren — es fehlen die 5 fett markierten Items. Ein Cross-Walk auf Score-Ebene zwischen PROMIS-16-Domain-T-Scores und PROMIS-29-Domain-T-Scores ist Gegenstand späterer Arbeitspakete (Roadmap, gemeinsam mit der Score-Implementierung).

### Vergleich PROMIS-16 vs. PROMIS-29

| | | |
| :--- | :--- | :--- |
| Items gesamt | 16 | 29 (28 Likert + 1 NRS) |
| Items je Domäne | 2 | 4 |
| Abgedeckte Domänen | 8 (inkl. Cognitive Function) | 7 + 1 NRS (ohne Cognitive Function) |
| Score-Methode | Pattern-Lookup (25 pro Domäne) | Summenscore + T-Score-Lookup |
| Ausfüllzeit | ~3-5 min | ~7-10 min |
| Einsatzkontext | Wiederholte Messung, Screening | Detaillierte Baseline-Erfassung |

### Lizenzierung & Urheberrecht

PROMIS-Items sind urheberrechtlich geschützt. Die offiziellen deutschen Übersetzungen werden durch **PCOR-MII** bereitgestellt und durch das **PROMIS National Center Deutschland (CPCOR Charité, Leitung: Felix Fischer)** kuratiert.

**Für die institutionelle Implementierung außerhalb des PCOR-MII-Kontexts ist eine Nutzungsanfrage bei CPCOR erforderlich**: [https://cpcor.charite.de/promis_national_center_deutschland/nutzungsanfragen](https://cpcor.charite.de/promis_national_center_deutschland/nutzungsanfragen)

Details zur Schichten-Attribution (MII FHIR-Struktur + PROMIS Items + deutsche Übersetzung + LOINC) siehe [PROMIS — Lizenzierung & Urheberrecht](promis.md#lizenzierung-urheberrecht).

### Referenzen

* Edelen MO, Rodriguez A, Herman P, Hays RD. **PROMIS®-16: development and preliminary psychometric evaluation of the next generation PROMIS® short form set.** Qual Life Res. 2024. [doi:10.1007/s11136-023-03597-6](https://doi.org/10.1007/s11136-023-03597-6)
* [PROMIS Official Site](https://www.healthmeasures.net/explore-measurement-systems/promis)
* [PROMIS National Center Deutschland (CPCOR)](https://cpcor.charite.de/promis_national_center_deutschland)

