# PROMIS-29 - MII IG PRO v2026.5.2

## PROMIS-29

### Übersicht

**Status**: Vollständig implementiert **Version**: 2026.0.0-ballot **Letzte Aktualisierung**: 2025-08-28

Der PROMIS-29 ist ein umfassendes Instrument zur Erfassung der gesundheitsbezogenen Lebensqualität über 7 Domänen plus Schmerzintensität.

Die vollständige Ressource finden Sie in der [Questionnaire-Definition](Questionnaire-mii-qst-pro-promis-29.md).

### Domänen

| | | | |
| :--- | :--- | :--- | :--- |
| Physical Function | 4 | T-Score 20-80 | 61758-9 |
| Anxiety | 4 | T-Score 20-80 | 61759-7 |
| Depression | 4 | T-Score 20-80 | 61760-5 |
| Fatigue | 4 | T-Score 20-80 | 61761-3 |
| Sleep Disturbance | 4 | T-Score 20-80 | 61762-1 |
| Social Roles | 4 | T-Score 20-80 | 61763-9 |
| Pain Interference | 4 | T-Score 20-80 | 61764-7 |
| Pain Intensity | 1 | 0-10 | 75262-6 |

### Technische Details

#### Questionnaire Resource

```
Questionnaire/mii-qst-pro-promis-29

```

**Capabilities**:

* Displayable
* Collectable
* Calculatable (alle Domänen-Scores)
* Extractable
* Domain-aligned

#### Score-Berechnung

Jede Domäne (außer Pain Intensity) wird als T-Score berechnet:

```
// FHIRPath
// Beispiel: Depression Domain
%rawScore = %resource.item
  .where(linkId.matches('^promis-eddep(04|05|06|29)$'))
  .answer.value.ordinal()
  .sum()

// T-Score Lookup (vereinfacht)
%tScore = iif(%rawScore = 4, 41.0,
          iif(%rawScore = 5, 49.0,
          iif(%rawScore = 6, 52.5, ...)))

```

### Sprachunterstützung

**Primärsprache**: Englisch (validierte Version) **Deutsche Übersetzung**: Via `translation`-Extension

> **Hinweis zur DE-Variante** (`mii-qst-pro-promis-29-de`): Diese existiert ausschließlich zur Darstellung in deutschsprachigen Renderern, die die `translation`-Extension nicht auswerten. **Sie wird nicht als eigene Implementierung gepflegt** – ihr Inhalt ist mit der EN-primären Hauptversion identisch. Bei Datenerfassung und -austausch ist die Hauptversion (`mii-qst-pro-promis-29`) maßgeblich.

```
{
  "text": "In the past 7 days... I could do chores",
  "extension": [{
    "url": "http://hl7.org/fhir/StructureDefinition/translation",
    "extension": [
      {"url": "lang", "valueCode": "de"},
      {"url": "content", "valueString": "In den letzten 7 Tagen... konnte ich Hausarbeiten erledigen"}
    ]
  }]
}

```

### Implementierungshinweise

#### Variable-basierte Architektur

Der PROMIS-29 nutzt FHIR Variables für effiziente Multi-Score-Berechnung:

```
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
1. **Validation Study Alignment**: IDs basieren auf deutschen Validierungsstudien
1. **Partial Responses**: Keine Behandlung fehlender Items

### Beispiel QuestionnaireResponse

```
{
  "resourceType": "QuestionnaireResponse",
  "questionnaire": "Questionnaire/mii-qst-pro-promis-29",
  "status": "completed",
  "item": [
    {
      "linkId": "promis-pfa11",
      "text": "Are you able to do chores?",
      "answer": [{
        "valueCoding": {
          "code": "3",
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

**Für die institutionelle Implementierung außerhalb des PCOR-MII-Kontexts ist eine Nutzungsanfrage bei CPCOR erforderlich**: [https://cpcor.charite.de/promis_national_center_deutschland/nutzungsanfragen](https://cpcor.charite.de/promis_national_center_deutschland/nutzungsanfragen)

Details zur Schichten-Attribution (MII FHIR-Struktur + PROMIS Items + deutsche Übersetzung + LOINC) siehe [PROMIS — Lizenzierung & Urheberrecht](promis.md#lizenzierung-urheberrecht).

### Referenzen

* [PROMIS Official Site](https://www.healthmeasures.net/explore-measurement-systems/promis)
* [German PROMIS Validation](https://doi.org/10.1371/journal.pone.0197139)
* [PROMIS National Center Deutschland (CPCOR)](https://cpcor.charite.de/promis_national_center_deutschland)
* LOINC Panel: [62199-5](https://loinc.org/62199-5/)

