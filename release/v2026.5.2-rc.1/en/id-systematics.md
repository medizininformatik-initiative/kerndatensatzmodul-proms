# ID Systematics - MII IG PRO v2026.5.2-rc.1

## ID Systematics

 
This page includes translations from the original source language in which the guide was authored. Information on these translations and instructions on how to provide feedback on the translations can be found [here](translationinfo.md). 

A consistent identifier system is essential for the standardized representation of PRO data in the MII context.

**Important distinction**: Identifiers are explicitly intended as MII-internal business identifiers and should not be confused with semantic codes (LOINC, SNOMED CT) of questionnaires and questionnaire items, which serve terminological annotation in open standards.

## Scope of Identifier Usage

Identifiers are needed in the following contexts:

1. **Questionnaire Identification**: Unique designation of individual questionnaires (e.g., PHQ-9, EQ-5D-5L)
1. **Question Group Identification**: Designation of item blocks/domains (e.g., PROMIS-29 Physical Function 4a)
1. **Item Identification**: Unique designation of individual questions (e.g., EQ-5D-5L Mobility)
1. **Answer Option Identification**: Designation of specific answer choices (e.g., "0: No pain")
1. **Score Identification**: Unique designation of score definitions (e.g., EQ-5D-VAS-Score)
1. **Domain Identification**: Designation of health-related domains (e.g., Depression, Anxiety)

## FHIR Resource and File Naming Conventions

The MII PRO module follows the established MII naming scheme:

### Basic Structure

```
mii-[type]-[module]-[specification]

```

* **[type]**: FHIR resource type (see table below)
* **[module]**: `pro` (Patient-Reported Outcomes)
* **[specification]**: Detailed description of the artifact

### Resource Type Abbreviations

#### General MII Conventions

These abbreviations are used MII-wide across all modules:

| | | | |
| :--- | :--- | :--- | :--- |
| `pr` | Profile | StructureDefinition (Profile) | `mii-pr-pro-questionnaire` |
| `cs` | CodeSystem | CodeSystem | `mii-cs-pro-questionnaire-catalogue` |
| `vs` | ValueSet | ValueSet | `mii-vs-pro-phq-9-answer-list` |
| `cm` | ConceptMap | ConceptMap | `mii-cm-pro-phq9-to-promis-depression` |
| `ex` | Extension | StructureDefinition (Extension) | `mii-ex-pro-questionnaire-capabilities` |
| `exa` | Example | Any resource | `mii-exa-pro-phq-9-response` |
| `lm` | LogicalModel | StructureDefinition (LogicalModel) | `mii-lm-pro` |

#### PRO Module-Specific Additions

These abbreviations have been developed specifically for the PRO module:

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| `qst` | Questionnaire | Questionnaire | `mii-qst-pro-phq-9` | Implemented |
| `obsdef` | ObservationDefinition | ObservationDefinition | `mii-obsdef-pro-eq5d5l-index-score` | Implemented |
| `lib` | Library | Library (CQL) | `mii-lib-pro-eq5d-calculations` | Planned (2026+) |

**Note on QuestionnaireResponse**: The introduction of a `qr` abbreviation for QuestionnaireResponse was discussed. After thorough review, it was decided that QuestionnaireResponses should be classified as either:

* **Definitional profiles** under `pr` (e.g., `mii-pr-pro-questionnaire-response`) or
* **Concrete examples** under `exa` (e.g., `mii-exa-pro-phq-9-response`)

depending on their intended purpose.

**Important**: File names and resource IDs are identical and consistently use lowercase with hyphens.

## Namespace System for Questionnaires

### Fundamental Principles

* **Human readability**: Use of descriptive, understandable names instead of hashed strings
* **Consistency**: Uniform spelling and structure within the namespace
* **Uniqueness**: Clear differentiation of various instruments and versions

### Namespace Structure for Questionnaires

```
mii-qst-pro-[organization]-[instrument]-[variant]

```

#### Challenges in Namespace Definition

**Problem**: PROM instrument abbreviations are not unique and may have identical names in different specialties.

**Complexity factors**:

1. **Multiple instruments of one organization**(e.g., various PROMIS questionnaires)
1. **Different major versions**of a questionnaire (e.g., BDI vs. BDI-II)
1. **Parent-proxy versions**for parent/child assessments
1. **Age-appropriate variants**in pediatrics
1. **Language variants**with content differences between languages

**Important note**: These different questionnaires may produce identical or comparable scores, which must be considered in score assignment.

### Established Namespaces (Current Status)

