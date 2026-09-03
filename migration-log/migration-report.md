# Migration report — MII PRO Module → MII KDS module template

**Branch:** `migration/2026.7.0-template-v0.11.3` · **Source state:** `341b6ee86` (v2026.7.0, 2026-09-02) · **Template:** `mii-kds-module-template@v0.11.3` (package `de.medizininformatikinitiative.template` 1.3.2) · **Date:** 2026-09-03

## How to use this report

You do not need to have seen the migration skill, its spec, or this repository before. Every open item sits in exactly one of three queues: **① Decision** (someone must choose), **② Review** (someone must check text), **③ QA triage** (build findings, with owner). Item ids (D1…, R1…, Q1…) are referenced in *Sign-off*. Evidence for every claim is a line in `migration-log/run.log`.

## Summary — read this first

The MII PRO module was migrated in place from its hybrid Simplifier/fhir2-base setup onto the MII KDS module template v0.11.3. **All 214 artifacts are unchanged** (ids, canonicals, versions — verified by inventory diff and the pre/post measurement: 32 properties unchanged, 0 regressions). The language direction was inverted per the template (English default, German translation): 45 German pages moved to `input/translations/de/pagecontent/`, 33 existing English pages moved up, **12 English pages were newly written** from the German originals (each carries a `TODO:REVIEW` provenance header → queue ②). The two previously diverged narrative trees are consolidated: of 53 Simplifier pages, 40 were near-duplicates of maintained pages, 6 became artifact intro-notes, 2 became new pages, 3 navigation stubs were retired, and for the 26 pages where the trees had drifted apart the **maintained `input/pagecontent` version won** (worst drift: the scoring page, 2025-08 vs 2026-08).

**QA is baseline-proven:** the unmigrated source builds with **302 errors**, the migrated tree with **300** — the two genuinely migration-introduced error classes (WHODAS QR display language; a template scaffold link) were found by language-neutral diff and fixed. The ~300 remaining errors are pre-existing, dominated by German-display-vs-tx.fhir.org mismatches that the CI's Ontoserver assesses differently.

**Nothing is published.** Publication (Gate D) and the identity decisions (Gate A) are human calls listed below.

## Where the evidence lives

| What | Where |
|---|---|
| Run log (every step, command, count, exit) | `migration-log/run.log` |
| Source inventory (214 artifacts, 98 pages) | `migration-log/source-inventory.json` |
| Page routing contract (human-corrected) | `migration-log/page-map.tsv` (generated original: `page-map.generated.tsv`) |
| Pre/post measurement + delta | `migration-log/preflight-analysis.json`, `postflight-analysis.json`, `prepost-delta.md` |
| Mechanical verification (455 checks) | `migration-log/verification-findings.tsv` |
| QA baseline (unmigrated source build) | scratchpad `pro-source/output/qa.txt` (err=302) — rebuildable, see below |
| Migrated build QA | `output/qa.txt` (err=300) |

## How to re-run any of this

```bash
npx --yes fsh-sushi@3.20.0 .                                       # compile (0 errors)
docker run --rm --network host -v "$PWD":/workspace -w /workspace \
  ghcr.io/gefyra/ig-publisher-with-snapshot-support:latest \
  sh -c "igpublisher -ig ig.ini -tx https://tx.fhir.org"           # build + qa.txt
# baseline: git archive 341b6ee86 into a scratch dir, same two commands there
python3 .claude/skills/mii-ig-migration/scripts/verify-migration.py \
  --target . --source <scratch>/pro-source --rendered output --source-lang de \
  --template-latest v0.11.3                                        # 4-layer verification
```

## Applied fixes (already changed — confirm or revert)

