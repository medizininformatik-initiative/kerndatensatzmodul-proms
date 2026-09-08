// ============================================================================
// Version Management RuleSets for MII PRO Module
// ============================================================================
// Central location for all version-related RuleSets.
// Update the version string here when preparing a new release.
//
// Documentation: See CLAUDE.md section "Version Management & Profile Conformance"
//
// Usage by Resource Type:
//   - Questionnaire instances:     * insert Version
//   - Profile/CS/VS/Extension:     * insert PR_CS_VS_Version
//   - ObservationDefinition:       * insert ObsDefVersion
//   - All instances (meta.profile): * insert MetaProfile(canonical-url)
// ============================================================================

// For Questionnaire instances (native FHIR R4 element)
RuleSet: Version
* version = "2027.0.0-ballot.rc3"
// SDC 4.0 sdc-2: a version REQUIRES a versionAlgorithm. MII CalVer
// (YYYY.n.n[-label]) orders naturally; "natural" is the honest declaration.
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm"
* extension[=].valueCoding = http://hl7.org/fhir/version-algorithm#natural "Natural"

// For Profile, CodeSystem, ValueSet, Extension definitions (caret notation)
RuleSet: PR_CS_VS_Version
* ^version = "2027.0.0-ballot.rc3"

// For ObservationDefinition instances (R4 backport of R5 version element)
// ObservationDefinition lacks native version in R4; added in R5
// See: https://hl7.org/fhir/extensions/StructureDefinition-artifact-version.html
RuleSet: ObsDefVersion
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-version"
* extension[=].valueString = "2027.0.0-ballot.rc3"

// For all instances to declare profile conformance with versioned canonical
// Generates: meta.profile = "{canonical}|2027.0.0-ballot.rc3"
RuleSet: MetaProfile(canonical)
* meta.profile[+] = "{canonical}|2027.0.0-ballot.rc3"

// QuestionnaireResponse.questionnaire as a VERSIONED canonical: the response
// records which questionnaire version was answered. Same single-point-of-
// maintenance idea as MetaProfile — the version lives only in this file.
RuleSet: QuestionnaireRef(canonical)
* questionnaire = "{canonical}|2027.0.0-ballot.rc3"

// Plain-path variant for INSTANCES of definitional types (e.g. the LOINC
// supplement, an Instance of CodeSystem): caret rules are rejected on
// Instances ("CaretValueRule cannot be applied to entity of type Instance").
RuleSet: InstanceVersion
* version = "2027.0.0-ballot.rc3"
