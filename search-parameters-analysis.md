# MII PRO Module - SearchParameter Analysis

## Mustupport Elements by Resource Type

### Questionnaire (mii-pr-pro-questionnaire)

**Snapshot MS Elements:**
- `Questionnaire.version`
- `Questionnaire.code` (+ `code.code`, `code.system` with slices: loinc, snomed, mii)
- `Questionnaire.copyright`
- `Questionnaire.item` (+ all subelements)
  - `item.linkId`
  - `item.text`
  - `item.type`
  - `item.answerOption`
  - `item.answerValueSet`
  - `item.initial`
  - `item.initial.value[x]`
  - `item.item` (nested items)
  - `item.maxLength`
  - `item.prefix`
  - `item.readOnly`
  - `item.repeats`
  - `item.required`
- `Questionnaire.derivedFrom`
- `Questionnaire.extension` (including capabilities extension)
- `Questionnaire.status`
- `Questionnaire.url`
- `Questionnaire.title`
- `Questionnaire.subjectType`

**FHIR R4 Core SearchParameters:**
- ✅ `version` → `Questionnaire-version` (token)
- ✅ `code` → `Questionnaire-code` (token)
- ✅ `status` → `Questionnaire-status` (token)
- ✅ `url` → `Questionnaire-url` (uri)
- ✅ `title` → `Questionnaire-title` (string)
- ❓ `derivedFrom` → CHECK if exists
- ❓ `subjectType` → CHECK if exists
- ❌ `extension[capabilities]` → **CUSTOM SP NEEDED**

---

### QuestionnaireResponse (mii-pr-pro-questionnaire-response)

**Snapshot MS Elements:**
- `QuestionnaireResponse.language`
- `QuestionnaireResponse.questionnaire` (+ `questionnaire.extension`)
- `QuestionnaireResponse.status`
- `QuestionnaireResponse.subject`
- `QuestionnaireResponse.authored`
- `QuestionnaireResponse.author`
- `QuestionnaireResponse.identifier`
- `QuestionnaireResponse.item` (+ all subelements)
  - `item.linkId`
  - `item.text`
  - `item.answer`
  - `item.answer.value[x]`
  - `item.answer.item`
  - `item.item`

**FHIR R4 Core SearchParameters:**
- ✅ `questionnaire` → `QuestionnaireResponse-questionnaire` (reference)
- ✅ `status` → `QuestionnaireResponse-status` (token)
- ✅ `subject` → `QuestionnaireResponse-subject` (reference)
- ✅ `authored` → `QuestionnaireResponse-authored` (date)
- ✅ `author` → `QuestionnaireResponse-author` (reference)
- ✅ `identifier` → `QuestionnaireResponse-identifier` (token)
- ❓ `language` → CHECK if Resource.language has SP

---

### Observation (mii-pr-pro-score-instance + instrument-specific profiles)

**Snapshot MS Elements:**
- `Observation.identifier`
- `Observation.status`
- `Observation.code`
- `Observation.subject` (in PROMIS profiles)
- `Observation.category` (in PROMIS profiles)
- `Observation.effective[x]` (effectiveDateTime)
- `Observation.performer`
- `Observation.value[x]` (+ `value[x].value` for Quantity)
- `Observation.method`
- `Observation.interpretation`
- `Observation.referenceRange` (in PROMIS profiles)
- `Observation.derivedFrom`
- `Observation.note`
- `Observation.focus`
- `Observation.extension` (instantiatesCanonical via workflow-instantiatesCanonical)

**FHIR R4 Core SearchParameters:**
- ✅ `identifier` → `Observation-identifier` (token)
- ✅ `status` → `Observation-status` (token)
- ✅ `code` → `Observation-code` (token)
- ✅ `subject` → `Observation-subject` (reference)
- ✅ `category` → `Observation-category` (token)
- ✅ `date` → `Observation-date` (date, covers effective[x])
- ✅ `performer` → `Observation-performer` (reference)
- ✅ `value-quantity` → `Observation-value-quantity` (quantity)
- ✅ `method` → `Observation-method` (token)
- ✅ `derived-from` → `Observation-derived-from` (reference)
- ✅ `focus` → `Observation-focus` (reference)
- ✅ `interpretation` → `Observation-interpretation` (token)
- ❓ `based-on` → `Observation-based-on` (could support instantiatesCanonical extension?)

