## 🚀 QuickStart - Technische Implementierung

### In 5 Minuten zum ersten PRO

Dieses QuickStart-Tutorial zeigt Ihnen, wie Sie Patient-Reported Outcomes (PROs) in Ihrem System implementieren - am Beispiel des PHQ-9 Fragebogens.

---

### 1️⃣ Fragebogen abrufen

Laden Sie einen PRO-Fragebogen aus dem MII-Repository:

```bash
GET [base]/Questionnaire/mii-qst-pro-phq-9
```

<details>
<summary>Response anzeigen</summary>

```json
{
  "resourceType": "Questionnaire",
  "id": "mii-qst-pro-phq-9",
  "name": "PHQ_9",
  "title": "Patient Health Questionnaire-9 (PHQ-9)",
  "status": "active",
  "item": [
    {
      "linkId": "phq9-q01",
      "text": "Wenig Interesse oder Freude an Ihren Tätigkeiten",
      "type": "choice",
      "answerOption": [
        {"valueCoding": {"code": "0", "display": "Überhaupt nicht"}},
        {"valueCoding": {"code": "1", "display": "An einzelnen Tagen"}},
        {"valueCoding": {"code": "2", "display": "An mehr als der Hälfte der Tage"}},
        {"valueCoding": {"code": "3", "display": "Beinahe jeden Tag"}}
      ]
    }
    // ... weitere Items
  ]
}
```
</details>

---

### 2️⃣ Antworten erfassen

Senden Sie die Patientenantworten als QuestionnaireResponse:

```bash
POST [base]/QuestionnaireResponse
Content-Type: application/fhir+json
```

```json
{
  "resourceType": "QuestionnaireResponse",
  "questionnaire": "Questionnaire/mii-qst-pro-phq-9",
  "status": "completed",
  "authored": "2025-01-15T10:30:00Z",
  "item": [
    {
      "linkId": "phq9-q01",
      "answer": [{"valueCoding": {"code": "2"}}]
    },
    {
      "linkId": "phq9-q02", 
      "answer": [{"valueCoding": {"code": "2"}}]
    }
    // ... Antworten für alle 9 Items
  ]
}
```

---

### 3️⃣ Score automatisch berechnen

Bei Fragebögen mit `calculatable` Capability wird der Score automatisch berechnet:

```bash
GET [base]/Observation?code=44261-6&patient=[patient-id]
```

<details>
<summary>Response anzeigen</summary>

```json
{
  "resourceType": "Observation",
  "code": {
    "coding": [{
      "system": "http://loinc.org",
      "code": "44261-6",
      "display": "PHQ-9 total score"
    }]
  },
  "valueQuantity": {
    "value": 12,
    "unit": "score",
    "system": "http://unitsofmeasure.org",
    "code": "{score}"
  },
  "interpretation": [{
    "coding": [{
      "system": "http://mii.de/fhir/pro/CodeSystem/phq9-interpretation",
      "code": "moderate",
      "display": "Mittelschwere Depression (10-14 Punkte)"
    }]
  }],
  "derivedFrom": [{
    "reference": "QuestionnaireResponse/[response-id]"
  }]
}
```
</details>

---

### ✅ Fertig!

Sie haben erfolgreich:
- ✓ Einen PRO-Fragebogen abgerufen
- ✓ Patientenantworten erfasst
- ✓ Den Score automatisch berechnet

---

## Nächste Schritte

### Für Entwickler

<div class="grid cards" markdown>

-   **Capabilities verstehen**  
    Lernen Sie die verschiedenen Questionnaire-Fähigkeiten kennen  
    → [Capability Pattern](./Konzeptuelle-Grundlagen/Capability-Pattern)

-   **Profile erkunden**  
    Verstehen Sie die FHIR-Profile im Detail  
    → [PRO-Profile](./FHIR-Profile/PRO-Profile)

-   **Weitere Fragebögen**  
    Entdecken Sie alle verfügbaren PRO-Instrumente  
    → [PRO-Bibliothek](../PRO-Bibliothek)

</div>

### Für Klinische Anwender

<div class="grid cards" markdown>

-   **Use Cases**  
    Anwendungsszenarien für PROs  
    → [Anwendungsfälle](../Anwendungsfaelle-Informationsmodell/Use-Cases)

-   **Domänen-Mappings**  
    Vergleiche zwischen Instrumenten  
    → [Cross-Instrument Mappings](../Domaenen-basiertes-Scoring/Cross-Instrument-Mappings)

</div>

---

## Wichtige Konzepte auf einen Blick

### Questionnaire Capabilities

| Capability | Bedeutung | Beispiel |
|------------|-----------|----------|
| **displayable** | Kann angezeigt werden | PDF-Export, Vorschau |
| **collectable** | Kann ausgefüllt werden | Webformular, App |
| **calculatable** | Scores werden berechnet | PHQ-9 Summenscore |
| **extractable** | Daten-Extraktion möglich | → Observation |
| **populatable** | Kann vorausgefüllt werden | Verlaufskontrolle |

### Unterstützte PRO-Instrumente

| Bereich | Instrumente | Status |
|---------|-------------|--------|
| **Depression** | PHQ-9, BDI-II, PROMIS Depression | ✅ Aktiv |
| **Lebensqualität** | EQ-5D-5L, PROMIS-29, EORTC QLQ-C30 | ✅ Aktiv |
| **Weitere** | HADS, EPDS, CES-D, K6 | 📋 Metadata-only |

---

## Technische Details

### SDC-Konformität
Dieses IG basiert auf [FHIR Structured Data Capture (SDC) STU3](https://hl7.org/fhir/uv/sdc/STU3/), implementiert für FHIR R4.

### Terminologie-Strategie
- **MII-kontrollierte ValueSets** für zuverlässige Score-Berechnung
- **Deutsche Übersetzungen** als Pflichtanforderung
- **LOINC/SNOMED** Codes wo verfügbar

### API-Operationen

```http
# Fragebogen-Katalog abfragen (FQL)
GET [base]/Questionnaire?context=http://mii.de/fhir/pro&status=active

# Scores für Patient abrufen
GET [base]/Observation?category=survey&patient=[id]

# Questionnaire-Capabilities prüfen
GET [base]/Questionnaire/[id]/$capabilities
```

---

## Support & Feedback

- **GitHub Issues**: [MII PRO Repository](https://github.com/medizininformatik-initiative/kerndatensatz-patient-reported-outcomes)
- **Simplifier**: [MII PRO Package](https://simplifier.net/MedizininformatikInitiative-ModulPROs)
- **Zulip Chat**: [MII Community](https://mii.zulipchat.com)

---

<div class="warning">

**Hinweis**: Dieses IG befindet sich in aktiver Entwicklung (v2026.0.0-alpha). Breaking Changes sind möglich.

</div>