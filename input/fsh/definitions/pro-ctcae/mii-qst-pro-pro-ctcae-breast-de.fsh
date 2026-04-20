// PRO-CTCAE German Breast Cancer Subset Questionnaire (21 symptoms)
// Source: BMC Cancer 2023 — German outpatient cancer center validation study
// Scoring: CQL Library via cqf-library + cqf-expression (SDC STU3)
//
// Architecture:
//   - cqf-library references mii-lib-pro-ctcae CQL Library
//   - Each symptom group has items for its attributes (frq/sev/int)
//   - Composite grade per symptom via cqf-expression → CQL CompositeGrade()
//   - Average Composite Score (ACS) via cqf-expression → CQL AverageCompositeScore()
//   - Server-side scoring: Library/$evaluate (not $extract or $populate)
//
// TODO: Identify exact 21 symptoms from BMC Cancer study
// TODO: Add German item texts from NCI-authorized translation
// TODO: Implement after CQL Library is ready (depends on kerndatensatzmodul-proms-2c3)

Instance: mii-qst-pro-pro-ctcae-breast-de
InstanceOf: MII_PR_PRO_Questionnaire
Usage: #definition
* insert Version
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire)
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-pro-ctcae-breast-de"
* name = "MII_QST_PRO_PRO_CTCAE_Breast_DE"
* title = "PRO-CTCAE German Breast Cancer Subset (21 Symptoms)"
* code[+] = $mii-cs-pro-questionnaire-catalogue#proctcae-breast-de "PRO-CTCAE German Breast Cancer Subset"
* status = #draft
* experimental = true
* description = "Patient-Reported Outcomes version of the Common Terminology Criteria for Adverse Events — German breast cancer subset with 21 validated symptoms. Scoring via CQL Library (CompositeGrade per symptom + Average Composite Score)."

// SDC Capabilities
// * extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-performerType"
// * extension[=].valueCode = #Patient

// CQL Library reference (SDC STU3 cqf-library)
// * extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-library"
// * extension[=].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Library/mii-lib-pro-ctcae"

// Observation-based extraction
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
* extension[=].valueBoolean = true

// TODO: 21 symptom groups, each with:
//   - Items for applicable attributes (frq/sev/int) referencing ValueSets
//   - Composite grade item with cqf-expression → "CompositeGrade(%frq, %sev, %int)"
//   - German translations via translation extension
//
// TODO: ACS (Average Composite Score) item at end
//   - cqf-expression → "AverageCompositeScore()"
