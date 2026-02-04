Alias: $exp = http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation

RuleSet: SupportResource (resource, expectation)
* rest.resource[+].type = #{resource}
* rest.resource[=].extension[0].url = $exp
* rest.resource[=].extension[0].valueCode = {expectation}

RuleSet: Profile (profile)
* rest.resource[=].profile[+] = "{profile}"
// Note: capabilitystatement-expectation extension not allowed on .profile element

RuleSet: SupportProfile (profile, expectation)
// This rule set must follow a SupportResource rule set, and applies to that resource.
* rest.resource[=].supportedProfile[+] = "{profile}"
* rest.resource[=].supportedProfile[=].extension[0].url = $exp
* rest.resource[=].supportedProfile[=].extension[0].valueCode = {expectation}

RuleSet: SupportInteraction (interaction, expectation)
// This rule set must follow a SupportResource rule set, and applies to that resource.
* rest.resource[=].interaction[+].code = {interaction}
* rest.resource[=].interaction[=].extension[0].url = $exp
* rest.resource[=].interaction[=].extension[0].valueCode = {expectation}

RuleSet: SupportSearchParam (name, canonical, type, expectation)
// This rule set must follow a SupportResource rule set, and applies to that resource.
* rest.resource[=].searchParam[+].name = "{name}"
* rest.resource[=].searchParam[=].definition = "{canonical}"
* rest.resource[=].searchParam[=].type = {type}
* rest.resource[=].searchParam[=].extension[0].url = $exp
* rest.resource[=].searchParam[=].extension[0].valueCode = {expectation}

Instance: mii-cps-pro-capabilitystatement
InstanceOf: CapabilityStatement
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CapabilityStatement/mii-cps-pro-capabilitystatement"
* insert Version
* name = "MII_CPS_PRO_CapabilityStatement"
* title = "MII CPS PRO CapabilityStatement"
* status = #active
* experimental = false
* date = "2025-05-24"
* publisher = "Medizininformatik Initiative"
* contact.telecom.system = #url
* contact.telecom.value = "https://www.medizininformatik-initiative.de"
* description = "Das vorliegende CapabilityStatement beschreibt alle verpflichtenden Interaktionen die ein konformes System unterstützen muss, um das Modul PRO der Medizininformatik Initiative zu implementieren."
* jurisdiction = urn:iso:std:iso:3166#DE "Germany"
* kind = #requirements
* fhirVersion = #4.0.1
* format[+] = #xml
* format[+] = #json
* rest.mode = #server

// ============================================
// Questionnaire requirements
// ============================================
* insert SupportResource(Questionnaire, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/Questionnaire)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)

// Universal Resource SearchParameters
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)

