# National Questionnaire Server (Concept 2027) - MII IG PRO v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Guidance**](guidance.md)
* **National Questionnaire Server (Concept 2027)**

## National Questionnaire Server (Concept 2027)

> **Status:** concept for the 2027 work programme. Nothing on this page is implemented; it describes the target picture the module's architecture is being built towards, and the decisions still open.

### The problem

Today the module's instruments reach implementers exclusively **at build time**, as a versioned FHIR package. That is right for validation and reproducibility — and structurally too slow for everything else: a corrected item wording, a newly licensed instrument or an updated answer scale reaches a renderer only after the site's next package upgrade. Every site resolves licences separately, every ePRO system caches its own copies, and nobody can say which questionnaire version is actually in use where. The questionnaire catalogue (CodeSystem `mii-cs-pro-questionnaire-catalogue`) names the instruments — but a name registry is not a distribution channel.

### The concept

A **national questionnaire server**: one FHIR endpoint, analogous in role to the central terminology server, hosting the module's **definitional** resources at runtime —

| | |
| :--- | :--- |
| Questionnaire | the instruments, every published version, capability variants |
| CodeSystem / ValueSet | the answer scales with their ordinal weights |
| ObservationDefinition | score definitions incl. reference intervals |
| Library (CQL) | the authoritative scoring logic (channel B) |
| ConceptMap | linkId bridges and, later, score crosswalks |

Clients resolve by **canonical URL and version** (`Questionnaire?url=…&version=…`), discover by catalogue code and by capability — the module's SearchParameters (e.g. `mii-sp-pro-questionnaire-capabilities`) exist precisely for this — and always get the current published state. The package does not go away: it stays the **reproducible snapshot** for validation and archival; the server is the **living distribution**.

### What a central server makes possible

1. **Runtime currency.**A renderer fetches the questionnaire at form-opening time; corrections propagate without site release cycles.
1. **Licence enforcement at the source.**Tier-B/C instruments (metadata-only, licensed) can be served access-controlled: metadata public, item texts behind an authorisation the licence holder grants — enforced once, centrally, instead of hoped-for at every site. The WHODAS and BDI-II situations are the concrete drivers.
1. **A home for the scoring service.**Channel B (`Library/$evaluate`) wants to live where the Libraries live; co-locating turns the server from a file store into the**authoritative scoring endpoint**.
1. **The CAT perspective.**[Computer-adaptive testing](cat.md)needs a server holding item banks and IRT parameters and answering`$next-question`— the same infrastructure, one capability further.
1. **Deployment transparency.**Version-resolved retrieval makes "which version is in the field" an answerable question — the precondition for managed linkId migrations like the PHQ-9 one.

### Architecture sketch — and a working prototype pair

The concept is not paper-only: two BIH-CEI prototype repositories already implement the layer cut end to end for PHQ-9 — [`pro-library`](https://github.com/BIH-CEI/pro-library) (the content layer) and [`fhir-sdc-questionnaire-service`](https://github.com/BIH-CEI/fhir-sdc-questionnaire-service) (the service layer, an SDC **Form Manager**).

```
flowchart TB
    subgraph N["Normative layer — this module"]
        IG["MII PRO IG + versioned package<br/>(reproducible snapshot)"]
    end
    subgraph C["Content layer — prototype: pro-library"]
        LIB["FSH-authored artefacts<br/>Questionnaires · ValueSets · CodeSystems · CQL"]
        MAN["CRMI manifest<br/>(Library, type asset-collection —<br/>pins every artefact version)"]
        LIB --- MAN
    end
    subgraph S["Service layer — prototype: fhir-sdc-questionnaire-service"]
        FM["SDC Form Manager container<br/>HAPI FHIR + SDC IG + MII PRO IG baked in<br/>$package · $populate · $extract · $localize<br/>validated against the SDC Form Manager CapabilityStatement"]
    end
    subgraph K["Clients"]
        R["Form renderer / ePRO app"]
        E["EHR / KIS"]
        SC["Scoring service<br/>(channel B, Library/$evaluate)"]
    end
    IG -- "derivedFrom, versioned canonicals (…|version)" --> LIB
    MAN -- "release = pinned manifest" --> FM
    R -- "$package (form + dependencies)" --> FM
    E -- "resolve by canonical|version" --> FM
    FM -- "Libraries co-located" --> SC

```

The division of labour is exactly the one argued above: the **package stays the reproducible snapshot** (normative layer), the **content repository** carries the artefacts with a CRMI asset-collection manifest as the release primitive, and the **Form Manager** is the runtime endpoint — with the SDC operations a renderer actually calls. The prototypes deliberately claim no normative authority; they build the infrastructure a future authority would operate.

### Why a terminology server does not fill this role

The terminology server is the analogy for the **operating model** (central, governed, nationally reachable) — not for the function. A FHIR terminology server serves CodeSystems and ValueSets and answers `$expand` and `$validate-code`; that is where its contract ends. What the questionnaire server needs is precisely what a terminology server does not do:

* it does not serve **Questionnaires** (nor ObservationDefinitions, ConceptMaps, CQL Libraries) as versioned, discoverable artefacts,
* it does not implement the **SDC operations** — no `$package`, no `$populate`, no `$extract`, no `$next-question`,
* it has no notion of **capability- or licence-gated** artefact access,
* and it is no home for **`Library/$evaluate`** scoring.

The two servers are complements, not alternatives: the Form Manager resolves its answer-scale ValueSets **against** the terminology server, and both sit in the same trust and operations model.

### Open decisions

* **Operator and governance:** who runs it (the terminology-server operating model is the obvious template), who publishes to it (release pipeline of this module as the only write path), and how licence holders grant access.
* **AuthN/AuthZ model** for the protected tiers (SMART backend services is the natural candidate).
* **Relation to registries:** the Simplifier package registry keeps the packages; the server serves the resources. Whether the server also **federates** (sites mirror it) or stays single-instance is open.
* **Offline capture:** ePRO apps need a defined caching contract (how long may a fetched questionnaire be used before re-resolution?).

### Where this page's claims come from

The building blocks named here exist in the module today: the catalogue CodeSystem, the capability SearchParameters, versioned canonicals throughout, CQL libraries for EQ-5D/PHQ-9/PRO-CTCAE, and the three-channel scoring architecture the server would slot into. What does not exist is the server itself — hence: concept, 2027.

