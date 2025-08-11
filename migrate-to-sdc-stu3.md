# Migration Script: SDC STU4 to STU3

## Changes Required

### 1. Replace itemWeight with ordinalValue in Questionnaires
- **From**: `http://hl7.org/fhir/StructureDefinition/itemWeight`  
- **To**: `http://hl7.org/fhir/StructureDefinition/ordinalValue`

### 2. Update FHIRPath Expressions
- **From**: `.weight().sum()`
- **To**: `.select(valueCoding.extension.where(url='http://hl7.org/fhir/StructureDefinition/ordinalValue').valueDecimal).sum()`

### 3. Remove itemWeight from CodeSystems
- Remove property definitions for itemWeight
- Keep codes but remove weight properties

## Files to Update:

### Questionnaires with itemWeight:
1. `mii-qst-pro-phq-9.fsh` - Lines with itemWeight extension
2. `mii-qst-pro-promis-depression-sf4a.fsh` - Lines with itemWeight extension  
3. `mii-qst-pro-promis-29.fsh` - If using itemWeight

### Questionnaires with .weight() in expressions:
1. `mii-qst-pro-bdi-bdi2.fsh` - Line 107
2. `mii-qst-pro-phq-9.fsh` - Line 539
3. `mii-qst-pro-eortc-qlq-c30.fsh` - Check for .weight()
4. `mii-qst-pro-promis-29.fsh` - Check for .weight()
5. `mii-qst-pro-promis-depression-sf4a.fsh` - Check for .weight()

### CodeSystems with itemWeight property:
1. `mii-cs-pro-bdi-bdi2.fsh` - ✅ DONE
2. `mii-cs-pro-eq-5d-value-set.fsh` - Needs update
3. `sdc-cs-phq9.fsh` - Commented out, no action needed

## Migration Steps:

### Step 1: Update PHQ-9 Questionnaire
Replace all occurrences of:
```fsh
* item[X].answerOption[Y].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
```
With:
```fsh
* item[X].answerOption[Y].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
```

### Step 2: Update FHIRPath Expressions
Replace:
```fsh
.answer.value.weight().sum()
```
With:
```fsh
.answer.select(valueCoding.extension.where(url='http://hl7.org/fhir/StructureDefinition/ordinalValue').valueDecimal).sum()
```

### Step 3: Update CodeSystems
Remove itemWeight property definitions and convert to simple codes with display names.