// Questionnaire Core SearchParameters
* insert SupportSearchParam(url, http://hl7.org/fhir/SearchParameter/Questionnaire-url, #uri, #SHALL)
* insert SupportSearchParam(version, http://hl7.org/fhir/SearchParameter/Questionnaire-version, #token, #SHALL)
* insert SupportSearchParam(status, http://hl7.org/fhir/SearchParameter/Questionnaire-status, #token, #SHALL)
* insert SupportSearchParam(title, http://hl7.org/fhir/SearchParameter/Questionnaire-title, #string, #SHOULD)
* insert SupportSearchParam(name, http://hl7.org/fhir/SearchParameter/Questionnaire-name, #string, #SHOULD)
* insert SupportSearchParam(code, http://hl7.org/fhir/SearchParameter/Questionnaire-code, #token, #SHALL)
* insert SupportSearchParam(identifier, http://hl7.org/fhir/SearchParameter/Questionnaire-identifier, #token, #SHOULD)
* insert SupportSearchParam(date, http://hl7.org/fhir/SearchParameter/Questionnaire-date, #date, #SHOULD)
* insert SupportSearchParam(publisher, http://hl7.org/fhir/SearchParameter/Questionnaire-publisher, #string, #SHOULD)
* insert SupportSearchParam(subject-type, http://hl7.org/fhir/SearchParameter/Questionnaire-subject-type, #token, #SHOULD)

// PRO-Specific Questionnaire SearchParameters
* insert SupportSearchParam(capabilities, https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/SearchParameter/mii-sp-pro-questionnaire-capabilities, #token, #SHALL)

// ============================================
// QuestionnaireResponse requirements
// ============================================
* insert SupportResource(QuestionnaireResponse, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportInteraction(#create, #SHOULD)
* insert SupportInteraction(#update, #SHOULD)

// Universal Resource SearchParameters
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)

// QuestionnaireResponse Core SearchParameters
* insert SupportSearchParam(questionnaire, http://hl7.org/fhir/SearchParameter/QuestionnaireResponse-questionnaire, #reference, #SHALL)
* insert SupportSearchParam(status, http://hl7.org/fhir/SearchParameter/QuestionnaireResponse-status, #token, #SHALL)
* insert SupportSearchParam(subject, http://hl7.org/fhir/SearchParameter/QuestionnaireResponse-subject, #reference, #SHALL)
* insert SupportSearchParam(patient, http://hl7.org/fhir/SearchParameter/QuestionnaireResponse-patient, #reference, #SHALL)
* insert SupportSearchParam(authored, http://hl7.org/fhir/SearchParameter/QuestionnaireResponse-authored, #date, #SHALL)
* insert SupportSearchParam(author, http://hl7.org/fhir/SearchParameter/QuestionnaireResponse-author, #reference, #SHOULD)
* insert SupportSearchParam(identifier, http://hl7.org/fhir/SearchParameter/QuestionnaireResponse-identifier, #token, #SHOULD)
* insert SupportSearchParam(based-on, http://hl7.org/fhir/SearchParameter/QuestionnaireResponse-based-on, #reference, #SHOULD)
* insert SupportSearchParam(encounter, http://hl7.org/fhir/SearchParameter/QuestionnaireResponse-encounter, #reference, #SHOULD)
* insert SupportSearchParam(source, http://hl7.org/fhir/SearchParameter/QuestionnaireResponse-source, #reference, #SHOULD)

// ============================================
// Observation requirements (Score Instances)
// ============================================
* insert SupportResource(Observation, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/Observation)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance, #SHALL)

// Instrument-specific Score Profiles
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-bdi-ii, #SHOULD)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-eq5d5l-index, #SHOULD)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-eq5d5l-vas, #SHOULD)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-eq5d5l-profile, #SHOULD)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-promis-29-physical-function-tscore, #SHOULD)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-promis-29-anxiety-tscore, #SHOULD)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-promis-29-depression-tscore, #SHOULD)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-promis-29-fatigue-tscore, #SHOULD)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-promis-29-sleep-disturbance-tscore, #SHOULD)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-promis-29-social-function-tscore, #SHOULD)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-promis-29-pain-interference-tscore, #SHOULD)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-promis-29-pain-intensity, #SHOULD)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-promis-depression-sf4a-raw-score, #SHOULD)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-depression-t-score, #SHOULD)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-promis-cognitive-function-sf4a-raw-score, #SHOULD)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-promis-cognitive-function-sf4a-tscore, #SHOULD)

* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportInteraction(#create, #SHOULD)

// Universal Resource SearchParameters
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)

// Observation Core SearchParameters
* insert SupportSearchParam(status, http://hl7.org/fhir/SearchParameter/Observation-status, #token, #SHALL)
* insert SupportSearchParam(category, http://hl7.org/fhir/SearchParameter/Observation-category, #token, #SHALL)
* insert SupportSearchParam(code, http://hl7.org/fhir/SearchParameter/clinical-code, #token, #SHALL)
* insert SupportSearchParam(subject, http://hl7.org/fhir/SearchParameter/Observation-subject, #reference, #SHALL)
* insert SupportSearchParam(patient, http://hl7.org/fhir/SearchParameter/clinical-patient, #reference, #SHALL)
* insert SupportSearchParam(encounter, http://hl7.org/fhir/SearchParameter/clinical-encounter, #reference, #SHOULD)
* insert SupportSearchParam(date, http://hl7.org/fhir/SearchParameter/clinical-date, #date, #SHALL)
* insert SupportSearchParam(identifier, http://hl7.org/fhir/SearchParameter/clinical-identifier, #token, #SHOULD)
* insert SupportSearchParam(performer, http://hl7.org/fhir/SearchParameter/Observation-performer, #reference, #SHOULD)
* insert SupportSearchParam(value-quantity, http://hl7.org/fhir/SearchParameter/Observation-value-quantity, #quantity, #SHALL)
* insert SupportSearchParam(method, http://hl7.org/fhir/SearchParameter/Observation-method, #token, #SHOULD)
* insert SupportSearchParam(interpretation, http://hl7.org/fhir/SearchParameter/Observation-interpretation, #token, #SHOULD)
* insert SupportSearchParam(derived-from, http://hl7.org/fhir/SearchParameter/Observation-derived-from, #reference, #SHALL)
* insert SupportSearchParam(focus, http://hl7.org/fhir/SearchParameter/Observation-focus, #reference, #SHOULD)
* insert SupportSearchParam(based-on, http://hl7.org/fhir/SearchParameter/Observation-based-on, #reference, #SHOULD)

// ============================================
// CodeSystem requirements
// ============================================
* insert SupportResource(CodeSystem, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/CodeSystem)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)

// Universal Resource SearchParameters
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)

// CodeSystem Core SearchParameters
* insert SupportSearchParam(url, http://hl7.org/fhir/SearchParameter/CodeSystem-url, #uri, #SHALL)
* insert SupportSearchParam(version, http://hl7.org/fhir/SearchParameter/CodeSystem-version, #token, #SHALL)
* insert SupportSearchParam(status, http://hl7.org/fhir/SearchParameter/CodeSystem-status, #token, #SHALL)
* insert SupportSearchParam(name, http://hl7.org/fhir/SearchParameter/CodeSystem-name, #string, #SHOULD)
* insert SupportSearchParam(title, http://hl7.org/fhir/SearchParameter/CodeSystem-title, #string, #SHOULD)
* insert SupportSearchParam(date, http://hl7.org/fhir/SearchParameter/CodeSystem-date, #date, #SHOULD)
* insert SupportSearchParam(publisher, http://hl7.org/fhir/SearchParameter/CodeSystem-publisher, #string, #SHOULD)

// ============================================
// ValueSet requirements
// ============================================
* insert SupportResource(ValueSet, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/ValueSet)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)

// Universal Resource SearchParameters
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)

// ValueSet Core SearchParameters
* insert SupportSearchParam(url, http://hl7.org/fhir/SearchParameter/ValueSet-url, #uri, #SHALL)
* insert SupportSearchParam(version, http://hl7.org/fhir/SearchParameter/ValueSet-version, #token, #SHALL)
* insert SupportSearchParam(status, http://hl7.org/fhir/SearchParameter/ValueSet-status, #token, #SHALL)
* insert SupportSearchParam(name, http://hl7.org/fhir/SearchParameter/ValueSet-name, #string, #SHOULD)
* insert SupportSearchParam(title, http://hl7.org/fhir/SearchParameter/ValueSet-title, #string, #SHOULD)
* insert SupportSearchParam(date, http://hl7.org/fhir/SearchParameter/ValueSet-date, #date, #SHOULD)
* insert SupportSearchParam(publisher, http://hl7.org/fhir/SearchParameter/ValueSet-publisher, #string, #SHOULD)

// ValueSet Operations
* rest.resource[=].operation[+].name = "expand"
* rest.resource[=].operation[=].definition = "http://hl7.org/fhir/OperationDefinition/ValueSet-expand"
* rest.resource[=].operation[=].extension[0].url = $exp
* rest.resource[=].operation[=].extension[0].valueCode = #SHOULD

* rest.resource[=].operation[+].name = "validate-code"
* rest.resource[=].operation[=].definition = "http://hl7.org/fhir/OperationDefinition/ValueSet-validate-code"
* rest.resource[=].operation[=].extension[0].url = $exp
* rest.resource[=].operation[=].extension[0].valueCode = #MAY

// ============================================
// ObservationDefinition requirements (Score Blueprints)
// ============================================
* insert SupportResource(ObservationDefinition, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/ObservationDefinition)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)

// Universal Resource SearchParameters
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)

// PRO-Specific ObservationDefinition SearchParameters
// Note: ObservationDefinition has NO core SearchParameters in FHIR R4
* insert SupportSearchParam(code, https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/SearchParameter/mii-sp-pro-observationdefinition-code, #token, #SHALL)
* insert SupportSearchParam(permitted-datatype, https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/SearchParameter/mii-sp-pro-observationdefinition-permitted-datatype, #token, #SHOULD)
* insert SupportSearchParam(preferred-report-name, https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/SearchParameter/mii-sp-pro-observationdefinition-preferred-report-name, #string, #SHOULD)
* insert SupportSearchParam(interval-category, https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/SearchParameter/mii-sp-pro-observationdefinition-interval-category, #token, #SHOULD)
* insert SupportSearchParam(unit, https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/SearchParameter/mii-sp-pro-observationdefinition-unit, #token, #SHOULD)
* insert SupportSearchParam(health-correlation, https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/SearchParameter/mii-sp-pro-observationdefinition-health-correlation, #token, #SHOULD)
