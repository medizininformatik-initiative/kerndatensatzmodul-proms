# MII PR PRO PROMIS Cognitive Function SF 4a T-Score - MII IG PRO v2026.3.0

## Ressourcenprofil: MII PR PRO PROMIS Cognitive Function SF 4a T-Score ( Experimentell ) 

 
Profile for PROMIS Cognitive Function Short Form 4a T-Score observations 

**Usages:**

* CapabilityStatements using this Profile: [MII CPS PRO CapabilityStatement](CapabilityStatement-mii-cps-pro-capabilitystatement.md)
* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/de.medizininformatikinitiative.kerndatensatz.pros|current/StructureDefinition/mii-pr-pro-promis-cognitive-function-sf4a-tscore)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_PRO_Score_Instance](StructureDefinition-mii-pr-pro-score-instance.md) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_PRO_Score_Instance](StructureDefinition-mii-pr-pro-score-instance.md) 

** Summary **

Mandatory: 0 element(1 nested mandatory element)
 Must-Support: 1 element
 Fixed: 3 elements

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [MII_PR_PRO_Score_Instance](StructureDefinition-mii-pr-pro-score-instance.md) 

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_PRO_Score_Instance](StructureDefinition-mii-pr-pro-score-instance.md) 

** Summary **

Mandatory: 0 element(1 nested mandatory element)
 Must-Support: 1 element
 Fixed: 3 elements

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-pro-promis-cognitive-function-sf4a-tscore.csv), [Excel](../StructureDefinition-mii-pr-pro-promis-cognitive-function-sf4a-tscore.xlsx), [Schematron](../StructureDefinition-mii-pr-pro-promis-cognitive-function-sf4a-tscore.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-pro-promis-cognitive-function-sf4a-tscore",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-promis-cognitive-function-sf4a-tscore",
  "version" : "2026.3.0",
  "name" : "MII_PR_PRO_PROMIS_Cognitive_Function_SF4a_TScore",
  "title" : "MII PR PRO PROMIS Cognitive Function SF 4a T-Score",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-05-06T16:39:55+00:00",
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
  "description" : "Profile for PROMIS Cognitive Function Short Form 4a T-Score observations",
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
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
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
      "patternCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-cognitive-function-sf4a-tscore"
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "81538-1",
          "display" : "PROMIS cognitive function - version 2.0 T-score"
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
      "id" : "Observation.method.text",
      "path" : "Observation.method.text",
      "patternString" : "PROMIS Cognitive Function SF 4a"
    }]
  }
}

```
