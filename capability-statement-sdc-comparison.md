# MII PRO CapabilityStatement vs. SDC Form Manager Comparison

## Overview
This document compares the MII PRO CapabilityStatement with the SDC Form Manager CapabilityStatement to identify gaps and alignment opportunities.

---

## Resource Coverage

### SDC Form Manager Resources
1. **Questionnaire** (SHALL)
2. **CodeSystem** (SHALL)
3. **ValueSet** (SHALL)

### MII PRO CapabilityStatement Resources
1. **Questionnaire** (SHALL) ✅
2. **QuestionnaireResponse** (SHALL) ⚠️ *Not in SDC Form Manager*
3. **Observation** (SHALL) ⚠️ *Not in SDC Form Manager*
4. **ObservationDefinition** (SHALL) ⚠️ *Not in SDC Form Manager*
5. **CodeSystem** ❌ *MISSING - Should add*
6. **ValueSet** ❌ *MISSING - Should add*

**Analysis:**
- **SDC Form Manager** focuses on *form definition and management* (authoring/editing questionnaires)
- **MII PRO** focuses on *form usage and data collection* (collecting responses, extracting scores)
- We need to add CodeSystem and ValueSet support since we define MII-controlled terminology

---

## Interactions Comparison

### Questionnaire Interactions

| Interaction | SDC Form Manager | MII PRO | Gap Analysis |
|------------|------------------|---------|--------------|
| read | SHALL | SHALL | ✅ Aligned |
| search-type | SHALL | SHALL | ✅ Aligned |
| vread | SHALL | ❌ Missing | ⚠️ Version retrieval not required for consumers |
| history-instance | SHALL | ❌ Missing | ⚠️ Change tracking not required for consumers |
| create | SHALL | ❌ Missing | ❌ **Gap**: Cannot create questionnaires |
| update | SHALL | ❌ Missing | ❌ **Gap**: Cannot update questionnaires |
| delete | MAY | ❌ Missing | ℹ️ Optional in both |

### QuestionnaireResponse Interactions

| Interaction | SDC Form Manager | MII PRO | Gap Analysis |
|------------|------------------|---------|--------------|
| read | N/A | SHALL | MII-specific |
| search-type | N/A | SHALL | MII-specific |
| create | N/A | SHOULD | MII-specific (data collection) |
| update | N/A | SHOULD | MII-specific (data collection) |

**Analysis:**
- SDC Form Manager is a **form authoring tool** → needs create/update
- MII PRO is primarily a **data consumer** → needs read/search, optionally create for ePRO
- **Recommendation**: Add vread/history-instance as SHOULD if versioning is important for research reproducibility

---

## Search Parameters Comparison

### Questionnaire Search Parameters

| Parameter | SDC Form Manager | MII PRO | Notes |
|-----------|------------------|---------|-------|
| code | SHALL | SHALL | ✅ Aligned |
| context | SHALL | ❌ Missing | Context (useContext) filtering |
| date | SHALL | SHOULD | ⚠️ Lower priority in MII |
| identifier | SHALL | SHOULD | ⚠️ Lower priority in MII |
| publisher | SHALL | SHOULD | ⚠️ Lower priority in MII |
| status | SHALL | SHALL | ✅ Aligned |
| title | SHALL | SHOULD | ⚠️ Lower priority in MII |
| version | SHALL | SHALL | ✅ Aligned |
| definition | SHALL | ❌ Missing | Item definition search (SDC-specific) |
| url | ✅ Implied | SHALL | MII adds explicit url search |
| name | ✅ Implied | SHOULD | Both support |
| subject-type | ❌ Not mentioned | SHOULD | MII addition |
| **capabilities** | ❌ Not in SDC | SHALL | ✅ **MII Innovation** - capability-based filtering |

**SDC-Specific Search Parameters (from SDC IG):**
- `definition` → Search by item definition URI (SDC extension)
- `assemble-expectation` → Modular questionnaire search
- `assembled-from` → Questionnaire derivation tracking

