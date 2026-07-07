# Terminology Strategies - MII IG PRO v2026.5.0

## Terminology Strategies

 
This page includes translations from the original source language in which the guide was authored. Information on these translations and instructions on how to provide feedback on the translations can be found [here](translationinfo.md). 

## Overview of Terminology Approaches

The MII PRO module supports three fundamental approaches for defining answer options in questionnaire items:

1. **Inline answerOption**: Direct definition of answer options within the Questionnaire
1. **answerValueSet**: Reference to external ValueSets with flexible composition
1. **MII CodeSystems**: Full control over the terminology lifecycle

## Strategic Decision Criteria

### Using Inline answerOption

#### Available International Standards

**Scope**: LOINC codes for answer lists with reliable coverage available

**Implementation pattern**:

```
* item[=].answerOption[0].valueCoding.system = $LNC
* item[=].answerOption[0].valueCoding.code = #LA6568-5
* item[=].answerOption[0].valueCoding.display = "Not at all"
* item[=].answerOption[0].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[0].extension.valueDecimal = 0

```

**Example instruments**: PHQ-9, PROMIS questionnaires **Advantages**:

* International interoperability
* Semantic unambiguity
* Established coding standards

#### Simple, Static Answer Lists

**Scope**: Few answer options (maximum 5 options), low likelihood of change, no reuse required

**Implementation pattern**:

```
* item[=].answerOption[0].valueCoding.display = "I have no problems in walking about"
* item[=].answerOption[0].valueCoding.code = #1
* item[=].answerOption[1].valueCoding.display = "I have slight problems in walking about"
* item[=].answerOption[1].valueCoding.code = #2

```

**Example instrument**: EQ-5D-5L answer scale **Advantages**:

* Minimal complexity
* Clear implementation
* Low maintenance effort

#### Extensive Metadata per Answer Option

**Scope**: Multi-language support, score weights, complex presentation requirements

**Example**: PHQ-9 with German translations and weighting extensions

### Using answerValueSet with MII CodeSystem

#### Multiple Answer Format Variants

**Scope**: Identical conceptual answers in different text variants (short form/long form/detailed)

**Implementation example**: BDI-II

```
CodeSystem: MII_CS_PRO_BDI_BDI2_AnswerList
* #bdi-bdi2-answer-1a ^property[+].code = #bdi-bdi2-itemWeight
* #bdi-bdi2-answer-1a ^property[=].valueDecimal = 1
* #bdi-bdi2-answer-1b ^property[+].code = #bdi-bdi2-itemWeight
* #bdi-bdi2-answer-1b ^property[=].valueDecimal = 1

ValueSet: MII_VS_PRO_BDI_BDI2_AnswerListShort
* include #bdi-bdi2-answer-0 from system MII_CS_PRO_BDI_BDI2_AnswerList
* include #bdi-bdi2-answer-1 from system MII_CS_PRO_BDI_BDI2_AnswerList

ValueSet: MII_VS_PRO_BDI_BDI2_AnswerListLong
* include #bdi-bdi2-answer-1a from system MII_CS_PRO_BDI_BDI2_AnswerList
* include #bdi-bdi2-answer-1b from system MII_CS_PRO_BDI_BDI2_AnswerList

```

**Advantages**:

* Central code management
* Multiple ValueSet variants from a single CodeSystem
* Concept reusability

#### Reuse Across Questionnaires

**Criterion**: Same answer patterns in multiple instruments

**Use case**: Generic PRO severity scales (none/mild/moderate/severe) **Advantages**:

* Consistent terminology
* Central maintenance
* Harmonized data models

#### Complex Scoring Requirements

**Criterion**: Multiple score weights per concept, complex scoring rules

**Example**: BDI-II with variant answer weights (1a vs 1b) **Implementation**: CodeSystem properties for itemWeight management

#### Questionnaire Capabilities-Based Decisions

**Criterion**: Capability profiles require specific terminology approaches

**Capabilities and terminology implications**:

* **Displayable = false, Calculatable = true**: Requires answerValueSet for score calculation without display logic
* **Displayable = true**: Can use inline answerOption with rich display content
* **Extractable = true**: Requires correct itemWeight definitions for `.weight()` functions
* **Multiple Capabilities**: Inline answerOption offers maximum flexibility for display + calculation

**BDI-II example**:

```
* extension[capabilities].extension[displayable].valueBoolean = false
* extension[capabilities].extension[calculatable].valueBoolean = true
* item[=].answerValueSet = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-short" // Scores without display dependency

```

#### MII Terminology Strategy

