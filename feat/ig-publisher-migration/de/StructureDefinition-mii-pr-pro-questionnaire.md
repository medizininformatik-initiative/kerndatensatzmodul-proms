# MII PR PRO Questionnaire - MII IG PRO v2026.2.0

## Ressourcenprofil: MII PR PRO Questionnaire ( Experimentell ) 

 
MII PR PRO Questionnaire, based on the FHIR Structure Data Capture Specification 

**Usages:**

* Examples for this Profile: [Questionnaire/mii-qst-pro-bdi-bdi2](Questionnaire-mii-qst-pro-bdi-bdi2.md), [Questionnaire/mii-qst-pro-ces-d](Questionnaire-mii-qst-pro-ces-d.md), [Questionnaire/mii-qst-pro-dass-dass21](Questionnaire-mii-qst-pro-dass-dass21.md), [Questionnaire/mii-qst-pro-eortc-qlq-c30-variant-a](Questionnaire-mii-qst-pro-eortc-qlq-c30-variant-a.md)... Show 15 more, [Questionnaire/mii-qst-pro-eortc-qlq-c30-variant-b](Questionnaire-mii-qst-pro-eortc-qlq-c30-variant-b.md), [Questionnaire/mii-qst-pro-eortc-qlq-c30](Questionnaire-mii-qst-pro-eortc-qlq-c30.md), [Questionnaire/mii-qst-pro-epds](Questionnaire-mii-qst-pro-epds.md), [Questionnaire/mii-qst-pro-euroqol-eq5d5l-answer-coding](Questionnaire-mii-qst-pro-euroqol-eq5d5l-answer-coding.md), [Questionnaire/mii-qst-pro-euroqol-eq5d5l-collectable](Questionnaire-mii-qst-pro-euroqol-eq5d5l-collectable.md), [Questionnaire/mii-qst-pro-euroqol-eq5d5l-displayable](Questionnaire-mii-qst-pro-euroqol-eq5d5l-displayable.md), [Questionnaire/mii-qst-pro-euroqol-eq5d5l-minimal](Questionnaire-mii-qst-pro-euroqol-eq5d5l-minimal.md), [Questionnaire/mii-qst-pro-hads](Questionnaire-mii-qst-pro-hads.md), [Questionnaire/mii-qst-pro-k6](Questionnaire-mii-qst-pro-k6.md), [Questionnaire/mii-qst-pro-phq-9](Questionnaire-mii-qst-pro-phq-9.md), [Questionnaire/mii-qst-pro-promis-29-de](Questionnaire-mii-qst-pro-promis-29-de.md), [Questionnaire/mii-qst-pro-promis-29-minimal](Questionnaire-mii-qst-pro-promis-29-minimal.md), [Questionnaire/mii-qst-pro-promis-29](Questionnaire-mii-qst-pro-promis-29.md), [Questionnaire/mii-qst-pro-promis-cognitive-function-sf4a](Questionnaire-mii-qst-pro-promis-cognitive-function-sf4a.md) and [Questionnaire/mii-qst-pro-promis-depression-sf4a](Questionnaire-mii-qst-pro-promis-depression-sf4a.md)
* CapabilityStatements using this Profile: [MII CPS PRO CapabilityStatement](CapabilityStatement-mii-cps-pro-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/de.medizininformatikinitiative.kerndatensatz.pros|current/StructureDefinition/mii-pr-pro-questionnaire)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [SDCBaseQuestionnaire](http://hl7.org/fhir/uv/sdc/STU3/StructureDefinition-sdc-questionnaire.html) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [SDCBaseQuestionnaire](http://hl7.org/fhir/uv/sdc/STU3/StructureDefinition-sdc-questionnaire.html) 

** Summary **

Mandatory: 4 elements(6 nested mandatory elements)
 Must-Support: 10 elements
 Fixed: 3 elements

**Extensions**

This structure refers to these extensions:

* [https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-ex-pro-questionnaire-capabilities](StructureDefinition-mii-ex-pro-questionnaire-capabilities.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Questionnaire.code

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [SDCBaseQuestionnaire](http://hl7.org/fhir/uv/sdc/STU3/StructureDefinition-sdc-questionnaire.html) 

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [SDCBaseQuestionnaire](http://hl7.org/fhir/uv/sdc/STU3/StructureDefinition-sdc-questionnaire.html) 

** Summary **

Mandatory: 4 elements(6 nested mandatory elements)
 Must-Support: 10 elements
 Fixed: 3 elements

**Extensions**

This structure refers to these extensions:

* [https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-ex-pro-questionnaire-capabilities](StructureDefinition-mii-ex-pro-questionnaire-capabilities.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Questionnaire.code

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-pro-questionnaire.csv), [Excel](../StructureDefinition-mii-pr-pro-questionnaire.xlsx), [Schematron](../StructureDefinition-mii-pr-pro-questionnaire.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-pro-questionnaire",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire",
  "version" : "2026.2.0",
  "name" : "MII_PR_PRO_Questionnaire",
  "title" : "MII PR PRO Questionnaire",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-04-28T19:22:30+00:00",
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
  "description" : "MII PR PRO Questionnaire, based on the FHIR Structure Data Capture Specification",
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
    "identity" : "objimpl",
    "uri" : "http://hl7.org/fhir/object-implementation",
    "name" : "Object Implementation Information"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Questionnaire",
  "baseDefinition" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Questionnaire",
      "path" : "Questionnaire"
    },
    {
      "id" : "Questionnaire.extension",
      "path" : "Questionnaire.extension",
      "min" : 1
    },
    {
      "id" : "Questionnaire.extension:capabilities",
      "path" : "Questionnaire.extension",
      "sliceName" : "capabilities",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-ex-pro-questionnaire-capabilities"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.version",
      "path" : "Questionnaire.version",
      "min" : 1
    },
    {
      "id" : "Questionnaire.derivedFrom",
      "path" : "Questionnaire.derivedFrom",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.copyright",
      "path" : "Questionnaire.copyright",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.code",
      "path" : "Questionnaire.code",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "description" : "Different code systems for the same questionnaire",
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.code:snomed",
      "path" : "Questionnaire.code",
      "sliceName" : "snomed",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Questionnaire.code:snomed.system",
      "path" : "Questionnaire.code.system",
      "min" : 1,
      "fixedUri" : "http://snomed.info/sct",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.code:snomed.code",
      "path" : "Questionnaire.code.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.code:loinc",
      "path" : "Questionnaire.code",
      "sliceName" : "loinc",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Questionnaire.code:loinc.system",
      "path" : "Questionnaire.code.system",
      "min" : 1,
      "fixedUri" : "http://loinc.org",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.code:loinc.code",
      "path" : "Questionnaire.code.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.code:mii",
      "path" : "Questionnaire.code",
      "sliceName" : "mii",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Questionnaire.code:mii.system",
      "path" : "Questionnaire.code.system",
      "min" : 1,
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-questionnaire-catalogue",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.code:mii.code",
      "path" : "Questionnaire.code.code",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
