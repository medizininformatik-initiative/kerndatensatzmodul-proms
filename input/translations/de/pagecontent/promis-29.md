### Übersicht

**Status**: Vollständig implementiert
**Version**: 2027.0.0-rc.1
**Letzte Aktualisierung**: 2026-11-04

Der PROMIS-29 ist ein umfassendes Instrument zur Erfassung der gesundheitsbezogenen Lebensqualität über 7 Domänen plus Schmerzintensität.

Die vollständige Ressource finden Sie in der [Questionnaire-Definition](Questionnaire-mii-qst-pro-promis-29.html).

### Domänen und Kurzformen

Das PROMIS-29 Profile v2.1 bündelt sieben 4-Item-Kurzformen plus ein Schmerzintensitäts-Item. Die *Versionen* der Kurzformen bestimmen die T-Score-Tabellen: v2.1 nutzt die Kalibrierung der Physical Function 4a v2.0 (dieselben vier Items wie v1.0, mit der Physical-Function-Itembank v2.0 rekalibriert, Rose et al. 2014) und die Kurzform Ability to Participate in Social Roles and Activities 4a v2.0 (die in Profile v2.0 die v1.0-Kurzform *Satisfaction with Participation* ersetzt hat). Die übrigen fünf Kurzformen sind v1.0.

| Domäne | Kurzform (PROMIS) | Items | Score | LOINC T-Score-Code | LOINC-Kurzform-Panel |
|--------|-------------------|-------|-------|--------------------|----------------------|
| Körperliche Funktion | 4a **v2.0** | 4 | T-Score | 91721-1 | — (LOINC kennt nur 4a v1.0 = 76700-4) |
| Angst | 4a v1.0 | 4 | T-Score | 77862-1 | 76344-1 |
| Depression | 4a v1.0 | 4 | T-Score | 77861-3 | 76343-3 |
| Erschöpfung | 4a v1.0 | 4 | T-Score | 77864-7 | 76342-5 |
| Schlafstörungen | 4a v1.0 | 4 | T-Score | 77860-5 | 75258-4 |
| Soziale Teilhabe | 4a **v2.0** | 4 | T-Score | 77854-8 | — (LOINC kennt nur 8a v2.0 = 76731-9) |
| Schmerzbedingte Beeinträchtigung | 4a v1.0 | 4 | T-Score | 77865-4 | 90971-3 |
| Schmerzintensität | Einzelitem (Global07) | 1 | 0–10 NRS | 61583-1 (Item) | — |

