---
topic: PROMIS-Global-Health
---
## {{page-title}}

### PROMIS Scale v1.2 – Global Health – Technische Dokumentation

<tabs>
  <tab title="Tree">
    {{tree:mii-qst-pro-promis-global-health}}
  </tab>
  <tab title="JSON">
    {{json:mii-qst-pro-promis-global-health}}
  </tab>
  <tab title="XML">
    {{xml:mii-qst-pro-promis-global-health}}
  </tab>
</tabs>

#### Klinischer Kontext

Die **PROMIS Scale v1.2 – Global Health** (PROMIS-GH, „PROMIS-10") erfasst mit zehn Items die globale körperliche und psychische Gesundheit sowie Lebensqualität, soziale Teilhabe, Schmerz und Erschöpfung. Aus je vier Items werden **Global Physical Health (GPH)** und **Global Mental Health (GMH)** gebildet; Global01 und Global09 sind Einzelindikatoren.

| Score | Items | Umkodierung (v1.2) | Rohwert |
|---|---|---|---|
| Global Physical Health | Global03, Global06, Global07, Global08 | Global07 (NRS 0–10): 0→5, 1–3→4, 4–6→3, 7–9→2, 10→1; Global08: Keine=5 … Sehr stark=1 | 4–20 |
| Global Mental Health | Global02, Global04, Global05, Global10 | Global10: Nie=5 … Immer=1 | 4–20 |

Höhere Werte = bessere Gesundheit. T-Scores (LOINC `71971-6`/`71969-0`) sind im Questionnaire nicht enthalten; sie folgen als CQL-Library, sobald die offizielle Umrechnungstabelle verifiziert hinterlegt ist.

> **PCOR-MII** erhebt Global01, Global02 und Global07 in allen drei Entitäten und führt dafür bislang den lokalen 2-Item-Questionnaire `PROMISGH`. Diese Instanz ist die kanonische Vollfassung; der Zuschnitt wird in der Use-Case-Schicht per `derivedFrom` abgeleitet.

#### FHIR-Implementierung

> **Sprachstrategie:** Englisch als Primärsprache (Formular v1.2 = LOINC-Komponentennamen des Panels `85524-7`). **Die offizielle deutsche Übersetzung liegt nur für Global01, Global02 (PCOR-MII/CPCOR) und Global07 (wortgleich mit PROMIS-29) vor.** Für Global03–06 und Global08–10 ist bewusst keine Eigenübersetzung hinterlegt; Nachtrag aus dem offiziellen CPCOR-Dokument. Bis dahin `status = draft`.

**Canonical URL:** `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-global-health`

**Capabilities:** Displayable, Collectable, Calculatable, Extractable, Domain-aligned

**Besonderheiten:**
- linkIds `promis-global01`…`promis-global10`; `promis-global07` = derselbe linkId wie das Schmerzintensitäts-Item in PROMIS-29. Reihenfolge wie auf dem Formular (01, 02, 03, 04, 05, 09, 06, 10, 08, 07), flache Struktur.
- Item-Codes aus dem LOINC-Panel `85524-7`, Antwortoptionen aus den LOINC-Answerlists (`LL1012-5`, `LL1013-3`, `LL1016-6`, `LL1015-8`) mit `itemWeight` an der `answerOption` — die Gewichte sind bereits die umkodierten Werte.
- Global07 als `choice` mit Integer-Optionen 0–10 (Umkodierung als `itemWeight`), Antwortdatentyp `valueInteger` wie in PROMIS-29.
- Rohwerte als Variablen `gphRaw`/`gmhRaw` mit Count-Guard; Score-Items `promis-global-health-score-physical-raw` (LOINC `71972-4`) und `promis-global-health-score-mental-raw` (LOINC `71970-8`).

#### Score-Repräsentation

1. Berechnete Items in der QuestionnaireResponse
2. Observations mit LOINC `71972-4`/`71970-8` und MII-Score-Codes `promis-global-health-physical-raw`/`promis-global-health-mental-raw`
3. ObservationDefinitions `mii-obsdef-pro-promis-global-health-physical-raw` / `-mental-raw` (je 4–20, höher = besser)

#### Lizenz

Vierschichtiges Attributionsmodell des Moduls (siehe [PROMIS](Index)): FHIR-Struktur © MII (CC-BY 4.0), Items © PROMIS Health Organization, deutsche Übersetzungen via PCOR-MII/CPCOR, LOINC © Regenstrief. Nutzung außerhalb von PCOR-MII: Nutzungsanfrage bei CPCOR.

#### Quellen

- Hays RD, Bjorner JB, Revicki DA, Spritzer KL, Cella D. Development of physical and mental health summary scores from the PROMIS global items. *Qual Life Res* 2009;18(7):873–880. doi:10.1007/s11136-009-9496-9
- HealthMeasures. PROMIS Scale v1.2 – Global Health: Scoring Manual.
- LOINC 2.83, Panel `85524-7`.