| # | What | Why | Evidence (run.log action) |
|---|---|---|---|
| F1 | `date: 2026-09-02` in sushi-config | `TODO:REVIEW` in a typed FHIR date field aborted the publisher; the 2026.7.0 publication date is a fact | `placeholder-resolution` |
| F2 | `hl7.fhir.uv.extensions.r4` pinned **5.2.0** (template default 5.3.0) | dependency pins must equal the source's | `sushi-config` merge commit |
| F3 | `publisher` restored to Medizininformatik-Initiative | template block had silently set NUM-DIZ; identity is never normalized silently (caught by prepost delta) | `publisher-silently-changed` |
| F4 | WHODAS example QR: `language = #de` | German displays + inherited `en` default = 12 new Wrong-Display errors | `qa-baseline-measured` |
| F5 | `examples.md` links the real `mii-exa-pro-patient` | template scaffold linked its demo patient | `qa-baseline-measured` |
| F6 | 21 images copied to `input/images/`, hub indexes on pro-library/guidance | pages referenced images that only existed in the Simplifier tree; 32 pages were reachable only by URL | `image-fix` |
| F7 | Liquid literal in changes.md wrapped in `{% raw %}` | Jekyll evaluates `{{…}}` inside backticks and comments (guardrail 8) | skeleton commit |
| F8 | 8 resource-reference directives restored as links | `{{json:<id>}}` embeds a FOREIGN resource the artifact page does not render; operator caught the over-broad drop | `directive-handling-corrected` |

## ① Decision queue (Gate A — someone must choose)

Each item: what, options, **if nobody acts**, effort, reversibility.

- **D1 — `package.json` title says "MII IG Dokument"** (shipped in the published 2026.7.0 package). Fix to "MII IG PRO" in the next release. *If nobody acts:* the wrong title persists in every future package. Effort: 1 line. Reversible: yes.
- **D2 — `canonical` contradiction:** package.json carries `…/modul-pro/ImplementationGuide/mii-ig-pro`, sushi-config `…/ext/modul-pro`. sushi-config wins per rule; align package.json next release. *If nobody acts:* registries show a canonical that resolves differently. Effort: 1 line.
- **D3 — jurisdiction m49#276 renders "Unknown region code" on all 1113 pages** (R2). Options: keep m49 (source identity, broken footer) or switch to `urn:iso:std:iso:3166#DE "Germany"` (template default, same meaning, clean render). Recommendation: switch — meaning-preserving. *If nobody acts:* every page footer stays broken. Effort: 1 line + rebuild.
- **D4 — publisher hand-over to NUM-DIZ** (template pre-fill, MII funding ends end-2026). Restored to MII for now (F3). Decide the switch date with governance. *If nobody acts:* nothing breaks; footer says MII.
- **D5 — no LICENSE file** despite declared CC0-1.0; template ships CC-BY-4.0 which was NOT adopted. Add a CC0 LICENSE file. *If nobody acts:* F3-check stays NICHT PRÜFBAR; GitHub shows no license. Effort: 1 file.
- **D6 — `resource-approvalDate` + `artifact-topic` (NCI code) removed**, values unknown, not invented (guardrail 3). Supply the real approval date and topic code, re-add. *If nobody acts:* the CRMI extension set stays incomplete (cosmetic).
- **D7 — dead guide URL everywhere:** `simplifier.net/guide/mii-pro-v2026-de` 404s; the real key is `modul-pro-v2026` (measured). Affects CLAUDE.md, release-prepare skill, the shipped 2026.7.0 package description, GitHub release notes. Fix repo-wide next release. *If nobody acts:* every documentation link stays dead.
- **D8 — retire the parallel trees after Gate D:** `implementation-guides/` (53 pages), `template/` cache, `out/`, legacy `input/Images/out/`. Retire only after the rendered IG replaces the Simplifier guide. *If nobody acts:* the drift that caused the 2025/2026 scoring divergence resumes.
- **D9 — 12 EORTC contained-CodeSystem errors** (~33 lines, pre-existing): contained CS/VS in the Questionnaire violate the profile. A modelling decision (extract to standalone resources?), not a migration issue.

## ② Review queue (Gates B/C — someone must check)

- **R1 — the 12 written English pages** (scoff, wi-7, isr-z, pc-ptsd, euronet-soma, ssd-12, phq-15, gad-7, whodas, midos2, promis-16, proms-onkologisches-basisscreening): each `TODO:REVIEW` header names its German source. For ISR-Z/PC-PTSD/SSD-12 the English page deliberately claims **no English item text** — check that survived.
- **R2 — profiles.md and pro-ctcae.md** (migrated from the Simplifier tree, both languages).
- **R3 — six intro-notes** under `input/intro-notes/` + German mirrors: prose distilled from artifact pages; the dropped `<tabs>/{{tree}}/FQL` blocks are natively rendered on those pages (verified against onkologie: 0 of 103 intro-notes carry includes).
- **R4 — C4 findings (66):** prose runs the verifier could not find in any target page — mostly retired stubs and reformatted table content; each row in `verification-findings.tsv` names the run. Spot-check the top ones (Abstrakte-Profile/Index: 5/22 runs).
- **R5 — menu structure:** 8 top-level entries, 31 items (budget ≤33). Curated: only 4 flagship instruments in the dropdown, everything else via the pro-library hub table. Confirm this trade-off.
- **R6 — hub indexes** appended to pro-library.md and guidance.md (F6) are derived text.