**Analysis:**
- SDC emphasizes form discovery and management (context, definition)
- MII emphasizes clinical usage filtering (capabilities, subject-type)
- **Recommendation**: Consider adding `context` and `definition` as SHOULD for interoperability

---

## CodeSystem & ValueSet Support

### SDC Form Manager Requirements

**CodeSystem:**
- Interactions: read, search, vread, history-instance, create, update (all SHALL)
- Search: date, description, name, status, url

**ValueSet:**
- Interactions: Same as CodeSystem
- Search: date, description, name, status, url
- Operations: $expand (SHOULD), $validate-code (SHOULD)

### MII PRO Current State
❌ **Not defined in CapabilityStatement**

**Gap Impact:**
- MII PRO defines custom CodeSystems (e.g., `mii-cs-pro-eortc-qlq-c30`, `mii-cs-pro-questionnaire-catalogue`)
- MII PRO defines custom ValueSets for questionnaire responses
- Without CodeSystem/ValueSet support declaration, FHIR servers may not expose these resources properly

**Recommendation:** Add CodeSystem and ValueSet with:
- read, search interactions (SHALL)
- Standard search parameters (url, status, name)
- $expand operation (SHOULD) for runtime value set expansion

---

## MII PRO-Specific Extensions

### Resources Not in SDC Form Manager

**1. Observation (Score Instances)**
- **Purpose**: Store calculated PRO scores extracted from responses
- **Rationale**: SDC focuses on form management, not score calculation/storage
- **Interaction**: read, search, create (for extracted scores)
- **Search**: Extensive (31 core parameters + code, subject, date, derived-from)

**2. ObservationDefinition (Score Blueprints)**
- **Purpose**: Define score calculation metadata and reference ranges
- **Rationale**: PRO-specific - not part of form management workflow
- **Interaction**: read, search
- **Search**: Custom SPs needed (no FHIR R4 core support)