#### Structured by organization:

```
# EuroQol Organization
mii-qst-pro-euroqol-eq5d5l     # EQ-5D-5L (Five Level)
mii-qst-pro-euroqol-eq5dy5l    # EQ-5D-Y-5L (Youth Version)
mii-qst-pro-euroqol-eq5d3l     # EQ-5D-3L (Three Level)

# PROMIS Organization
mii-qst-pro-promis-promis29         # PROMIS-29 Profile v2.1
mii-qst-pro-promis-depression-sf4a  # PROMIS Depression Short Form 4a

# PHQ Family (Pfizer/Spitzer)
mii-qst-pro-phq-phq9          # Patient Health Questionnaire-9
mii-qst-pro-phq-gad7          # Generalized Anxiety Disorder-7
mii-qst-pro-phq-phqsads       # PHQ-SADS

# Beck Inventories
mii-qst-pro-beck-bdi2         # Beck Depression Inventory-II

```

**Note**: The namespace system is continuously expanded and refined based on the requirements of new instruments.

## LinkId Conventions for Questionnaire Items

### Basic Structure for linkIds

```
[instrument-prefix]-[item-type]-[identifier]

```

### Currently Implemented Patterns

#### 1. Question Abbreviation + Numbering (with Leading Zeros)

**Pattern**: `{instrument}-q{number}` (number always two digits with leading zero)

```
# PHQ-9 Examples
phq-phq9-q01        # Item 1: "Little interest or pleasure in doing things"
phq-phq9-q02        # Item 2: Feeling down
phq-phq9-q09        # Item 9: Suicidal ideation
phq-phq9-score-total # Total score

# BDI-II Examples
bdi-bdi2-q01        # Item 1: Sadness
bdi-bdi2-q02        # Item 2: Pessimism
bdi-bdi2-q21        # Item 21: Loss of interest in sex
bdi-bdi2-score-total # Total score

```

#### 2. EuroQol Domain-Based IDs

**Pattern**: `{instrument}-q{number}-{domain-code}` (number two digits)

```
# EQ-5D-5L Examples
euroqol-eq5d5l-q01-MO    # Mobility
euroqol-eq5d5l-q02-SC    # Self-Care
euroqol-eq5d5l-q03-UA    # Usual Activities
euroqol-eq5d5l-q04-PD    # Pain/Discomfort
euroqol-eq5d5l-q05-AD    # Anxiety/Depression
euroqol-eq5d5l-vas       # Visual Analog Scale

```

#### 3. PROMIS Item Bank IDs

**Pattern**: `{instrument}-{item-bank-id}` (based on official PROMIS codes)

```
# PROMIS Depression SF 4a
promis-eddep04           # PROMIS Item EDDEP04
promis-eddep06           # PROMIS Item EDDEP06
promis-eddep29           # PROMIS Item EDDEP29
promis-eddep05           # PROMIS Item EDDEP05

# PROMIS-29 Physical Function Items
promis-pfa11             # Physical Function Item (based on validation study)
promis-pfa21             # Physical Function Item
promis-pfa23             # Physical Function Item
promis-pfa53             # Physical Function Item

```

### Score Item Conventions

**Pattern**: `{instrument}-{score-type}-{variant}`

```
# Different score types
{instrument}-score-raw          # Raw score
{instrument}-score-tscore       # T-Score (PROMIS)
{instrument}-score-total        # Total score
{instrument}-score-index        # Index score (EQ-5D)
{instrument}-score-vas          # VAS score
{instrument}-score-profile      # Profile score

```

### Special Item Types

#### Display Items (Instructions, Descriptions)

```
{instrument}.Description        # Main description/instruction
{instrument}.{section}          # Section-specific description

```

Examples:

```
PHQ-9.Description               # PHQ-9 main instruction
PROMIS-Depression.Description   # PROMIS Depression instruction

```

### Decision Matrix for linkId Patterns

| | | |
| :--- | :--- | :--- |
| **Official item code available** | Use official code | `promis-eddep04`(PROMIS) |
| **Domain-based structure** | Add domain suffix | `euroqol-eq5d5l-q01-MO` |
| **Sequential numbering** | Instrument + q{NN} pattern | `phq-phq9-q01` |
| **Score items** | score-type suffix | `phq-phq9-score-total` |
| **Display items** | .Description pattern | `PHQ-9.Description` |

### Consistency Rules

