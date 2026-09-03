The abstract Score Instance profile defines the structure of concrete score observations. It ensures that all PRO scores are documented consistently, including traceability back to the originating QuestionnaireResponse and to the corresponding ObservationDefinition. Instrument-specific score profiles (PHQ-9 score, PROMIS Depression T-score and so on) must inherit from this abstract profile.

**Core elements:**
- Status (final, preliminary, and so on)
- A code carrying the score type (LOINC or an MII code)
- valueQuantity with the numeric score
- A derivedFrom reference to the QuestionnaireResponse
- An instantiates reference to the ObservationDefinition (R5 backport)
