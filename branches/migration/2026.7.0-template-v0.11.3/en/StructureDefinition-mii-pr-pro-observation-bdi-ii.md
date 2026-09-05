# MII PR PRO Observation BDI-II - MII IG PRO v2026.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR PRO Observation BDI-II**

## Resource Profile: MII PR PRO Observation BDI-II ( Experimental ) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-bdi-ii | *Version*:2026.7.0 |
| Active as of 2026-09-05 | *Computable Name*:MII_PR_PRO_Observation_BDI_II |

 
Profile for Beck Depression Inventory II (BDI-II) Total Score Observations 

**Usages:**

* CapabilityStatements using this Profile: [MII CPS PRO CapabilityStatement](CapabilityStatement-mii-cps-pro-capabilitystatement.md)
* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.pros|current/StructureDefinition/StructureDefinition-mii-pr-pro-observation-bdi-ii.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-pro-observation-bdi-ii.csv), [Excel](../StructureDefinition-mii-pr-pro-observation-bdi-ii.xlsx), [Schematron](../StructureDefinition-mii-pr-pro-observation-bdi-ii.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-pro-observation-bdi-ii",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-bdi-ii",
  "version" : "2026.7.0",
  "name" : "MII_PR_PRO_Observation_BDI_II",
  "title" : "MII PR PRO Observation BDI-II",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-09-05T06:23:19+00:00",
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
  "description" : "Profile for Beck Depression Inventory II (BDI-II) Total Score Observations",
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
      "patternCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-bdi-ii"
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "89209-1",
          "display" : "Beck Depression Inventory II total score [BDI]"
        }]
      }
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
      "id" : "Observation.method.coding",
      "path" : "Observation.method.coding",
      "patternCoding" : {
        "system" : "http://loinc.org",
        "code" : "89209-1",
        "display" : "Beck Depression Inventory II total score [BDI]"
      }
    },
    {
      "id" : "Observation.method.text",
      "path" : "Observation.method.text",
      "patternString" : "Beck Depression Inventory II (BDI-II)"
    }]
  }
}

```
