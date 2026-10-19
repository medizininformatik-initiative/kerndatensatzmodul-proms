Alias: $sct = http://snomed.info/sct
Alias: $loinc = http://loinc.org
Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $v3-ActCode = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: $v3-ActReason = http://terminology.hl7.org/CodeSystem/v3-ActReason
Alias: $icd10gm = http://fhir.de/CodeSystem/bfarm/icd-10-gm
Alias: $pdt = http://terminology.hl7.org/CodeSystem/plan-definition-type
Alias: $resource-types = http://hl7.org/fhir/resource-types
Alias: $PHQ9 = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-9
Alias: $GAD7 = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-gad-7
Alias: $Aktionstyp = https://pcor-mii.de/fhir/CodeSystem/pcor-cs-protokoll-aktionstyp
Alias: $Visite = https://pcor-mii.de/fhir/CodeSystem/pcor-cs-an-visite
Alias: $Trigger = https://pcor-mii.de/fhir/CodeSystem/pcor-cs-trigger-ereignis
Alias: $Protokoll = https://pcor-mii.de/fhir/PlanDefinition/pcor-mii-an-studienprotokoll

RuleSet: Testdaten
* meta.security = $v3-ActReason#HTEST "test health data"