---

### ObservationDefinition (mii-pr-pro-score-blueprint)

**Snapshot MS Elements:**
- `ObservationDefinition.code` (+ `code.coding`, `code.coding.code`, `code.coding.system`)
- `ObservationDefinition.permittedDataType`
- `ObservationDefinition.preferredReportName`
- `ObservationDefinition.qualifiedInterval`
  - `qualifiedInterval.category`
  - `qualifiedInterval.range.low`
  - `qualifiedInterval.range.high`
  - `qualifiedInterval.range.extension` (ScoreHealthCorrelation)
    - `range.extension.value[x].coding.code`
    - `range.extension.value[x].coding.system`
    - `range.extension.value[x].text`
- `ObservationDefinition.quantitativeDetails.decimalPrecision`
- `ObservationDefinition.quantitativeDetails.unit`
- `ObservationDefinition.quantitativeDetails.customaryUnit`

**FHIR R4 Core SearchParameters:**
- ✅ `code` → `ObservationDefinition-code` (token)
- ❓ `permittedDataType` → CHECK if exists
- ❓ `preferredReportName` → CHECK if exists
- ❌ `qualifiedInterval` → **CUSTOM SP NEEDED** (possibly composite for category/range)
- ❌ `qualifiedInterval.category` → **CUSTOM SP NEEDED**
- ❌ `qualifiedInterval.range.extension[ScoreHealthCorrelation]` → **CUSTOM SP NEEDED**

---

## Custom SearchParameters Required

### 1. Questionnaire Capabilities Extension
**Name:** `mii-sp-pro-questionnaire-capabilities`
**Type:** token
**Expression:** `Questionnaire.extension.where(url='http://url-to-capabilities-extension').value`
**Purpose:** Search questionnaires by capability (displayable, collectable, calculatable, extractable, populatable, domainAligned)

### 2. QuestionnaireResponse Language
**Name:** `mii-sp-pro-questionnaireresponse-language` (if not in core)
**Type:** token
**Expression:** `QuestionnaireResponse.language`
**Purpose:** Search responses by language code

### 3. ObservationDefinition Qualified Interval Category
**Name:** `mii-sp-pro-observationdefinition-interval-category`
**Type:** token
**Expression:** `ObservationDefinition.qualifiedInterval.category`
**Purpose:** Search score definitions by interval category (reference, critical, absolute)

### 4. ObservationDefinition Preferred Report Name
**Name:** `mii-sp-pro-observationdefinition-reportname`
**Type:** string
**Expression:** `ObservationDefinition.preferredReportName`
**Purpose:** Search score definitions by display name

### 5. ObservationDefinition Permitted Data Type
**Name:** `mii-sp-pro-observationdefinition-datatype`
**Type:** token
**Expression:** `ObservationDefinition.permittedDataType`
**Purpose:** Search score definitions by permitted data type

### 6. ObservationDefinition Score Health Correlation (Extension)
**Name:** `mii-sp-pro-observationdefinition-health-correlation`
**Type:** token
**Expression:** `ObservationDefinition.qualifiedInterval.range.extension.where(url='score-health-correlation-url').value.coding`
**Purpose:** Search score definitions by health correlation direction (better/worse)

---

---

## FHIR R4 Core SearchParameters (from package cache)