Das Profil selbst ist das LOINC-Panel [62337-1](https://loinc.org/62337-1/) (`Questionnaire.code`). Dieses Panel ist ein v1.0/v2.x-Hybrid: Es führt noch das v1.0-Satisfaction-Item (62041-9) und die Score-Codes *PROMIS-29 Satisfaction with participation in social roles* neben den v2.0-Items und dem v2.0-T-Score-Code.

#### LOINC-Kodierregel für die Scores

LOINC kann einen PROMIS-Score nicht eindeutig benennen: Die Domänen-T-Score-Codes (`778xx`, `91721-1`) tragen die Itembank-Version, aber nicht die Kurzform (4a, 8a und CAT teilen sich einen Code), die profilspezifischen Codes (`71955-9` … `71968-2`) weder Version noch Konstrukt. Das Modul wendet deshalb eine Regel an:

* **T-Scores** tragen den Domänencode mit Bank-Version (`PROMIS <Domäne> - version N T-score`), weil nur diese Codes die Kalibrierung benennen.
* **Rohwerte** tragen die PROMIS-29-spezifischen Codes `PROMIS-29 <Domäne> score`, weil Rohsummen nur je Kurzform sinnvoll sind. Der Rohwert Soziale Teilhabe hat **keinen** LOINC-Code (`71958-3` bezeichnet das v1.0-Konstrukt Satisfaction) und trägt nur den MII-Score-Katalogcode.
* **Schmerzintensität** nutzt den Item-Code `61583-1` für Item und Score.
* Die maßgebliche Identität eines Scores ist nie der LOINC-Code, sondern `Observation.derivedFrom` → `QuestionnaireResponse.questionnaire` (versionierte Canonical) plus MII-Score-Katalogcode.

### Technische Details

#### Questionnaire Resource

```
Questionnaire/mii-qst-pro-promis-29
```

**Capabilities**:
- Displayable
- Collectable
- Calculatable (alle Domänen-Scores)
- Extractable
- Domain-aligned

#### Score-Berechnung

Jede Domäne (außer Pain Intensity) wird als T-Score berechnet:

```
// FHIRPath
// Beispiel: Depression Domain
%rawScore = %resource.item
  .where(linkId.matches('^promis-eddep(04|05|06|29)$'))
  .answer.value.weight()
  .sum()

// T-Score Lookup (vereinfacht)
%tScore = iif(%rawScore = 4, 41.0,
          iif(%rawScore = 5, 49.0,
          iif(%rawScore = 6, 52.5, ...)))
```

#### Zwei Scoring-Kanäle (FHIRPath und CQL)

PROMIS-29 ist die Referenzimplementierung der Dual-Channel-Scoring-Architektur des Moduls:

| Kanal | Artefakt | Läuft wo | Einsatz |
|---|---|---|---|
| Client | `sdc-questionnaire-calculatedExpression` (FHIRPath) an jedem Score-Item | im Form Filler, live | `collectable + calculatable + displayable` |
| Server | Library [`mii-lib-pro-promis-29`](Library-mii-lib-pro-promis-29.html) (CQL + vorkompiliertes ELM), gebunden über `cqf-library` | `Library/$evaluate` auf einem Server mit Clinical Reasoning | `populatable + calculatable + extractable` |

Beide Kanäle werden **aus denselben zwei Tabellen generiert** (`scripts/data/promis29-answer-weights.csv`, `scripts/data/promis29-t-score-tables.csv`) und können deshalb nicht auseinanderlaufen. Die CQL-Define-Namen sind die `linkId`s der Score-Items (`promis-29-anxiety-tscore` …), sodass ein Server Item und Define ohne Expression-Parsing zuordnen kann. Die Library nimmt die Response entweder als Parameter `Response` entgegen oder, nach dem SDC-Retrieve-Muster, als jüngste abgeschlossene QuestionnaireResponse des Instruments aus den Patientendaten. Die 22 Scoring-Szenarien laufen in der CI gegen beide Kanäle (`scripts/promis29-scoring.test.mjs` mit fhirpath.js, `scripts/promis29-cql.test.mjs` mit cql-execution).

### Sprachunterstützung

**Primärsprache**: Englisch, Wortlaut des offiziellen Formulars PROMIS-29 Profile v2.1 (PROMIS Health Organization)
**Deutsche Übersetzung**: Via `translation`-Extension an jedem Itemtext, Gruppenkopf und jeder Instruktion; Wortlaut der validierten deutschen PROMIS-29-Fassung (CPCOR Charité / PCOR-MII Item Level Dictionary; Pain-Interference-Items im Präteritum nach dem deutschen PHO-PDF).

Alle 43 Items (29 Fragen, 14 Score-Items) und alle Gruppenköpfe folgen dieser einen Architektur. Die frühere DE-primäre Variante `mii-qst-pro-promis-29-de` und das 8-Item-Subset `-minimal` sind seit 2027.0.0-rc.1 **retired**; DE-primäre Darstellung ist Sache des Renderers bzw. von `$localize`, nicht einer zweiten Ressource. Körperliche Funktion und Soziale Teilhabe haben bewusst **keinen** Zeitbezug, genau wie auf dem offiziellen Formular.

```json
{
  "text": "I felt fearful.",
  "_text": {
    "extension": [{
      "url": "http://hl7.org/fhir/StructureDefinition/translation",
      "extension": [
        {"url": "lang", "valueCode": "de"},
        {"url": "content", "valueString": "Ich fürchtete mich."}
      ]
    }]
  }
}
```

### Implementierungshinweise

#### Variable-basierte Architektur

Der PROMIS-29 nutzt FHIR Variables für effiziente Multi-Score-Berechnung:

```fsh
// FSH
* extension[variable][+].name = "promisDepRaw"
* extension[variable][=].expression = "[sum of depression items]"

// Raw Score Item
* item[dep-raw].calculatedExpression = "%promisDepRaw"

// T-Score Item
* item[dep-tscore].calculatedExpression = "iif(%promisDepRaw = 4, 41.0, ...)"
```

#### Bekannte Einschränkungen

1. **Item-IDs**: Aktuell MII-spezifisch (`promis-pfa11`), nicht LOINC-konform
2. **Validation Study Alignment**: IDs basieren auf deutschen Validierungsstudien
3. **Partial Responses**: Keine Behandlung fehlender Items

### Beispiel QuestionnaireResponse

```json
{
  "resourceType": "QuestionnaireResponse",
  "questionnaire": "Questionnaire/mii-qst-pro-promis-29",
  "status": "completed",
  "item": [
    {
      "linkId": "promis-pfa11",
      "text": "Are you able to do chores such as vacuuming or yard work?",
      "answer": [{
        "valueCoding": {
          "system": "http://loinc.org",
          "code": "LA13918-0",
          "display": "With a little difficulty"
        }
      }]
    }
    // ... weitere 28 Items
  ]
}
```

### Lizenzierung & Urheberrecht

PROMIS-Items sind urheberrechtlich geschützt. Die offiziellen deutschen Übersetzungen werden durch **PCOR-MII** bereitgestellt und durch das **PROMIS National Center Deutschland (CPCOR Charité, Leitung: Felix Fischer)** kuratiert.

**Für die institutionelle Implementierung außerhalb des PCOR-MII-Kontexts ist eine Nutzungsanfrage bei CPCOR erforderlich**:
[https://cpcor.charite.de/promis_national_center_deutschland/nutzungsanfragen](https://cpcor.charite.de/promis_national_center_deutschland/nutzungsanfragen)

Details zur Schichten-Attribution (MII FHIR-Struktur + PROMIS Items + deutsche Übersetzung + LOINC) siehe [PROMIS — Lizenzierung & Urheberrecht](promis.html#lizenzierung-urheberrecht).

### Referenzen

- [PROMIS Official Site](https://www.healthmeasures.net/explore-measurement-systems/promis)
- [German PROMIS Validation](https://doi.org/10.1371/journal.pone.0197139)
- [PROMIS National Center Deutschland (CPCOR)](https://cpcor.charite.de/promis_national_center_deutschland)
- LOINC-Panel PROMIS-29-Profil: [62337-1](https://loinc.org/62337-1/)
- HealthMeasures, PROMIS Adult Profile Scoring Manual (15.07.2025) — Kurzform-Versionen je Profilversion und T-Score-Tabellen
- HealthMeasures, PROMIS Physical Function Measure Differences (12.07.2024) — Rekalibrierung v1.0–v2.0
