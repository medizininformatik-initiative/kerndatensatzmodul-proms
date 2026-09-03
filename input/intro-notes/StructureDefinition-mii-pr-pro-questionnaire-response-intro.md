The abstract QuestionnaireResponse profile standardises the structure of completed questionnaires. It inherits from the [SDC QuestionnaireResponse](https://hl7.org/fhir/uv/sdc/STU3/StructureDefinition-sdc-questionnaireresponse.html) profile and ensures that all PRO answers can be captured and processed consistently. Concrete implementations must extend this profile and add instrument-specific constraints.

**Core elements:**
- A reference to the corresponding Questionnaire
- A mandatory status (completed, in-progress, and so on)
- Structured items carrying the answers
- An authored timestamp for chronological documentation
