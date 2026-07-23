# MII PR PRO Observation EQ-5D-5L VAS - MII IG PRO v2026.4.1

## Ressourcenprofil: MII PR PRO Observation EQ-5D-5L VAS ( Experimentell ) 

 
Profile for EQ-5D-5L Visual Analogue Scale Score Observations 

**Usages:**

* CapabilityStatements using this Profile: [MII CPS PRO CapabilityStatement](CapabilityStatement-mii-cps-pro-capabilitystatement.md)
* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.pros|current/StructureDefinition/StructureDefinition-mii-pr-pro-observation-eq5d5l-vas.json)

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

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-pro-observation-eq5d5l-vas.csv), [Excel](../StructureDefinition-mii-pr-pro-observation-eq5d5l-vas.xlsx), [Schematron](../StructureDefinition-mii-pr-pro-observation-eq5d5l-vas.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-pro-observation-eq5d5l-vas",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-eq5d5l-vas",
  "version" : "2026.4.1",
  "name" : "MII_PR_PRO_Observation_EQ5D5L_VAS",
  "title" : "MII PR PRO Observation EQ-5D-5L VAS",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-07-23T11:58:37+00:00",
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
  "description" : "Profile for EQ-5D-5L Visual Analogue Scale Score Observations",
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
      "patternCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-vas"
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "736535009",
          "display" : "EuroQol visual analogue score (observable entity)"
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
      "fixedString" : "1"
    },
    {
      "id" : "Observation.value[x].system",
      "path" : "Observation.value[x].system",
      "fixedUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.value[x].code",
      "path" : "Observation.value[x].code",
      "fixedCode" : "1"
    },
    {
      "id" : "Observation.method",
      "path" : "Observation.method",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "73041000052103",
          "display" : "EuroQoL five dimension five level questionnaire"
        }]
      }
    }]
  }
}

```