### Questionnaire (19 SearchParameters)
| Name | Type | Code | Expression |
|------|------|------|------------|
| code | token | code | Questionnaire.item.code |
| context-quantity | quantity | context-quantity | (Questionnaire.useContext.value as Quantity) / (Questionnaire.useContext.value as Range) |
| context-type-quantity | composite | context-type-quantity | Questionnaire.useContext |
| context-type-value | composite | context-type-value | Questionnaire.useContext |
| context-type | token | context-type | Questionnaire.useContext.code |
| context | token | context | (Questionnaire.useContext.value as CodeableConcept) |
| date | date | date | Questionnaire.date |
| definition | uri | definition | Questionnaire.item.definition |
| description | string | description | Questionnaire.description |
| effective | date | effective | Questionnaire.effectivePeriod |
| identifier | token | identifier | Questionnaire.identifier |
| jurisdiction | token | jurisdiction | Questionnaire.jurisdiction |
| name | string | name | Questionnaire.name |
| publisher | string | publisher | Questionnaire.publisher |
| status | token | status | Questionnaire.status |
| subject-type | token | subject-type | Questionnaire.subjectType |
| title | string | title | Questionnaire.title |
| url | uri | url | Questionnaire.url |
| version | token | version | Questionnaire.version |

### QuestionnaireResponse (11 SearchParameters)
| Name | Type | Code | Expression |
|------|------|------|------------|
| author | reference | author | QuestionnaireResponse.author |
| authored | date | authored | QuestionnaireResponse.authored |
| based-on | reference | based-on | QuestionnaireResponse.basedOn |
| encounter | reference | encounter | QuestionnaireResponse.encounter |
| identifier | token | identifier | QuestionnaireResponse.identifier |
| part-of | reference | part-of | QuestionnaireResponse.partOf |
| patient | reference | patient | QuestionnaireResponse.subject.where(resolve() is Patient) |
| questionnaire | reference | questionnaire | QuestionnaireResponse.questionnaire |
| source | reference | source | QuestionnaireResponse.source |
| status | token | status | QuestionnaireResponse.status |
| subject | reference | subject | QuestionnaireResponse.subject |

### Observation (31 SearchParameters)
| Name | Type | Code | Expression |
|------|------|------|------------|
| based-on | reference | based-on | Observation.basedOn |
| category | token | category | Observation.category |
| code-value-concept | composite | code-value-concept | Observation |
| code-value-date | composite | code-value-date | Observation |
| code-value-quantity | composite | code-value-quantity | Observation |
| code-value-string | composite | code-value-string | Observation |
| combo-code-value-concept | composite | combo-code-value-concept | Observation / Observation.component |
| combo-code-value-quantity | composite | combo-code-value-quantity | Observation / Observation.component |
| combo-code | token | combo-code | Observation.code / Observation.component.code |
| combo-data-absent-reason | token | combo-data-absent-reason | Observation.dataAbsentReason / Observation.component.dataAbsentReason |
| combo-value-concept | token | combo-value-concept | (Observation.value as CodeableConcept) / (Observation.component.value as CodeableConcept) |
| combo-value-quantity | quantity | combo-value-quantity | (Observation.value as Quantity/SampledData) / (Observation.component.value as Quantity/SampledData) |
| component-code-value-concept | composite | component-code-value-concept | Observation.component |
| component-code-value-quantity | composite | component-code-value-quantity | Observation.component |
| component-code | token | component-code | Observation.component.code |
| component-data-absent-reason | token | component-data-absent-reason | Observation.component.dataAbsentReason |
| component-value-concept | token | component-value-concept | (Observation.component.value as CodeableConcept) |
| component-value-quantity | quantity | component-value-quantity | (Observation.component.value as Quantity/SampledData) |
| data-absent-reason | token | data-absent-reason | Observation.dataAbsentReason |
| derived-from | reference | derived-from | Observation.derivedFrom |
| device | reference | device | Observation.device |
| focus | reference | focus | Observation.focus |
| has-member | reference | has-member | Observation.hasMember |
| method | token | method | Observation.method |
| part-of | reference | part-of | Observation.partOf |
| performer | reference | performer | Observation.performer |
| specimen | reference | specimen | Observation.specimen |
| status | token | status | Observation.status |
| subject | reference | subject | Observation.subject |
| value-concept | token | value-concept | (Observation.value as CodeableConcept) |
| value-date | date | value-date | (Observation.value as dateTime/Period) |
| value-quantity | quantity | value-quantity | (Observation.value as Quantity/SampledData) |
| value-string | string | value-string | (Observation.value as string) / (Observation.value as CodeableConcept).text |

