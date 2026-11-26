# MII CS PRO Trigger Event Type - MII IG PRO v2027.0.0-ballot.2

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CS PRO Trigger Event Type**

## CodeSystem: MII CS PRO Trigger Event Type 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-trigger-event-type | *Version*:2027.0.0-ballot.2 |
| Draft Stand: 2026-11-26 | *Maschinenlesbarer Name*:MII_CS_PRO_Trigger_Event_Type |

 
Which event or purpose in the course of care or of a study triggered the collection of a questionnaire or score (collection context, HDB-1030). Based on the value set PROMs Trigger Event Type of the NHS Wales PROMs Information Standard, extended by concepts for measurement series (baseline, follow-up), collection purpose (screening, diagnostic assessment, monitoring) and study endpoints. The property `axis` marks whether a concept names a triggering event or the purpose of the collection. The mapping to NHS Wales is the ConceptMap mii-cm-pro-trigger-event-type-to-wales. 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII VS PRO Trigger Event Type](ValueSet-mii-vs-pro-trigger-event-type.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-pro-trigger-event-type",
  "language" : "en",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-trigger-event-type",
  "version" : "2027.0.0-ballot.2",
  "name" : "MII_CS_PRO_Trigger_Event_Type",
  "title" : "MII CS PRO Trigger Event Type",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-11-26T18:28:27+00:00",
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
  "description" : "Which event or purpose in the course of care or of a study triggered the collection of a questionnaire or score (collection context, HDB-1030). Based on the value set PROMs Trigger Event Type of the NHS Wales PROMs Information Standard, extended by concepts for measurement series (baseline, follow-up), collection purpose (screening, diagnostic assessment, monitoring) and study endpoints. The property `axis` marks whether a concept names a triggering event or the purpose of the collection. The mapping to NHS Wales is the ConceptMap mii-cm-pro-trigger-event-type-to-wales.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 17,
  "property" : [{
    "code" : "axis",
    "uri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-trigger-event-type#axis",
    "description" : "Whether the concept names a triggering event in the course of care or study (event) or the purpose of the collection (purpose). While the extension carries a single trigger type, choose the purpose concept when no concrete event triggered the collection.",
    "type" : "string"
  }],
  "concept" : [{
    "code" : "onboarding",
    "display" : "Onboarding / registration",
    "definition" : "Registration for future collections; no content measurement yet.",
    "designation" : [{
      "language" : "de",
      "value" : "Onboarding / Registrierung"
    }],
    "property" : [{
      "code" : "axis",
      "valueString" : "event"
    }]
  },
  {
    "code" : "primary-care",
    "display" : "Primary care",
    "definition" : "Collection in primary care before referral to specialised care.",
    "designation" : [{
      "language" : "de",
      "value" : "Primärversorgung"
    }],
    "property" : [{
      "code" : "axis",
      "valueString" : "event"
    }]
  },
  {
    "code" : "referral",
    "display" : "Referral",
    "definition" : "After acceptance of a referral to specialised or inpatient care.",
    "designation" : [{
      "language" : "de",
      "value" : "Überweisung"
    }],
    "property" : [{
      "code" : "axis",
      "valueString" : "event"
    }]
  },
  {
    "code" : "outpatient-appointment",
    "display" : "Outpatient appointment",
    "definition" : "On the occasion of a booked outpatient appointment.",
    "designation" : [{
      "language" : "de",
      "value" : "Ambulanter Termin"
    }],
    "property" : [{
      "code" : "axis",
      "valueString" : "event"
    }]
  },
  {
    "code" : "baseline",
    "display" : "Baseline / admission",
    "definition" : "First measurement of a measurement series: admission, enrolment, start of the survey.",
    "designation" : [{
      "language" : "de",
      "value" : "Baseline / Aufnahme"
    }],
    "property" : [{
      "code" : "axis",
      "valueString" : "event"
    }]
  },
  {
    "code" : "pre-intervention",
    "display" : "Pre-operative / pre-intervention",
    "definition" : "Before a planned intervention, e.g. as part of pre-operative assessment.",
    "designation" : [{
      "language" : "de",
      "value" : "Präoperativ / prä-interventionell"
    }],
    "property" : [{
      "code" : "axis",
      "valueString" : "event"
    }]
  },
  {
    "code" : "post-intervention",
    "display" : "Post-operative / post-intervention",
    "definition" : "After a confirmed intervention, usually at a defined interval.",
    "designation" : [{
      "language" : "de",
      "value" : "Postoperativ / post-interventionell"
    }],
    "property" : [{
      "code" : "axis",
      "valueString" : "event"
    }]
  },
  {
    "code" : "discharge",
    "display" : "Discharge",
    "definition" : "At discharge from inpatient or day-patient treatment.",
    "designation" : [{
      "language" : "de",
      "value" : "Entlassung"
    }],
    "property" : [{
      "code" : "axis",
      "valueString" : "event"
    }]
  },
  {
    "code" : "follow-up",
    "display" : "Follow-up",
    "definition" : "Scheduled follow-up at a defined interval to a reference event after the end of the treatment episode.",
    "designation" : [{
      "language" : "de",
      "value" : "Follow-up"
    }],
    "property" : [{
      "code" : "axis",
      "valueString" : "event"
    }]
  },
  {
    "code" : "clinician-initiated",
    "display" : "Clinician-initiated (on demand)",
    "definition" : "Requested by a treating professional outside a scheduled time point.",
    "designation" : [{
      "language" : "de",
      "value" : "Klinikerinitiiert (on demand)"
    }],
    "property" : [{
      "code" : "axis",
      "valueString" : "event"
    }]
  },
  {
    "code" : "patient-initiated",
    "display" : "Patient-initiated (on demand)",
    "definition" : "Triggered by the patient, e.g. when symptoms worsen.",
    "designation" : [{
      "language" : "de",
      "value" : "Patienteninitiiert (on demand)"
    }],
    "property" : [{
      "code" : "axis",
      "valueString" : "event"
    }]
  },
  {
    "code" : "screening",
    "display" : "Screening",
    "definition" : "Routine collection in a non-preselected population to identify conspicuous cases, e.g. PHQ-9 depression screening of all patients at admission.",
    "designation" : [{
      "language" : "de",
      "value" : "Screening"
    }],
    "property" : [{
      "code" : "axis",
      "valueString" : "purpose"
    }]
  },
  {
    "code" : "diagnostic",
    "display" : "Diagnostic assessment",
    "definition" : "Occasion-related assessment on suspicion or symptoms, as part of diagnostic classification or severity grading before a treatment decision.",
    "designation" : [{
      "language" : "de",
      "value" : "Diagnostik"
    }],
    "property" : [{
      "code" : "axis",
      "valueString" : "purpose"
    }]
  },
  {
    "code" : "monitoring",
    "display" : "Monitoring",
    "definition" : "Repeated collection during ongoing treatment for steering or observation, e.g. symptom monitoring during chemotherapy. Unlike follow-up, monitoring takes place within the treatment episode.",
    "designation" : [{
      "language" : "de",
      "value" : "Monitoring / Verlaufskontrolle"
    }],
    "property" : [{
      "code" : "axis",
      "valueString" : "purpose"
    }]
  },
  {
    "code" : "study-endpoint",
    "display" : "Study endpoint",
    "definition" : "Collection to determine a primary, secondary or further endpoint defined in a study protocol; the protocol position names the endpoint.",
    "designation" : [{
      "language" : "de",
      "value" : "Studienendpunkt"
    }],
    "property" : [{
      "code" : "axis",
      "valueString" : "purpose"
    }]
  },
  {
    "code" : "other",
    "display" : "Other",
    "definition" : "None of the triggers in this list applies.",
    "designation" : [{
      "language" : "de",
      "value" : "Sonstiges"
    }],
    "property" : [{
      "code" : "axis",
      "valueString" : "event"
    }]
  },
  {
    "code" : "unknown",
    "display" : "Unknown",
    "definition" : "Trigger not known.",
    "designation" : [{
      "language" : "de",
      "value" : "Unbekannt"
    }],
    "property" : [{
      "code" : "axis",
      "valueString" : "event"
    }]
  }]
}

```
