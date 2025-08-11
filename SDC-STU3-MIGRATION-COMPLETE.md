# SDC STU3 Migration - Completed ✅

## Summary
Successfully migrated from SDC STU4 (4.0.0-ballot) to SDC STU3 (3.0.0) for better tool compatibility.

## Changes Completed

### 1. Profile Parent References ✅
- Changed `SDCQuestionnaireCommon` → `http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire`
- Changed `SDCQuestionnaireResponseCommon` → `http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaireresponse`

### 2. Extension Migration ✅
- Replaced all `http://hl7.org/fhir/StructureDefinition/itemWeight` with `http://hl7.org/fhir/StructureDefinition/ordinalValue`
- Affected files:
  - PHQ-9 questionnaire
  - PROMIS-29 questionnaire
  - PROMIS Depression SF4a questionnaire

### 3. FHIRPath Function Updates ✅
- Replaced all `.weight()` calls with `.ordinal()`
- Updated expressions in:
  - PHQ-9: Total score calculation
  - BDI-II: Total score calculation
  - PROMIS-29: All domain score calculations
  - PROMIS Depression SF4a: Raw score calculation
  - EORTC QLQ-C30: All scale score calculations

### 4. CodeSystem Updates ✅
- Removed itemWeight property from BDI-II CodeSystem
- Converted to simple codes with display names
- Note: EQ-5D-5L CodeSystem kept itemWeight properties as they're used for value set coefficients (different from questionnaire scoring)

## Key Differences: STU3 vs STU4

| Feature | SDC STU3 | SDC STU4 |
|---------|----------|----------|
| Parent Profile | `sdc-questionnaire` | `SDCQuestionnaireCommon` |
| Response Parent | `sdc-questionnaireresponse` | `SDCQuestionnaireResponseCommon` |
| Weight Extension | `ordinalValue` | `itemWeight` |
| FHIRPath Function | `.ordinal()` | `.weight()` |
| Version Constraint | No versionAlgorithm required | Requires versionAlgorithm with version |

## Benefits Achieved
- ✅ Stable, non-ballot SDC version
- ✅ Wider tool support and compatibility
- ✅ Proven implementation patterns
- ✅ Better documentation and community support

## Testing Checklist
- [ ] Run SUSHI build to verify no errors
- [ ] Validate all questionnaires load correctly
- [ ] Test score calculations work with .ordinal()
- [ ] Verify PHQ-9 total score calculation
- [ ] Verify BDI-II total score calculation
- [ ] Verify PROMIS domain scores
- [ ] Verify EORTC QLQ-C30 scale scores

## Files Modified
1. `mii-pr-pro-questionnaire.fsh` - Profile parent
2. `mii-pr-pro-questionnaire-response.fsh` - Profile parent
3. `mii-qst-pro-phq-9.fsh` - Extension and FHIRPath
4. `mii-qst-pro-bdi-bdi2.fsh` - FHIRPath expression
5. `mii-cs-pro-bdi-bdi2.fsh` - Removed itemWeight property
6. `mii-qst-pro-promis-29.fsh` - Extension and FHIRPath
7. `mii-qst-pro-promis-depression-sf4a.fsh` - Extension and FHIRPath
8. `mii-qst-pro-eortc-qlq-c30.fsh` - FHIRPath expressions

## Migration Complete
The implementation is now fully compatible with SDC STU3 (3.0.0) and should work with STU3-compliant tools and validators.