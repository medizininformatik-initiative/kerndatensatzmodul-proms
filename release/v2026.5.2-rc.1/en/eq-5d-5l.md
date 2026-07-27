# EQ-5D-5L - MII IG PRO v2026.5.2-rc.1

## EQ-5D-5L

 
This page includes translations from the original source language in which the guide was authored. Information on these translations and instructions on how to provide feedback on the translations can be found [here](translationinfo.md). 

### Architectural Pattern: Variant Architecture

The EQ-5D-5L demonstrates the separation of capabilities into specialized variants. While the PHQ-9 combines all capabilities in a single resource, the EQ-5D-5L implements different use cases through separate, specialized Questionnaire instances. This approach enables optimized resources for specific use cases and avoids overloading individual Questionnaire definitions with functionality that is not needed in all scenarios.

### Clinical Context

The EQ-5D-5L is a generic instrument for measuring health-related quality of life. The instrument consists of five dimensions that each capture key aspects of health: mobility, self-care, usual activities, pain/discomfort, and anxiety/depression. Each dimension is rated on a five-level scale from "no problems" to "extreme problems." Additionally, the instrument includes a visual analogue scale (VAS) on which patients rate their current health status from 0 (worst imaginable health state) to 100 (best imaginable health state).

The EQ-5D-5L is evaluated at three levels:

* The **EQ-5D-5L Index** is a weighted utility score based on population-specific value sets that (based on the German population) can range from -0.661 to 1.0. The index score is primarily used for health economic calculations.
* The **EQ-5D-5L Profile** is a five-digit code that directly represents the responses (e.g., "11223" for no problems in the first two dimensions and mild to moderate problems in the remaining ones). It is frequently used as a quick summary of overall status across the five health domains.
* The **EQ VAS** represents the direct self-assessment of individual health status on a scale of 0-100.

### FHIR Implementation through Variants

The EQ-5D-5L implementation follows a modular approach with a base definition and multiple derived variants. The base definition with the canonical URL `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-euroqol-eq5d5l` contains the common structure of all EQ-5D-5L variants without specific capabilities. Specialized variants are derived from this base, each optimized for specific use cases.

#### Minimal Variant (Reference Implementation)

The minimal variant serves as a pure structure definition without active capabilities. It is primarily used as a reference for metadata and structural information and is suitable for systems that only need to know the structure of the EQ-5D-5L without actively using it. This variant contains no extensions for rendering or calculations but can already be used as a mapping structure for data harmonization.

See the [Questionnaire definition](Questionnaire-mii-qst-pro-eq-5d-5l-minimal.md) for the full resource.

#### Displayable Variant (Display-Only)

The displayable variant is optimized for the pure display of already captured EQ-5D-5L data. It is used in clinical information systems when physicians or nursing staff wish to review the results of an already completed questionnaire. This variant contains special rendering hints for optimal presentation but omits input validation and calculation logic, as no interaction with the questionnaire takes place.

See the [Questionnaire definition](Questionnaire-mii-qst-pro-euroqol-eq5d5l-displayable.md) for the full resource.

#### Collectable Variant (Data Collection)

The collectable variant is designed for active data collection by patients. It includes complete validation rules, required markings for all items, and a hidden "no answer" option for situations where patients cannot or do not wish to answer individual questions. This variant is typically deployed in patient portals or mobile apps and ensures that captured data is complete and valid.

See the [Questionnaire definition](Questionnaire-mii-qst-pro-euroqol-eq5d5l-collectable.md) for the full resource.

#### Answer Coding Variant (MII-Specific Coding)

The answer coding variant uses the MII CodeSystem instead of LOINC codes. This variant is particularly important when reliable ordinal values are needed for automatic score calculations. The linkIds follow a specific pattern (`euroqol-eq5d5l-coded-q01-MO`) that enables differentiation from other variants. This variant combines the Collectable and Calculatable capabilities, allowing both data collection and automatic score calculation.

See the [Questionnaire definition](Questionnaire-mii-qst-pro-euroqol-eq5d5l-answer-coding.md) for the full resource.

### Score Calculation and Interpretation

The calculation of EQ-5D-5L scores takes place at three different levels that capture different aspects of quality of life. The EQ-5D-5L Index is the most complex score and requires population-specific value tables. For the German population, specific coefficients exist that reflect societal preferences for different health states. The calculation is performed through a non-linear transformation of the five dimension responses, taking into account interaction effects between dimensions.

The EQ-5D-5L Profile is a direct representation of the responses as a five-digit code. This code enables quick identification of health status without numerical transformation and is particularly suitable for descriptive presentation of health states in clinical reports. The EQ VAS represents the patient's subjective assessment and is frequently used as a complement to the index score to identify discrepancies between "objective" and subjective health ratings.

For detailed score definitions, see the [EQ-5D-5L Scores](eq-5d-5l-scores.md) page.

### Architectural Advantages of Variant Separation

The separation into different variants offers several significant advantages for implementation and maintenance. Each variant contains only the extensions and functionality necessary for its specific use case. The clear separation of responsibilities means that the displayable variant does not contain unnecessary calculation logic, while the collectable variant is not overloaded with extraction-specific extensions. In practice, variants can also be combined into a single variant or any combination, as demonstrated by the PHQ-9.

This architecture also enables flexible evolution of the system. New variants can be added without affecting existing implementations. For example, if a special variant for Computer Adaptive Testing is needed in the future, it can be implemented as an additional variant without modifying existing variants.

### Implementation Recommendations

The decision between an all-in-one implementation like the PHQ-9 and a variant architecture like the EQ-5D-5L should be based on several factors. For simple instruments with few use cases, the all-in-one approach is often sufficient and reduces complexity. For complex instruments with diverse application scenarios, the variant architecture offers clear advantages in terms of maintainability and performance.

Implementers should also consider the expected evolution of the instrument and the exchange between different systems. Instruments that are expected to remain stable can benefit from the simpler all-in-one approach. Instruments where frequent changes or extensions are anticipated are better served by the variant architecture, as changes can be made in isolation within individual variants.

### History

The EQ-5D-5L is a further development of the EQ-5D-3L from 2009. See [https://euroqol.org/information-and-support/euroqol-instruments/eq-5d-5l/](https://euroqol.org/information-and-support/euroqol-instruments/eq-5d-5l/).

### Licensing

The EQ-5D-5L is available for non-commercial purposes after registration without additional license fees. This applies to both use in clinical studies and healthcare. See the [EQ-5D User License Policy](https://euroqol.org/wp-content/uploads/2025/01/EQ-5D-User-License-Policy-10SEP2024.pdf).

### Further Links and Information

* User Guide: [https://euroqol.org/wp-content/uploads/2025/01/EQ-5D-5LUserguide-23-07.pdf](https://euroqol.org/wp-content/uploads/2025/01/EQ-5D-5LUserguide-23-07.pdf)
* German Population Values: Ludwig K, Graf von der Schulenburg JM, Greiner W. German Value Set for the EQ-5D-5L. Pharmacoeconomics. 2018 Jun;36(6):663-674. DOI: 10.1007/s40273-018-0615-8. PMID: 29460066; PMCID: PMC5954069.

### Summary

The EQ-5D-5L successfully demonstrates the variant architecture of the MII PRO Module and shows how complex instruments can be efficiently implemented through modular approaches. The separation of capabilities into specialized Questionnaire instances enables optimized implementations for specific use cases while maintaining semantic consistency. This architecture represents an important building block for the scalable implementation of Patient-Reported Outcomes in the German healthcare system.

