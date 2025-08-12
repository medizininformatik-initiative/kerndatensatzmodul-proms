## PHQ-9 (Patient Health Questionnaire-9)

### Klinischer Kontext

Der PHQ-9 ist ein validiertes Screening-Instrument für Depression mit neun Items. Das Instrument erfasst die Häufigkeit von Depressionssymptomen über einen Zeitraum von zwei Wochen auf einer vierstufigen Skala.

**Scoring und Interpretation:**
- 0-4: Keine/minimale Depression
- 5-9: Milde Depression  
- 10-14: Moderate Depression
- 15-19: Moderat schwere Depression
- ≥20: Schwere Depression

**Klinische Hinweise:** Item 9 erfasst Suizidgedanken und erfordert bei jeder positiven Antwort eine sofortige klinische Bewertung, unabhängig vom Gesamtscore.

### FHIR-Implementierung

#### Questionnaire

**Canonical URL:** `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-9`

**Implementierte Capabilities:**
- ✅ Displayable, Collectable, Populatable, Calculatable, Extractable, Domain-aligned

**Besonderheiten:**
- Automatische Score-Berechnung via FHIRPath: `%resource.item.where(linkId.matches('^phq-.*-q0[1-9]$')).answer.value.ordinal().sum()`
- Populatable für server-seitige Berechnungen implementiert
- LOINC-kodierte Antwortoptionen

<tabs>
  <tab title="Tree">
    {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-9}}
  </tab>
  <tab title="JSON">
    {{json:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-9}}
  </tab>
  <tab title="XML">
    {{xml:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-9}}
  </tab>
</tabs>

#### Score-Repräsentation

Der PHQ-9 Score wird auf mehreren Ebenen repräsentiert:

1. **Als berechnetes Item** in der QuestionnaireResponse (linkId: `phq9-total-score`)
2. **Als Observation** mit LOINC-Code 44261-6 "PHQ-9 total score"
3. **Als Domain-Score** gemappt auf PROMIS Depression T-Score

**ObservationDefinition:** `mii-obsdef-pro-phq9-score`
- Definiert Wertebereich: 0-27 {score}
- Spezifiziert Interpretationsrichtlinien

### Domain-Mapping

Der PHQ-9 kann auf PROMIS Depression T-Scores gemappt werden:

| PHQ-9 Score | PROMIS T-Score | Interpretation |
|-------------|----------------|----------------|
| 0-4         | ~41.0          | Minimal        |
| 5-9         | ~50.0          | Mild           |
| 10-14       | ~60.0          | Moderat        |
| 15-19       | ~70.0          | Moderat schwer |
| 20-27       | ~77.5          | Schwer         |

### Beispiel-Ressourcen

#### PHQ-9 QuestionnaireResponse

<tabs>
  <tab title="Tree">
    {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/QuestionnaireResponse/mii-exa-pro-phq-9-response}}
  </tab>
  <tab title="JSON">
    {{json:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/QuestionnaireResponse/mii-exa-pro-phq-9-response}}
  </tab>
  <tab title="XML">
    {{xml:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/QuestionnaireResponse/mii-exa-pro-phq-9-response}}
  </tab>
</tabs>

### Validierung

**Technisch:** Score-Bereich 0-27, alle Items für validen Score erforderlich, Ordinal-Werte: 0, 1, 2, 3

**Klinisch:** Sensitivität 88%, Spezifität 88% für Major Depression (Cut-off ≥10), Test-Retest-Reliabilität: 0.84

### Referenzen

Kroenke K, Spitzer RL, Williams JB. The PHQ-9: validity of a brief depression severity measure. J Gen Intern Med. 2001;16(9):606-13.