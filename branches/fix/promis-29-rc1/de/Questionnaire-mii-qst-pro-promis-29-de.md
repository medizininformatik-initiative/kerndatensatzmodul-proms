# MII QST PRO PROMIS-29 (German) [retired] - MII IG PRO v2027.0.0-ballot.1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII QST PRO PROMIS-29 (German) [retired]**

## Questionnaire: MII QST PRO PROMIS-29 (German) [retired] (Experimentell) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29-de | *Version*:2027.0.0-ballot.1 |
| Retired Stand: 2026-11-04 | *Maschinenlesbarer Name*: |
| **Verwendung**: PROMIS (Patient-Reported Outcomes Measurement Information System) (https://www.healthmeasures.net/explore-measurement-systems/promis), PROMIS National Center Deutschland (CPCOR Charité) — Curator of the official German translations provided by PCOR-MII (https://cpcor.charite.de/promis_national_center_deutschland) | |
| **Copyright/Rechtliches**: The FHIR Questionnaire resource (linkIds, extensions, score calculation logic, observation extraction definitions) is part of the MII PRO Module and is licensed under CC-BY 4.0.The PROMIS items contained herein (item text, response options, scoring algorithms, IRT parameters) are © 2008–2024 PROMIS Health Organization and PROMIS Cooperative Group. PROMIS® is a registered trademark. See https://www.healthmeasures.net for the upstream license.The official German translations are provided by PCOR-MII (Patient-Centered Outcomes Research within the Medizininformatik-Initiative) and curated by the PROMIS National Center Germany (CPCOR, Charité – Universitätsmedizin Berlin; head: Felix Fischer).Institutional use outside the PCOR-MII / MII context requires a usage request to CPCOR: https://cpcor.charite.de/promis_national_center_deutschland/nutzungsanfragenLOINC® codes are © Regenstrief Institute, Inc. and used under the LOINC license: https://loinc.org/license/ | |

 
RETIRED. German-primary presentation variant of PROMIS-29 Profile v2.1, withdrawn with 2027.0.0-rc.1. Use mii-qst-pro-promis-29 (English primary, German via translation extension) and Questionnaire/$localize for German-primary rendering. Kept as an empty shell so that the canonical URL stays resolvable. 

*  [Baumansicht](#tabs-tree) 
*  [Beispielanzeige](#tabs-sample) 
*  [Formularlogik](#tabs-logic) 

### Diesen Fragebogen testen

### Antworten zu diesem Fragebogen

Es sind derzeit keine QuestionnaireResponse-Instanzen für diesen Fragebogen in diesem IG definiert.



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "mii-qst-pro-promis-29-de",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire|2027.0.0-ballot.1"]
  },
  "language" : "de",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm",
    "valueCoding" : {
      "system" : "http://hl7.org/fhir/version-algorithm",
      "code" : "natural",
      "display" : "Natural"
    }
  },
  {
    "extension" : [{
      "url" : "displayable",
      "valueBoolean" : false
    },
    {
      "url" : "collectable",
      "valueBoolean" : false
    },
    {
      "url" : "calculatable",
      "valueBoolean" : false
    },
    {
      "url" : "extractable",
      "valueBoolean" : false
    },
    {
      "url" : "domainAligned",
      "valueBoolean" : false
    }],
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-ex-pro-questionnaire-capabilities"
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29-de",
  "version" : "2027.0.0-ballot.1",
  "title" : "MII QST PRO PROMIS-29 (German) [retired]",
  "derivedFrom" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29"],
  "status" : "retired",
  "experimental" : true,
  "date" : "2026-11-04T14:34:29+00:00",
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
  "description" : "RETIRED. German-primary presentation variant of PROMIS-29 Profile v2.1, withdrawn with 2027.0.0-rc.1. Use mii-qst-pro-promis-29 (English primary, German via translation extension) and Questionnaire/$localize for German-primary rendering. Kept as an empty shell so that the canonical URL stays resolvable.",
  "useContext" : [{
    "code" : {
      "system" : "http://terminology.hl7.org/CodeSystem/usage-context-type",
      "code" : "focus"
    },
    "valueReference" : {
      "display" : "PROMIS (Patient-Reported Outcomes Measurement Information System) (https://www.healthmeasures.net/explore-measurement-systems/promis)"
    }
  },
  {
    "code" : {
      "system" : "http://terminology.hl7.org/CodeSystem/usage-context-type",
      "code" : "focus"
    },
    "valueReference" : {
      "display" : "PROMIS National Center Deutschland (CPCOR Charité) — Curator of the official German translations provided by PCOR-MII (https://cpcor.charite.de/promis_national_center_deutschland)"
    }
  }],
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "copyright" : "The FHIR Questionnaire resource (linkIds, extensions, score calculation logic, observation extraction definitions) is part of the MII PRO Module and is licensed under CC-BY 4.0.\n\nThe PROMIS items contained herein (item text, response options, scoring algorithms, IRT parameters) are © 2008–2024 PROMIS Health Organization and PROMIS Cooperative Group. PROMIS® is a registered trademark. See https://www.healthmeasures.net for the upstream license.\n\nThe official German translations are provided by PCOR-MII (Patient-Centered Outcomes Research within the Medizininformatik-Initiative) and curated by the PROMIS National Center Germany (CPCOR, Charité – Universitätsmedizin Berlin; head: Felix Fischer).\n\nInstitutional use outside the PCOR-MII / MII context requires a usage request to CPCOR: https://cpcor.charite.de/promis_national_center_deutschland/nutzungsanfragen\n\nLOINC® codes are © Regenstrief Institute, Inc. and used under the LOINC license: https://loinc.org/license/",
  "code" : [{
    "system" : "http://loinc.org",
    "code" : "62337-1",
    "display" : "PROMIS item bank - 29 profile"
  },
  {
    "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-questionnaire-catalogue",
    "code" : "promis-promis29",
    "display" : "PROMIS-29 Questionnaire"
  }]
}

```
