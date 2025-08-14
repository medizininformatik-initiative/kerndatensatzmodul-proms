---
topic: EORTC-QLQ-C30
---
## EORTC QLQ-C30 Version 3.0

### Übersicht

**Status**: 🚧 Technical Preview  
**Version**: 0.1.0  
**Letzte Aktualisierung**: 2025-01-15

Der EORTC QLQ-C30 ist der Standard-Fragebogen zur Erfassung der Lebensqualität bei onkologischen Patienten.

### Struktur

| Kategorie | Subskalen | Items | Score-Bereich |
|-----------|-----------|-------|---------------|
| **Funktionsskalen** | | | 0-100 (höher = besser) |
| | Physical Function (PF) | 5 | |
| | Role Function (RF) | 2 | |
| | Emotional Function (EF) | 4 | |
| | Cognitive Function (CF) | 2 | |
| | Social Function (SF) | 2 | |
| **Symptomskalen** | | | 0-100 (höher = schlechter) |
| | Fatigue (FA) | 3 | |
| | Nausea/Vomiting (NV) | 2 | |
| | Pain (PA) | 2 | |
| **Einzelitems** | | | 0-100 |
| | Dyspnoea, Insomnia, Appetite Loss, | 6 | |
| | Constipation, Diarrhoea, Financial | | |
| **Globale Lebensqualität** | | | 0-100 (höher = besser) |
| | Global Health/QoL (QL) | 2 | |

### Technische Details

#### Questionnaire Resource
```
Questionnaire/mii-qst-pro-eortc-qlq-c30
```

**SNOMED**: `273446001 |EORTC QLQ-C30 (assessment scale)|`

**Capabilities**:
- ✅ displayable
- ✅ collectable
- ⚠️ calculatable (Scoring-Algorithmus implementiert)
- ❌ extractable (geplant)
- ❌ populatable (geplant)

### Score-Berechnung

#### Lineare Transformation

Alle Skalen werden auf 0-100 transformiert:

**Funktionsskalen**:
```
Score = (1 - (RawScore - 1) / Range) × 100
```

**Symptomskalen & Global Health**:
```
Score = ((RawScore - 1) / Range) × 100
```

#### MII-kontrollierte Terminologie

```fsh
CodeSystem: MII_CS_PRO_EORTC_QLQ_C30
Id: mii-cs-pro-eortc-qlq-c30
* #qlq30-q01 "Bereitet es Ihnen Schwierigkeiten..."
  * ^designation[+].language = #en
  * ^designation[=].value = "Do you have any trouble..."
```

### Antwortskalen

#### 4-Punkt Skala (Items 1-28)
```fsh
ValueSet: MII_VS_PRO_EORTC_QLQ_C30_Scale4pt
* MII_CS_PRO_EORTC_QLQ_C30#not-at-all "Überhaupt nicht"
* MII_CS_PRO_EORTC_QLQ_C30#a-little "Wenig"
* MII_CS_PRO_EORTC_QLQ_C30#quite-a-bit "Mäßig"
* MII_CS_PRO_EORTC_QLQ_C30#very-much "Sehr"
```

#### 7-Punkt Skala (Items 29-30)
```fsh
ValueSet: MII_VS_PRO_EORTC_QLQ_C30_Scale7pt
* MII_CS_PRO_EORTC_QLQ_C30#1 "Sehr schlecht"
* MII_CS_PRO_EORTC_QLQ_C30#2 "2"
// ... bis 7 "Ausgezeichnet"
```

### Implementierungshinweise

#### Scoring-Beispiel: Physical Function

```fhirpath
// Items: qlq30-q01 bis qlq30-q05
%pfRawScore = %resource.item
  .where(linkId in ('qlq30-q01' | 'qlq30-q02' | 'qlq30-q03' | 'qlq30-q04' | 'qlq30-q05'))
  .answer.value.ordinal()
  .sum() / 5  // Mittelwert

// Funktionsskala: Invertierte Transformation
%pfScore = (1 - (%pfRawScore - 1) / 3) * 100
```

### Bekannte Einschränkungen

1. **Lizenzierung**: Copyright bei EORTC - Nutzungsbedingungen beachten
2. **Modul-System**: QLQ-C30 oft mit spezifischen Modulen kombiniert (z.B. QLQ-BR23)
3. **Missing Items**: Scoring bei fehlenden Items noch nicht implementiert

### Beispiel QuestionnaireResponse

```json
{
  "resourceType": "QuestionnaireResponse",
  "questionnaire": "Questionnaire/mii-qst-pro-eortc-qlq-c30",
  "status": "completed",
  "item": [
    {
      "linkId": "qlq30-q01",
      "text": "Bereitet es Ihnen Schwierigkeiten, sich körperlich anzustrengen?",
      "answer": [{
        "valueCoding": {
          "system": "http://mii.de/fhir/pro/CodeSystem/eortc-qlq-c30",
          "code": "a-little",
          "display": "Wenig"
        }
      }]
    }
    // ... weitere 29 Items
  ]
}
```

### Integration mit MII Onkologie-Modul

Der EORTC QLQ-C30 ist primär für den Einsatz in onkologischen Settings relevant. Da der QLQ-C30 jedoch allgemeine Domänen abbildet (ähnlich dem PROMIS-29) . Weitere onkologie-spezifische PROs werden vsl im MII Modul Onkologie verwaltet (z.B. ).



### Referenzen

- [EORTC QLQ-C30 Official](https://qol.eortc.org/questionnaire/eortc-qlq-c30/)
- [Scoring Manual](https://www.eortc.org/app/uploads/sites/2/2018/08/Scoring_of_the_QLQ-C30_and_QLQ-BR23.pdf)
- SNOMED: 273446001

---

⚠️ **Technical Preview**: Lizenzierung mit EORTC erforderlich vor Produktiveinsatz.