1. **Lowercase**: All linkIds consistently use lowercase
1. **Hyphens**: Components separated by hyphens (no underscores)
1. **Prefix consistency**: Same instrument prefix for all items of a questionnaire
1. **Leading zeros**: Numbering always two digits (q01, q02, …, q10, q11, …)
1. **Uniqueness**: LinkIds must be unique within a questionnaire
1. **Human readability**: IDs should be understandable for developers and clinicians

### Handling International Standards

**LOINC Integration**: Where available, LOINC is used as the code element, while linkId follows the MII internal system:

```
//FSH
* item[1].linkId = "phq-phq9-q01"           # MII internal ID
* item[1].code = $LNC#44250-9               # LOINC code for semantic annotation

```

**PROMIS Integration**: Official PROMIS item IDs are adopted as linkId where available:

```
//FSH
* item[1].linkId = "promis-eddep04"         # Official PROMIS item code
* item[1].code = $LNC#71969-0               # LOINC code (if available)

```

### Challenges and Solutions

#### Problem: Multiple Use of Items

**Situation**: PROMIS items can appear in different questionnaires (e.g., EDDEP04 in PROMIS-29 and PROMIS Depression SF 4a)

**Solution**: Consistent use of the same linkId across all questionnaires enables:

* Simplified FHIRPath expressions for cross-domain calculations
* Reusability of validation logic
* Consistent data evaluation

#### Problem: Missing Official Item IDs

**Situation**: Not all instruments have standardized item codes

**Solution**: Fallback to structured numbering with semantic additions:

```
{instrument}-q{NN}              # Base pattern (leading zero!)
{instrument}-q{NN}-{domain}     # With domain information

```

### Best Practices for New Instruments

1. **Check for official item IDs**: Use established codes (PROMIS, LOINC) where available
1. **Consistent prefixes**: Follow existing namespace conventions
1. **Leading zeros**: Always use two-digit numbering (q01-q99)
1. **Domain codes**: Add domain abbreviations for structured instruments
1. **Score suffix**: Use clear score designations (-score-total, -score-raw, etc.)

## Terminology Strategies for Answer Options

### Strategic Decision: answerOption vs answerValueSet

The choice between inline `answerOption` and external `answerValueSet` definitions is a fundamental architectural decision that significantly impacts maintainability, reusability, and interoperability.

### Decision Matrix

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| **Inline answerOption + LOINC** | International standards available + displayable | PHQ-9, PROMIS | International interoperability, semantic unambiguity | German translations via extensions |
| **Inline answerOption + Simple Codes** | Simple, static lists (5 or fewer options) + displayable | EQ-5D-5L | Minimal complexity, direct code | No reusability |
| **answerValueSet + MII CodeSystem** | Capability-based: displayable=false, calculatable=true | BDI-II | Optimized for score-only, no display overhead, German specifics | Not for interactive forms |

### Implementation Examples

#### Pattern 1: LOINC + itemWeight Extensions (PHQ-9)

```
//FSH
* item[=].answerOption[0].valueCoding.system = $LNC
* item[=].answerOption[0].valueCoding.code = #LA6568-5
* item[=].answerOption[0].valueCoding.display = "Not at all"
* item[=].answerOption[0].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[0].extension.valueDecimal = 0

```

#### Pattern 2: MII CodeSystem + ValueSet (BDI-II)

```
//FSH
// Questionnaire
* item[=].answerValueSet = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-short"

// CodeSystem
* #bdi-bdi2-answer-1 ^property[+].code = #bdi-bdi2-itemWeight
* #bdi-bdi2-answer-1 ^property[=].valueDecimal = 1

```

#### Pattern 3: Simple Inline Codes (EQ-5D-5L)

```
//FSH
* item[=].answerOption[0].valueCoding.display = "I have no problems in walking about"
* item[=].answerOption[0].valueCoding.code = #1

```

### Decision Guide

**First check the Questionnaire Capabilities:**

**Use answerValueSet + MII CodeSystem when:**

* **displayable = false, calculatable = true** (like BDI-II)
* Optimization for pure score calculation without display overhead
* Background calculations without user interaction

**Use inline answerOption when:**

* **displayable = true** (interactive forms)
* LOINC codes with score weights are available
* Simple, static answer lists (5 or fewer options)
* Rich metadata per option (translations, weights)

**Additional answerValueSet + MII CodeSystem criteria:**

* Multiple answer format variants needed (short/long)
* Reuse across multiple questionnaires planned
* Complex scoring requirements with variable weights
* German healthcare system specifics required

**Detailed documentation**: [Terminology Strategies](terminology-strategies.md)

