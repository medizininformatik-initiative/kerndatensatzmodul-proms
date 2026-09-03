# Datasets and Descriptions - MII IG PRO v2026.7.0

* [**Table of Contents**](toc.md)
* [**Guidance**](guidance.md)
* **Datasets and Descriptions**

## Datasets and Descriptions

The MII PRO module defines a logical data model for the standardized collection and processing of Patient-Reported Outcomes. This information model forms the conceptual foundation for all FHIR profiles and describes the relationships between the various components of the PRO workflow.

The officially approved version of the information model is available on [Art-Decor](https://art-decor.org/art-decor/decor-datasets--mide-?id=2.16.840.1.113883.3.1937.777.24.1.1&effectiveDate=2018-06-05T12%3A44%3A12&conceptId=2.16.840.1.113883.3.1937.777.24.2.3758&conceptEffectiveDate=2024-06-27T13%3A15%3A46&language=de-DE). For a unified representation, the information model has additionally been expressed as a FHIR Logical Model:

[MII PRO Logical Model](StructureDefinition-mii-lm-pro.md)

**Please note that the Logical Model is purely aimed at representing the data elements and their descriptions. The data types and cardinalities used should not be considered binding. These are ultimately defined by the FHIR profiles. For each element within the Logical Model, there is a 1:1 mapping to an element of a concrete FHIR resource.**

| | |
| :--- | :--- |
| Fragebogen | The questionnaire template that defines the structure and content of a PRO instrument |
| Fragebogen.Name | The name of the questionnaire instrument |
| Fragebogen.Version | The version of the questionnaire |
| Fragebogen.Sprache | The language of the questionnaire |
| Fragebogen.Frage | Individual questions contained in the questionnaire |
| Fragebogen.Frage.FrageId | Unique identifier for each question |
| Fragebogen.Frage.FrageText | The text of the question |
| Fragebogen.Frage.Antwortoptionen | Available answer options for the question |
| AusgefuellterFragebogen | A completed questionnaire with patient responses |
| AusgefuellterFragebogen.Fragebogen | Reference to the underlying questionnaire template |
| AusgefuellterFragebogen.Patient | Reference to the patient who completed the questionnaire |
| AusgefuellterFragebogen.Datum | Date when the questionnaire was completed |
| AusgefuellterFragebogen.Antwort | The individual answers provided |
| Score | A calculated score derived from questionnaire responses |
| Score.ScoreDefinition | Reference to the score definition (calculation algorithm) |
| Score.Wert | The calculated score value |
| Score.Interpretation | Clinical interpretation of the score |
| Domaene | A health domain for cross-instrument classification |
| Domaene.Name | Name of the health domain |
| Domaene.Skalierung | Scaling characteristics of the domain |

