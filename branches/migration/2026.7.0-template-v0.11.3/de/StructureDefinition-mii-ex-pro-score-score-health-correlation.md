# MII Ex PRO Score Score Health Correlation - MII IG PRO v2026.7.0

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII Ex PRO Score Score Health Correlation**

## Extension: MII Ex PRO Score Score Health Correlation 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-ex-pro-score-score-health-correlation | *Version*:2026.7.0 |
| Active Stand: 2026-09-05 | *Maschinenlesbarer Name*:MII_EX_PRO_Score_Score_Health_Correlation |

MII Ex PRO Score Score Health Correlation

**Context of Use**

Extension zur Angabe der Interpretationsrichtung eines Scores — ob höhere Werte für bessere oder schlechtere Gesundheit stehen. Sie verwendet das HL7-ValueSet [measure-improvement-notation](https://terminology.hl7.org/6.5.0/CodeSystem-measure-improvement-notation.html).

**Beispiele**

Beim PHQ-9 ist das „gesunde" Ende der Skala 0 Punkte, das „pathologische" Ende 27, daher trägt der PHQ-9-Score den Wert `decrease` — ein steigender Punktwert weist auf sinkende Gesundheit bzw. Lebensqualität hin.

Der EORTC QLQ-C30 besitzt Funktions- und Symptom-Skalen. Bei den Funktions-Skalen entsprechen hohe Werte hoher physiologischer Funktion, daher tragen diese Skalen den Wert `increase` — ein steigender Punktwert weist auf bessere Gesundheit bzw. Funktion hin.

Bei den Symptom-Skalen entsprechen hohe Werte einem schlechten Gesundheitszustand, daher tragen diese Skalen den Wert `decrease` — ein steigender Punktwert weist auf schlechtere Gesundheit bzw. mehr Symptome hin.

**Usage info**

**Usages:**

* Use this Extension: [MII PR PRO Score Blueprint / Template](StructureDefinition-mii-pr-pro-score-blueprint.md)
* Examples for this Extension: [ObservationDefinition/mii-obsdef-pro-depression-t-score](ObservationDefinition-mii-obsdef-pro-depression-t-score.md), [ObservationDefinition/mii-obsdef-pro-promis-29-anxiety-tscore](ObservationDefinition-mii-obsdef-pro-promis-29-anxiety-tscore.md), [ObservationDefinition/mii-obsdef-pro-promis-29-depression-tscore](ObservationDefinition-mii-obsdef-pro-promis-29-depression-tscore.md), [ObservationDefinition/mii-obsdef-pro-promis-29-fatigue-tscore](ObservationDefinition-mii-obsdef-pro-promis-29-fatigue-tscore.md)... Show 27 more, [ObservationDefinition/mii-obsdef-pro-promis-29-pain-intensity](ObservationDefinition-mii-obsdef-pro-promis-29-pain-intensity.md), [ObservationDefinition/mii-obsdef-pro-promis-29-pain-interference-tscore](ObservationDefinition-mii-obsdef-pro-promis-29-pain-interference-tscore.md), [ObservationDefinition/mii-obsdef-pro-promis-29-physical-function-tscore](ObservationDefinition-mii-obsdef-pro-promis-29-physical-function-tscore.md), [ObservationDefinition/mii-obsdef-pro-promis-29-sleep-disturbance-tscore](ObservationDefinition-mii-obsdef-pro-promis-29-sleep-disturbance-tscore.md), [ObservationDefinition/mii-obsdef-pro-promis-29-social-function-tscore](ObservationDefinition-mii-obsdef-pro-promis-29-social-function-tscore.md), [ObservationDefinition/mii-obsdef-pro-promis-cognitive-function-sf4a-raw-score](ObservationDefinition-mii-obsdef-pro-promis-cognitive-function-sf4a-raw-score.md), [ObservationDefinition/mii-obsdef-pro-promis-cognitive-function-sf4a-tscore](ObservationDefinition-mii-obsdef-pro-promis-cognitive-function-sf4a-tscore.md), [ObservationDefinition/mii-obsdef-pro-score-bdi-ii](ObservationDefinition-mii-obsdef-pro-score-bdi-ii.md), [ObservationDefinition/mii-obsdef-pro-score-dass21-anxiety-equiv](ObservationDefinition-mii-obsdef-pro-score-dass21-anxiety-equiv.md), [ObservationDefinition/mii-obsdef-pro-score-dass21-anxiety-raw](ObservationDefinition-mii-obsdef-pro-score-dass21-anxiety-raw.md), [ObservationDefinition/mii-obsdef-pro-score-dass21-depression-equiv](ObservationDefinition-mii-obsdef-pro-score-dass21-depression-equiv.md), [ObservationDefinition/mii-obsdef-pro-score-dass21-depression-raw](ObservationDefinition-mii-obsdef-pro-score-dass21-depression-raw.md), [ObservationDefinition/mii-obsdef-pro-score-dass21-stress-equiv](ObservationDefinition-mii-obsdef-pro-score-dass21-stress-equiv.md), [ObservationDefinition/mii-obsdef-pro-score-dass21-stress-raw](ObservationDefinition-mii-obsdef-pro-score-dass21-stress-raw.md), [ObservationDefinition/mii-obsdef-pro-score-eq5d5l-index](ObservationDefinition-mii-obsdef-pro-score-eq5d5l-index.md), [ObservationDefinition/mii-obsdef-pro-score-eq5d5l-vas](ObservationDefinition-mii-obsdef-pro-score-eq5d5l-vas.md), [ObservationDefinition/mii-obsdef-pro-score-gad-7](ObservationDefinition-mii-obsdef-pro-score-gad-7.md), [ObservationDefinition/mii-obsdef-pro-score-isr-z](ObservationDefinition-mii-obsdef-pro-score-isr-z.md), [ObservationDefinition/mii-obsdef-pro-score-pc-ptsd](ObservationDefinition-mii-obsdef-pro-score-pc-ptsd.md), [ObservationDefinition/mii-obsdef-pro-score-phq-15](ObservationDefinition-mii-obsdef-pro-score-phq-15.md), [ObservationDefinition/mii-obsdef-pro-score-phq-9](ObservationDefinition-mii-obsdef-pro-score-phq-9.md), [ObservationDefinition/mii-obsdef-pro-score-proctcae-acs](ObservationDefinition-mii-obsdef-pro-score-proctcae-acs.md), [ObservationDefinition/mii-obsdef-pro-score-proctcae-composite-grade](ObservationDefinition-mii-obsdef-pro-score-proctcae-composite-grade.md), [ObservationDefinition/mii-obsdef-pro-score-scoff](ObservationDefinition-mii-obsdef-pro-score-scoff.md), [ObservationDefinition/mii-obsdef-pro-score-ssd-12](ObservationDefinition-mii-obsdef-pro-score-ssd-12.md), [ObservationDefinition/mii-obsdef-pro-score-whodas12-simple-sum](ObservationDefinition-mii-obsdef-pro-score-whodas12-simple-sum.md) and [ObservationDefinition/mii-obsdef-pro-score-wi-7](ObservationDefinition-mii-obsdef-pro-score-wi-7.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.pros|current/StructureDefinition/StructureDefinition-mii-ex-pro-score-score-health-correlation.json)

### Formale Ansichten des Extension-Inhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [AlleAll](#tabs-all) 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Simple Extension with the type CodeableConcept: MII Ex PRO Score Score Health Correlation

 **Differential-AnsichtDifferential View** 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

 **Snapshot-Ansicht** 

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Simple Extension with the type CodeableConcept: MII Ex PRO Score Score Health Correlation

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-ex-pro-score-score-health-correlation.csv), [Excel](../StructureDefinition-mii-ex-pro-score-score-health-correlation.xlsx), [Schematron](../StructureDefinition-mii-ex-pro-score-score-health-correlation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ex-pro-score-score-health-correlation",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-ex-pro-score-score-health-correlation",
  "version" : "2026.7.0",
  "name" : "MII_EX_PRO_Score_Score_Health_Correlation",
  "title" : "MII Ex PRO Score Score Health Correlation",
  "status" : "active",
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
  "description" : "MII Ex PRO Score Score Health Correlation",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "fhirVersion" : "4.0.1",
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
