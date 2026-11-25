<!-- markdownlint-disable MD041 -->
<!-- Audience page for vendors of ePRO systems (patient apps and portals, form
     renderers, form servers that order and dispatch questionnaires).
     DIC / ETL implementers: implementer-guidance.md.
     German mirror: input/translations/de/pagecontent/epro-guidance.md. -->

Guidance for **vendors of ePRO systems**: patient apps and portals, form renderers and form servers that order, dispatch and collect questionnaires of the PRO module. Data integration centres (DIC) that receive and transform the results have their own page, [Guidance for Implementers](implementer-guidance.html).

> **Note on status:** the collection lifecycle below (ServiceRequest, Task, Communication) is a **recommended pattern**; the module does not profile these resources. What the module requires is stated as a rule and enforced by the [profiles](profiles.html) for QuestionnaireResponse and score Observation. Feedback on the pattern is welcome.

### Your system's role

| Your system | Consumes | Produces | Start with |
|---|---|---|---|
| **Form server / dispatch system** | Questionnaire, collection plan, triggering events | ServiceRequest, Task, Communication; forwards QuestionnaireResponses | [Collection lifecycle](#collection-lifecycle), [Collection context](workflows.html#collection-context) |
| **ePRO app / patient portal** | Task, Questionnaire | QuestionnaireResponse, Task status | [What a QuestionnaireResponse must carry](#questionnaireresponse), [Capabilities](questionnaire-capabilities.html) |
| **Embedded form renderer** | Questionnaire (SDC) | QuestionnaireResponse | [Handling questionnaires](#questionnaires), [Scoring](scoring.html) (channel A) |
| **Scoring service** | QuestionnaireResponse | score Observation | [Scores](#scores), [Scoring](scoring.html) (channel B, CQL) |

### Collection lifecycle {#collection-lifecycle}

A collection passes through plan, order, execution, notification and result. Each step has its own FHIR resource; the QuestionnaireResponse links back to the order.

| Step | Resource | Content for a PRO collection |
|---|---|---|
| Plan | CarePlan (patient), PlanDefinition (study protocol) | all time points of a measurement series |
| Order per time point | ServiceRequest | which instrument (`code`, e.g. questionnaire catalogue code or LOINC panel), target window (`occurrencePeriod`), triggering event (`reasonReference` to Encounter or Procedure), plan (`basedOn`) |
| Execution | Task | `basedOn` the ServiceRequest, `for` and `owner` the patient (or a proxy), due window in `restriction.period`, the Questionnaire as versioned canonical in `input`, the QuestionnaireResponse in `output`; status `requested` → `in-progress` → `completed`, or `cancelled` / `failed` |
| Notification | Communication | a single invitation or reminder, `basedOn` the ServiceRequest |
| Result | QuestionnaireResponse | `basedOn` the ServiceRequest, see below |

Three dates keep their own place and must not be mixed: the **triggering event** (discharge, surgery: on the ServiceRequest and in the collection context), the **dispatch** (Communication `sent`) and the **completion** (`QuestionnaireResponse.authored`). Response rates and reminders are evaluated on Task and Communication; measurement series only on the triggering event.

Dispatch is decoupled from the triggering event for good reasons:

* **It can happen more than once.** A first invitation and one or more reminders are separate Communications for the same Task.
* **It can be delayed technically**, e.g. by network or delivery failures, without changing when the collection is due.
* **It follows a dispatch policy.** Invitations may go out at a random time, always in the evening, at the time the patient prefers, or on days the provider has chosen, for example at weekends because follow-up rates are better.

The dispatch policy is a property of the ePRO system, not of the data. It shows in Task and Communication, never in the collection context. An evaluation that needs the time between event and dispatch reads it from there.

In R4 `QuestionnaireResponse.basedOn` allows CarePlan and ServiceRequest only. A Task points to its QuestionnaireResponse via `output`, not the other way round.

### What a QuestionnaireResponse must carry {#questionnaireresponse}

The [QuestionnaireResponse profile](StructureDefinition-mii-pr-pro-questionnaire-response.html) is the contract between your system and everyone downstream. Fill:

* **`questionnaire`** as a versioned canonical (`…/Questionnaire/mii-qst-pro-phq-9|<version>`). The version decides which answer scales and weights apply.
* **`status`** `completed` (or `amended` after a correction), **`authored`** as the completion time, **`subject`**.
* **`language`** and the item texts and answer displays **as they were shown**, with the `translation` extension when the form was presented in a second language.
* **`basedOn`** the ServiceRequest (or CarePlan) when the collection was ordered.
* **`encounter`** only when the collection took place during that encounter. A follow-up three months after discharge does not reference the discharge encounter; that belongs in the collection context.
* **Collection context** (extension [Collection Context](StructureDefinition-mii-ex-pro-collection-context.html)): the trigger type, or the protocol position in a study. Your system sets it from the ServiceRequest or the launch context; the patient never does. Rules and examples: [Workflows › Collection context](workflows.html#collection-context).

### Handling questionnaires {#questionnaires}

* **Load a fixed version** from the package and keep it with every response. Do not edit a published Questionnaire; a local variant is a new resource with `derivedFrom`.
* **Respect the capabilities extension.** Instruments whose licence forbids display (e.g. BDI-II) carry no displayable capability; rendering their item texts is a licence violation. See [Questionnaire Capabilities](questionnaire-capabilities.html).
* **Keep linkIds and answer codes.** linkIds are canonical across instruments; answers carry `system` and `code` of the bound scale, never bare integers.
* **Use the `translation` extension** to present the German wording; the English-primary resource stays authoritative.
* **Scoring weights** are SDC `itemWeight` values, read with the FHIRPath function `.weight()`; see [Scoring](scoring.html).

### Scores {#scores}

* A score computed in the form (channel A, `calculatedExpression`) is a **preliminary** display value. The authoritative score Observation comes from the scoring service (channel B); see the medical-device boundary on the [Scoring](scoring.html) page.
* A score Observation references its QuestionnaireResponse in `derivedFrom` and **copies the collection context** from it.

### Hand-over to the data integration centre

Task, ServiceRequest and Communication usually stay in the clinical or ePRO system and do not reach the DIC. Everything a later analysis needs must therefore be on the QuestionnaireResponse and the score Observations themselves: versioned questionnaire, collection context, `authored`, `language`, `subject`. The DIC side is described in [Guidance for Implementers](implementer-guidance.html).

### Getting the artefacts

- **Package (build time, reproducible):** `fhir install de.medizininformatikinitiative.kerndatensatz.pros@<version>`
- **Rendered artefacts (human review):** this IG's [Artifacts](artifacts.html) pages
- A runtime distribution channel for questionnaires is on the roadmap: [National questionnaire server](national-questionnaire-server.html).
