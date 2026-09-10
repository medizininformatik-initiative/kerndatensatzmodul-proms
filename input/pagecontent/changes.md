<!-- TODO:REVIEW machine translation of source page changes.md (de) — the German
     changelog is the maintained original; this English version was rebuilt from
     it during the template migration (it had frozen at 2026.2.0). -->

This page documents the changes between versions of the MII PRO module.

### 2027.0.0-ballot.rc4 — in preparation

**QuestionnaireResponse: German always available (2026-09-10):** the profile now requires `item.text` (1..1) and `item.answer.valueCoding.display` (1..1), both must-support with the `translation` extension, plus two invariants: item text and answer display must be available in German — either as the resource's primary language (`language` starts with `de`) or via a `translation` extension with `lang = de`. All 20 example responses were regenerated accordingly (350 item texts, 252 answer displays): German-primary instruments carry German directly, English-primary instruments carry the canonical wording plus German translation extensions; the EORTC QLQ-C30 questionnaire gained the official German item wordings as translation extensions along the way.

**LOINC supplement (2026-09-08):** `mii-cs-pro-loinc-supplement` ships the validated German answer wordings (PHQ-D, PROMIS/PHO) as designations on 24 LOINC codes — content for consumers and terminology servers; measured on both relevant publishers (2.2.11, 2.3.2), display validation does not consume local supplements yet, so the ~178 display findings remain a documented environment class.

The 2027 ballot version brings the **move onto the MII KDS module template** (v0.11.3) — the same toolchain as the other KDS modules. For implementers **nothing changes** in the FHIR artifacts: all 214 resources, their ids, canonicals and versions are unchanged (measured, 0 regressions).

What does change:

- **One page set instead of two.** The IG-Publisher website and the Simplifier guide are produced from the same sources; the drift between the two documentation trees (e.g. the scoring page: 2025-08 vs. 2026-08 state) is structurally over.
- **Bilingual with an English default.** English is the default language, German the complete translation — 61 pages per language, switchable on every page. Twelve English pages were newly created from the German originals for this (review pending).
- **TF-KDS menu structure** with artifact intro notes: the descriptions of the abstract profiles and extensions now sit directly on the generated artifact pages.
- **Formal publication prepared:** the template's release workflows (tag → build → draft release → Zulip), a pinned toolchain instead of `:latest`, GitHub Pages deployment via Actions.
- **Jurisdiction** switched from m49#276 to `urn:iso:std:iso:3166#DE` (same meaning; the m49 encoding rendered "Unknown region code" in every page header).
- Two small data fixes: the WHODAS example QuestionnaireResponse declares `language = #de`; the PROMIS-29 bundle no longer references the person module's patient profile with the PRO module version.

**EORTC QLQ-C30 restructured to standalone terminology (2026-09-08):** the main questionnaire no longer contains its CodeSystem/ValueSets — it binds the standalone `mii-vs-pro-eortc-qlq-c30-scale-4pt/-7pt`, whose CodeSystem now carries the answer weights as `itemWeight` properties (ported 1:1 from the retired contained resources; EORTC scales are 1-based). The two modelling-experiment variants (`…-variant-a`, `…-variant-b`) are removed — they were referenced nowhere. Resolves the largest remaining QA class (82 contained-resource profile violations).

**Dependency upgrade for the 2027 line (2026-09-08):** SDC 3.0.0 → **4.0.0** (final), ISiK 5.1.1 → **6.0.0**, kerndatensatz.meta 2026.0.0 → **2027.0.0-ballot.rc3**, basisprofil 1.5.4 → **1.6.0**. The SDC step is the breaking one and was migrated in full: the `ordinalValue` extension becomes **`itemWeight`** (395 answer options), CodeSystem weight properties become `concept-properties#itemWeight`, and all 90 FHIRPath scoring expressions switch from `.ordinal()` to **`.weight()`**. Existing QuestionnaireResponses are unaffected — weights live on the questionnaire and terminology side, not in the responses.

