# Profiles - MII IG PRO v2026.7.0

* [**Table of Contents**](toc.md)
* **Profiles**

## Profiles

### Abstract Profiles

The MII PRO module defines abstract profiles that serve as the basis for all PRO implementations. These profiles are marked `abstract = true` and are not intended to be instantiated directly. They establish the common structures and behaviours that instrument-specific profiles must extend. The two profiles for Questionnaire and QuestionnaireResponse inherit from the SDC specification, while the two score profiles for Observation and ObservationDefinition inherit directly from the FHIR specification.

### Why Abstract Profiles?

Abstract profiles ensure that common structures are used consistently across all implementations while preventing the creation of incomplete or generic instances. Every PRO instrument must define a concrete profile that inherits from these abstract profiles and adds the instrument-specific detail.

### Overview

| | | | |
| :--- | :--- | :--- | :--- |
| [MII_PR_PRO_Questionnaire](StructureDefinition-mii-pr-pro-questionnaire.md) | Questionnaire | SDC Questionnaire | Basis for all PRO questionnaires |
| [MII_PR_PRO_QuestionnaireResponse](StructureDefinition-mii-pr-pro-questionnaire-response.md) | QuestionnaireResponse | SDC QuestionnaireResponse | Structure of completed questionnaires |
| [MII_PR_PRO_Score_Blueprint](StructureDefinition-mii-pr-pro-score-blueprint.md) | ObservationDefinition | FHIR R4 | Templates for PRO score definitions |
| [MII_PR_PRO_Score_Instance](StructureDefinition-mii-pr-pro-score-instance.md) | Observation | FHIR R4 | Concrete score observations |

### Inheritance Hierarchy

The abstract profiles form the basis of a clear inheritance hierarchy:

![](Abstract_Profiles.png)

### Implementation Rules

Because these profiles are marked abstract, the following rules apply:

1. **No direct instantiation**: FHIR servers should reject the creation of resources that reference an abstract profile directly
1. **Inheritance required**: every PRO instrument must define concrete profiles that inherit from the abstract ones
1. **Complete specification**: concrete profiles must give every abstract element a concrete value or constraint
1. **Validation**: validators check that instances reference only concrete profiles

### Benefits

Using abstract profiles offers several benefits for the MII PRO module:

* **Consistency**: all PRO implementations follow the same base structure
* **Type safety**: prevents the creation of incomplete generic instances
* **Maintainability**: changes to shared structures happen centrally in the abstract profiles
* **Clarity**: a clear separation between base infrastructure and concrete implementations
* **Interoperability**: generic processing is possible thanks to the shared abstract base

### Migrating Existing Implementations

Existing implementations already using these profiles need adjusting:

1. The abstract profiles themselves are marked`abstract = true`
1. Concrete instrument profiles remain unchanged (they already inherit from the abstract profiles)
1. Instances must reference concrete profiles, not the abstract ones
1. Validation should be updated to check the abstract constraint

