Das abstrakte Score Instance Profil definiert die Struktur für konkrete Score-Observations. Es stellt sicher, dass alle PRO-Scores konsistent dokumentiert werden, einschließlich der Rückverfolgbarkeit zur ursprünglichen QuestionnaireResponse und der zugehörigen ObservationDefinition. Instrument-spezifische Score-Profile (z.B. PHQ-9 Score, PROMIS Depression T-Score) müssen von diesem abstrakten Profil erben.

**Kernelemente:**
- Status (final, preliminary, etc.)
- Code mit Score-Typ (LOINC oder MII-Code)
- ValueQuantity mit numerischem Score
- DerivedFrom-Referenz zur QuestionnaireResponse
- Instantiates-Referenz zur ObservationDefinition (R5 Backport)

**Beispiel** — eine konkrete Score-Observation, die von diesem abstrakten Profil erbt: [PHQ-9-Score](Observation-mii-exa-pro-phq-9-observation.html).
