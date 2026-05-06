# Changelog - MII IG PRO v2026.3.0

## Changelog

 
This page includes translations from the original source language in which the guide was authored. Information on these translations and instructions on how to provide feedback on the translations can be found [here](translationinfo.md). 

This page documents the changes between versions of the MII PRO module.

**Version: 2026.2.0** (unreleased)

Date: –

Dependencies and Tooling:

* Changed: Dependency de.gematik.isik updated from 5.0.0 to 5.1.1 (consistent with Imaging and Laboratory modules)
* Changed: Dependency hl7.fhir.uv.extensions.r4 updated from 5.1.0 to 5.2.0 (consistent with Imaging and Laboratory modules)

ObservationDefinition:

* Fixed: Depression T-Score ObsDef – Population information moved from `qualifiedInterval.context.coding` to `qualifiedInterval.appliesTo` (`context` describes the interval category, not the target population)

EORTC QLQ-C30 ValueSet Architecture:

* Changed: EORTC QLQ-C30 ValueSets converted from contained to standalone external ValueSets (Variant A)
* Added: Post-SUSHI ValueSet expansion script for LHC Forms rendering compatibility
* Fixed: Display texts added to EORTC QLQ-C30 ValueSet concepts

**Version: 2026.1.0** (unreleased)

Date: –

PRO Instruments:

* Added: DASS-21 (Depression Anxiety Stress Scales) – full implementation with Questionnaire, terminology (CodeSystem, ValueSets), scoring, and examples
* Added: DASS-21 IG documentation page

Quality Assurance:

* Fixed: ObsDef titles deduplicated, IG page score presentation improved
* Fixed: Broken `` syntax replaced with Markdown blockquotes (DASS-21, PHQ-9 IG pages)
* Fixed: CodeSystem/ValueSet converted to short IDs

**Version: 2026.0.1**

Date: 26.01.2026

Bugfix release with PROMIS-29 additions and canonical URL correction.

FHIR Resources:

* Added: PROMIS-29 German variant and comprehensive examples
* Fixed: PROMIS-29 QuestionnaireResponse validation errors resolved
* Fixed: Canonical URLs standardized to HTTPS (HTTP to HTTPS)
* Fixed: packageId corrected (kerndatensatz.pro to kerndatensatz.pros)

IG Documentation:

* Changed: PROMIS IG pages reorganized and tree rendering fixed
* Added: Individual profile pages for abstract profiles
* Added: SDC STU3 spec links to Questionnaire and QuestionnaireResponse profile pages

**Version: 2026.0.0**

Date: 12.01.2026

First stable release of the MII PRO module for production use.

FHIR Resources and Profiles:

* Added: SearchParameters for Questionnaire, QuestionnaireResponse, Observation (search by code, subject, patient)
* Added: CapabilityStatement documenting supported FHIR operations of the PRO module
* Fixed: meta.profile added to all Observation example instances (FHIR conformance)

Version Management and Metadata:

* Added: MetaProfile RuleSet for consistent profile conformance with versioned canonicals (format: `{canonical}|{version}`)
* Added: ObsDefVersion RuleSet for R5 backport of the artifact-version extension in ObservationDefinition (R4 compatibility)
* Changed: Version RuleSets extracted to central file (`input/fsh/rulesets/version.fsh`) for easier release management

Dependencies and Tooling:

* Changed: Dependency to de.medizininformatikinitiative.kerndatensatz.meta updated to 2026.0.0
* Added: package.bake.yaml for Firely Bake packaging workflow
* Changed: package.json name corrected to `de.medizininformatikinitiative.kerndatensatz.pros`

Quality Assurance and Validation:

* Added: EORTC QLQ-C30 validation suppressions and QA documentation
* Added: Full maintenance of the Questionnaire and Score catalog
* Changed: CI/CD with inline Java validation, Gradle caching, and timing information for faster builds

Developer Experience:

* Added: Claude Code configuration with build, release, and IG export skills
* Added: Centralized `/build-package` command for FHIR package building
* Added: `/mii-testdata-contribution` skill for test data repository
* Added: `/fix-ig-export-links` skill for Simplifier IG export link repair

**Version: 2026.0.0-ballot**

Initial balloting version focusing on SDC-based PRO collection and score calculation.

PRO Instruments:

* PHQ-9 (Patient Health Questionnaire-9) with full score calculation (raw score and T-score)
* EQ-5D-5L (EuroQol 5-Dimension 5-Level) with index, VAS, and profile scores
* PROMIS-29 Profile v2.1 with all 7 domains (Physical Function, Anxiety, Depression, Fatigue, Sleep Disturbance, Social Function, Pain) and automatic score calculation
* PROMIS Cognitive Function SF4a
* BDI-II (Beck Depression Inventory II) as reference implementation
* EORTC QLQ-C30 (quality of life in cancer patients) with 15 subscales

FHIR Profiles and Extensions:

* MII_PR_PRO_Questionnaire: SDC-based Questionnaire profile with calculated expressions and conditional display
* MII_PR_PRO_QuestionnaireResponse: Response capture profile with SDC extraction capabilities
* MII_PR_PRO_Score_Blueprint: Template for score Observations with ObservationDefinition reference
* MII_PR_PRO_Score_Instance: Instance profile for calculated scores with derivedFrom linkage
* EX_MII_PRO_Questionnaire_Capabilities: Extension for documenting Questionnaire capabilities (displayable, collectable, calculatable, extractable)

Terminology Strategy:

* MII-controlled CodeSystems and ValueSets for reliable score calculation with ordinalValue extensions
* German translations for all Questionnaire items via translation extensions
* ordinalValue extensions (SDC STU3) for numeric scoring weights in answer options
* FHIRPath expressions use `.ordinal()` for weight-based calculations

Technical Foundation:

* FHIR R4 (4.0.1) with SDC 3.0.0 (Structured Data Capture)
* Dependency to de.medizininformatikinitiative.kerndatensatz.meta 2026.0.0
* Dependency to de.gematik.isik 5.0.0 for German interoperability

