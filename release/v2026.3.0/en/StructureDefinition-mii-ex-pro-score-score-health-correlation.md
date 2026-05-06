# MII Ex PRO Score Score Health Correlation - MII IG PRO v2026.3.0

## Extension: MII Ex PRO Score Score Health Correlation 

MII Ex PRO Score Score Health Correlation

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MII PR PRO Score Blueprint / Template](StructureDefinition-mii-pr-pro-score-blueprint.md)
* Examples for this Extension: [ObservationDefinition/mii-obsdef-pro-depression-t-score](ObservationDefinition-mii-obsdef-pro-depression-t-score.md), [ObservationDefinition/mii-obsdef-pro-promis-29-anxiety-tscore](ObservationDefinition-mii-obsdef-pro-promis-29-anxiety-tscore.md), [ObservationDefinition/mii-obsdef-pro-promis-29-depression-tscore](ObservationDefinition-mii-obsdef-pro-promis-29-depression-tscore.md), [ObservationDefinition/mii-obsdef-pro-promis-29-fatigue-tscore](ObservationDefinition-mii-obsdef-pro-promis-29-fatigue-tscore.md)... Show 20 more, [ObservationDefinition/mii-obsdef-pro-promis-29-pain-intensity](ObservationDefinition-mii-obsdef-pro-promis-29-pain-intensity.md), [ObservationDefinition/mii-obsdef-pro-promis-29-pain-interference-tscore](ObservationDefinition-mii-obsdef-pro-promis-29-pain-interference-tscore.md), [ObservationDefinition/mii-obsdef-pro-promis-29-physical-function-tscore](ObservationDefinition-mii-obsdef-pro-promis-29-physical-function-tscore.md), [ObservationDefinition/mii-obsdef-pro-promis-29-sleep-disturbance-tscore](ObservationDefinition-mii-obsdef-pro-promis-29-sleep-disturbance-tscore.md), [ObservationDefinition/mii-obsdef-pro-promis-29-social-function-tscore](ObservationDefinition-mii-obsdef-pro-promis-29-social-function-tscore.md), [ObservationDefinition/mii-obsdef-pro-promis-cognitive-function-sf4a-raw-score](ObservationDefinition-mii-obsdef-pro-promis-cognitive-function-sf4a-raw-score.md), [ObservationDefinition/mii-obsdef-pro-promis-cognitive-function-sf4a-tscore](ObservationDefinition-mii-obsdef-pro-promis-cognitive-function-sf4a-tscore.md), [ObservationDefinition/mii-obsdef-pro-score-bdi-ii](ObservationDefinition-mii-obsdef-pro-score-bdi-ii.md), [ObservationDefinition/mii-obsdef-pro-score-dass21-anxiety-equiv](ObservationDefinition-mii-obsdef-pro-score-dass21-anxiety-equiv.md), [ObservationDefinition/mii-obsdef-pro-score-dass21-anxiety-raw](ObservationDefinition-mii-obsdef-pro-score-dass21-anxiety-raw.md), [ObservationDefinition/mii-obsdef-pro-score-dass21-depression-equiv](ObservationDefinition-mii-obsdef-pro-score-dass21-depression-equiv.md), [ObservationDefinition/mii-obsdef-pro-score-dass21-depression-raw](ObservationDefinition-mii-obsdef-pro-score-dass21-depression-raw.md), [ObservationDefinition/mii-obsdef-pro-score-dass21-stress-equiv](ObservationDefinition-mii-obsdef-pro-score-dass21-stress-equiv.md), [ObservationDefinition/mii-obsdef-pro-score-dass21-stress-raw](ObservationDefinition-mii-obsdef-pro-score-dass21-stress-raw.md), [ObservationDefinition/mii-obsdef-pro-score-eq5d5l-index](ObservationDefinition-mii-obsdef-pro-score-eq5d5l-index.md), [ObservationDefinition/mii-obsdef-pro-score-eq5d5l-vas](ObservationDefinition-mii-obsdef-pro-score-eq5d5l-vas.md), [ObservationDefinition/mii-obsdef-pro-score-gad-7](ObservationDefinition-mii-obsdef-pro-score-gad-7.md), [ObservationDefinition/mii-obsdef-pro-score-phq-9](ObservationDefinition-mii-obsdef-pro-score-phq-9.md), [ObservationDefinition/mii-obsdef-pro-score-proctcae-acs](ObservationDefinition-mii-obsdef-pro-score-proctcae-acs.md) and [ObservationDefinition/mii-obsdef-pro-score-proctcae-composite-grade](ObservationDefinition-mii-obsdef-pro-score-proctcae-composite-grade.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/de.medizininformatikinitiative.kerndatensatz.pros|current/StructureDefinition/mii-ex-pro-score-score-health-correlation)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-ex-pro-score-score-health-correlation.csv), [Excel](../StructureDefinition-mii-ex-pro-score-score-health-correlation.xlsx), [Schematron](../StructureDefinition-mii-ex-pro-score-score-health-correlation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ex-pro-score-score-health-correlation",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-ex-pro-score-score-health-correlation",
  "version" : "2026.3.0",
  "name" : "MII_EX_PRO_Score_Score_Health_Correlation",
  "title" : "MII Ex PRO Score Score Health Correlation",
  "status" : "active",
  "date" : "2026-05-06T15:07:20+00:00",
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
  "description" : "MII Ex PRO Score Score Health Correlation",
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
    "expression" : "ObservationDefinition.qualifiedInterval.range"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "MII Ex PRO Score Score Health Correlation",
      "definition" : "MII Ex PRO Score Score Health Correlation"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-ex-pro-score-score-health-correlation"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Extension.value[x].coding.system",
      "path" : "Extension.value[x].coding.system",
      "min" : 1,
      "fixedUri" : "http://terminology.hl7.org/CodeSystem/measure-improvement-notation",
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x].coding.code",
      "path" : "Extension.value[x].coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x].text",
      "path" : "Extension.value[x].text",
      "mustSupport" : true
    }]
  }
}

```
