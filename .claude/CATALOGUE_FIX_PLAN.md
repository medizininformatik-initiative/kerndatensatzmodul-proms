# Catalogue Fix Plan for v2026.0.0-rc.1

**Date**: 2025-11-24
**Status**: Ready for Review
**Priority**: HIGH - These are definitional resources that affect discoverability and searchability

---

## Overview

The Questionnaire Catalogue and Score Catalogue are outdated and incomplete. Additionally, 8 questionnaires are missing MII catalogue codes, making them unsearchable via the MII taxonomy.

**Impact**:
- Downstream systems cannot discover all questionnaires via MII taxonomy
- Missing scores make ObservationDefinitions invisible to catalogue-based queries
- PHQ-9 (flagship questionnaire) is not properly catalogued

---

## Issue 1: Questionnaire Catalogue Updates

### Current State
File: `input/fsh/profiles/mii-cs-pro-questionnaire-catalogue.fsh`

**Problems:**
1. Missing: PROMIS Cognitive Function SF4a
2. Wrong naming: `promis-promisdepression4aSF` (should be `promis-depression-sf4a`)
3. ~~Non-existent: `promis-promis33` (no such questionnaire file exists)~~ ✅ **FIXED** - Commented out as planned for modular questionnaires

### Actual Questionnaires in Repository (17 files)
```
✓ bdi-bdi2              - Beck Depression Inventory II
✓ ces-d                 - Center for Epidemiologic Studies Depression Scale
✓ eortc-qlq-c30         - EORTC QLQ-C30 (3 variants: base, variant-a, variant-b)
✓ epds                  - Edinburgh Postnatal Depression Scale
✓ euroqol-eq5d5l        - EQ-5D-5L (4 variants: minimal, displayable, collectable, answer-coding)
✓ hads                  - Hospital Anxiety and Depression Scale
✓ k6                    - Kessler Psychological Distress Scale
✓ phq-phq9              - PHQ-9 Depression Screening
✓ promis-29             - PROMIS-29 Profile (2 variants: full, minimal)
✓ promis-cognitive-function-sf4a - PROMIS Cognitive Function SF4a (MISSING from catalogue!)
✓ promis-depression-sf4a - PROMIS Depression SF4a (wrong name in catalogue)
```

### Action Plan for Questionnaire Catalogue

**Step 1: Comment out PROMIS-33 (planned for modular questionnaires)**
```fsh
// ALREADY DONE - Commented out with note:
// * #promis-promis33 "PROMIS-33 Questionnaire"  // Planned: First use case for modular questionnaires
```

**Step 2: Fix PROMIS Depression SF4a naming**
```fsh
// CHANGE THIS:
* #promis-promisdepression4aSF "PROMIS Depression 4a Short Form Questionnaire"

// TO THIS:
* #promis-depression-sf4a "PROMIS Depression 4a Short Form Questionnaire"
```

**Step 3: Add missing PROMIS Cognitive Function SF4a**
```fsh
// ADD THIS AFTER promis-depression-sf4a:
* #promis-cognitive-function-sf4a "PROMIS Cognitive Function Abilities 4a Short Form Questionnaire"
```

**Step 4: Consider variant strategy**
Should catalogue include questionnaire variants separately?
- Option A: Only base questionnaires (current approach)
- Option B: Include all variants with suffixes (e.g., `euroqol-eq5d5l-displayable`)

**Recommendation**: Keep current approach (base only), as variants serve different use cases but represent the same clinical questionnaire.

---

## Issue 2: Score Catalogue Updates

### Current State
File: `input/fsh/profiles/mii-cs-pro-score-catalogue.fsh`

**Current count**: 20 scores
**Should be**: ~31 scores
**Missing**: 11 scores from PROMIS-29, PROMIS Cognitive Function SF4a, and BDI-II

### Missing Scores by Instrument

#### BDI-II (1 score)
```fsh
* #bdi-bdi2-total "Beck Depression Inventory II (BDI-II) Total Score"
```

#### PROMIS-29 (8 scores - ALL MISSING!)
```fsh
// PROMIS-29 Domain T-Scores
* #promis-29-physical-function-tscore "PROMIS-29 Physical Function T-Score"
* #promis-29-anxiety-tscore "PROMIS-29 Anxiety T-Score"
* #promis-29-depression-tscore "PROMIS-29 Depression T-Score"
* #promis-29-fatigue-tscore "PROMIS-29 Fatigue T-Score"
* #promis-29-sleep-disturbance-tscore "PROMIS-29 Sleep Disturbance T-Score"
* #promis-29-social-function-tscore "PROMIS-29 Ability to Participate in Social Roles and Activities T-Score"
* #promis-29-pain-interference-tscore "PROMIS-29 Pain Interference T-Score"
* #promis-29-pain-intensity "PROMIS-29 Pain Intensity (0-10 Numeric Rating)"
```

