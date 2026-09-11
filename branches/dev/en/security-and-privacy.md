# Security and Privacy - MII IG PRO v2027.0.0-ballot.1

* [**Table of Contents**](toc.md)
* **Security and Privacy**

## Security and Privacy

This section addresses security and privacy experts. General requirements are in the FHIR core specification — [Security & Privacy Module](https://build.fhir.org/secpriv-module.html) and the [security checklist](https://build.fhir.org/security.html). This page does not repeat them; it links the overarching data protection framework and states what is **specific to this module**.

#### 1. The overarching data protection concept

The [overarching data protection concept of the Medical Informatics Initiative](https://www.medizininformatik-initiative.de/en/data-protection-concept) governs how patient data may be processed for research across the network of Data Integration Centers: it covers the legal basis (the MII Broad Consent), the roles of the Data Integration Centers and Use & Access Committees, and the cross-site application scenarios (feasibility queries, distributed analyses, data and biosample provision). Everything this module specifies operates inside that framework — this guide adds no processing purpose of its own.

#### 2. De-identification, minimisation and pseudonymisation (DIMP)

How data leaving a Data Integration Center is de-identified in practice is specified by [DIMP (De-Identification — Minimisation — Pseudonymisation)](https://medizininformatik-initiative.github.io/dataportal/data-node/DIMP.html) in the data portal documentation: direct identifiers are removed, data elements not needed by the approved project are dropped, and identifying values are replaced by project-specific pseudonyms (FHIR Pseudonymizer configuration). The profiles of this module describe data **before** DIMP is applied; which elements survive a concrete data release is decided per project by the DIMP configuration, not by this guide.

#### 3. Module-specific aspects

Patient-reported outcomes are **direct self-reports** — that shapes this module's own aspects:

* **Sensitive content categories.** Most implemented instruments screen for mental health (PHQ-9, BDI-II, DASS-21, EPDS, HADS, …). Single answers can be as sensitive as scores — PHQ-9 item 9 (suicidality) in particular. Systems SHOULD apply the same access protection to raw QuestionnaireResponses as to diagnoses, not treat them as mere survey data.
* **Free-text answers.** Instruments with open text fields (MIDOS2 free text, remark items) can carry directly identifying information the patients entered themselves. Pseudonymisation at the profile level does not cover this; data releases SHALL treat free-text answers as potentially identifying and exclude or manually curate them.
* **Scores are derived data.** A score Observation without its source response reveals less than the response; where a project needs only scores, releasing only the score Observations is the data-minimising option DIMP can enforce.

Beyond these, the module places no additional security requirements; the overarching framework above applies unchanged.

