# Use Cases - MII IG PRO v2026.3.0

## Use Cases

 
This page includes translations from the original source language in which the guide was authored. Information on these translations and instructions on how to provide feedback on the translations can be found [here](translationinfo.md). 

* [General Considerations](#general-considerations)
* [Use Cases](#use-cases) 
* [Use Case 1: ePRO Collection in Primary Care](#use-case-1-epro-collection-in-primary-care)
* [Use Case 2: Site-Internal Harmonization of Heterogeneous PROM Data](#use-case-2-site-internal-harmonization-of-heterogeneous-prom-data)
* [Use Case 3: Cross-Site Harmonization](#use-case-3-cross-site-harmonization)
* [Use Case 4: Secondary Data Use with Cross-Domain Mapping](#use-case-4-secondary-data-use-with-cross-domain-mapping)
 

### General Considerations

Traditionally, questionnaires are completed on paper. This means that the questionnaire definition (which questions, which possible answers, etc.) and the questionnaire responses (which answers a patient selected on a specific occasion) are contained within the same document. In electronic form, however, only a single digital template is needed, which completed questionnaires can then reference. Additional versions are only necessary for versioning and, where applicable, language adaptations.

This separation between template and completed response is also reflected in the current FHIR specification, which distinguishes between [Questionnaire](https://hl7.org/fhir/R4/questionnaire.html) and [QuestionnaireResponse](https://hl7.org/fhir/R4/questionnaireresponse.html).

This modeling distinction may seem trivial here, but it carries several important implications that will be revisited at the end.

A similar situation applies to the calculation of scores based on given answers. Most paper questionnaires contain fields for calculated scores.

[Art-Decor](https://art-decor.org/art-decor/decor-datasets--mide-?id=2.16.840.1.113883.3.1937.777.24.1.1&effectiveDate=2018-06-05T12%3A44%3A12&conceptId=2.16.840.1.113883.3.1937.777.24.2.3758&conceptEffectiveDate=2024-06-27T13%3A15%3A46&language=de-DE) was used to achieve a basic modeling of the dataset. In a further step, UML diagrams were created and supplemented with additional relevant data points. **Note: The representation of multiple languages within a single questionnaire is currently not included in the information model.**

This MII Core Data Set module relates to the use of PROs and PROMs in the research context. We are glad to provide groundwork with our specifications for the collection and exchange of PROM data in broad clinical practice. However, it should be noted that the calculation of scores in software may be subject to the [German Medical Devices Act (MPG)](https://www.gesetze-im-internet.de/mpg/BJNR196300994.html).

-------

### Use Cases

This MII Core Data Set module supports four central use case scenarios for Patient-Reported Outcomes in the German healthcare system:

1. **Clinical Course Documentation**– ePRO collection in primary care
1. **Local Data Harmonization**– Site-internal harmonization of heterogeneous PROM data
1. **Cross-Site Harmonization**– Inter-institutional harmonization
1. **Domain-Based Research**– Secondary data use with cross-domain mapping

#### Use Case 1: ePRO Collection in Primary Care

A patient (Mr. Hauff) reports recurring anxiety and panic attacks to his general practitioner and is referred to a psychosomatic clinic for further diagnosis. The treating physician Dr. Schmidt prepares the admission interview.

In preparation for the interview, Mr. Hauff completes the PHQ-9 questionnaire on a tablet. The hospital information system (HIS) informs the ePROM system that the PHQ-9 should be administered. The questionnaire definition is available locally and is transmitted directly to the tablet.

After completing the questionnaire:

* The completed questionnaire is transmitted to the ePROM system
* Scores are calculated automatically (12 points indicates an elevated value)
* Results are displayed in the HIS and discussed during the interview
* Scores and interpretation are documented in the discharge report

**Derived Requirements:**

* Questionnaire definition as a template (FHIR Questionnaire)
* Definition of a completed questionnaire (FHIR QuestionnaireResponse)
* Score designation and calculation logic (FHIR Observation)
* Optional: Technical specification of display and presentation
* Optional: Formally structured score interpretation

-------

#### Use Case 2: Site-Internal Harmonization of Heterogeneous PROM Data

Dr. Schmidt has worked with the PHQ-9 in several research projects. Extensive PHQ-9 data is available:

* In the HIS at admission and discharge time points
* In REDCap from various studies
* In new FHIR-based study systems

Ms. Dirsch from the Data Integration Center harmonizes these heterogeneous data sources into a unified FHIR format.

**Derived Requirements:**

* Publicly available questionnaire template as a mapping target
* Mapping of completed answers from source format (ETL processes for non-FHIR to FHIR conversion or FHIR StructureMap for FHIR-to-FHIR mappings)
* Optional: Recalculation of scores for consistency/validation purposes

-------

### Use Case 3: Cross-Site Harmonization

Dr. Schmidt leads a collaborative project "Depressive Disorders and Burnout in Home Office". All participating hospitals use the PHQ-9, but with different ePROM systems.

Harmonization is carried out through the Data Integration Centers using standardized FHIR profiles.

**Derived Requirements:**

* Standardized target specification for questionnaires including scores (FHIR Questionnaire, FHIR Observation)
* Harmonization of questionnaire responses with locally differing codes (FHIR CodeSystem, FHIR ValueSet)
* Provision of mappings from local to globally standardized question and answer codes (FHIR ConceptMap)
* Optional: Recalculation/validation of calculated scores before central analysis

-------

### Use Case 4: Secondary Data Use with Cross-Domain Mapping

Dr. Claussen is a clinical researcher studying secondary data use for depression. He uses distributed analyses through the Research Portal for Health of the Medical Informatics Initiative. Initial exploratory queries revealed that different sites use different PROMs.

**Challenge**:

Different sites use different depression PROMs (e.g., PHQ-9, BDI-II, PROMIS Depression); comparability of PROM scores is not guaranteed.

**Solution**:

Cross-domain mapping to a shared depression domain through:

* Score-based mapping: Direct conversion of scores (e.g., lookup tables)
* Item-based mapping: Recalculation from individual answers

**Derived Requirements:**

* Technical specification of a template for overarching domains and scales
* Content and technical specification of individual domains
* Linkages and mappings from individual calculated scores to domains
* Linkages and mappings from completed questionnaires to domains
* Calculation of domain scores at the sites
* Governance for developing new domains