#### PROMIS Cognitive Function SF4a (2 scores)
```fsh
* #promis-cognitive-function-sf4a-raw "PROMIS Cognitive Function Abilities 4a Raw Score"
* #promis-cognitive-function-sf4a-tscore "PROMIS Cognitive Function Abilities 4a T-Score"
```

### Action Plan for Score Catalogue

**Step 1: Add BDI-II score**
Insert after existing promis-depression entry.

**Step 2: Add all PROMIS-29 scores**
Create new section with comment:
```fsh
// PROMIS-29 Profile v2.1 Domain Scores
```

**Step 3: Add PROMIS Cognitive Function SF4a scores**
Insert in appropriate PROMIS section.

**Step 4: Verify naming consistency**
Ensure all score codes match patterns used in:
- ObservationDefinition IDs
- Observation profile references
- IG documentation

---

## Issue 3: Missing MII Catalogue Codes in Questionnaires

### Current State
**8 of 17 questionnaires** are missing MII catalogue codes in their `Questionnaire.code` element.

### Questionnaires Missing MII Codes

| File | LOINC Code | MII Catalogue Code Needed |
|------|------------|---------------------------|
| `mii-qst-pro-bdi-bdi2.fsh` | ✓ Has | ✗ Missing `#bdi-bdi2` |
| `mii-qst-pro-eq-5d-5l-collectable.fsh` | ✓ Has | ✗ Missing `#euroqol-eq5d5l` |
| `mii-qst-pro-eq-5d-5l-displayable.fsh` | ✓ Has | ✗ Missing `#euroqol-eq5d5l` |
| `mii-qst-pro-phq-9.fsh` | ✓ Has | ✗ Missing `#phq-phq9` |
| `mii-qst-pro-promis-29-minimal.fsh` | ✓ Has | ✗ Missing `#promis-promis29` |
| `mii-qst-pro-promis-29.fsh` | ✓ Has | ✗ Missing `#promis-promis29` |
| `mii-qst-pro-promis-cognitive-function-sf4a.fsh` | ✓ Has | ✗ Missing `#promis-cognitive-function-sf4a` |
| `mii-qst-pro-promis-depression-sf4a.fsh` | ✓ Has | ✗ Missing `#promis-depression-sf4a` |

### Example Fix Pattern

**Before** (PHQ-9):
```fsh
* code = $LNC#44249-1 "PHQ-9 quick depression assessment panel [Reported.PHQ]"
```

**After** (PHQ-9):
```fsh
* code[+] = $LNC#44249-1 "PHQ-9 quick depression assessment panel [Reported.PHQ]"
* code[+] = $mii-cs-pro-questionnaire-catalogue#phq-phq9 "PHQ-9 Questionnaire"
```

### Action Plan for Adding MII Codes

**Step 1: Verify alias exists**
Check `input/fsh/core/aliases.fsh` for:
```fsh
Alias: $mii-cs-pro-questionnaire-catalogue = http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-questionnaire-catalogue
```

**Step 2: Update each questionnaire**
For each of the 8 questionnaires:
1. Change single `* code = ` to array `* code[+] = `
2. Add second code line with MII catalogue code
3. Use correct code from catalogue (after fixing catalogue first!)

**Step 3: Special consideration for PROMIS Depression SF4a**
Must wait for catalogue fix (rename from `promis-promisdepression4aSF` to `promis-depression-sf4a`) before adding to questionnaire.

---

## Execution Order

**CRITICAL**: Follow this order to avoid validation errors!

### Phase 1: Catalogue Updates (Can be done first)
1. ✅ Fix Questionnaire Catalogue
   - ~~Remove `promis-promis33`~~ ✅ **DONE** - Commented out for future modular questionnaires use case
   - Fix `promis-promisdepression4aSF` → `promis-depression-sf4a`
   - Add `promis-cognitive-function-sf4a`

2. ✅ Fix Score Catalogue
   - Add BDI-II total score
   - Add 8 PROMIS-29 scores
   - Add 2 PROMIS Cognitive Function SF4a scores

### Phase 2: Add MII Codes to Questionnaires (Must be AFTER catalogue updates)
3. ✅ Update 8 questionnaires with MII catalogue codes
   - BDI-II
   - EQ-5D-5L (collectable and displayable variants)
   - PHQ-9 (FLAGSHIP!)
   - PROMIS-29 (both variants)
   - PROMIS Cognitive Function SF4a
   - PROMIS Depression SF4a

### Phase 3: Validation & Documentation
4. ✅ Run SUSHI to regenerate resources
5. ✅ Verify no new validation errors
6. ✅ Update CLAUDE.md if needed (document catalogue patterns)

---

## Verification Checklist

