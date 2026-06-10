### Übersicht

**Status**: In Entwicklung (Skelett — 2 von 16 Items implementiert)
**Version**: 2026.5.0
**Stand**: 2026-06-10

Der **PROMIS-16 Profile v1.0** ist ein ultrakurzes Multi-Domain-Instrument zur Erfassung der gesundheitsbezogenen Lebensqualität (HRQoL). Mit nur **16 Items über 8 Domänen** (je 2 Items pro Domäne) ist es deutlich kürzer als der [PROMIS-29](promis-29.html) und für Settings mit hoher Erhebungslast geeignet — etwa wiederholte Messungen im klinischen Verlauf oder als Screening-Instrument.

Quelle: **Edelen et al. 2024** -- *PROMIS®-16: development and preliminary psychometric evaluation* (Qual Life Res, [doi:10.1007/s11136-023-03597-6](https://doi.org/10.1007/s11136-023-03597-6))

### Abgedeckte Domänen

| Domäne | Items | PCOR-MII Variable IDs |
|--------|-------|----------------------|
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
- Displayable
- Collectable
- Extractable
- Domain-aligned
- **Calculatable**: bewusst false — pattern-basierter T-Score-Lookup je Domäne (5×5 = 25 Werte aus Supplement S4 von Edelen et al.) wird über eine eigene CQL Library `mii-lib-promis-16` realisiert (analog zur Architektur für PHQ-9 und EQ-5D)

#### Score-Berechnung (geplant)

Pro Domäne wird aus der Kombination der 2 Antworten ein T-Score per Lookup ermittelt. Anders als beim PROMIS-29 (4 Items je Domäne, Summen-basierter T-Score) basiert PROMIS-16 auf einem **5×5-Antwortmusterraster**:

```
Antwort Item 1: {1,2,3,4,5}
Antwort Item 2: {1,2,3,4,5}
→ 25 mögliche Kombinationen, jeweils ein T-Score-Lookup
```

Diese Berechnung passt nicht in eine einfache FHIRPath-`calculatedExpression` und wird daher per CQL Library (Roadmap 2027) realisiert.

### Sprachunterstützung

**Primärsprache**: Englisch (validiertes Original)
**Deutsche Übersetzung**: über `translation`-Extension; Wordings aus dem **PCOR-MII Master Item-Level Dictionary** (kuratiert durch CPCOR Charité — siehe [Lizenzierung](#lizenzierung-urheberrecht) unten)

### Implementierungsstand

Aktuell ist nur das Grundgerüst angelegt (siehe `input/fsh/definitions/promis-16/mii-qst-pro-promis-16.fsh`): die zwei Physical-Function-Items PFA21 und PFA23 sind vollständig implementiert. Die restlichen 14 Items sind im FSH-File als TODO markiert.

Tracking: beads-Issue `kerndatensatzmodul-proms-yo6`.

### Vergleich PROMIS-16 vs. PROMIS-29

| Aspekt | PROMIS-16 | PROMIS-29 |
|---|---|---|
| Items gesamt | 16 | 29 (28 Likert + 1 NRS) |
| Items je Domäne | 2 | 4 |
| Abgedeckte Domänen | 8 (inkl. Cognitive Function) | 7 + 1 NRS (ohne Cognitive Function) |
| Score-Methode | Pattern-Lookup (25 pro Domäne) | Summenscore + T-Score-Lookup |
| Ausfüllzeit | ~3-5 min | ~7-10 min |
| Einsatzkontext | Wiederholte Messung, Screening | Detaillierte Baseline-Erfassung |

### Lizenzierung & Urheberrecht

PROMIS-Items sind urheberrechtlich geschützt. Die offiziellen deutschen Übersetzungen werden durch **PCOR-MII** bereitgestellt und durch das **PROMIS National Center Deutschland (CPCOR Charité, Leitung: Felix Fischer)** kuratiert.

**Für die institutionelle Implementierung außerhalb des PCOR-MII-Kontexts ist eine Nutzungsanfrage bei CPCOR erforderlich**:
[https://cpcor.charite.de/promis_national_center_deutschland/nutzungsanfragen](https://cpcor.charite.de/promis_national_center_deutschland/nutzungsanfragen)

Details zur Schichten-Attribution (MII FHIR-Struktur + PROMIS Items + deutsche Übersetzung + LOINC) siehe [PROMIS — Lizenzierung & Urheberrecht](promis.html#lizenzierung-urheberrecht).

### Referenzen

- Edelen MO, Rodriguez A, Herman P, Hays RD. *PROMIS®-16: development and preliminary psychometric evaluation of the next generation PROMIS® short form set.* Qual Life Res. 2024. [doi:10.1007/s11136-023-03597-6](https://doi.org/10.1007/s11136-023-03597-6)
- [PROMIS Official Site](https://www.healthmeasures.net/explore-measurement-systems/promis)
- [PROMIS National Center Deutschland (CPCOR)](https://cpcor.charite.de/promis_national_center_deutschland)
