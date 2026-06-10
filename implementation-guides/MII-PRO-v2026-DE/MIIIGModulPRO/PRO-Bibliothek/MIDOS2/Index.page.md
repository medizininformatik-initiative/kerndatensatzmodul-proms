---
topic: MIDOS2
---
# MIDOS2 (Minimales Dokumentationssystem für Palliativpatienten)

## Übersicht

Das **MIDOS2** ist ein etabliertes deutsches Symptom-Screening-Instrument für die Palliativmedizin. Es wurde von der **Deutschen Gesellschaft für Palliativmedizin (DGP)** als deutsche Adaption des Edmonton Symptom Assessment System (ESAS, Bruera et al. 1991) entwickelt und durch Stiel et al. (2010, 2012) validiert und weiterentwickelt.

**Grundlegende Eigenschaften:**
- **13 Items**: 11 Symptom-Items + 1 Wohlbefinden-Item + 1 Freitext für sonstige Beschwerden
- **Antwortskala**: 4-stufige DGP-Skala für Symptome (keine / leichte / mittlere / starke), separate 4-stufige Skala für Wohlbefinden (sehr gut → sehr schlecht)
- **Zeitbezug**: Aktuell (letzte Tage)
- **Lizenz**: DGP, frei für klinische und Forschungszwecke
- **Validierung (DE)**: Stiel et al. 2010, 2012
- **Administration**: 2-5 Minuten

**Status**: `draft` + `experimental` -- MIDOS2 Source-Verifikation gegen Stiel et al. ausstehend

**Ressourcen in Simplifier:**
- [MIDOS2 Questionnaire](https://simplifier.net/MII-Erweiterungsmodul-PRO-2025/mii-qst-pro-midos-midos2)
- [MIDOS2 CodeSystem](https://simplifier.net/MII-Erweiterungsmodul-PRO-2025/mii-cs-pro-midos2)
- [MIDOS2 ValueSet Severity](https://simplifier.net/MII-Erweiterungsmodul-PRO-2025/mii-vs-pro-midos2-severity)
- [MIDOS2 ValueSet Wellbeing](https://simplifier.net/MII-Erweiterungsmodul-PRO-2025/mii-vs-pro-midos2-wellbeing)

<tabs>
  <tab title="Vorschau">
    <iframe
      src="https://gematik.github.io/poc-isik-formular/?base=https://fhir.simplifier.net/MII-Erweiterungsmodul-PRO-2025&id=mii-qst-pro-midos-midos2&minimal=true"
      width="100%"
      height="600px"
      frameborder="0">
    </iframe>
  </tab>
  <tab title="Tree">
    {{tree:mii-qst-pro-midos-midos2}}
  </tab>
  <tab title="JSON">
    {{json:mii-qst-pro-midos-midos2}}
  </tab>
  <tab title="XML">
    {{xml:mii-qst-pro-midos-midos2}}
  </tab>
</tabs>

## Capabilities

- **Displayable** -- ja
- **Collectable** -- ja
- **Calculatable** -- nein (Score-Berechnung in dieser Version nicht implementiert)
- **Extractable** -- ja
- **Domain-aligned** -- ja (Symptom-Screening Palliativ)

## Antwortskalen

### Symptom-Skala (4-stufig)

| Wert | Deutsch | Englisch |
|------|---------|----------|
| 0 | keine | none |
| 1 | leichte | mild |
| 2 | mittlere | moderate |
| 3 | starke | severe |

### Wohlbefinden-Skala (4-stufig)

| Wert | Deutsch | Englisch |
|------|---------|----------|
| 0 | sehr gut | very good |
| 1 | eher gut | rather good |
| 2 | eher schlecht | rather poor |
| 3 | sehr schlecht | very poor |

## Mapping zu PRO-CTCAE Onkologisches Basisscreening

MIDOS2 (palliative Versorgung) und das [Onkologische Basisscreening](../PRO-CTCAE/Onkologisches-Basisscreening.page.md) (onkologische Versorgung) bilden dieselben Symptome ab, nutzen aber unterschiedliche Antwortskalen (MIDOS2: 4-stufige DGP-Skala; PRO-CTCAE: 5-stufige PRO-CTCAE-Skalen für Häufigkeit/Schweregrad/Beeinträchtigung).

## Quellen

- Stiel S, Matthes ME, Bertram L, Ostgathe C, Elsner F, Radbruch L. Validierung der neuen Fassung des Minimalen Dokumentationssystems (MIDOS2) für Patienten in der Palliativmedizin. Schmerz. 2010;24(6):596-604.
- Stiel S, Pollok A, Elsner F, Lindena G, Ostgathe C, Nauck F, Radbruch L. Validation of the symptom and problem checklist of the German Hospice and Palliative Care Evaluation (HOPE). J Pain Symptom Manage. 2012;43(3):593-605.
- [Detaillierte IG-Dokumentation in der IG-Publisher-Version](midos2.html)
