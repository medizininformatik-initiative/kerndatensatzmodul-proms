### Übersicht

**Status**: Vollständig implementiert (Items, beide Scoring-Kanäle, Review-Framework)
**Version**: 2027.0.0-ballot.2
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
| Soziale Teilhabe | 4a **v2.0** | 4 | T-Score | 77854-8 | Itembank [76787-1](https://loinc.org/76787-1/) (kein 4a-Panel; 8a = 76731-9) |
| Schmerzbedingte Beeinträchtigung | 4a v1.0 | 4 | T-Score | 77865-4 | 90971-3 |
| Schmerzintensität | Einzelitem (Global07) | 1 | 0–10 NRS | 61583-1 (Item) | — |

Das Profil selbst ist das LOINC-Panel [62337-1](https://loinc.org/62337-1/) (`Questionnaire.code`). Dieses Panel ist ein v1.0/v2.x-Hybrid: Es führt noch das v1.0-Satisfaction-Item (62041-9) und die Score-Codes *PROMIS-29 Satisfaction with participation in social roles* neben den v2.0-Items und dem v2.0-T-Score-Code.

#### LOINC-Kodierregel für die Scores

LOINC kann einen PROMIS-Score nicht eindeutig benennen: Die Domänen-T-Score-Codes (`778xx`, `91721-1`) tragen die Itembank-Version, aber nicht die Kurzform (4a, 8a und CAT teilen sich einen Code), die profilspezifischen Codes (`71955-9` … `71968-2`) weder Version noch Konstrukt. Das Modul wendet deshalb eine Regel an:

* **T-Scores** tragen den Domänencode mit Bank-Version (`PROMIS <Domäne> - version N T-score`), weil nur diese Codes die Kalibrierung benennen.
* **Rohwerte** tragen die PROMIS-29-spezifischen Codes `PROMIS-29 <Domäne> score`, weil Rohsummen nur je Kurzform sinnvoll sind. Ausnahme ist der Rohwert Soziale Teilhabe: `71958-3` ist der Rohwert der v1.0-Domäne *Satisfaction with Participation in Social Roles* (andere Items, gegenläufige Polung), und für die v2.0-Domäne *Ability to Participate* (Itembank 76787-1, T-Score 77854-8) hat LOINC keinen 4a-Rohwert-Code (nur 8a, 77814-2). Das Item trägt deshalb nur den MII-Score-Katalogcode `promis-29-social-function-raw`.
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

Jede Domäne liefert einen **Rohwert** (Summe der vier Item-Gewichte, 4–20) und einen **T-Score** (Lookup aus dem Appendix des offiziellen Scoring-Manuals PROMIS-29 Profile v2.1). Schmerzintensität ist das einzelne 0–10-Item. Die Rohsummen sind FHIR-`variable`s am Questionnaire, die Score-Items referenzieren sie:

```
// variable anxietyRaw (eine je Domäne)
%resource.item.item
  .where(linkId.matches('^promis-edanx(01|40|41|53)$'))
  .answer.value.weight().sum()

// Item promis-29-anxiety-raw
%anxietyRaw

// Item promis-29-anxiety-tscore — Count-Guard + generierte Lookup-Tabelle
iif(%resource.item.item.where(linkId.matches('^promis-edanx(01|40|41|53)$')).answer.count() = 4,
    iif(%anxietyRaw=4, 40.3, iif(%anxietyRaw=5, 48.0, … iif(%anxietyRaw=20, 81.6, {}))), {})
```

Was Implementierer wissen müssen:

* Gewichte sind `itemWeight`-Extensions an den `answerOption`s (LOINC-Antwortcodes); Soziale Teilhabe und Schlaf sind gegenläufig gewichtet (z. B. Nie = 5 … Immer = 1), das ist die offizielle Polung.
* Ein T-Score entsteht **nur bei vollständig beantworteter Kurzform** (Count-Guard); ein fehlendes Item ergibt keinen T-Score statt eines falschen.
* Die sieben T-Score-Tabellen werden aus `scripts/data/promis29-t-score-tables.csv` **generiert** (`scripts/generate-promis29-tscores.py`), nie von Hand ins FSH getippt.
* 22 Scoring-Szenarien (Floor, Ceiling, asymmetrisch, Teilantwort je Domäne) laufen als Unit-Tests, TestScripts und Server-End-to-End-Tests, siehe die [PROM-Review-Seite](reviews/promis-29.html) mit Soll- und Ist-Werten je Item.

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

Alle 43 Items (29 Fragen, 14 Score-Items) und alle Gruppenköpfe folgen dieser einen Architektur. Die frühere DE-primäre Variante `mii-qst-pro-promis-29-de` und das 8-Item-Subset `-minimal` sind seit 2027.0.0-ballot.2 **retired**; DE-primäre Darstellung ist Sache des Renderers bzw. von `$localize`, nicht einer zweiten Ressource. Körperliche Funktion und Soziale Teilhabe haben bewusst **keinen** Zeitbezug, genau wie auf dem offiziellen Formular.

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

Rohsummen stehen einmal als `variable`-Extensions am Questionnaire und werden von beiden Score-Items einer Domäne referenziert. Das vermeidet zirkuläre Bezüge zwischen berechneten Items (ein berechnetes Item hat kein `answer.value`, das man lesen könnte):

```fsh
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "anxietyRaw"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.item.item.where(linkId.matches('^promis-edanx(01|40|41|53)$')).answer.value.weight().sum()"

* item[=].item[+].linkId = "promis-29-anxiety-raw"
* item[=].item[=].extension[calculatedExpression].valueExpression.expression = "%anxietyRaw"
* item[=].item[+].linkId = "promis-29-anxiety-tscore"
* item[=].item[=].extension[calculatedExpression].valueExpression.expression = "iif(… %anxietyRaw=4, 40.3, …)"
```

#### Item-Identifikatoren

Die `linkId`s folgen den PROMIS-Item-IDs der Validierungsstudien (`promis-pfa11`, `promis-edanx01`, `promis-srpper23-caps`), nicht den LOINC-Codes; der LOINC-Item-Code steht in `item.code`. Dieselben `linkId`s gelten überall, wo ein Item wiederkehrt (PROMIS-16, PROMIS Depression SF 4a), das macht instrumentübergreifendes Scoring erst möglich.

#### Bekannte Einschränkungen

1. **Teilantworten**: Eine Domäne mit fehlendem Item liefert die Rohsumme der beantworteten Items, aber keinen T-Score. Die PROMIS-Pro-Rating-Regeln für Kurzformen werden bewusst nicht angewendet; für Imputationsstrategien den Itembank-CAT oder den CQL-Kanal nutzen.
2. **Gruppierung ist nicht optional**: QuestionnaireResponses müssen die Domänengruppen behalten (`PROMIS-29.Anxiety` → Items), weil die Score-Expressions `item.item` adressieren und die Gruppenköpfe Teil der Fragebedeutung sind.

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
