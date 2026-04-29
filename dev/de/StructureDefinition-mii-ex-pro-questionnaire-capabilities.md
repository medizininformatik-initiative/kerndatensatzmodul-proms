# MII PR PRO Questionnaire Capabilities - MII IG PRO v2026.2.0

## Extension: MII PR PRO Questionnaire Capabilities (Experimentell) 

MII PR PRO Questionnaire Capabilities, based on the FHIR Structure Data Capture Specification

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MII PR PRO Questionnaire](StructureDefinition-mii-pr-pro-questionnaire.md)
* Examples for this Extension: [Bundle/mii-exa-pro-bdi-ii-bundle](Bundle-mii-exa-pro-bdi-ii-bundle.md), [Bundle/mii-exa-pro-eortc-qlq-c30-bundle](Bundle-mii-exa-pro-eortc-qlq-c30-bundle.md), [Bundle/mii-exa-pro-phq-9-bundle](Bundle-mii-exa-pro-phq-9-bundle.md), [Questionnaire/mii-qst-pro-bdi-bdi2](Questionnaire-mii-qst-pro-bdi-bdi2.md)... Show 19 more, [Questionnaire/mii-qst-pro-ces-d](Questionnaire-mii-qst-pro-ces-d.md), [Questionnaire/mii-qst-pro-dass-dass21](Questionnaire-mii-qst-pro-dass-dass21.md), [Questionnaire/mii-qst-pro-eortc-qlq-c30-variant-a](Questionnaire-mii-qst-pro-eortc-qlq-c30-variant-a.md), [Questionnaire/mii-qst-pro-eortc-qlq-c30-variant-b](Questionnaire-mii-qst-pro-eortc-qlq-c30-variant-b.md), [Questionnaire/mii-qst-pro-eortc-qlq-c30](Questionnaire-mii-qst-pro-eortc-qlq-c30.md), [Questionnaire/mii-qst-pro-epds](Questionnaire-mii-qst-pro-epds.md), [Questionnaire/mii-qst-pro-euroqol-eq5d5l-answer-coding](Questionnaire-mii-qst-pro-euroqol-eq5d5l-answer-coding.md), [Questionnaire/mii-qst-pro-euroqol-eq5d5l-collectable](Questionnaire-mii-qst-pro-euroqol-eq5d5l-collectable.md), [Questionnaire/mii-qst-pro-euroqol-eq5d5l-displayable](Questionnaire-mii-qst-pro-euroqol-eq5d5l-displayable.md), [Questionnaire/mii-qst-pro-euroqol-eq5d5l-minimal](Questionnaire-mii-qst-pro-euroqol-eq5d5l-minimal.md), [Questionnaire/mii-qst-pro-hads](Questionnaire-mii-qst-pro-hads.md), [Questionnaire/mii-qst-pro-k6](Questionnaire-mii-qst-pro-k6.md), [Questionnaire/mii-qst-pro-phq-9](Questionnaire-mii-qst-pro-phq-9.md), [MII_QST_PRO_PRO_CTCAE_Breast_DE](Questionnaire-mii-qst-pro-pro-ctcae-breast-de.md), [Questionnaire/mii-qst-pro-promis-29-de](Questionnaire-mii-qst-pro-promis-29-de.md), [Questionnaire/mii-qst-pro-promis-29-minimal](Questionnaire-mii-qst-pro-promis-29-minimal.md), [Questionnaire/mii-qst-pro-promis-29](Questionnaire-mii-qst-pro-promis-29.md), [Questionnaire/mii-qst-pro-promis-cognitive-function-sf4a](Questionnaire-mii-qst-pro-promis-cognitive-function-sf4a.md) and [Questionnaire/mii-qst-pro-promis-depression-sf4a](Questionnaire-mii-qst-pro-promis-depression-sf4a.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/de.medizininformatikinitiative.kerndatensatz.pros|current/StructureDefinition/mii-ex-pro-questionnaire-capabilities)

### Formale Ansichten des Extension-Inhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Complex Extension: MII PR PRO Questionnaire Capabilities, based on the FHIR Structure Data Capture Specification

 **Differential-AnsichtDifferential View** 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

 **Snapshot-Ansicht** 

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Complex Extension: MII PR PRO Questionnaire Capabilities, based on the FHIR Structure Data Capture Specification

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-ex-pro-questionnaire-capabilities.csv), [Excel](../StructureDefinition-mii-ex-pro-questionnaire-capabilities.xlsx), [Schematron](../StructureDefinition-mii-ex-pro-questionnaire-capabilities.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ex-pro-questionnaire-capabilities",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-ex-pro-questionnaire-capabilities",
  "version" : "2026.2.0",
  "name" : "MII_PR_PRO_Questionnaire_Capabilities",
  "title" : "MII PR PRO Questionnaire Capabilities",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-04-29T08:53:17+00:00",
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
  "description" : "MII PR PRO Questionnaire Capabilities, based on the FHIR Structure Data Capture Specification",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Element"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "MII PR PRO Questionnaire Capabilities",
      "definition" : "MII PR PRO Questionnaire Capabilities, based on the FHIR Structure Data Capture Specification"
    },
    {
      "id" : "Extension.extension:displayable",
      "path" : "Extension.extension",
      "sliceName" : "displayable",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:displayable.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:displayable.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "displayable"
    },
    {
      "id" : "Extension.extension:displayable.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Extension.extension:collectable",
      "path" : "Extension.extension",
      "sliceName" : "collectable",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:collectable.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:collectable.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "collectable"
    },
    {
      "id" : "Extension.extension:collectable.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Extension.extension:populatable",
      "path" : "Extension.extension",
      "sliceName" : "populatable",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:populatable.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:populatable.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "populatable"
    },
    {
      "id" : "Extension.extension:populatable.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Extension.extension:extractable",
      "path" : "Extension.extension",
      "sliceName" : "extractable",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:extractable.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:extractable.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "extractable"
    },
    {
      "id" : "Extension.extension:extractable.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Extension.extension:calculatable",
      "path" : "Extension.extension",
      "sliceName" : "calculatable",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:calculatable.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:calculatable.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "calculatable"
    },
    {
      "id" : "Extension.extension:calculatable.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Extension.extension:domainAligned",
      "path" : "Extension.extension",
      "sliceName" : "domainAligned",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:domainAligned.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:domainAligned.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "domainAligned"
    },
    {
      "id" : "Extension.extension:domainAligned.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-ex-pro-questionnaire-capabilities"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
