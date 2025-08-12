## PROMIS-29 Profile v2.1

### Übersicht

**Status**: 🚧 Technical Preview  
**Version**: 0.2.0  
**Letzte Aktualisierung**: 2025-01-15

Der PROMIS-29 ist ein umfassendes Instrument zur Erfassung der gesundheitsbezogenen Lebensqualität über 7 Domänen plus Schmerzintensität.

### Domänen

| Domäne | Items | Score-Bereich | LOINC |
|--------|-------|---------------|--------|
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
- ✅ displayable
- ✅ collectable  
- ✅ calculatable (alle Domänen-Scores)
- ⚠️ extractable (in Entwicklung)
- ❌ populatable (geplant)

#### Score-Berechnung

Jede Domäne (außer Pain Intensity) wird als T-Score berechnet:

```fhirpath
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

**Primärsprache**: Englisch (validierte Version)  
**Deutsche Übersetzung**: Via Extension

```json
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

```fsh
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

### Roadmap

- **v0.3.0** (Q2 2025): LOINC-konforme Item-IDs
- **v0.4.0** (Q3 2025): Populatable capability
- **v1.0.0** (Q4 2025): Produktionsreife

### Referenzen

- [PROMIS Official Site](https://www.healthmeasures.net/explore-measurement-systems/promis)
- [German PROMIS Validation](https://doi.org/10.1371/journal.pone.0197139)
- LOINC Panel: [62199-5](https://loinc.org/62199-5/)

---

⚠️ **Technical Preview**: Diese Implementation ist noch nicht für den Produktiveinsatz freigegeben.