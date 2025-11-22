# Validation Analysis - Run 19576424163

**Date**: 2025-11-21
**Commit**: b489d58
**Total Errors**: 163

---

## Summary

| Category | Count | Percentage |
|----------|-------|------------|
| Wrong Display Name | 104 | 64% |
| Unknown LOINC Code | 46 | 28% |
| Other | 13 | 8% |

---

## 1. Unknown LOINC Codes (46 errors)

### Critical Issue: These LA codes do NOT exist in LOINC 2.80

These appear to be **PROMIS answer codes** that may have been deprecated or were never valid:

| Code | Count | Likely Intended Use |
|------|-------|---------------------|
| LA13870-2 | 8 | PROMIS frequency answer |
| LA13868-6 | 6 | PROMIS frequency answer |
| LA13902-3 | 6 | PROMIS frequency answer |
| LA13903-1 | 6 | PROMIS frequency answer |
| LA13909-8 | 6 | PROMIS frequency answer |
| LA10045-5 | 4 | PROMIS frequency answer |
| LA13938-7 | 1 | PROMIS frequency answer |
| LA13896-7 | 1 | PROMIS frequency answer |

### Unknown Regular LOINC Codes (likely typos)

| Code | Count | Notes |
|------|-------|-------|
| 71968-5 | 1 | Should be 71968-2 (PROMIS-29 Anxiety) |
| 71951-1 | 1 | Invalid code |
| 71950-3 | 1 | Invalid code |
| 71949-5 | 1 | Invalid code |
| 71948-7 | 1 | Invalid code |
| 71133-6 | 1 | Invalid code |

### Other Unknown Code

| Code | Count | System |
|------|-------|--------|
| readonly | 2 | questionnaire-item-control |

**Recommended Action**:
- Verify correct LOINC answer codes for PROMIS instruments
- The LA138xx codes are not valid - need to find correct PROMIS answer list codes
- Check for typos in the 7xxxx series codes

---

## 4. Correct LOINC Codes (Terminology Server Validated)

### PROMIS Physical Function Difficulty Scale (5-point)

| Score | Code | Display (English) | Currently Used (Wrong) |
|-------|------|-------------------|------------------------|
| 5 | **LA13948-7** | "No difficulty at all" | LA10051-3 "Without any difficulty" |
| 4 | **LA13949-5** | "A little bit of difficulty" | LA10052-1 "With a little difficulty" |
| 3 | **LA13950-3** | "Some difficulty" | LA10053-9 "With some difficulty" |
| 2 | **LA13951-1** | "A lot of difficulty" | LA10054-7 "With much difficulty" |
| 1 | **LA13952-9** | "Can't do because of health" | LA10055-4 "Unable to do" |

**Note**: The LA100xx codes are valid LOINC codes but belong to a different domain (nursing assessments). They must be replaced with the LA139xx codes above.

### Alternative Scale (Able to do prefix)

| Code | Display |
|------|---------|
| LA18337-8 | "Able to do without any difficulty" |
| LA18338-6 | "Able to do with little difficulty" |
| LA18339-4 | "Able to do with moderate difficulty" |
| LA18340-2 | "Able to do with much difficulty" |

### PHQ-9 Frequency Scale (Confirmed Valid)

| Code | Display (English) | German Translation Needed |
|------|-------------------|---------------------------|
| LA6568-5 | "Not at all" | "Überhaupt nicht" |
| LA6569-3 | "Several days" | "An einzelnen Tagen" |
| LA6570-1 | "More than half the days" | "An mehr als der Hälfte der Tage" |
| LA6571-9 | "Nearly every day" | "Beinahe jeden Tag" |

**Note**: Use English display text with German translations via translation extension to avoid validation errors.

---

## 2. Display Name Mismatches (104 errors)

### 2.1 German vs English Translations (Major Issue)

These errors occur when German display text is used but the validator expects English:

| Count | Used Display (German/Custom) | Expected English | LOINC Code |
|-------|------------------------------|------------------|------------|
| 18 | "Beinahe jeden Tag" | "Nearly every day" | LA6571-9 |
| 2 | "Sehr stark erschwert" | "Extremely difficult" | LA6574-3 |
| 4 | "Never" | "Not at all" | LA6568-5 |

### 2.2 Wrong LOINC Codes Used (Semantic Mismatch)

**CRITICAL**: These codes are valid but used for completely wrong purposes!

| Count | Used Display | Expected Display (LOINC Semantic) | Code |
|-------|--------------|-----------------------------------|------|
| 4 | "Without any difficulty" | "Other turning surface(s) not intact" | LA10051-3 |
| 4 | "With some difficulty" | "Outpatient Services" | LA10053-9 |
| 4 | "With much difficulty" | "Paid Assistance" | LA10054-7 |
| 4 | "With a little difficulty" | "Other unpaid family member or friend" | LA10052-1 |
| 4 | "Unable to do" | "Partial/moderate assistance - Helper does less than half..." | LA10055-4 |
| 4 | "Sometimes (Two or three times)" | "Sometimes" | LA10082-8 |
| 4 | "Rarely (Once)" | "Rarely" | LA10066-1 |
| 4 | "Often (About once a day)" | "Often" | LA10044-8 |
| 1 | "Poor" | "Continent (no documented incontinence)" | LA9956-9 |