After implementation, verify:

### Questionnaire Catalogue
- [ ] All 11 actual questionnaires are listed (not counting variants)
- [ ] No non-existent questionnaires are listed
- [ ] All codes match actual questionnaire file names
- [ ] All display names are accurate

### Score Catalogue
- [ ] All 31 scores are listed
- [ ] Score codes match ObservationDefinition IDs
- [ ] Score grouping by instrument is logical
- [ ] All PROMIS-29 domains are included

### Questionnaire MII Codes
- [ ] All 17 questionnaires have at least 2 codes (LOINC + MII)
- [ ] MII codes match Questionnaire Catalogue exactly
- [ ] PHQ-9 (flagship) is properly coded
- [ ] No validation errors introduced

### Generated Resources
- [ ] `fsh-generated/resources/CodeSystem-mii-cs-pro-questionnaire-catalogue.json` has 11 concepts
- [ ] `fsh-generated/resources/CodeSystem-mii-cs-pro-score-catalogue.json` has 31 concepts
- [ ] All questionnaire JSON files have both LOINC and MII codes

---

## Risk Assessment

**Low Risk:**
- Catalogue updates (pure additions/fixes to CodeSystems)
- Adding MII codes to questionnaires (additive change)

**Medium Risk:**
- Renaming `promis-promisdepression4aSF` could break existing references
  - **Mitigation**: Search for any existing uses before renaming
  - **Command**: `grep -r "promis-promisdepression4aSF" input/`

**No Risk:**
- These are definitional resources, not data
- Changes are backwards compatible (adding codes, not removing)

---

## Estimated Effort

- **Catalogue updates**: 15 minutes (straightforward additions)
- **Adding MII codes to questionnaires**: 30 minutes (8 files, careful editing)
- **Validation and testing**: 15 minutes (SUSHI run + verification)

**Total**: ~1 hour

---

## Notes for Tomorrow

1. **Start with catalogues first** - this establishes the canonical codes
2. **PHQ-9 is priority** - it's the flagship questionnaire
3. **PROMIS-29 is important** - all 8 domain scores need to be catalogued
4. **Consider automation** - if this becomes a pattern, create a script to check catalogue completeness
5. **Document in CLAUDE.md** - add section on catalogue maintenance patterns

---

## Questions to Consider

1. **Variant Strategy**: Should questionnaire variants be in the catalogue?
   - Current: Only base questionnaires
   - Alternative: Include variants with suffixes

2. **Catalogue Versioning**: Should catalogues have independent versioning?
   - Current: Uses PR_CS_VS_Version ruleset (ties to IG version)
   - Alternative: Independent semantic versioning for catalogue evolution

3. **Automation**: Create a validation script to detect:
   - Questionnaires without MII codes
   - ObservationDefinitions not in score catalogue
   - Catalogue entries without corresponding resources

4. **Documentation**: Add to IG documentation:
   - How to add new questionnaires to catalogue
   - How to add new scores to catalogue
   - Catalogue maintenance checklist

---

## Related Files

### Files to Edit
- `input/fsh/profiles/mii-cs-pro-questionnaire-catalogue.fsh`
- `input/fsh/profiles/mii-cs-pro-score-catalogue.fsh`
- `input/fsh/definitions/bdi-ii/mii-qst-pro-bdi-bdi2.fsh`
- `input/fsh/definitions/eq-5d/mii-qst-pro-eq-5d-5l-collectable.fsh`
- `input/fsh/definitions/eq-5d/mii-qst-pro-eq-5d-5l-displayable.fsh`
- `input/fsh/definitions/phq-9/mii-qst-pro-phq-9.fsh`
- `input/fsh/definitions/promis-29/mii-qst-pro-promis-29-minimal.fsh`
- `input/fsh/definitions/promis-29/mii-qst-pro-promis-29.fsh`
- `input/fsh/definitions/promis-cognitive-function-sf4a/mii-qst-pro-promis-cognitive-function-sf4a.fsh`
- `input/fsh/definitions/promis-depression-sf4a/mii-qst-pro-promis-depression-sf4a.fsh`

### Files to Check
- `input/fsh/core/aliases.fsh` (verify catalogue alias exists)
- `fsh-generated/resources/CodeSystem-*.json` (after SUSHI run)
- `fsh-generated/resources/Questionnaire-*.json` (verify codes added)

---

## Success Criteria

✅ Questionnaire Catalogue has 11 entries (all correct, none missing, none wrong)
✅ Score Catalogue has 31 entries (complete coverage of all ObservationDefinitions)
✅ All 17 questionnaires have MII catalogue codes
✅ No SUSHI compilation errors
✅ No new FHIR validation errors
✅ PHQ-9 (flagship) is properly catalogued and searchable via MII taxonomy

---

**End of Plan**
