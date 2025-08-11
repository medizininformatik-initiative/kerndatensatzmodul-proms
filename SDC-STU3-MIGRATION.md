# SDC STU3 Migration Guide

## Overview
This document tracks the migration from SDC STU4 (4.0.0-ballot) back to SDC STU3 (3.0.0) for better tool compatibility and stability.

## Key Changes Required

### 1. Profile Parent References ✅
- **Changed**: `SDCQuestionnaireCommon` → `sdc-questionnaire`
- **Changed**: `SDCQuestionnaireResponseCommon` → `sdc-questionnaireresponse`
- **Status**: COMPLETED

### 2. Scoring Weight Properties ⚠️
**Critical Change Required**:
- **STU4**: Uses `itemWeight` property on CodeSystem concepts
- **STU3**: Uses `ordinalValue` extension on answerOption
- **Impact**: All questionnaires with calculated scores need updating

#### Files Requiring Updates:
- [ ] `mii-qst-pro-promis-depression-sf4a.fsh` - Uses itemWeight extensions
- [ ] `mii-qst-pro-phq-9.fsh` - May use itemWeight 
- [ ] `mii-cs-pro-bdi-bdi2.fsh` - Uses itemWeight property
- [ ] `mii-cs-pro-eq-5d-value-set.fsh` - Uses itemWeight property
- [ ] All FHIRPath expressions using `.weight()` function

### 3. Version Algorithm Constraint
**STU4 Constraint**: `sdc-2` requires `versionAlgorithm` when `version` is present
**STU3**: This constraint doesn't exist
**Resolution**: Already removed versionAlgorithm extensions ✅

### 4. FHIRPath Expression Changes
**STU4**: `.weight()` function for itemWeight
**STU3**: `.extension('ordinalValue').valueDecimal` for ordinalValue
**Impact**: All calculated expressions need updating

## Migration Strategy

### Option 1: Full STU3 Compatibility (Recommended)
1. Convert all `itemWeight` to `ordinalValue` extensions
2. Update all FHIRPath expressions to use ordinalValue
3. Test with STU3-compatible tools

### Option 2: Hybrid Approach
1. Keep current implementation
2. Add transformation layer for STU3 tools
3. Maintain both weight mechanisms

### Option 3: Stay with STU4
1. Accept limited tool compatibility
2. Wait for broader STU4 adoption
3. Document tool requirements clearly

## Benefits of STU3
- ✅ Stable, non-ballot version
- ✅ Wider tool support
- ✅ Proven implementation patterns
- ✅ Better documentation

## Risks of Migration
- ⚠️ Significant refactoring required
- ⚠️ Loss of semantic clarity (itemWeight vs ordinalValue)
- ⚠️ Potential for calculation errors during migration
- ⚠️ Need to maintain compatibility documentation

## Decision Points
1. **Scoring Mechanism**: ordinalValue (STU3) vs itemWeight (STU4)
2. **Tool Requirements**: Which tools must we support?
3. **Timeline**: When to complete migration?
4. **Testing Strategy**: How to validate calculations remain correct?

## Next Steps
1. [ ] Decision on migration approach
2. [ ] Update scoring mechanisms if proceeding
3. [ ] Update FHIRPath expressions
4. [ ] Comprehensive testing
5. [ ] Documentation update