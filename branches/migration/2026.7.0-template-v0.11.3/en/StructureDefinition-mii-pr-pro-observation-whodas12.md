# MII PR PRO Observation WHODAS 2.0 12-Item - MII IG PRO v2026.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR PRO Observation WHODAS 2.0 12-Item**

## Resource Profile: MII PR PRO Observation WHODAS 2.0 12-Item ( Experimental ) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-whodas12 | *Version*:2026.7.0 |
| Active as of 2026-09-03 | *Computable Name*:MII_PR_PRO_Observation_WHODAS_12 |

 
Profile for WHODAS 2.0 12-item simple sum (disability) score Observations (0-48; higher scores indicate greater disability). No suitable LOINC code exists; SNOMED CT and the MII score catalogue are used. 

**Usages:**

* Examples for this Profile: [Observation/mii-exa-pro-whodas12-score-simple-sum](Observation-mii-exa-pro-whodas12-score-simple-sum.md)
* CapabilityStatements using this Profile: [MII CPS PRO CapabilityStatement](CapabilityStatement-mii-cps-pro-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.pros|current/StructureDefinition/StructureDefinition-mii-pr-pro-observation-whodas12.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-pro-observation-whodas12.csv), [Excel](../StructureDefinition-mii-pr-pro-observation-whodas12.xlsx), [Schematron](../StructureDefinition-mii-pr-pro-observation-whodas12.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-pro-observation-whodas12",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-whodas12",
  "version" : "2026.7.0",
  "name" : "MII_PR_PRO_Observation_WHODAS_12",
  "title" : "MII PR PRO Observation WHODAS 2.0 12-Item",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-09-03T20:03:19+00:00",
  "publisher" : "Medizininformatik-Initiative",
  "contact" : [{
    "name" : "Medizininformatik-Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    },
    {
      "system" : "email",
      "value" : "office@medizininformatik-initiative.de"
    }]
  }],
  "description" : "Profile for WHODAS 2.0 12-item simple sum (disability) score Observations (0-48; higher scores indicate greater disability). No suitable LOINC code exists; SNOMED CT and the MII score catalogue are used.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.extension:instantiatesCanonical",
      "path" : "Observation.extension",
      "sliceName" : "instantiatesCanonical"
    },
    {
      "id" : "Observation.extension:instantiatesCanonical.value[x]",
      "path" : "Observation.extension.value[x]",
      "patternCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-whodas12-simple-sum"
    },
    {
      "id" : "Observation.code.coding",
      "path" : "Observation.code.coding",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.value[x].value",
      "path" : "Observation.value[x].value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x].unit",
      "path" : "Observation.value[x].unit",
      "fixedString" : "{score}"
    },
    {
      "id" : "Observation.value[x].system",
      "path" : "Observation.value[x].system",
      "fixedUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.value[x].code",
      "path" : "Observation.value[x].code",
      "fixedCode" : "{score}"
    },
    {
      "id" : "Observation.method.text",
      "path" : "Observation.method.text",
      "patternString" : "WHODAS 2.0 12-item simple sum scoring (0-48)"
    }]
  }
}

```
