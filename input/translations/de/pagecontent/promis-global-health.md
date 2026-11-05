### Klinischer Kontext

Die **PROMIS Scale v1.2 – Global Health** (PROMIS-GH, „PROMIS-10") erfasst mit zehn Items die **globale körperliche und psychische Gesundheit** sowie Lebensqualität, soziale Teilhabe, Schmerz und Erschöpfung. Aus je vier Items werden zwei Summenwerte gebildet: **Global Physical Health (GPH)** und **Global Mental Health (GMH)**; Global01 (allgemeiner Gesundheitszustand) und Global09 (soziale Rollen) sind Einzelindikatoren.

**Scoring (v1.2, Hays et al. 2009; Scoring Manual):**

| Score | Items | Umkodierung | Rohwert |
|---|---|---|---|
| Global Physical Health | Global03, Global06, Global07, Global08 | Global07 (NRS 0–10): 0→5, 1–3→4, 4–6→3, 7–9→2, 10→1; Global08: Keine=5 … Sehr stark=1 | 4–20 |
| Global Mental Health | Global02, Global04, Global05, Global10 | Global10: Nie=5 … Immer=1 | 4–20 |

Höhere Werte bedeuten bessere Gesundheit. Die Umrechnung der Rohwerte in **T-Scores** (LOINC `71971-6` GPH, `71969-0` GMH; Mittelwert 50, SD 10) ist im Questionnaire **nicht** enthalten; sie folgt als CQL-Library, sobald die offizielle Umrechnungstabelle verifiziert hinterlegt ist.

> **PCOR-MII:** erhebt Global01, Global02 und Global07 in allen drei Entitäten und führt dafür bislang den lokalen 2-Item-Questionnaire `PROMISGH`. Diese Instanz ist die kanonische Vollfassung; der PCOR-Zuschnitt wird in der Use-Case-Schicht per `derivedFrom` abgeleitet.

### FHIR-Implementierung

> **Sprachstrategie:** Englisch als Primärsprache (Wortlaut des Formulars v1.2 = LOINC-Komponentennamen des Panels `85524-7`). **Die offizielle deutsche Übersetzung liegt im Modul nur für Global01, Global02 (PCOR-MII Item Level Dictionary, CPCOR) und Global07 (wortgleich mit `promis-global07` in PROMIS-29) vor.** Für Global03–06 und Global08–10 ist bewusst **keine** Eigenübersetzung hinterlegt; sie wird aus dem offiziellen HealthMeasures/CPCOR-Übersetzungsdokument nachgetragen. Bis dahin steht das Instrument auf `status = draft`.

#### Questionnaire

**Canonical URL:** `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-global-health`

**Capabilities:** Displayable, Collectable, Calculatable, Extractable, Domain-aligned

**Besonderheiten:**
- linkIds `promis-global01`…`promis-global10`; `promis-global07` ist derselbe linkId wie das Schmerzintensitäts-Item in PROMIS-29 (identische Frage, Itembank-Prinzip). Reihenfolge wie auf dem Formular: 01, 02, 03, 04, 05, 09, 06, 10, 08, 07; flache Struktur, der 7-Tage-Stamm ist ein `display`-Item.
- Item-Codes aus dem LOINC-Panel `85524-7`; Antwortoptionen als LOINC-Answerlists (`LL1012-5`, `LL1013-3`, `LL1016-6`, `LL1015-8`) mit `itemWeight` an der `answerOption`. Die Gewichte sind bereits die **umkodierten** Werte der v1.2-Scoring-Regel.
- Global07 ist als `choice` mit Integer-Optionen 0–10 modelliert, damit die Umkodierung als `itemWeight` an den Optionen liegt; der Antwortdatentyp bleibt `valueInteger` wie in PROMIS-29.
- Rohwerte als FHIR-Variablen `gphRaw`/`gmhRaw` mit Count-Guard (nur bei vollständig beantworteter Vierergruppe), Score-Items `promis-global-health-score-physical-raw` (LOINC `71972-4`) und `promis-global-health-score-mental-raw` (LOINC `71970-8`).

Die vollständige Ressource: [Questionnaire-Definition](Questionnaire-mii-qst-pro-promis-global-health.html).

#### Score-Repräsentation

1. **Berechnete Items** in der QuestionnaireResponse (`promis-global-health-score-physical-raw`, `promis-global-health-score-mental-raw`)
2. **Observations** mit LOINC `71972-4`/`71970-8` und den MII-Score-Codes `promis-global-health-physical-raw`/`promis-global-health-mental-raw`
3. **ObservationDefinitions:** `mii-obsdef-pro-promis-global-health-physical-raw`, `mii-obsdef-pro-promis-global-health-mental-raw` — Wertebereich je 4–20, höher = besser

### Lizenz

PROMIS-Instrumente unterliegen dem vierschichtigen Attributionsmodell des Moduls (siehe [PROMIS](promis.html)): FHIR-Struktur © MII (CC-BY 4.0), Items © PROMIS Health Organization, deutsche Übersetzungen via PCOR-MII/CPCOR, LOINC © Regenstrief. Institutionelle Nutzung außerhalb von PCOR-MII erfordert eine Nutzungsanfrage bei CPCOR.

### Quellen

- Hays RD, Bjorner JB, Revicki DA, Spritzer KL, Cella D. Development of physical and mental health summary scores from the patient-reported outcomes measurement information system (PROMIS) global items. *Qual Life Res* 2009;18(7):873–880. doi:10.1007/s11136-009-9496-9
- HealthMeasures. PROMIS Scale v1.2 – Global Health: Scoring Manual. https://www.healthmeasures.net
- LOINC 2.83: Panel `85524-7` „PROMIS short form - global - version 1.2" (Item-Codes `61577-3`, `61578-1`, `61579-9`, `61580-7`, `61581-5`, `61585-6`, `61582-3`, `61586-4`, `61584-9`, `61583-1`)
