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
* version = "2026.5.1"

// For Profile, CodeSystem, ValueSet, Extension definitions (caret notation)
RuleSet: PR_CS_VS_Version
* ^version = "2026.5.1"

// For ObservationDefinition instances (R4 backport of R5 version element)
// ObservationDefinition lacks native version in R4; added in R5
// See: https://hl7.org/fhir/extensions/StructureDefinition-artifact-version.html
RuleSet: ObsDefVersion
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-version"
* extension[=].valueString = "2026.5.1"

// For all instances to declare profile conformance with versioned canonical
// Generates: meta.profile = "{canonical}|2026.5.1"
RuleSet: MetaProfile(canonical)
* meta.profile[+] = "{canonical}|2026.5.1"
