---
topic: PROMIS-16
---
## PROMIS-16 Profile v2.1 (PROPr)

### Übersicht

**Status**: Implementiert — alle 16 Items, ohne Score-Berechnung  
**Version**: 2026.5.0  
**Letzte Aktualisierung**: 2026-06-10

Der **PROMIS-16 Profile v2.1 (PROPr)** ist ein ultrakurzes Multi-Domain-Instrument zur Erfassung der gesundheitsbezogenen Lebensqualität (HRQoL) mit nur **16 Items über 8 Domänen** (je 2 Items pro Domäne). Es eignet sich für Settings mit hoher Erhebungslast wie wiederholte Verlaufsmessungen oder Screening.

Quelle: **Edelen et al. 2024** -- *PROMIS®-16: development and preliminary psychometric evaluation* (Qual Life Res, [doi:10.1007/s11136-023-03597-6](https://doi.org/10.1007/s11136-023-03597-6))

**Ressourcen in Simplifier:**
- [PROMIS-16 Questionnaire](https://simplifier.net/MII-Erweiterungsmodul-PRO-2025/mii-qst-pro-promis-16)

<tabs>
  <tab title="Vorschau">
    <iframe
      src="https://gematik.github.io/poc-isik-formular/?base=https://fhir.simplifier.net/MII-Erweiterungsmodul-PRO-2025&id=mii-qst-pro-promis-16&minimal=true"
      width="100%"
      height="600px"
      frameborder="0">
    </iframe>
  </tab>
  <tab title="Tree">
    {{tree:mii-qst-pro-promis-16}}
  </tab>
  <tab title="JSON">
    {{json:mii-qst-pro-promis-16}}
  </tab>
  <tab title="XML">
    {{xml:mii-qst-pro-promis-16}}
  </tab>
</tabs>

### Abgedeckte Domänen

| Domäne | Items | PCOR-MII Variable IDs |
|--------|-------|----------------------|
| Physical Function | 2 | PFA21, PFA23 |
| Anxiety | 2 | EDANX40, EDANX41 |
| Depression | 2 | EDDEP29, EDDEP41 |
| Fatigue | 2 | HI7, AN3 |
| Sleep Disturbance | 2 | Sleep25, Sleep90 |
| Social Roles & Activities | 2 | SRPPER31_CaPS, SRPPER46_CaPS |
| Pain Interference | 2 | PAININ9, PAININ31 |
| Cognitive Function | 2 | PC27r, PC-CaPS3r |

### Capabilities

- **Displayable** -- ja
- **Collectable** -- ja
- **Calculatable** -- **nein** (bewusste Entscheidung; siehe Score-Berechnung unten)
- **Extractable** -- ja
- **Domain-aligned** -- ja

### Score-Berechnung (in dieser Version nicht implementiert)

PROMIS-16 ist auf die Berechnung des **PROMIS-Präferenz-Scores (PROPr)** ausgelegt — eines Utility-Scores analog zum EQ-5D-Index, der für vergleichende Wirksamkeits- und Kosten-Nutzen-Analysen verwendet wird. Die vollständige Score-Berechnung erfolgt in **3 Stufen**:

1. **8 Domänen-T-Scores** -- pro Domäne aus einem 5×5-Antwortmusterraster (Pattern-Lookup nach Edelen et al. 2024 Supplement S4)
2. **PROMIS-Theta-Werte** -- IRT-basierte latente Konstrukte je Domäne
3. **PROPr Summary Score** -- utility-basiert aus den 8 Thetas (Dewitt et al. 2018)

**In der aktuellen Version (2026.5.0)** ist die Score-Berechnung bewusst nicht implementiert. Das Questionnaire trägt `calculatable = false` und dient zunächst der reinen Datenerfassung. Die Score-Berechnung soll später über eine CQL Library `mii-lib-promis-16` und/oder Anbindung an die offizielle PROMIS Assessment Center API ergänzt werden.

**Hinweis zum Anwendungszweck** (laut PHO): Der PROPr-Score ist für Berichterstattung auf **Gruppenebene** vorgesehen. Für die präzise individuelle klinische Bewertung sind Domain-Scores allein nicht zuverlässig — sie können aber als Screening dienen.

Referenz Score-Methodik: Dewitt B, Feeny D, Fischhoff B, et al. *Estimation of a Preference-Based Summary Score for PROMIS: The PROMIS®-Preference (PROPr) Scoring System.* Med Decis Making. 2018;38(6):683-698. [doi:10.1177/0272989X18776637](https://doi.org/10.1177/0272989X18776637)

### Item-Überlapp mit PROMIS-29 / Cog Fn SF 4a

11 der 16 PROMIS-16-Items finden sich auch im PROMIS-29-Korpus, 5 sind PROMIS-16-spezifisch:

| PROMIS-16 Item | Auch in PROMIS-29? | Auch in Cog Fn SF 4a? |
|---|---|---|
| PFA21, PFA23 | ✓ | -- |
| EDANX40, EDANX41 | ✓ | -- |
| EDDEP29, EDDEP41 | ✓ | -- |
| HI7, AN3 | ✓ | -- |
| **Sleep25** | -- | -- |
| **Sleep90** | -- | -- |
| **SRPPER31_CaPS** | -- | -- |
| SRPPER46_CaPS | ✓ | -- |
| PAININ9, PAININ31 | ✓ | -- |
| **PC27r** | -- | -- |
| **PC-CaPS3r** | -- | -- |

**Praktische Konsequenz**: Wer PROMIS-29 + Cog Fn SF 4a erhebt, kann kein vollständiges PROMIS-16 extrahieren — es fehlen die 5 fett markierten Items.

### Vergleich PROMIS-16 vs. PROMIS-29

| Aspekt | PROMIS-16 | PROMIS-29 |
|---|---|---|
| Items gesamt | 16 | 29 (28 Likert + 1 NRS) |
| Items je Domäne | 2 | 4 |
| Abgedeckte Domänen | 8 (inkl. Cognitive Function) | 7 + 1 NRS (ohne Cognitive Function) |
| Score-Methode | Pattern-Lookup + PROPr Utility (CQL geplant) | Summenscore + T-Score-Lookup |
| Ausfüllzeit | ~3-5 min | ~7-10 min |
| Einsatzkontext | Wiederholte Messung, Screening, PROPr-Studien | Detaillierte Baseline-Erfassung |

### Sprachunterstützung

**Primärsprache**: Englisch (validierte PHO-Version)  
**Deutsche Übersetzung**: Via `translation`-Extension; Wordings aus dem offiziellen **PROMIS Health Organization PDF** (PROMIS-16 Profile v2.1 PROPr, German, 20 September 2024) und cross-confirmed mit dem **PCOR-MII Master Item-Level Dictionary**.

### Lizenzierung & Urheberrecht

PROMIS-Items sind urheberrechtlich geschützt. Die offiziellen deutschen Übersetzungen werden durch **PCOR-MII** bereitgestellt und durch das **PROMIS National Center Deutschland (CPCOR Charité, Leitung: Felix Fischer)** kuratiert.

**Für die institutionelle Implementierung außerhalb des PCOR-MII-Kontexts ist eine Nutzungsanfrage bei CPCOR erforderlich**:
[https://cpcor.charite.de/promis_national_center_deutschland/nutzungsanfragen](https://cpcor.charite.de/promis_national_center_deutschland/nutzungsanfragen)

Details zur Schichten-Attribution (MII FHIR-Struktur + PROMIS Items + deutsche Übersetzung + LOINC) siehe Index-Seite [PROMIS](Index.page.md).

### Referenzen

- Edelen MO, Rodriguez A, Herman P, Hays RD. *PROMIS®-16: development and preliminary psychometric evaluation of the next generation PROMIS® short form set.* Qual Life Res. 2024. [doi:10.1007/s11136-023-03597-6](https://doi.org/10.1007/s11136-023-03597-6)
- Dewitt B, Feeny D, Fischhoff B, et al. *Estimation of a Preference-Based Summary Score for PROMIS: The PROMIS®-Preference (PROPr) Scoring System.* Med Decis Making. 2018;38(6):683-698. [doi:10.1177/0272989X18776637](https://doi.org/10.1177/0272989X18776637)
- [PROMIS Official Site](https://www.healthmeasures.net/explore-measurement-systems/promis)
- [PROMIS National Center Deutschland (CPCOR)](https://cpcor.charite.de/promis_national_center_deutschland)
