---
topic: PRO-CTCAE Onkologisches Basisscreening
---
# PRO-CTCAE Onkologisches Basisscreening (DKG)

## Übersicht

Das **Onkologische Basisscreening** ist ein PRO-CTCAE-basiertes Symptom-Screening-Instrument für die allgemeine onkologische Versorgung. Es bildet die gleichen Symptome ab wie das palliativmedizinische [MIDOS2](../MIDOS2/Index.page.md), nutzt jedoch die differenzierteren PRO-CTCAE-Antwortskalen.

**Grundlegende Eigenschaften:**
- **23 Items** aus 10 PRO-CTCAE Adverse-Event-Konzepten
- **Antwortskalen**: 5-stufige PRO-CTCAE-Skalen (Häufigkeit / Schweregrad / Beeinträchtigung)
- **Zeitbezug**: Letzte 7 Tage
- **Lizenz**: PRO-CTCAE ist ein Produkt des US National Cancer Institute (NCI), frei verwendbar
- **Quelle**: PRO-CTCAE Item Library v1.0, deutsche Übersetzung NCI-autorisiert
- **Administration**: 5-10 Minuten

**Status**: `draft` + `experimental`

**Ressourcen in Simplifier:**
- [PRO-CTCAE Onkologisches Basisscreening Questionnaire](https://simplifier.net/MII-Erweiterungsmodul-PRO-2025/mii-qst-pro-pro-ctcae-onkologisches-basisscreening)

<tabs>
  <tab title="Vorschau">
    <iframe
      src="https://gematik.github.io/poc-isik-formular/?base=https://fhir.simplifier.net/MII-Erweiterungsmodul-PRO-2025&id=mii-qst-pro-pro-ctcae-onkologisches-basisscreening&minimal=true"
      width="100%"
      height="600px"
      frameborder="0">
    </iframe>
  </tab>
  <tab title="Tree">
    {{tree:mii-qst-pro-pro-ctcae-onkologisches-basisscreening}}
  </tab>
  <tab title="JSON">
    {{json:mii-qst-pro-pro-ctcae-onkologisches-basisscreening}}
  </tab>
  <tab title="XML">
    {{xml:mii-qst-pro-pro-ctcae-onkologisches-basisscreening}}
  </tab>
</tabs>

## Abgrenzung zum vollständigen PRO-CTCAE

Das Onkologische Basisscreening ist eine **kuratierte Auswahl** aus der PRO-CTCAE-Itembank (124 Items / 78 Adverse Events). Die Symptomauswahl orientiert sich an den MIDOS2-Symptomen und repräsentiert die häufigsten und klinisch relevantesten Symptome onkologischer Patienten.

Weitere PRO-CTCAE-Derivate im IG:
- PRO-CTCAE Breast-DE -- 21 Items für Brustkrebspatientinnen
- PRO-CTCAE Complete Master *(geplant, derzeit nur als CodeSystem verfügbar)*

## Symptomauswahl und Item-Mapping

| # | Symptom | PRO-CTCAE AE | Attribute | Items |
|---|---------|--------------|-----------|-------|
| 1 | Schmerz | #48 General Pain | frq+sev+int | 3 |
| 2 | Müdigkeit | #53 Fatigue | sev+int | 2 |
| 3 | Übelkeit | #9 Nausea | frq+sev | 2 |
| 4 | Erbrechen | #10 Vomiting | frq+sev | 2 |
| 5 | Appetitmangel | #8 Decreased Appetite | sev+int | 2 |
| 6 | Verstopfung | #15 Constipation | sev | 1 |
| 7 | Atemnot | #38 Shortness of Breath | sev+int | 2 |
| 8 | Depressivität | #55 Discouraged + #56 Sad | frq+sev pro AE | 4 |
| 9 | Angst/Anspannung | #54 Anxiety | frq+sev+int | 3 |
| 10 | Schlafstörungen | #62 Insomnia | sev+int | 2 |

**Besonderheit**: Depressivität wird PRO-CTCAE-konform durch ein **Mehrfach-Mapping** auf zwei AEs (#55 Discouraged + #56 Sad) realisiert; Angst und innere Anspannung werden zusammen unter #54 Anxiety erfasst.

## Mapping zu MIDOS2

Die Symptomauswahl ist mit der [MIDOS2-Symptomliste](../MIDOS2/Index.page.md) abgestimmt. Beide Instrumente sind so konzipiert, dass ein Wechsel zwischen palliativer (MIDOS2) und onkologischer Versorgung (Onkologisches Basisscreening) konzeptionell konsistent bleibt -- mit dem Unterschied der jeweils domänenadäquaten Antwortgranularität (4 vs. 5 Stufen, unterschiedliche Bezugszeiträume).

## Quellen

- NCI PRO-CTCAE Item Library v1.0 (EN/DE)
- [Detaillierte IG-Dokumentation in der IG-Publisher-Version](proms-onkologisches-basisscreening.html)