**Note:** `date` SearchParameter exists in core (expression: `Observation.effective`) - covers effectiveDateTime

### ObservationDefinition
❌ **No core SearchParameters defined in FHIR R4** - this resource has minimal search support in core spec

---

## SDC IG SearchParameters (3 additional for Questionnaire)

| Name | Type | Base | Code | Purpose |
|------|------|------|------|---------|
| SDCQuestionnaireIsModular | token | Questionnaire | assemble-expectation | Search modular questionnaires |
| SDCQuestionnaireAssembledFrom | token | Questionnaire | assembled-from | Find questionnaires assembled from specific source |
| SDCQuestionnaireItemDefinition | token | Questionnaire | definition | Search by item definition URI |

---

## MII Meta IG SearchParameters

**None relevant for Questionnaire/QuestionnaireResponse/Observation/ObservationDefinition**

MII Meta defines custom SearchParameters for:
- Observation.bodySite
- Procedure.outcome
- Specimen.collection.method
- Medication dosage parameters
- ResearchStudy parameters
- FamilyMemberHistory parameters
- ServiceRequest parameters

**Action:** No conflicts, MII PRO can define additional SearchParameters as needed

---

## ISiK SearchParameters

**None relevant for PRO resources**

ISiK defines only Encounter-specific SearchParameters:
- date-start
- end-date

---

## Gap Analysis: Required vs. Available

### ✅ Fully Covered by Core
**Questionnaire:**
- version, code, status, url, title, derivedFrom (via `definition`), copyright (via `description`), subjectType

**QuestionnaireResponse:**
- questionnaire, status, subject, authored, author, identifier, language (via Resource.language - universal search)

**Observation:**
- All MS elements have core SearchParameters:
  - identifier, status, code, subject, category, effectiveDateTime (via `date`)
  - performer, value[x], method, interpretation, derivedFrom, note, focus
  - extension (via `based-on` for instantiatesCanonical)

### ❌ Gaps Requiring Custom SearchParameters

#### 1. **Questionnaire.extension[capabilities]**
- **Status:** ❌ NOT COVERED
- **Need:** Custom SP for filtering questionnaires by capability flags
- **Priority:** HIGH (core FDPG use case)

#### 2. **ObservationDefinition - ALL MS ELEMENTS**
- **Status:** ❌ NO CORE SEARCHPARAMETERS EXIST
- **Need:** Define complete set of SearchParameters:
  - `code` (token)
  - `permittedDataType` (token)
  - `preferredReportName` (string)
  - `qualifiedInterval.category` (token)
  - `qualifiedInterval.range` (composite or separate)
  - `quantitativeDetails.unit` (token)
- **Priority:** HIGH (score definition discovery)

#### 3. **Observation.referenceRange**
- **Status:** ❌ NOT COVERED (only qualifiedInterval search needed for ObservationDefinition)
- **Need:** Search Observations by reference range membership
- **Priority:** MEDIUM (clinical decision support use case)

---

## Next Steps

1. ✅ Verify which core SearchParameters exist in FHIR R4 spec
2. ✅ Check MII Meta IG for existing SearchParameters we can reuse
3. ✅ Check SDC IG for existing SearchParameters
4. ✅ Check ISiK IG for existing SearchParameters
5. ⬜ Create FSH definitions for custom SearchParameters:
   - Questionnaire.extension[capabilities]
   - ObservationDefinition.code
   - ObservationDefinition.permittedDataType
   - ObservationDefinition.preferredReportName
   - ObservationDefinition.qualifiedInterval.category
   - ObservationDefinition.quantitativeDetails.unit
6. ⬜ Add SearchParameter instances to IG
7. ⬜ Update IG documentation with search guidance
8. ⬜ Test SearchParameters against HAPI FHIR server

---

## References

- FHIR R4 Core Package: `hl7.fhir.r4.core#4.0.1` (local cache)
- MII Meta IG: `de.medizininformatikinitiative.kerndatensatz.meta#2025.0.0`
- SDC IG: `hl7.fhir.uv.sdc#3.0.0`
- ISiK IG: `de.gematik.isik#5.0.0`
