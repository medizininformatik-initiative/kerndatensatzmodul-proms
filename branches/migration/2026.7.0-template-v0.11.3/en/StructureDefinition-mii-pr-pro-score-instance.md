# MII PR PRO Score Instance - MII IG PRO v2026.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR PRO Score Instance**

## Resource Profile: MII PR PRO Score Instance 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance | *Version*:2026.7.0 |
| Active as of 2026-09-03 | *Computable Name*:MII_PR_PRO_Score_Instance |

 
MII PR PRO Score Instance 

The abstract Score Instance profile defines the structure of concrete score observations. It ensures that all PRO scores are documented consistently, including traceability back to the originating QuestionnaireResponse and to the corresponding ObservationDefinition. Instrument-specific score profiles (PHQ-9 score, PROMIS Depression T-score and so on) must inherit from this abstract profile.

**Core elements:**

* Status (final, preliminary, and so on)
* A code carrying the score type (LOINC or an MII code)
* valueQuantity with the numeric score
* A derivedFrom reference to the QuestionnaireResponse
* An instantiates reference to the ObservationDefinition (R5 backport)

**Example** — a concrete score observation inheriting from this abstract profile: [PHQ-9 score](Observation-mii-exa-pro-phq-9-observation.md).

**Usages:**

* Derived from this Profile: [MII PR PRO Observation BDI-II](StructureDefinition-mii-pr-pro-observation-bdi-ii.md), [MII PR PRO Observation EQ-5D-5L Index](StructureDefinition-mii-pr-pro-observation-eq5d5l-index.md), [MII PR PRO Observation EQ-5D-5L Profile](StructureDefinition-mii-pr-pro-observation-eq5d5l-profile.md), [MII PR PRO Observation EQ-5D-5L VAS](StructureDefinition-mii-pr-pro-observation-eq5d5l-vas.md)... Show 13 more, [MII PR PRO Observation PHQ-15](StructureDefinition-mii-pr-pro-observation-phq-15.md), [MII PR PRO Observation PHQ-9](StructureDefinition-mii-pr-pro-observation-phq-9.md), [MII PR PRO Observation WHODAS 2.0 12-Item](StructureDefinition-mii-pr-pro-observation-whodas12.md), [MII PR PRO PROMIS-29 Anxiety T-Score](StructureDefinition-mii-pr-pro-promis-29-anxiety-tscore.md), [MII PR PRO PROMIS-29 Depression T-Score](StructureDefinition-mii-pr-pro-promis-29-depression-tscore.md), [MII PR PRO PROMIS-29 Fatigue T-Score](StructureDefinition-mii-pr-pro-promis-29-fatigue-tscore.md), [MII PR PRO PROMIS-29 Pain Intensity](StructureDefinition-mii-pr-pro-promis-29-pain-intensity.md), [MII PR PRO PROMIS-29 Pain Interference T-Score](StructureDefinition-mii-pr-pro-promis-29-pain-interference-tscore.md), [MII PR PRO PROMIS-29 Physical Function T-Score](StructureDefinition-mii-pr-pro-promis-29-physical-function-tscore.md), [MII PR PRO PROMIS-29 Sleep Disturbance T-Score](StructureDefinition-mii-pr-pro-promis-29-sleep-disturbance-tscore.md), [MII PR PRO PROMIS-29 Social Function T-Score](StructureDefinition-mii-pr-pro-promis-29-social-function-tscore.md), [MII PR PRO PROMIS Cognitive Function SF 4a Raw Score](StructureDefinition-mii-pr-pro-promis-cognitive-function-sf4a-raw-score.md) and [MII PR PRO PROMIS Cognitive Function SF 4a T-Score](StructureDefinition-mii-pr-pro-promis-cognitive-function-sf4a-tscore.md)
* Examples for this Profile: [Observation/mii-exa-pro-bdi-ii-observation](Observation-mii-exa-pro-bdi-ii-observation.md), [Observation/mii-exa-pro-dass-dass21-score-anxiety-equiv](Observation-mii-exa-pro-dass-dass21-score-anxiety-equiv.md), [Observation/mii-exa-pro-dass-dass21-score-anxiety-raw](Observation-mii-exa-pro-dass-dass21-score-anxiety-raw.md), [Observation/mii-exa-pro-dass-dass21-score-depression-equiv](Observation-mii-exa-pro-dass-dass21-score-depression-equiv.md)... Show 25 more, [Observation/mii-exa-pro-dass-dass21-score-depression-raw](Observation-mii-exa-pro-dass-dass21-score-depression-raw.md), [Observation/mii-exa-pro-dass-dass21-score-stress-equiv](Observation-mii-exa-pro-dass-dass21-score-stress-equiv.md), [Observation/mii-exa-pro-dass-dass21-score-stress-raw](Observation-mii-exa-pro-dass-dass21-score-stress-raw.md), [Observation/mii-exa-pro-eortc-qlq-c30-observation-ap](Observation-mii-exa-pro-eortc-qlq-c30-observation-ap.md), [Observation/mii-exa-pro-eortc-qlq-c30-observation-cf](Observation-mii-exa-pro-eortc-qlq-c30-observation-cf.md), [Observation/mii-exa-pro-eortc-qlq-c30-observation-co](Observation-mii-exa-pro-eortc-qlq-c30-observation-co.md), [Observation/mii-exa-pro-eortc-qlq-c30-observation-di](Observation-mii-exa-pro-eortc-qlq-c30-observation-di.md), [Observation/mii-exa-pro-eortc-qlq-c30-observation-dy](Observation-mii-exa-pro-eortc-qlq-c30-observation-dy.md), [Observation/mii-exa-pro-eortc-qlq-c30-observation-ef](Observation-mii-exa-pro-eortc-qlq-c30-observation-ef.md), [Observation/mii-exa-pro-eortc-qlq-c30-observation-fa](Observation-mii-exa-pro-eortc-qlq-c30-observation-fa.md), [Observation/mii-exa-pro-eortc-qlq-c30-observation-fi](Observation-mii-exa-pro-eortc-qlq-c30-observation-fi.md), [Observation/mii-exa-pro-eortc-qlq-c30-observation-nv](Observation-mii-exa-pro-eortc-qlq-c30-observation-nv.md), [Observation/mii-exa-pro-eortc-qlq-c30-observation-pa](Observation-mii-exa-pro-eortc-qlq-c30-observation-pa.md), [Observation/mii-exa-pro-eortc-qlq-c30-observation-pf](Observation-mii-exa-pro-eortc-qlq-c30-observation-pf.md), [Observation/mii-exa-pro-eortc-qlq-c30-observation-ql](Observation-mii-exa-pro-eortc-qlq-c30-observation-ql.md), [Observation/mii-exa-pro-eortc-qlq-c30-observation-rf](Observation-mii-exa-pro-eortc-qlq-c30-observation-rf.md), [Observation/mii-exa-pro-eortc-qlq-c30-observation-sf](Observation-mii-exa-pro-eortc-qlq-c30-observation-sf.md), [Observation/mii-exa-pro-eortc-qlq-c30-observation-sl](Observation-mii-exa-pro-eortc-qlq-c30-observation-sl.md), [Observation/mii-exa-pro-gad-7-score](Observation-mii-exa-pro-gad-7-score.md), [Observation/mii-exa-pro-isr-z-score](Observation-mii-exa-pro-isr-z-score.md), [Observation/mii-exa-pro-pc-ptsd-score](Observation-mii-exa-pro-pc-ptsd-score.md), [Observation/mii-exa-pro-promis-depression-tscore-from-bdi-ii-observation](Observation-mii-exa-pro-promis-depression-tscore-from-bdi-ii-observation.md), [Observation/mii-exa-pro-scoff-score](Observation-mii-exa-pro-scoff-score.md), [Observation/mii-exa-pro-ssd-12-score](Observation-mii-exa-pro-ssd-12-score.md) and [Observation/mii-exa-pro-wi-7-score](Observation-mii-exa-pro-wi-7-score.md)
* CapabilityStatements using this Profile: [MII CPS PRO CapabilityStatement](CapabilityStatement-mii-cps-pro-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.pros|current/StructureDefinition/StructureDefinition-mii-pr-pro-score-instance.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-pro-score-instance.csv), [Excel](../StructureDefinition-mii-pr-pro-score-instance.xlsx), [Schematron](../StructureDefinition-mii-pr-pro-score-instance.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-pro-score-instance",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance",
  "version" : "2026.7.0",
  "name" : "MII_PR_PRO_Score_Instance",
  "title" : "MII PR PRO Score Instance",
  "status" : "active",
  "date" : "2026-09-03T19:26:10+00:00",
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
  "description" : "MII PR PRO Score Instance",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.extension",
      "path" : "Observation.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.extension:instantiatesCanonical",
      "path" : "Observation.extension",
      "sliceName" : "instantiatesCanonical",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.identifier",
      "path" : "Observation.identifier",
      "mustSupport" : true
    },
    {
      "id" : "Observation.status",
      "path" : "Observation.status",
      "mustSupport" : true
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "mustSupport" : true
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "min" : 1
    },
    {
      "id" : "Observation.focus",
      "path" : "Observation.focus",
      "mustSupport" : true
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.effective[x]:effectiveDateTime",
      "path" : "Observation.effective[x]",
      "sliceName" : "effectiveDateTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.performer",
      "path" : "Observation.performer",
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "type" : [{
        "code" : "Quantity"
      },
      {
        "code" : "CodeableConcept"
      },
      {
        "code" : "string"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.interpretation",
      "path" : "Observation.interpretation",
      "mustSupport" : true
    },
    {
      "id" : "Observation.note",
      "path" : "Observation.note",
      "mustSupport" : true
    },
    {
      "id" : "Observation.method",
      "path" : "Observation.method",
      "mustSupport" : true
    },
    {
      "id" : "Observation.derivedFrom",
      "path" : "Observation.derivedFrom",
      "mustSupport" : true
    }]
  }
}

```