**3. QuestionnaireResponse**
- **Purpose**: Store patient responses to questionnaires
- **Rationale**: SDC Form Manager focuses on *forms*, not *responses* (that's Form Filler/Form Receiver)
- **Interaction**: read, search, create, update
- **Search**: Standard parameters (questionnaire, subject, authored, status)

---

## SDC Operations Not in MII PRO

### Questionnaire Operations

| Operation | SDC Form Manager | MII PRO | Purpose |
|-----------|------------------|---------|---------|
| $populate | SHOULD | ❌ Missing | Pre-fill questionnaire with patient data |
| $populatehtml | MAY | ❌ Missing | Generate HTML form with pre-population |
| $populatelink | MAY | ❌ Missing | Generate link to pre-populated form |

**Analysis:**
- `$populate` operations are relevant for ePRO workflows
- **Recommendation**: Consider adding `$populate` as SHOULD for populatable questionnaires

### ValueSet Operations

| Operation | SDC Form Manager | MII PRO | Purpose |
|-----------|------------------|---------|---------|
| $expand | SHOULD | ❌ Missing | Runtime value set expansion |
| $validate-code | SHOULD | ❌ Missing | Validate code membership |

**Analysis:**
- Essential for dynamic questionnaire rendering with external terminologies
- **Recommendation**: Add $expand as SHOULD, $validate-code as MAY

---

## Role-Based Capability Alignment

### SDC Roles vs. MII PRO

| SDC Role | Focus | MII PRO Alignment |
|----------|-------|-------------------|
| **Form Manager** | Create/edit/manage questionnaires | ⚠️ Partial - missing create/update |
| **Form Filler** | Display forms, capture responses | ✅ Covered via QuestionnaireResponse |
| **Form Receiver** | Receive/store responses | ✅ Covered via QuestionnaireResponse + Observation |
| **Form Archiver** | Manage historical versions | ❌ Not covered (no vread/history) |

**MII PRO Unique Role:**
- **PRO Score Calculator/Repository**: Extract, calculate, and store PRO scores
  - Uses Observation (score instances)
  - Uses ObservationDefinition (score metadata)
  - Not part of SDC role model

---

## Recommendations

### High Priority Additions

1. **Add CodeSystem Support** (SHALL)
   ```fsh
   * insert SupportResource(CodeSystem, #SHALL)
   * insert SupportInteraction(#read, #SHALL)
   * insert SupportInteraction(#search-type, #SHALL)
   * insert SupportSearchParam(url, http://hl7.org/fhir/SearchParameter/CodeSystem-url, #uri, #SHALL)
   * insert SupportSearchParam(status, http://hl7.org/fhir/SearchParameter/CodeSystem-status, #token, #SHALL)
   * insert SupportSearchParam(name, http://hl7.org/fhir/SearchParameter/CodeSystem-name, #string, #SHOULD)
   ```

2. **Add ValueSet Support** (SHALL)
   ```fsh
   * insert SupportResource(ValueSet, #SHALL)
   * insert SupportInteraction(#read, #SHALL)
   * insert SupportInteraction(#search-type, #SHALL)
   * insert SupportSearchParam(url, http://hl7.org/fhir/SearchParameter/ValueSet-url, #uri, #SHALL)
   * insert SupportSearchParam(status, http://hl7.org/fhir/SearchParameter/ValueSet-status, #token, #SHALL)
   * insert SupportOperation($expand, #SHOULD)
   ```

3. **Add Questionnaire context Search** (SHOULD)
   - For filtering by useContext (e.g., clinical vs research)

### Medium Priority Additions

4. **Add Questionnaire vread/history** (SHOULD)
   - Important for research reproducibility
   - Track questionnaire version changes over time

5. **Add $populate Operation** (SHOULD)
   - Support populatable questionnaire capability
   - Pre-fill forms with patient data

### Low Priority / Consider

6. **Add Questionnaire create/update** (MAY)
   - Only if MII sites will author questionnaires locally
   - Most questionnaires are centrally managed

7. **Add $validate-code Operation** (MAY)
   - Useful for external terminology validation
   - MII uses controlled terminology, less critical

---

## Summary Table

| Capability | SDC Form Manager | MII PRO Current | MII PRO Recommended |
|------------|------------------|-----------------|---------------------|
| **Resources** | | | |
| Questionnaire | SHALL | SHALL | ✅ Keep |
| QuestionnaireResponse | N/A | SHALL | ✅ Keep |
| Observation | N/A | SHALL | ✅ Keep (PRO-specific) |
| ObservationDefinition | N/A | SHALL | ✅ Keep (PRO-specific) |
| CodeSystem | SHALL | ❌ Missing | ✅ **ADD** (SHALL) |
| ValueSet | SHALL | ❌ Missing | ✅ **ADD** (SHALL) |
| **Operations** | | | |
| ValueSet/$expand | SHOULD | ❌ Missing | ✅ **ADD** (SHOULD) |
| Questionnaire/$populate | SHOULD | ❌ Missing | ⚠️ Consider (SHOULD) |
| **Versioning** | | | |
| vread | SHALL | ❌ Missing | ⚠️ Consider (SHOULD) |
| history-instance | SHALL | ❌ Missing | ⚠️ Consider (SHOULD) |

---

## Conclusion

**Key Differences:**
1. **SDC Form Manager** = Questionnaire authoring/management tool
2. **MII PRO CapabilityStatement** = Clinical PRO data collection and scoring system

**Not a conflict** - complementary roles:
- SDC manages *forms*
- MII PRO manages *responses* and *scores*

**Critical Additions Needed:**
- CodeSystem/ValueSet support (we define custom terminologies)
- Consider adding versioning support for research reproducibility
- Consider $expand operation for terminology services

**MII PRO Innovations:**
- Capability-based questionnaire filtering (unique to MII)
- ObservationDefinition support (no standard CapabilityStatement defines this)
- Comprehensive Observation search for PRO scores