Details and open decisions: [PR #129](https://github.com/medizininformatik-initiative/kerndatensatzmodul-proms/pull/129).

### 2026.7.0 — 2026-09-02 (released, tag `v2026.7.0`, package + GitHub release)

Minor release — **GAD-7** as a new instrument, a shared PHQ four-point scale and a ConceptMap for item numbering. No breaking changes to existing resources.

#### Added: GAD-7 (Generalized Anxiety Disorder Scale-7)

Seven items screening for generalized anxiety disorder, sum score 0–21, severity bands 5/10/15 (Spitzer et al. 2006). English as the primary language with the validated German translation (PHQ-D; Löwe et al. 2008, n=5030). LOINC panel `69737-5`, score `70274-6`. Freely available, no permission required.

**linkIds in the PHQ-D block namespace** (`phq-phq5a`…`phq-phq5g`) rather than an instrument-specific numbering. The reason is the interlocking within the PHQ family: the first two GAD-7 items form the GAD-2, and together with two PHQ-9 items they make up the PHQ-4. The same question should carry the same linkId across instruments — otherwise a migration ConceptMap would become necessary later, as it had to be created for the PHQ-9 in 2026.5.0.

**Not carried over:** a PROMIS anxiety T-score conversion that existed as a FHIRPath expression in an earlier development state. Score conversions between instruments will be modelled as a CQL library.

#### Added: shared PHQ four-point scale

The RuleSet `Phq4PointFrequencyAnswerOptions` bundles the two-week frequency scale (0–3) with the LOINC answer codes of list LL358-3 (`LA6568-5`…`LA6571-9`) and the German PHQ-D wordings. GAD-7 uses it; PHQ-9 and PHQ-4 can be switched to it.

#### Added: ConceptMap for GAD-7 item numbering

`mii-cm-pro-gad-7-linkids` maps the conventional GAD-7 numbering (items 1–7, as published and common in third-party systems) onto the canonical linkIds. Explicitly **not** a migration of a published version — a reading aid for taking over data from third-party systems.

### 2026.6.0 — 2026-09-01 (released, tag `v2026.6.0`, package + GitHub release)

Minor release — **six new instruments** from the PCOR-MII PSS set (Persistent Somatic Syndrome), a new shared answer scale and a sharpened display-language convention. No breaking changes to existing resources.

#### New instruments

| Instrument | Items | Answer scale | Score |
|---|---|---|---|
| **SCOFF** (Morgan et al. 1999) | 5 | binary (SNOMED CT) | sum 0-5 |
| **WI-7 / Whiteley-7** (Fink et al. 1999) | 7 | binary (SNOMED CT) | sum 0-7 |
| **PC-PTSD** (Prins et al. 2003) | 4 | binary (SNOMED CT) | sum 0-4 |
| **SSD-12** (Toussaint et al. 2016) | 12 | 5-point, own CodeSystem | sum 0-48 |
| **ISR-Z** (Tritt et al. 2008) | 3 | 5-point, own CodeSystem | **mean** 0-4 |
| **EURONET-SOMA** (Rief et al. 2017) | 2 | NRS 0-10 | no score (single items) |

All item texts come from the PCOR-MII Item Level Dictionary and were verified character-exactly against that source. All example scores are recalculated from the `ordinalValue` weights.

#### Added: shared yes/no answer scale

New RuleSet `YesNoAnswerOptions` (`input/fsh/rulesets/answer-scales.fsh`) for generic yes/no answers. It uses **SNOMED CT `373066001` (Yes) / `373067005` (No)** per the recommendation of the TC Terminologien (HL7 Germany / Interop Council) — instead of a self-defined MII CodeSystem duplicating standardised terminology.

Since no `ordinalValue` property can be attached to SNOMED concepts, these instruments use **inline `answerOption`** rather than `answerValueSet`. Answers in QuestionnaireResponses thereby carry a terminologically unambiguous coding with `system` and `code` instead of systemless integers.

#### Sharpened: display language in answer CodeSystems

The `display` value of an answer concept is in the **language of the questionnaire**; further languages are carried as `designation`. This is not a matter of style: in a resource with `language = #de` the FHIR validator expects the German display in `valueCoding`. With the English one there, the entire `answerValueSet` check fails — with the misleading follow-up message that the value is not in the options value set, suggesting a terminology problem that does not exist.

#### Modelling notes

- **ISR-Z forms a mean, not a sum.** The ISR defines scale values as means of the items (Tritt et al. 2008); the FHIRPath calculation accordingly uses `.avg()` instead of `.sum()`, range 0-4.
- **Language per instrument.** `language` follows the instrument's original language: SCOFF, WI-7 and EURONET-SOMA are EN-primary with a German translation, PC-PTSD, SSD-12 and ISR-Z DE-primary. Where no validated original could be evidenced, **no** translation was invented.
- **Cut-offs stay documentation.** Published cut-offs (SCOFF ≥ 2, PC-PTSD ≥ 3) are documented as `qualifiedInterval` in the ObservationDefinitions but not shipped as executable interpretation logic.
- **Terminology.** For none of the six instruments do LOINC or SNOMED CT carry a code for the instrument itself (checked against LOINC 2.83 and SNOMED International 2026-05-01); coding is via the MII questionnaire catalogue.

### 2026.5.2 — 2026-07-27 (released, tag `v2026.5.2`, package)

Patch release (fix-only) — **no** changes to instruments, profiles or terminology. Recommended for everyone running 2026.4.0–2026.5.1.

#### Bugfix: import fails in HAPI FHIR (server does not start)

The packages **2026.4.0–2026.5.1** could not be loaded into HAPI FHIR — the server aborted at startup:

```
HAPI-0838: ConceptMap[url='…/ConceptMap/mii-cm-pro-bdi-ii-to-promis-depression-observation']
           contains at least one group without a value in ConceptMap.group.source
→ HAPI-1286: Error installing IG … → Application run failed → Unable to start web server
```

- **Cause:** the ConceptMap `mii-cm-pro-bdi-ii-to-promis-depression-observation` introduced in 2026.4.0 was an incomplete stub (only 2 of 64 PROsetta Stone anchor points, `group` without `source`/`target` CodeSystem). HAPI rejects ConceptMaps without `group.source` on package install and aborts the server start. 2026.3.0 contained **no** ConceptMap and therefore loaded cleanly.
- **Fix:** the ConceptMap stub was removed from source and package. The BDI-II→PROMIS depression T-score conversion remains as a complete FHIRPath crosswalk in the BDI-II questionnaire; a CQL library solution is planned for 2027.
- **Verified:** 2026.5.2 was tested in HAPI FHIR (v7.6.0) and starts cleanly; the remaining ConceptMap `mii-cm-pro-phq-9-linkid-migration` installs correctly (it carries `sourceScope`/`targetScope`).

#### Package hygiene (fixed alongside)

- Removed: three accidentally packaged IG-Publisher lifecycle artifacts (`onLoad-ig-working.json`, `onLoad-ig-updated.json`, `onGenerate-ig-working.json` — a triple copy of the ImplementationGuide with an identical canonical URL) are now filtered out in the Firely Bake build (`onLoad-*`/`onGenerate-*`/`onCheck-*`), as are macOS files (`._*`, `.DS_Store`) defensively. Not a HAPI startup blocker, but unclean packaging.
- Fixed: uniform versioning — all conformance resources consistently carry `2026.5.2`. Previously shipped packages contained mixed version states (down to `2026.0.0`) because `fsh-generated` was not regenerated on every version bump.

### 2026.5.1 — 2026-07-13 (released, tag `v2026.5.1`, GitHub release + package)

Patch release on 2026.5.0.

#### Migration & breaking changes

- **`BREAKING` (carried over from 2026.5.0):** the PHQ-9 item linkIds were switched in 2026.5.0 from the `phq-phq9-q01…q10` scheme to the shared PHQ-D block namespace (`phq-phq2a…i` + `phq-phq9-difficulty`). Existing PHQ-9 QuestionnaireResponses with old linkIds no longer match the questionnaire from 2026.5.0 on.
- Added: **ConceptMap `mii-cm-pro-phq-9-linkid-migration`** — maps the old PHQ-9 linkIds 1:1 onto the new ones (10 items: `phq-phq9-q01…q09` → `phq-phq2a…i`, `phq-phq9-q10` → `phq-phq9-difficulty`) for migrating existing responses. The calculated items (`phq-phq9-score-total`, `phq-phq9-promis-tscore`) were not renamed.

### 2026.5.0 — 2026-07-13 (released, tag `v2026.5.0`, GitHub release + package)

Minor release: two new instruments (**WHODAS 2.0 12-item** and **PHQ-15**), the shared **PHQ-D item bank** (PHQ-9/PHQ-15), uniform **MII score coding** across all score ObsDefs and a **CI improvement** (ValueSet expansion) that permanently fixes answerValueSet answer validation.

#### New instruments

- Added: **WHODAS 2.0 12-item (self-report)** — WHO Disability Assessment Schedule 2.0, 12 items across 6 ICF domains, 30-day recall, 5-point scale (0–4). English primary with German translations (validated PCOR-MII wordings). Answers via `answerValueSet` (`mii-vs-pro-whodas-12-answer-list`) with ordinalValue weights on the CodeSystem concepts. **Limitation score** `mii-obsdef-pro-score-whodas12-simple-sum` (0–48, SNOMED `715823002`, MII catalogue `whodas12-simple-sum`, higher = more impairment). Incl. example QuestionnaireResponse + score Observation and IG page.
  - **Licence:** WHODAS 2.0 © WHO 2010. Terms are machine-readable as `copyright` on Questionnaire and CodeSystem: free clinician self-use; electronic/data-capture use requires a WHO usage agreement (free for non-commercial use); translations require WHO approval; MII FHIR content CC0, WHODAS item text © WHO.
- Added: **PHQ-15** (somatic symptom burden, PHQ-D) — 15 items, 4-week recall, 3-point scale (0–2). English primary with German translations (PHQ-D, Löwe et al. 2002). Answers via `answerValueSet` with ordinalValue weights. Score `mii-obsdef-pro-score-phq-15` (0–30, LOINC `70273-8`) incl. **severity categories** (Kroenke et al. 2002: 0–4 / 5–9 / 10–14 / 15–30) as `qualifiedInterval` reference ranges. Incl. IG page. Licence: freely available (public domain), PHQ-D.

#### Architecture: PHQ-D item bank

- Changed: **PHQ-9 and PHQ-15 use a shared PHQ-D block linkId scheme** (`phq-phq…`). Items contained in both instruments (sleep `phq-phq2c`, fatigue `phq-phq2d`) share the same linkId — the basis for item-based scoring across instruments.
- Changed: PHQ-15 switched to `answerValueSet` + CodeSystem `ordinalValue` (EN-first); `copyright`/licence status set explicitly on PHQ resources.

#### Scoring & terminology

- Changed: **MII catalogue code (`code.coding[mii]`) added to all score ObservationDefinitions** (PROMIS-29 ×8, PROMIS Cognitive Function SF4a, depression T-score, BDI-II, PHQ-9, PHQ-15) — alongside LOINC/SNOMED, uniformly queryable via the MII score catalogue (EQ-5D/EORTC/DASS-21/PRO-CTCAE already had it).

#### Technical improvements

- Changed: **CI** — `expand-valuesets.js` now runs after SUSHI in the IG build and writes `vs.expansion` from local CodeSystems. The validator can thereby resolve the MII-controlled `answerValueSet` answer scales; the previously reported "value not in the specified options" findings on example QuestionnaireResponses disappear (PHQ-15, WHODAS and future answerValueSet instruments).

### 2026.4.1 — 2026-06-15 (released, tag `v2026.4.1`)

Patch release on v2026.4.0: fixes missing version metadata on the 3 EQ-5D-5L ObservationDefinitions, discovered while baking v2026.4.0.

FHIR resources:
- Fixed: `mii-obsdef-pro-score-eq5d5l-index`, `…-profile`, `…-vas` — `* insert ObsDefVersion` and `* insert MetaProfile(...)` added (previously both RuleSets were missing, so no `artifact-version` extension in the package and no `meta.profile` entry with a versioned canonical). All other ObsDefs already had both.

Verification:
- Before: 36 ObsDefs with artifact-version=2026.4.0, 3 without (EQ-5D)
- After: 39 ObsDefs with artifact-version=2026.4.1

### 2026.4.0 — 2026-06-14 (released, tag `v2026.4.0`)

Two thematic additions in one release: **PROMIS consolidation** (PROMIS-16 PROPr, wording migration, copyright model) and **symptom screening for oncological and palliative care** (MIDOS2 + PRO-CTCAE oncology base screening).

#### Symptom screening (MIDOS2 + PRO-CTCAE oncology base screening)

PRO instruments:
- Added: **MIDOS2** (Minimal Documentation System for Patients in Palliative Care, DGP) — palliative symptom screening with 13 items (11 symptoms on the DGP 4-point severity scale, well-being on a 4-point scale, free text)
- Added: **PRO-CTCAE oncology base screening** (DKG) — subset of the NCI PRO-CTCAE with a MIDOS2-equivalent symptom selection, 10 AEs / 23 items, depressed mood via PRO-CTCAE-conform multi-mapping (#55 Discouraged + #56 Sad), anxiety+tension via #54 Anxiety

Architecture:
- Added: PRO-CTCAE Complete as master item bank, derivatives via `derivedFrom`
- Added: catalogue entries `midos-midos2` and `proctcae-onkologisches-basisscreening`

Terminology & mapping:
- Added: MIDOS2 CodeSystem with the DGP 4-point severity scale; separate well-being scale
- Added: SNOMED properties on MIDOS2 item codes (where unambiguous; Snowstorm verification pending)
- Added: MIDOS2 ↔ PRO-CTCAE item-level mapping (11 AEs, 23 items)
- Verified: PRO-CTCAE item wordings against the NCI original (EN/DE); discrepancies #27 Hair Loss + #59 Vaginal Discharge (int → amt) documented

IG documentation & examples:
- Added: `midos2.md` and `proms-onkologisches-basisscreening.md` pages, registered under the PRO Library
- Added: example responses for both instruments (MIDOS2 sum 19/33; oncology patient under chemotherapy)
- Status: both instruments `draft` + `experimental`; MIDOS2 source verification against Stiel et al. 2010/2012 pending (bead `5jd`)

#### PROMIS consolidation

PRO instruments:
- Added: **PROMIS-16 Profile v2.1 (PROPr)** — ultra-short multi-domain instrument, 16 items across 8 domains (incl. Cognitive Function); all items with the official German wordings from the PHO PDF "PROMIS-16 Profile v2.1 (PROPr), German, 20 September 2024". Score calculation (PROPr utility + 8 domain T-scores) deliberately deferred (CQL library `mii-lib-promis-16` planned)
- Fixed: **PROMIS-29 wording migration** — 25 item texts aligned with the official German wordings (previously AI-generated/LOINC-fragment translations). Source hierarchy: the PHO PDF "PROMIS-29 Profile v2.1 German, 06 April 2020" is normative; the PCOR-MII Master Item-Level Dictionary is the secondary cross-check
- Fixed: **PROMIS-29 pain-interference verb tense** — 4 items switched to past tense per the PHO PDF; **answer scales** — 5 items (HI7, AN3, Sleep116, Sleep20, Sleep44) moved from the frequency to the intensity scale with the corresponding LOINC code swap; **SRPPER23-CaPS** — wrong LOINC 62041-9 replaced by 76709-5 with matching German text
- Changed: **PROMIS Cognitive Function SF 4a** — copyright RuleSet added (wordings were already PHO-conform)

Architecture & licensing:
- Added: central RuleSet `PROMIS_Copyright_DE` with layered attribution on all PROMIS questionnaires (MII FHIR structure / PROMIS items © PHO / German translations via PCOR-MII, curated by CPCOR Charité / LOINC © Regenstrief)
- Added: `publisher`, `copyright`, `useContext` and CPCOR contact on all PROMIS questionnaire instances; new ValueSet `MII_VS_PRO_PROMIS_Intensity_Response_Scale` (LOINC LL1024-0)
- Clarified: `mii-qst-pro-promis-29-de` is a presentation variant only (DE-primary for renderers that ignore the `translation` extension); the EN-primary main version is authoritative

Tooling & verification:
- Added: skill `extract-qst-translations` — extracts item texts and translation extensions from generated questionnaires and diffs them against the PCOR-MII master (MATCH/DIFF counters)
- Verified: PROMIS-29 against the PHO PDF word-identical after the fixes; PROMIS-16 MATCH=15, DIFF=0; Cognitive Function SF 4a MATCH=4, DIFF=0

### 2026.3.0 — 2026-05-08 (released, tag `v2026.3.0`)

PRO instruments:
- Added: GAD-7 — first implementation with questionnaire, terminology and scoring (#80); superseded by the 2026.7.0 re-implementation in the PHQ-D namespace

FHIR resources:
- Fixed: PROMIS-29 English variant repaired — 33 defective item texts corrected
- Removed: incomplete PROMIS-29 minimal variant
- Removed: incomplete ConceptMap stub `mii-cm-pro-bdi-ii-to-promis-depression-observation` (only 2 of 64 PROsetta Stone entries). Architectural decision: score conversions will be modelled as CQL libraries (planned for the 2027 release)
- Fixed: capabilities extension completed on `mii-qst-pro-promis-cognitive-function-sf4a`; added to `mii-qst-pro-pro-ctcae-breast-de` (displayable+collectable=true; calculatable/extractable/domainAligned=false — deliberate, pending composite-grade scoring decisions)

### 2026.2.0 — 2026-03-30 (released, tag `v2026.2.0`, Simplifier package published)

PRO instruments:
- Added: DASS-21 (Depression Anxiety Stress Scales) — full implementation with questionnaire, terminology (CodeSystem, ValueSets), scoring and examples; IG documentation page

Dependencies and tooling:
- Changed: de.gematik.isik 5.0.0 → 5.1.1; hl7.fhir.uv.extensions.r4 5.1.0 → 5.2.0 (consistent with the Imaging and Laboratory modules)

ObservationDefinition:
- Fixed: depression T-score ObsDef — population information moved from `qualifiedInterval.context.coding` to `qualifiedInterval.appliesTo`

EORTC QLQ-C30 ValueSet architecture:
- Changed: ValueSets converted from contained to standalone external ValueSets (variant A); post-SUSHI expansion script for LHC Forms rendering; display texts added

Quality assurance:
- Fixed: ObsDef titles deduplicated; broken `{% raw %}{{render:infobox}}{% endraw %}` syntax replaced with Markdown blockquotes; CodeSystem/ValueSet switched to short ids

Note: the DASS-21 and QA items were originally planned as a standalone v2026.1.0 release but were never published as their own package; they first shipped as part of v2026.2.0.

### 2026.0.1 — 2026-01-26

Bugfix release with PROMIS-29 additions and canonical URL correction.

FHIR resources:
- Added: PROMIS-29 German variant and comprehensive examples
- Fixed: PROMIS-29 QuestionnaireResponse validation errors; canonical URLs standardised to https; packageId corrected (kerndatensatz.pro → kerndatensatz.pros)

IG documentation:
- Changed: PROMIS IG pages reorganised, tree rendering fixed; individual pages for the abstract profiles; SDC STU3 spec links added

### 2026.0.0 — 2026-01-12

First stable release of the MII PRO module for productive use.

FHIR resources and profiles:
- Added: SearchParameters for Questionnaire, QuestionnaireResponse, Observation; CapabilityStatement documenting the supported FHIR operations
- Fixed: meta.profile added to all Observation example instances

Version management and metadata:
- Added: MetaProfile RuleSet for consistent profile conformance with versioned canonicals (`{canonical}|{version}`); ObsDefVersion RuleSet (R5 backport of artifact-version for R4); version RuleSets centralised in `input/fsh/rulesets/version.fsh`

Dependencies and tooling:
- Changed: de.medizininformatikinitiative.kerndatensatz.meta updated to 2026.0.0; package.json name corrected to `de.medizininformatikinitiative.kerndatensatz.pros`; package.bake.yaml added for the Firely Bake packaging workflow

Quality assurance and developer experience:
- Added: EORTC QLQ-C30 validation suppressions and QA documentation; questionnaire and score catalogue maintenance; CI with inline Java validation and Gradle caching; Claude Code build/release/IG-export skills

### 2026.0.0-ballot

Initial ballot version focused on SDC-based PRO capture and score calculation.

PRO instruments: PHQ-9 (raw + T-score), EQ-5D-5L (index, VAS, profile scores), PROMIS-29 Profile v2.1 (7 domains with automatic scoring), PROMIS Cognitive Function SF4a, BDI-II (reference implementation), EORTC QLQ-C30 (15 subscales).

FHIR profiles and extensions: MII_PR_PRO_Questionnaire (SDC-based, calculated expressions, conditional display), MII_PR_PRO_QuestionnaireResponse (SDC extraction), MII_PR_PRO_Score_Blueprint and MII_PR_PRO_Score_Instance, the questionnaire capabilities extension.

Terminology strategy: MII-controlled CodeSystems and ValueSets with ordinalValue extensions for reliable score calculation; German translations via translation extensions; FHIRPath `.ordinal()` for weight-based calculations.

Technical basis: FHIR R4 (4.0.1) with SDC 3.0.0; de.medizininformatikinitiative.kerndatensatz.meta 2026.0.0; de.gematik.isik 5.0.0.
