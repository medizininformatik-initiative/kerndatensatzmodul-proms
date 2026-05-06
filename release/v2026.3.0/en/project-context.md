# Project Context - MII IG PRO v2026.3.0

## Project Context

 
This page includes translations from the original source language in which the guide was authored. Information on these translations and instructions on how to provide feedback on the translations can be found [here](translationinfo.md). 

### Position within the MII Core Dataset

The PRO module extends the MII core dataset with the systematic collection of patient-reported health data, thereby creating an essential link between objective clinical parameters and the subjective patient perspective. As a cross-cutting module, it integrates seamlessly into existing data structures and leverages the established identification and consent mechanisms of the MII base modules, while simultaneously addressing the specific requirements of specialist modules through domain-specific PRO instruments.

### Core Dependencies and Data Flows

Technical integration is primarily achieved through the FHIR resources Questionnaire and QuestionnaireResponse for data collection, as well as Observation for the structured storage of scores and individual items. Linkage with clinical data occurs via established reference mechanisms to Encounter (collection context), Condition (diagnosis reference), and Procedure (pre-/post-interventional measurement). Automated score calculation through SDC calculated expressions enables direct integration into clinical workflows without manual evaluation steps.

### Specialist Module Integration

The practical use of PROMs is outlined exemplarily in this module and will be further specified by domain-specific application modules in the future. In oncology, the PRO module already enables standardized quality of life assessment using EORTC QLQ-C30 as a primary or secondary study endpoint; in the future, disease-specific PRO instruments such as EORTC QLQ-BR42 for breast cancer or EORTC QLQ-LC13 for lung cancer may be applied. Instruments such as PHQ-9 and PROMIS Depression can be used both for initial screening and for monitoring psychotherapeutic and pharmacological interventions, in psychiatry as well as in other clinical domains. Cardiology may benefit in the future from the structured assessment of functional limitations and exercise capacity in chronic heart failure (although licensing issues represent the greatest hurdle for specification in open standards).

### Interoperability Strategy

The consistent use of international terminology standards (LOINC for questionnaire items, SNOMED CT for clinical concepts) while accommodating German healthcare system specifics through MII terminologies ensures both international connectivity and national practical suitability. The implementation consistently follows the SDC specification for advanced questionnaire functionality, thereby enabling vendor-independent, standards-based implementation across the various IT systems of the consortium sites.