**Root Cause**: The LA100xx codes are being used incorrectly - they belong to different LOINC answer lists (likely nursing assessment scales), not PROMIS difficulty scales.

### 2.3 PROMIS Item Text Mismatches

Display names are slightly different from official LOINC long common names:

| Count | Used Text | Expected Text | Code |
|-------|-----------|---------------|------|
| 1 | "In the past 7 days - My worries overwhelmed me" | "I felt worried in past 7 days [PROMIS]" | 61938-7 |
| 1 | "In the past 7 days - I felt fearful" | "I had a racing or pounding heart in past 7 days [PROMIS]" | 61930-4 |
| 1 | "In the past 7 days - How run-down did you feel on average?" | "How fatigued were you on the day you felt most fatigued in past 7 days [PROMIS]" | 61863-7 |

**Note**: Code 61930-4 appears to be mapped to wrong question entirely!

### 2.4 PROMIS-29 Score Display Names

Minor formatting differences in score names:

| Count | Used Display | Expected Display | Code |
|-------|--------------|------------------|------|
| 3 | "PROMIS physical function - version 2.0 Tscore" | "PROMIS physical function - version 2.0 T-score" | 91721-1 |
| 1 | "PROMIS-29 Sleep Disturbance, raw score" | "PROMIS-29 Sleep disturbance score" | 71956-7 |
| 1 | "PROMIS-29 Satisfaction with Participation in Social Roles, raw score" | "PROMIS-29 Satisfaction with participation in social roles score" | 71958-3 |
| 1 | "PROMIS-29 Physical Function, raw score" | "PROMIS-29 Physical function score" | 71960-9 |
| 1 | "PROMIS-29 Pain Interference, raw score" | "PROMIS-29 Pain interference score" | 71962-5 |
| 1 | "PROMIS-29 Fatigue, raw score" | "PROMIS-29 Fatigue score" | 71964-1 |
| 1 | "PROMIS-29 Depression, raw score" | "PROMIS-29 Depression score" | 71966-6 |
| 1 | "PROMIS-29 Anxiety, raw score" | "PROMIS-29 Anxiety score" | 71968-2 |

### 2.5 EQ-5D-5L SNOMED Display

| Count | Used Display | Expected Display | Code |
|-------|--------------|------------------|------|
| 4 | "EuroQoL five dimension five level questionnaire (assessment scale)" | "EuroQoL five dimension five level questionnaire" | 73041000052103 |

---

## 3. Relationship Analysis: Unknown Codes & Display Mismatches

### Pattern Identified

The LA100xx codes being used incorrectly (LA10051-3, LA10052-1, LA10053-9, LA10054-7, LA10055-4) and the unknown LA138xx codes suggest:

1. **Wrong Answer List**: The PROMIS Physical Function scale is using LOINC codes from a completely different answer list (possibly nursing assessments)

2. **Missing Answer List**: The correct PROMIS difficulty answer codes may be the LA138xx series, but these don't exist in LOINC 2.80

**Likely Affected Resource**: PROMIS-29 Physical Function domain questionnaire

### Recommended Actions

1. **Immediate**: Look up correct PROMIS answer list codes in LOINC
   - Search for "PROMIS" answer lists
   - Find the correct "Without any difficulty" to "Unable to do" scale

2. **Validate LOINC Codes**:
   - Use terminology server to verify all LA codes
   - Check LOINC 2.80 release notes for any deprecated codes

3. **Consider MII-Controlled Terminology**:
   - Per CLAUDE.md, MII-controlled ValueSets are preferred for reliable scoring
   - Unknown LOINC codes could be replaced with MII-defined codes with proper ordinalValue extensions

---

## Files Likely Affected

Based on error patterns:

- `input/fsh/definitions/promis-29/mii-qst-pro-promis-29.fsh` - Physical function answers, score displays
- `input/fsh/definitions/eq-5d/` - SNOMED display
- PHQ-9 example bundle - German "Beinahe jeden Tag" translations
- PROMIS Cognitive Function - LA138xx answer codes

---

## Next Steps

1. [ ] Verify correct LOINC answer list for PROMIS difficulty scale (Without difficulty → Unable to do)
2. [ ] Look up valid replacements for LA138xx codes or switch to MII CodeSystem
3. [ ] Update PROMIS-29 score display names to match LOINC exactly
4. [ ] Fix code 61930-4 mapping (appears to be wrong question)
5. [ ] Address German display text strategy - either use English or add translation extensions
6. [ ] Fix EQ-5D-5L SNOMED display to remove "(assessment scale)"
