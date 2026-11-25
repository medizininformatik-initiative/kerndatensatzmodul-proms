# MII CM PRO Trigger Event Type to NHS Wales PROMs Trigger Event Type - MII IG PRO v2027.0.0-ballot.2

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CM PRO Trigger Event Type to NHS Wales PROMs Trigger Event Type**

## ConceptMap: MII CM PRO Trigger Event Type to NHS Wales PROMs Trigger Event Type 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ConceptMap/mii-cm-pro-trigger-event-type-to-wales | *Version*:2027.0.0-ballot.2 |
| Draft Stand: 2026-11-25 | *Maschinenlesbarer Name*:MII_CM_PRO_Trigger_Event_Type_To_Wales |

 
Maps the MII trigger event types to the value set PROMs Trigger Event Type of the NHS Wales PROMs Standard Operating Model (PSOM). Wales knows triggering events only, no purpose concepts and no measurement-series positions; these are unmatched. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mii-cm-pro-trigger-event-type-to-wales",
  "language" : "en",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm",
    "valueCoding" : {
      "system" : "http://hl7.org/fhir/version-algorithm",
      "code" : "natural",
      "display" : "Natural"
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ConceptMap/mii-cm-pro-trigger-event-type-to-wales",
  "version" : "2027.0.0-ballot.2",
  "name" : "MII_CM_PRO_Trigger_Event_Type_To_Wales",
  "title" : "MII CM PRO Trigger Event Type to NHS Wales PROMs Trigger Event Type",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-11-25T11:32:53+00:00",
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
  "description" : "Maps the MII trigger event types to the value set PROMs Trigger Event Type of the NHS Wales PROMs Standard Operating Model (PSOM). Wales knows triggering events only, no purpose concepts and no measurement-series positions; these are unmatched.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "sourceCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-trigger-event-type",
  "targetCanonical" : "https://fhir.nhs.wales/ValueSet/DataStandardsWales-PSOM-TriggerEventType",
  "group" : [{
    "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-trigger-event-type",
    "target" : "https://fhir.nhs.wales/CodeSystem/DataStandardsWales-PSOM-TriggerEventType",
    "element" : [{
      "code" : "onboarding",
      "display" : "Onboarding / registration",
      "target" : [{
        "code" : "10",
        "display" : "Onboarding",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "primary-care",
      "display" : "Primary care",
      "target" : [{
        "code" : "11",
        "display" : "Primary care",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "referral",
      "display" : "Referral",
      "target" : [{
        "code" : "12",
        "display" : "Referral",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "outpatient-appointment",
      "display" : "Outpatient appointment",
      "target" : [{
        "code" : "13",
        "display" : "Outpatient appointment",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "baseline",
      "display" : "Baseline / admission",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Wales codes the triggering event, not the position in a measurement series; depending on the pathway baseline corresponds to 12 (Referral) or 13 (Outpatient appointment)."
      }]
    },
    {
      "code" : "pre-intervention",
      "display" : "Pre-operative / pre-intervention",
      "target" : [{
        "code" : "14",
        "display" : "Pre-op assessment",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "post-intervention",
      "display" : "Post-operative / post-intervention",
      "target" : [{
        "code" : "15",
        "display" : "Intervention",
        "equivalence" : "equivalent",
        "comment" : "Wales 15 applies only after the intervention has been confirmed as performed."
      }]
    },
    {
      "code" : "discharge",
      "display" : "Discharge",
      "target" : [{
        "code" : "16",
        "display" : "Discharge",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "follow-up",
      "display" : "Follow-up",
      "target" : [{
        "code" : "15",
        "display" : "Intervention",
        "equivalence" : "inexact",
        "comment" : "Wales derives follow-up time points from trigger event plus trigger event date (e.g. 15 Intervention + 6 months); follow-up after discharge would correspond to 16."
      }]
    },
    {
      "code" : "clinician-initiated",
      "display" : "Clinician-initiated (on demand)",
      "target" : [{
        "code" : "17",
        "display" : "Clinician-initiated",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "patient-initiated",
      "display" : "Patient-initiated (on demand)",
      "target" : [{
        "code" : "18",
        "display" : "Patient-initiated",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "screening",
      "display" : "Screening",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Purpose concept; not part of the Wales value set."
      }]
    },
    {
      "code" : "diagnostic",
      "display" : "Diagnostic assessment",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Purpose concept; not part of the Wales value set."
      }]
    },
    {
      "code" : "monitoring",
      "display" : "Monitoring",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Purpose concept; not part of the Wales value set."
      }]
    },
    {
      "code" : "study-endpoint",
      "display" : "Study endpoint",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Wales covers care pathways only, not study protocols."
      }]
    },
    {
      "code" : "other",
      "display" : "Other",
      "target" : [{
        "code" : "71",
        "display" : "Other",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "unknown",
      "display" : "Unknown",
      "target" : [{
        "code" : "91",
        "display" : "Unknown",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