## ③ QA triage

| Findings | Count | Owner / verdict |
|---|---|---|
| Wrong Display (German vs tx.fhir.org English) | ~168 | pre-existing, **re-assess against Ontoserver in CI**; local number not meaningful |
| EORTC contained CS/VS profile violations | ~33 | pre-existing → D9 |
| ConceptMap source-code "not valid" | 17 | pre-existing (LinkId CS scope) — known class |
| CapabilityStatement searchParam definitions unresolvable | 15 | pre-existing (hl7 core SearchParameter canonicals) |
| Image sources unresolvable | ~17→expected ~0 | **fixed** (F6), confirm in the running build |
| Unknown region code | all pages | → D3 |
| verify-migration (final): 250 IDENTISCH · 122 DIVERGIERT · 37 NICHT PRÜFBAR — every DIVERGIERT maps to a queue item: C4(66)→R4, C5(32)→R5 (menu budget trade-off), C2(12)→D9, R2(6)→D3, L3(2)→D1/D2 (deliberately open), L2(3)+P4(1) log formalities | | DIVERGIERT: C4→R4, C5→fixed F6, C2→D9, R1→F6, R2→D3, L2→retroactive lines written; NICHT PRÜFBAR rows named in the TSV |

## Identity

| Field | Value | Source | Status |
|---|---|---|---|
| id | mii-ig-pro | sushi-config | unchanged |
| canonical | https://www.medizininformatik-initiative.de/fhir/ext/modul-pro | sushi-config | unchanged (contradiction → D2) |
| packageId | de.medizininformatikinitiative.kerndatensatz.pros | sushi-config + package | unchanged |
| version | 2026.7.0 | sushi-config + registry | unchanged |
| title | MII IG PRO | sushi-config | unchanged (package.json wrong → D1) |
| license | CC0-1.0 | sushi-config + package.json | unchanged; template CC-BY-4.0 NOT adopted (D5) |
| publisher | Medizininformatik-Initiative | sushi-config | restored after silent template override (F3, D4) |
| jurisdiction | m49#276 | sushi-config | unchanged (renders broken → D3) |
| dependencies | 4 source pins unchanged + 4 template additions (basisprofil 1.5.4, xver-r5 0.1.0, crmi 2.0.0, terminology.r4 7.3.0) | | extensions.r4 kept at source pin 5.2.0 |

## Protocol

Generated from `migration-log/run.log` (7 runs, 100+ lines): Gate 0 preflight → inventory (214 artifacts, 98 pages, 2 trees measured near-duplicate 40/53 with 26 drifted) → identity read (2 contradictions reported, not resolved) → skeleton on v0.11.3 (**incomplete at first: 5 build failures exposed the missing template input/ scaffold — manifest, menus, 14 mandatory pages, 41 unregistered pages:-entries, IG resource page; all documented as ERROR lines**) → language inversion (45↔33+12) → narrative per reviewed page-map (98 rows, 16 generated targets corrected by content-similarity, 3 retired) → build (5th attempt green; qa err=300) → **baseline build of unmigrated source (err=302)** → attribution diff → 2 introduced classes fixed → postflight (0 regressions) → 4-layer verification (455 checks).

## Sign-off — before anything publishes

- [ ] Gate A: D1–D9 decided (owner: module lead / TF KDS)
- [ ] Gate B: R2–R6 narrative reviewed
- [ ] Gate C: R1 language review of the 12 written English pages
- [ ] CI green on the migration branch (Ontoserver-based QA re-read)
- [ ] Gate D: release per KDS governance — **merging the publication branch publishes; nothing before this**

## Mini-glossary

**Gate A–D** mandatory human reviews (identity / narrative / language / release). **C4/C5/…** verifier check ids, glossed in `verification-findings.tsv`. **IDENTISCH / DIVERGIERT / NICHT PRÜFBAR** the three verdicts — the third is *not* a pass. **intro-note** a Markdown fragment rendered atop an artifact's own page. **Hub** an index page linking every child page.