**Criterion**: No reliable international standards available, German specifics required

**Strategic considerations**:

* Full control over terminology lifecycle
* German healthcare system specifics
* Cultural adaptations of answer options
* Normative authority over PRO definitions

## Decision Matrix

| | | |
| :--- | :--- | :--- |
| **LOINC availability** | Use when available | Only when insufficient |
| **Displayable capability** | Optimal for display + scores | Limited for pure display logic |
| **Calculatable-only** | Overhead for pure calculation | Ideal for score-only questionnaires |
| **Multiple variants** | Not suitable | Ideal |
| **Reuse** | Not efficient | Recommended |
| **Complex scores** | Limited by extensions | CodeSystem properties |
| **Implementation effort** | Minimal | Higher |
| **Maintenance effort** | Low (for static lists) | Higher |
| **International interop** | Maximum (with LOINC) | Limited |
| **German specifics** | Via extensions | Native support |

## Visual Overview

![](MII-PRO-Terminologie-Vergleichsmatrix.png)

## Implementation Examples

### Example 1: PHQ-9 (LOINC + Inline)

```
* item[1].answerOption[0].valueCoding.system = $LNC
* item[1].answerOption[0].valueCoding.code = #LA6568-5
* item[1].answerOption[0].valueCoding.display = "Not at all"
* item[1].answerOption[0].valueCoding.display.extension[0].url = $hl7-translation
* item[1].answerOption[0].valueCoding.display.extension[0].extension[0].url = "lang"
* item[1].answerOption[0].valueCoding.display.extension[0].extension[0].valueCode = #de
* item[1].answerOption[0].valueCoding.display.extension[0].extension[1].url = "content"
* item[1].answerOption[0].valueCoding.display.extension[0].extension[1].valueString = "Ueberhaupt nicht"
* item[1].answerOption[0].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[1].answerOption[0].extension.valueDecimal = 0

```

### Example 2: BDI-II (MII CodeSystem + ValueSet)

```
// Questionnaire Item
* item[=].answerValueSet = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-short"

// CodeSystem
CodeSystem: MII_CS_PRO_BDI_BDI2_AnswerList
* ^property[+].code = #ordinalValue
* ^property[=].type = #decimal
* #bdi-bdi2-answer-1a ^property[+].code = #ordinalValue
* #bdi-bdi2-answer-1a ^property[=].valueDecimal = 1

// ValueSet Short Form
ValueSet: MII_VS_PRO_BDI_BDI2_AnswerListShort
* include #bdi-bdi2-answer-0 from system MII_CS_PRO_BDI_BDI2_AnswerList
* include #bdi-bdi2-answer-1 from system MII_CS_PRO_BDI_BDI2_AnswerList

```

### Example 3: EQ-5D-5L (Simple Inline)

```
* item[=].answerOption[+].valueCoding.display = "I have no problems in walking about"
* item[=].answerOption[=].valueCoding.code = #1
* item[=].answerOption[+].valueCoding.display = "I have slight problems in walking about"
* item[=].answerOption[=].valueCoding.code = #2

```

## Calculated Expressions and .weight() Functions

**Critical implementation requirement**: FHIRPath `.weight()` functions require correct itemWeight definitions:

### With Inline answerOption:

```
* item[=].answerOption[0].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[0].extension.valueDecimal = 0

```

### With CodeSystem + ValueSet:

```
CodeSystem: MyCodeSystem
* ^property[+].code = #ordinalValue
* ^property[=].type = #decimal
* #answer-code ^property[+].code = #ordinalValue
* #answer-code ^property[=].valueDecimal = 0

```

## Governance and Lifecycle Management

### MII Terminology

**Advantages**:

* Full control over definitions
* German healthcare system specifics
* Coordinated evolution with MII standards
* Normative authority for German PRO implementations

**Responsibilities**:

* MII PRO Working Group: Terminology governance
* Implementers: Feedback and requirements
* MII Terminology Service: Distribution and maintenance

### International Standards Integration

**LOINC priority**: Prefer LOINC where available and suitable **Mapping strategies**: ConceptMaps for MII to LOINC harmonization **Future strategy**: Gradual migration to international standards as they become available

## Conclusion

The choice of terminology strategy is a **strategic architectural decision** that significantly impacts the long-term maintainability, interoperability, and scalability of PRO implementations.

**Guiding principle**: "International standards first, MII terminology where necessary, simple inline where appropriate"

This strategy enables leveraging the advantages of international interoperability while simultaneously addressing the specific requirements of the German healthcare system.

