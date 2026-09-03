# Page-structure advice

**This report PROPOSES and never edits a module.** It reads the source and target repositories read-only; its only writes are this report and the page-map v2 TSV (`--map`) - the map is the PRIMARY output and the contract step 5 consumes, this report is its rendering. Every routing row below is the branch the MEASUREMENTS support - a human (or the skill at step 5) decides and applies it.

| Input | Value |
| --- | --- |
| source repo | `/private/tmp/claude-501/-Users-thome-code-fhir-profiling-kerndatensatzmodul-proms/cf21c8e5-016b-45ec-b529-6bd0a6312421/scratchpad/pro-source` |
| target repo | `.` |
| routing table | `/Users/thome/code/fhir-profiling/kerndatensatzmodul-proms/.claude/skills/mii-ig-migration/references/routing-table.tsv` (17 patterns) |
| Gate 0 preflight | `/Users/thome/code/fhir-profiling/kerndatensatzmodul-proms/migration-log/preflight-analysis.json` |
| artefact census | fsh-generated/resources (214 resources; cross-checked by Gate 0's generated_crosscheck) |
| page map | `migration-log/page-map.tsv` |
| generated | 2026-09-03T10:37:35Z |
| script | `page-structure-advice.py` v1.3.0 |

Contract limits in force: menu total <= 33, dropdown children <= 10, top level <= 8, menu depth <= 2; size gate at > 2500 words, > 4 merged sources, or ANY repeated heading title; hub at >= 3 children.

## 1. Source page tree

The tree is taken from the FIRST of four inputs that yields pages: **(a)** the `pages:` block of the source `sushi-config.yaml`, **(b)** the authoritative Simplifier guide tree under `implementation-guides/` (spec 5.1a), **(c)** a flat count of `input/pagecontent/*.md`.

**Input used: (a) the `pages:` block of `sushi-config.yaml`.**

### 1.0 Simplifier guide trees found

Every tree under `implementation-guides/` is listed - the choice is never made silently. Dispositions follow spec 5.1a: #1 authoritative, #2 parallel-language harvest seed, #3 historical/shared retained, #4 unrecognized.

| Guide tree | Title | Version (dir name) | Version (guide.yaml) | Lang | `*.page.md` on disk | Disposition |
| --- | --- | --- | --- | --- | ---: | --- |
| `MII-PRO-v2026-DE` | Medizininformatik Initiative - ImplementationGuide - Modul PRO v2026 | 2026 | 2026.7.0 | DE | 53 | **AUTHORITATIVE** - steps 5.4/5.5 operate on this tree |

**Chosen: `MII-PRO-v2026-DE`** - highest version among the trees in the module's own narrative language DE (sushi-config `language:`): MII-PRO-v2026-DE (directory version 2026, guide.yaml version 2026.7.0).

The module's narrative language read from `sushi-config.yaml` `language:` is **DE**.

**A human can override this choice**: re-run with `--guide-tree <directory name>`. The ranking above is evidence, not a verdict - confirm it against the rendered IG and record it in the inventory (Gate B reviews it).

_These trees were NOT used: the `pages:` block already yielded a page tree, and input (a) wins. They still need a disposition in the inventory._

### 1.1 Depth histogram

Parsed from `sushi-config.yaml`, indentation-based.

| Level | Pages | Share |
| --- | ---: | ---: |
| 1 | 12 | 27% |
| 2 | 28 | 62% |
| 3 | 5 | 11% |
| **total** | **45** | 100% |

Maximum depth used: **3**. Total words across the 45 source pages: **27267**. Pages in `input/pagecontent/`: **45**.

### 1.2 Parent-child tree

```
|- Home  `index.md`
|- Module Description  `module-description.md`
|- Project Context  `project-context.md`
|- Use Cases  `use-cases.md`
|  |- Datasets and Descriptions  `datasets-and-descriptions.md`
|  `- UML Diagrams  `uml-diagrams.md`
|- Technical Implementation  `technical-implementation.md`
|  |- Workflows  `workflows.md`
|  |- Scoring  `scoring.md`
|  |- ID Systematics  `id-systematics.md`
|  |- Terminology Strategies  `terminology-strategies.md`
|  |- Questionnaire Capabilities  `questionnaire-capabilities.md`
|  `- Validation  `validation.md`
|- PRO Library  `pro-library.md`
|  |- PHQ-9  `phq-9.md`
|  |- PHQ-15  `phq-15.md`
|  |- EQ-5D-5L  `eq-5d-5l.md`
|  |  `- EQ-5D-5L Scores  `eq-5d-5l-scores.md`
|  |- EORTC QLQ-C30  `eortc-qlq-c30.md`
|  |  `- EORTC QLQ-C30 Scoring  `eortc-qlq-c30-scoring.md`
|  |- PROMIS  `promis.md`
|  |  |- PROMIS-29  `promis-29.md`
|  |  |- PROMIS-16  `promis-16.md`
|  |  `- PROMIS Depression SF4a  `promis-depression.md`
|  |- BDI-II  `bdi-ii.md`
|  |- DASS-21  `dass-21.md`
|  |- MIDOS2 (Palliativmedizin)  `midos2.md`
|  |- Onkologisches Basisscreening (PRO-CTCAE)  `proms-onkologisches-basisscreening.md`
|  |- WHODAS 2.0 (12-Item)  `whodas.md`
|  |- SCOFF  `scoff.md`
|  |- Whiteley-7 (WI-7)  `wi-7.md`
|  |- PC-PTSD  `pc-ptsd.md`
|  |- SSD-12  `ssd-12.md`
|  |- ISR-Z  `isr-z.md`
|  |- EURONET-SOMA  `euronet-soma.md`
|  |- GAD-7  `gad-7.md`
|  `- Minimal Reference Questionnaires  `minimal-reference-questionnaires.md`
|- Domain-Based Scoring  `domain-based-scoring.md`
|  |- Domains  `domains.md`
|  `- Cross-Instrument Mappings  `cross-instrument-mappings.md`
|- Derived Metrics  `derived-metrics.md`
|- References  `references.md`
|- Changelog  `changes.md`
|- Downloads  `downloads.md`
`- Translation Information  `translationinfo.md`
```

## 2. Target page measurements

Words = whitespace tokens after removing HTML comments, table separator rows and the markup characters `>`, `|`, `*`, `_`, `` ` ``. Headings, list items, table cells and fenced code all count: the gate measures what the reader has to traverse. Repeated titles are compared case-sensitively; each repeat costs one publisher-appended anchor (`-2`, `-3`, ...). Merged sources are the distinct `<!-- source: X.md -->` section markers the migration itself left behind.

| Page | Words | h2 | h3 | h4 | other h | Repeated titles | Anchor collisions | Merged sources | Size gate |
| --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | --- |
| `bdi-ii.md` | 189 | 0 | 4 | 0 | 0 | 0 | 0 | 0 | ok |
| `changes.md` | 672 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | ok |
| `cross-instrument-mappings.md` | 885 | 0 | 10 | 20 | 0 | 0 | 0 | 0 | ok |
| `dass-21.md` | 879 | 0 | 7 | 13 | 0 | 0 | 0 | 0 | ok |
| `datasets-and-descriptions.md` | 272 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | ok |
| `derived-metrics.md` | 69 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `domain-based-scoring.md` | 1911 | 0 | 15 | 20 | 0 | 0 | 0 | 0 | ok |
| `domains.md` | 1409 | 0 | 12 | 21 | 0 | 0 | 0 | 0 | ok |
| `downloads.md` | 115 | 0 | 8 | 0 | 0 | 0 | 0 | 0 | ok |
| `eortc-qlq-c30-scoring.md` | 822 | 0 | 8 | 16 | 3 | 1 | 1 | 0 | **TRIPS** - 1 repeated heading title(s) |
| `eortc-qlq-c30.md` | 458 | 0 | 10 | 6 | 0 | 0 | 0 | 0 | ok |
| `eq-5d-5l-scores.md` | 461 | 0 | 5 | 7 | 0 | 0 | 0 | 0 | ok |
| `eq-5d-5l.md` | 1122 | 0 | 10 | 4 | 0 | 0 | 0 | 0 | ok |
| `euronet-soma.md` | 432 | 0 | 4 | 2 | 0 | 0 | 0 | 0 | ok |
| `gad-7.md` | 498 | 0 | 4 | 2 | 0 | 0 | 0 | 0 | ok |
| `id-systematics.md` | 1410 | 5 | 18 | 13 | 0 | 0 | 0 | 0 | ok |
| `index.md` | 426 | 0 | 8 | 3 | 0 | 0 | 0 | 0 | ok |
| `isr-z.md` | 360 | 0 | 5 | 2 | 0 | 0 | 0 | 0 | ok |
| `midos2.md` | 651 | 0 | 6 | 8 | 0 | 0 | 0 | 0 | ok |
| `minimal-reference-questionnaires.md` | 256 | 0 | 5 | 6 | 0 | 0 | 0 | 0 | ok |
| `module-description.md` | 519 | 0 | 3 | 6 | 8 | 0 | 0 | 0 | ok |
| `pc-ptsd.md` | 368 | 0 | 4 | 2 | 0 | 0 | 0 | 0 | ok |
| `phq-15.md` | 362 | 0 | 4 | 2 | 0 | 0 | 0 | 0 | ok |
| `phq-9.md` | 313 | 0 | 6 | 3 | 0 | 0 | 0 | 0 | ok |
| `pro-library.md` | 675 | 0 | 6 | 7 | 0 | 0 | 0 | 0 | ok |
| `project-context.md` | 339 | 0 | 4 | 0 | 0 | 0 | 0 | 0 | ok |
| `promis-16.md` | 829 | 0 | 9 | 2 | 0 | 0 | 0 | 0 | ok |
| `promis-29.md` | 336 | 0 | 7 | 4 | 0 | 0 | 0 | 0 | ok |
| `promis-depression.md` | 935 | 0 | 1 | 10 | 0 | 0 | 0 | 0 | ok |
| `promis.md` | 213 | 0 | 1 | 3 | 0 | 0 | 0 | 0 | ok |
| `proms-onkologisches-basisscreening.md` | 664 | 0 | 8 | 5 | 0 | 0 | 0 | 0 | ok |
| `questionnaire-capabilities.md` | 879 | 1 | 7 | 8 | 5 | 0 | 0 | 0 | ok |
| `references.md` | 22 | 0 | 2 | 0 | 0 | 0 | 0 | 0 | ok |
| `scoff.md` | 420 | 0 | 4 | 2 | 0 | 0 | 0 | 0 | ok |
| `scoring.md` | 1218 | 0 | 8 | 0 | 0 | 0 | 0 | 0 | ok |
| `ssd-12.md` | 488 | 0 | 4 | 2 | 0 | 0 | 0 | 0 | ok |
| `technical-implementation.md` | 113 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `terminology-strategies.md` | 859 | 8 | 9 | 8 | 0 | 0 | 0 | 0 | ok |
| `translationinfo.md` | 92 | 0 | 2 | 0 | 0 | 0 | 0 | 0 | ok |
| `uml-diagrams.md` | 483 | 0 | 6 | 0 | 0 | 0 | 0 | 0 | ok |
| `use-cases.md` | 916 | 0 | 4 | 2 | 0 | 0 | 0 | 0 | ok |
| `validation.md` | 694 | 5 | 7 | 0 | 0 | 0 | 0 | 0 | ok |
| `whodas.md` | 468 | 0 | 4 | 0 | 0 | 0 | 0 | 0 | ok |
| `wi-7.md` | 397 | 0 | 4 | 2 | 0 | 0 | 0 | 0 | ok |
| `workflows.md` | 1190 | 0 | 5 | 12 | 0 | 0 | 0 | 0 | ok |

### 2.1 Pages that trip the size gate

- **`eortc-qlq-c30-scoring.md`** - 1 repeated heading title(s).
  - repeated titles: "FHIR Implementation" (x2)
  - collided anchors: `#fhir-implementation-2`
  - rule 5: re-run routing preferring branches 1 and 2, or split.

## 3. Menu budget

_No `input/includes/menu.xml` (or no `--target`) - the menu budget is UNKNOWN and no visibility decision is proposed below._

## 4. Routing proposal (spec 9d/9e)

One row per source page. The branch number is the spec's; the measurement column is the number that forced it. Branch-4 rows state the presentation (4a) and the visibility (4b), and, where a menu entry fits, the remaining budget after it. `Words` is the source page's own size, counted the same way as the target pages in section 2.

| # | Source page | Lvl | Children | Words | Branch | Proposed destination | Measurement |
| ---: | --- | ---: | ---: | ---: | --- | --- | --- |
| 1 | `index.md` | 1 | 0 | 378 | 3 merge into agreed page | index.md | agreed page named 'index' exists in the target |
| 2 | `module-description.md` | 1 | 0 | 460 | 3 merge into agreed page | module-description.md | agreed page named 'module-description' exists in the target |
| 3 | `project-context.md` | 1 | 0 | 298 | 3 merge into agreed page | project-context.md | agreed page named 'project-context' exists in the target |
| 4 | `use-cases.md` | 1 | 2 | 823 | 3 merge into agreed page | use-cases.md | agreed page named 'use-cases' exists in the target |
| 5 | `datasets-and-descriptions.md` | 2 | 0 | 234 | 3 merge into agreed page | datasets-and-descriptions.md | agreed page named 'datasets-and-descriptions' exists in the target |
| 6 | `uml-diagrams.md` | 2 | 0 | 428 | 3 merge into agreed page | uml-diagrams.md | agreed page named 'uml-diagrams' exists in the target |
| 7 | `technical-implementation.md` | 1 | 6 | 86 | 3 merge into agreed page | technical-implementation.md | agreed page named 'technical-implementation' exists in the target |
| 8 | `workflows.md` | 2 | 0 | 1106 | 3 merge into agreed page | workflows.md | agreed page named 'workflows' exists in the target |
| 9 | `scoring.md` | 2 | 0 | 1044 | 3 merge into agreed page | scoring.md | agreed page named 'scoring' exists in the target |
| 10 | `id-systematics.md` | 2 | 0 | 1276 | 3 merge into agreed page | id-systematics.md | agreed page named 'id-systematics' exists in the target |
| 11 | `terminology-strategies.md` | 2 | 0 | 762 | 3 merge into agreed page | terminology-strategies.md | agreed page named 'terminology-strategies' exists in the target |
| 12 | `questionnaire-capabilities.md` | 2 | 0 | 796 | 3 merge into agreed page | questionnaire-capabilities.md | agreed page named 'questionnaire-capabilities' exists in the target |
| 13 | `validation.md` | 2 | 0 | 605 | 3 merge into agreed page | validation.md | agreed page named 'validation' exists in the target |
| 14 | `pro-library.md` | 1 | 18 | 710 | 3 merge into agreed page | pro-library.md | agreed page named 'pro-library' exists in the target |
| 15 | `phq-9.md` | 2 | 0 | 289 | 3 merge into agreed page | phq-9.md | agreed page named 'phq-9' exists in the target |
| 16 | `phq-15.md` | 2 | 0 | 308 | 3 merge into agreed page | phq-15.md | agreed page named 'phq-15' exists in the target |
| 17 | `eq-5d-5l.md` | 2 | 1 | 1052 | 3 merge into agreed page | eq-5d-5l.md | agreed page named 'eq-5d-5l' exists in the target |
| 18 | `eq-5d-5l-scores.md` | 3 | 0 | 427 | 3 merge into agreed page | eq-5d-5l-scores.md | agreed page named 'eq-5d-5l-scores' exists in the target |
| 19 | `eortc-qlq-c30.md` | 2 | 1 | 418 | 3 merge into agreed page | eortc-qlq-c30.md | agreed page named 'eortc-qlq-c30' exists in the target |
| 20 | `eortc-qlq-c30-scoring.md` | 3 | 0 | 716 | 3 merge into agreed page | eortc-qlq-c30-scoring.md <br>_(host eortc-qlq-c30-scoring.md already trips the size gate (1 repeated heading title(s)) - rule 5)_ | agreed page named 'eortc-qlq-c30-scoring' exists in the target |
| 21 | `promis.md` | 2 | 3 | 524 | 3 merge into agreed page | promis.md | agreed page named 'promis' exists in the target |
| 22 | `promis-29.md` | 3 | 0 | 432 | 3 merge into agreed page | promis-29.md | agreed page named 'promis-29' exists in the target |
| 23 | `promis-16.md` | 3 | 0 | 758 | 3 merge into agreed page | promis-16.md | agreed page named 'promis-16' exists in the target |
| 24 | `promis-depression.md` | 3 | 0 | 862 | 3 merge into agreed page | promis-depression.md | agreed page named 'promis-depression' exists in the target |
| 25 | `bdi-ii.md` | 2 | 0 | 170 | 3 merge into agreed page | bdi-ii.md | agreed page named 'bdi-ii' exists in the target |
| 26 | `dass-21.md` | 2 | 0 | 795 | 3 merge into agreed page | dass-21.md | agreed page named 'dass-21' exists in the target |
| 27 | `midos2.md` | 2 | 0 | 580 | 3 merge into agreed page | midos2.md | agreed page named 'midos2' exists in the target |
| 28 | `proms-onkologisches-basisscreening.md` | 2 | 0 | 607 | 3 merge into agreed page | proms-onkologisches-basisscreening.md | agreed page named 'proms-onkologisches-basisscreening' exists in the target |
| 29 | `whodas.md` | 2 | 0 | 417 | 3 merge into agreed page | whodas.md | agreed page named 'whodas' exists in the target |
| 30 | `scoff.md` | 2 | 0 | 376 | 3 merge into agreed page | scoff.md | agreed page named 'scoff' exists in the target |
| 31 | `wi-7.md` | 2 | 0 | 361 | 3 merge into agreed page | wi-7.md | agreed page named 'wi-7' exists in the target |
| 32 | `pc-ptsd.md` | 2 | 0 | 331 | 3 merge into agreed page | pc-ptsd.md | agreed page named 'pc-ptsd' exists in the target |
| 33 | `ssd-12.md` | 2 | 0 | 439 | 3 merge into agreed page | ssd-12.md | agreed page named 'ssd-12' exists in the target |
| 34 | `isr-z.md` | 2 | 0 | 316 | 3 merge into agreed page | isr-z.md | agreed page named 'isr-z' exists in the target |
| 35 | `euronet-soma.md` | 2 | 0 | 394 | 3 merge into agreed page | euronet-soma.md | agreed page named 'euronet-soma' exists in the target |
| 36 | `gad-7.md` | 2 | 0 | 438 | 3 merge into agreed page | gad-7.md | agreed page named 'gad-7' exists in the target |
| 37 | `minimal-reference-questionnaires.md` | 2 | 0 | 240 | 3 merge into agreed page | minimal-reference-questionnaires.md | agreed page named 'minimal-reference-questionnaires' exists in the target |
| 38 | `domain-based-scoring.md` | 1 | 2 | 1774 | 3 merge into agreed page | domain-based-scoring.md | agreed page named 'domain-based-scoring' exists in the target |
| 39 | `domains.md` | 2 | 0 | 1305 | 3 merge into agreed page | domains.md | agreed page named 'domains' exists in the target |
| 40 | `cross-instrument-mappings.md` | 2 | 0 | 810 | 3 merge into agreed page | cross-instrument-mappings.md | agreed page named 'cross-instrument-mappings' exists in the target |
| 41 | `derived-metrics.md` | 1 | 0 | 62 | 3 merge into agreed page | derived-metrics.md | agreed page named 'derived-metrics' exists in the target |
| 42 | `references.md` | 1 | 0 | 22 | 3 merge into agreed page | references.md | agreed page named 'references' exists in the target |
| 43 | `changes.md` | 1 | 0 | 2842 | 3 merge into agreed page | changes.md <br>_(source page is 2842 words > 2500 - merging it trips the host's size gate on its own (rule 5))_ | agreed page named 'changes' exists in the target |
| 44 | `downloads.md` | 1 | 0 | 116 | 3 merge into agreed page | downloads.md | agreed page named 'downloads' exists in the target |
| 45 | `translationinfo.md` | 1 | 0 | 80 | 3 merge into agreed page | translationinfo.md | agreed page named 'translationinfo' exists in the target |

Branch totals: 3 merge into agreed page = 45.

## 5. Report queue 1 items

_None from the menu budget._

Size-gate trips (rule 5) needing a routing re-run or a split:

- `eortc-qlq-c30-scoring.md` - 1 repeated heading title(s).

## 6. Suggested `5.4c page-routing` run-log lines

One per source page (union pages included), ready for the migration run log. The `5.4c page-routing` step IS the advice run that GENERATES the page map (`--map`) - the map is machine-written, never hand-written; these lines are only its run-log form.

```
5.4c page-routing	index.md	branch=3	index.md	agreed page named 'index' exists in the target
5.4c page-routing	module-description.md	branch=3	module-description.md	agreed page named 'module-description' exists in the target
5.4c page-routing	project-context.md	branch=3	project-context.md	agreed page named 'project-context' exists in the target
5.4c page-routing	use-cases.md	branch=3	use-cases.md	agreed page named 'use-cases' exists in the target
5.4c page-routing	datasets-and-descriptions.md	branch=3	datasets-and-descriptions.md	agreed page named 'datasets-and-descriptions' exists in the target
5.4c page-routing	uml-diagrams.md	branch=3	uml-diagrams.md	agreed page named 'uml-diagrams' exists in the target
5.4c page-routing	technical-implementation.md	branch=3	technical-implementation.md	agreed page named 'technical-implementation' exists in the target
5.4c page-routing	workflows.md	branch=3	workflows.md	agreed page named 'workflows' exists in the target
5.4c page-routing	scoring.md	branch=3	scoring.md	agreed page named 'scoring' exists in the target
5.4c page-routing	id-systematics.md	branch=3	id-systematics.md	agreed page named 'id-systematics' exists in the target
5.4c page-routing	terminology-strategies.md	branch=3	terminology-strategies.md	agreed page named 'terminology-strategies' exists in the target
5.4c page-routing	questionnaire-capabilities.md	branch=3	questionnaire-capabilities.md	agreed page named 'questionnaire-capabilities' exists in the target
5.4c page-routing	validation.md	branch=3	validation.md	agreed page named 'validation' exists in the target
5.4c page-routing	pro-library.md	branch=3	pro-library.md	agreed page named 'pro-library' exists in the target
5.4c page-routing	phq-9.md	branch=3	phq-9.md	agreed page named 'phq-9' exists in the target
5.4c page-routing	phq-15.md	branch=3	phq-15.md	agreed page named 'phq-15' exists in the target
5.4c page-routing	eq-5d-5l.md	branch=3	eq-5d-5l.md	agreed page named 'eq-5d-5l' exists in the target
5.4c page-routing	eq-5d-5l-scores.md	branch=3	eq-5d-5l-scores.md	agreed page named 'eq-5d-5l-scores' exists in the target
5.4c page-routing	eortc-qlq-c30.md	branch=3	eortc-qlq-c30.md	agreed page named 'eortc-qlq-c30' exists in the target
5.4c page-routing	eortc-qlq-c30-scoring.md	branch=3	eortc-qlq-c30-scoring.md	agreed page named 'eortc-qlq-c30-scoring' exists in the target
5.4c page-routing	promis.md	branch=3	promis.md	agreed page named 'promis' exists in the target
5.4c page-routing	promis-29.md	branch=3	promis-29.md	agreed page named 'promis-29' exists in the target
5.4c page-routing	promis-16.md	branch=3	promis-16.md	agreed page named 'promis-16' exists in the target
5.4c page-routing	promis-depression.md	branch=3	promis-depression.md	agreed page named 'promis-depression' exists in the target
5.4c page-routing	bdi-ii.md	branch=3	bdi-ii.md	agreed page named 'bdi-ii' exists in the target
5.4c page-routing	dass-21.md	branch=3	dass-21.md	agreed page named 'dass-21' exists in the target
5.4c page-routing	midos2.md	branch=3	midos2.md	agreed page named 'midos2' exists in the target
5.4c page-routing	proms-onkologisches-basisscreening.md	branch=3	proms-onkologisches-basisscreening.md	agreed page named 'proms-onkologisches-basisscreening' exists in the target
5.4c page-routing	whodas.md	branch=3	whodas.md	agreed page named 'whodas' exists in the target
5.4c page-routing	scoff.md	branch=3	scoff.md	agreed page named 'scoff' exists in the target
5.4c page-routing	wi-7.md	branch=3	wi-7.md	agreed page named 'wi-7' exists in the target
5.4c page-routing	pc-ptsd.md	branch=3	pc-ptsd.md	agreed page named 'pc-ptsd' exists in the target
5.4c page-routing	ssd-12.md	branch=3	ssd-12.md	agreed page named 'ssd-12' exists in the target
5.4c page-routing	isr-z.md	branch=3	isr-z.md	agreed page named 'isr-z' exists in the target
5.4c page-routing	euronet-soma.md	branch=3	euronet-soma.md	agreed page named 'euronet-soma' exists in the target
5.4c page-routing	gad-7.md	branch=3	gad-7.md	agreed page named 'gad-7' exists in the target
5.4c page-routing	minimal-reference-questionnaires.md	branch=3	minimal-reference-questionnaires.md	agreed page named 'minimal-reference-questionnaires' exists in the target
5.4c page-routing	domain-based-scoring.md	branch=3	domain-based-scoring.md	agreed page named 'domain-based-scoring' exists in the target
5.4c page-routing	domains.md	branch=3	domains.md	agreed page named 'domains' exists in the target
5.4c page-routing	cross-instrument-mappings.md	branch=3	cross-instrument-mappings.md	agreed page named 'cross-instrument-mappings' exists in the target
5.4c page-routing	derived-metrics.md	branch=3	derived-metrics.md	agreed page named 'derived-metrics' exists in the target
5.4c page-routing	references.md	branch=3	references.md	agreed page named 'references' exists in the target
5.4c page-routing	changes.md	branch=3	changes.md	agreed page named 'changes' exists in the target
5.4c page-routing	downloads.md	branch=3	downloads.md	agreed page named 'downloads' exists in the target
5.4c page-routing	translationinfo.md	branch=3	translationinfo.md	agreed page named 'translationinfo' exists in the target
5.4c page-routing	MIIIGModulPRO/Index.page.md	branch=3	index.md	agreed page named 'index' exists in the target
5.4c page-routing	MIIIGModulPRO/Beschreibung-Modul-PROs.page.md	branch=3	index.md	semantic match 'beschreibungmodul' -> index (routing-table)
5.4c page-routing	MIIIGModulPRO/Kontext-im-Gesamtprojekt-Bezuege-zu-anderen-Modulen.page.md	branch=3	implementer-guidance.md	semantic match 'kontextimgesamtprojekt' -> implementer-guidance (routing-table)
5.4c page-routing	MIIIGModulPRO/Referenzen.page.md	branch=3	implementer-guidance.md	semantic match 'referenzen' -> implementer-guidance (routing-table)
5.4c page-routing	MIIIGModulPRO/Release-Notes.page.md	branch=3	changes.md	semantic match 'releasenotes' -> changes (routing-table)
5.4c page-routing	MIIIGModulPRO/Anwendungsfaelle-Informationsmodell/Index.page.md	branch=4	own page (HUB), menu decision UNKNOWN (no --target)	no artefact anchor; no agreed page; 3 child page(s)
5.4c page-routing	MIIIGModulPRO/Anwendungsfaelle-Informationsmodell/Beschreibung-von-Anwendungsfaellen.page.md	branch=3	guidance.md	semantic match 'anwendungsfaelle' -> guidance (routing-table)
5.4c page-routing	MIIIGModulPRO/Anwendungsfaelle-Informationsmodell/Datensaetze-inkl-Beschreibungen.page.md	branch=3	logical-models.md	semantic match 'datensaetze' -> logical-models (routing-table)
5.4c page-routing	MIIIGModulPRO/Anwendungsfaelle-Informationsmodell/UML.page.md	branch=3	uml-diagrams.md	semantic match 'uml' -> uml-diagrams (routing-table)
5.4c page-routing	MIIIGModulPRO/Technische-Implementierung/Index.page.md	branch=4	own page (HUB), menu decision UNKNOWN (no --target)	no artefact anchor; no agreed page; 7 child page(s)
5.4c page-routing	MIIIGModulPRO/Technische-Implementierung/Workflows.page.md	branch=3	workflows.md	agreed page named 'workflows' exists in the target
5.4c page-routing	MIIIGModulPRO/Technische-Implementierung/Scoring.page.md	branch=3	scoring.md	agreed page named 'scoring' exists in the target
5.4c page-routing	MIIIGModulPRO/Technische-Implementierung/ID-Systematik.page.md	branch=4	own page (merged page), menu decision UNKNOWN (no --target)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	MIIIGModulPRO/Technische-Implementierung/Terminologie-Strategien.page.md	branch=4	own page (merged page), menu decision UNKNOWN (no --target)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	MIIIGModulPRO/Technische-Implementierung/Validierung.page.md	branch=4	own page (merged page), menu decision UNKNOWN (no --target)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	MIIIGModulPRO/Technische-Implementierung/QuestionnaireCapabilites.page.md	branch=4	own page (merged page), menu decision UNKNOWN (no --target)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	MIIIGModulPRO/Technische-Implementierung/FHIR-Profile/Extension-Capabilities.page.md	branch=1	input/intro-notes/StructureDefinition-mii-ex-pro-questionnaire-capabilities-intro.md	tokens match on mii-ex-pro-questionnaire-capabilities (2 candidate artefacts)
5.4c page-routing	MIIIGModulPRO/Technische-Implementierung/FHIR-Profile/Extension-ScoreHealthCorrelation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-ex-pro-questionnaire-capabilities-intro.md	child of single-artefact page MIIIGModulPRO/Technische-Implementierung/FHIR-Profile/Extension-Capabilities.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulPRO/Technische-Implementierung/FHIR-Profile/Abstrakte-Profile/Questionnaire.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-pro-questionnaire-intro.md	compact match on mii-pr-pro-questionnaire (5 candidate artefacts)
5.4c page-routing	MIIIGModulPRO/Technische-Implementierung/FHIR-Profile/Abstrakte-Profile/QuestionnaireResponse.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-pro-questionnaire-response-intro.md	compact match on mii-pr-pro-questionnaire-response (1 candidate artefact)
5.4c page-routing	MIIIGModulPRO/Technische-Implementierung/FHIR-Profile/Abstrakte-Profile/ObservationDefinition.page.md	branch=1	input/intro-notes/SearchParameter-mii-sp-pro-observationdefinition-code-intro.md	compact match on mii-sp-pro-observationdefinition-code (6 candidate artefacts)
5.4c page-routing	MIIIGModulPRO/Technische-Implementierung/FHIR-Profile/Abstrakte-Profile/Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-pro-observation-phq-9-intro.md	compact match on mii-pr-pro-observation-phq-9 (13 candidate artefacts)
5.4c page-routing	MIIIGModulPRO/Technische-Implementierung/FHIR-Profile/Abstrakte-Profile/Index.page.md	branch=2	h3/h4 section on profiles.md	4 children, 4 anchoring distinct artefacts (StructureDefinition)
5.4c page-routing	MIIIGModulPRO/PRO-Bibliothek/Index.page.md	branch=4	own page (HUB), menu decision UNKNOWN (no --target)	no artefact anchor; no agreed page; 18 child page(s)
5.4c page-routing	MIIIGModulPRO/PRO-Bibliothek/PHQ-9/Index.page.md	branch=4	own page (merged page), menu decision UNKNOWN (no --target)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	MIIIGModulPRO/PRO-Bibliothek/PHQ-15/Index.page.md	branch=4	own page (merged page), menu decision UNKNOWN (no --target)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	MIIIGModulPRO/PRO-Bibliothek/EQ-5D-5L/Index.page.md	branch=4	own page (merged page), menu decision UNKNOWN (no --target)	no artefact anchor; no agreed page; 1 child page(s)
5.4c page-routing	MIIIGModulPRO/PRO-Bibliothek/EQ-5D-5L/EQ-5D-5L-Scores.page.md	branch=3	eq-5d-5l-scores.md	agreed page named 'eq-5d-5l-scores' exists in the target
5.4c page-routing	MIIIGModulPRO/PRO-Bibliothek/EORTC-QLQ-C30/Index.page.md	branch=4	own page (merged page), menu decision UNKNOWN (no --target)	no artefact anchor; no agreed page; 1 child page(s)
5.4c page-routing	MIIIGModulPRO/PRO-Bibliothek/EORTC-QLQ-C30/EORTC-QLQ-C30.page.md	branch=3	eortc-qlq-c30.md	agreed page named 'eortc-qlq-c30' exists in the target
5.4c page-routing	MIIIGModulPRO/PRO-Bibliothek/PRO-CTCAE/Index.page.md	branch=4	own page (merged page), menu decision UNKNOWN (no --target)	no artefact anchor; no agreed page; 1 child page(s)
5.4c page-routing	MIIIGModulPRO/PRO-Bibliothek/PRO-CTCAE/Onkologisches-Basisscreening.page.md	branch=1	input/intro-notes/Questionnaire-mii-qst-pro-pro-ctcae-onkologisches-basisscreening-intro.md	compact match on mii-qst-pro-pro-ctcae-onkologisches-basisscreening (1 candidate artefact)
5.4c page-routing	MIIIGModulPRO/PRO-Bibliothek/MIDOS2/Index.page.md	branch=4	own page (merged page), menu decision UNKNOWN (no --target)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	MIIIGModulPRO/PRO-Bibliothek/PROMIS/Index.page.md	branch=2	h3/h4 section on profiles.md	3 children, 3 anchoring distinct artefacts (Questionnaire)
5.4c page-routing	MIIIGModulPRO/PRO-Bibliothek/PROMIS/PROMIS-29.page.md	branch=3	promis-29.md	agreed page named 'promis-29' exists in the target
5.4c page-routing	MIIIGModulPRO/PRO-Bibliothek/PROMIS/PROMIS-16.page.md	branch=3	promis-16.md	agreed page named 'promis-16' exists in the target
5.4c page-routing	MIIIGModulPRO/PRO-Bibliothek/PROMIS/PROMIS-Depression.page.md	branch=3	promis-depression.md	agreed page named 'promis-depression' exists in the target
5.4c page-routing	MIIIGModulPRO/PRO-Bibliothek/DASS-21/Index.page.md	branch=4	own page (merged page), menu decision UNKNOWN (no --target)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	MIIIGModulPRO/PRO-Bibliothek/WHODAS-2.0/Index.page.md	branch=4	own page (merged page), menu decision UNKNOWN (no --target)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	MIIIGModulPRO/PRO-Bibliothek/SCOFF/Index.page.md	branch=4	own page (merged page), menu decision UNKNOWN (no --target)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	MIIIGModulPRO/PRO-Bibliothek/WI-7/Index.page.md	branch=4	own page (merged page), menu decision UNKNOWN (no --target)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	MIIIGModulPRO/PRO-Bibliothek/PC-PTSD/Index.page.md	branch=4	own page (merged page), menu decision UNKNOWN (no --target)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	MIIIGModulPRO/PRO-Bibliothek/SSD-12/Index.page.md	branch=4	own page (merged page), menu decision UNKNOWN (no --target)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	MIIIGModulPRO/PRO-Bibliothek/ISR-Z/Index.page.md	branch=4	own page (merged page), menu decision UNKNOWN (no --target)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	MIIIGModulPRO/PRO-Bibliothek/EURONET-SOMA/Index.page.md	branch=4	own page (merged page), menu decision UNKNOWN (no --target)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	MIIIGModulPRO/PRO-Bibliothek/GAD-7/Index.page.md	branch=4	own page (merged page), menu decision UNKNOWN (no --target)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	MIIIGModulPRO/PRO-Bibliothek/BDI-II/Index.page.md	branch=4	own page (merged page), menu decision UNKNOWN (no --target)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	MIIIGModulPRO/PRO-Bibliothek/Minimal-Reference-Questionnaires/Index.page.md	branch=4	own page (merged page), menu decision UNKNOWN (no --target)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	MIIIGModulPRO/Domaenen-basiertes-Scoring/Index.page.md	branch=4	own page (HUB), menu decision UNKNOWN (no --target)	no artefact anchor; no agreed page; 3 child page(s)
5.4c page-routing	MIIIGModulPRO/Domaenen-basiertes-Scoring/Domaenen.page.md	branch=4	own page (merged page), menu decision UNKNOWN (no --target)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	MIIIGModulPRO/Domaenen-basiertes-Scoring/Domain-basiertes-Scoring.page.md	branch=4	own page (merged page), menu decision UNKNOWN (no --target)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	MIIIGModulPRO/Domaenen-basiertes-Scoring/Cross-Instrument-Mappings.page.md	branch=3	cross-instrument-mappings.md	agreed page named 'cross-instrument-mappings' exists in the target
5.4c page-routing	MIIIGModulPRO/Abgeleitete-Metriken/Index.page.md	branch=4	own page (merged page), menu decision UNKNOWN (no --target)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	map rows=98 retired=0 coverage=ok	map=migration-log/page-map.tsv
```

## 7. Page map (v2) and coverage

The page map is the CONTRACT of the narrative migration: this run generates and validates it, step 5 consumes ONLY it, step 8 checks against it. Columns: `source_page`, `target` (repo-relative path or `RETIRED`), `reason`, `branch` (spec 9e 1-4; 5 = RETIRED), `measure`. One row per page of the source page universe - the authoritative guide tree UNION `input/pagecontent` UNION on-disk pages no toc lists.

Rows: **98** total - 98 routed source pages (45 from the primary tree, 53 union pages outside it) and 0 RETIRED guide-tree summary row(s).

### 7.1 Union pages outside the primary tree

Pages of the universe the primary page tree does not list - routed by the same passes, after it (menu budget included).

| Source page | Branch | Target | Measurement |
| --- | --- | --- | --- |
| `MIIIGModulPRO/Index.page.md` | 3 | `input/pagecontent/index.md` | agreed page named 'index' exists in the target <br>_(union page: the authoritative guide tree `MII-PRO-v2026-DE` was not the primary input)_ |
| `MIIIGModulPRO/Beschreibung-Modul-PROs.page.md` | 3 | `input/pagecontent/index.md` | semantic match 'beschreibungmodul' -> index (routing-table) <br>_(union page: the authoritative guide tree `MII-PRO-v2026-DE` was not the primary input)_ |
| `MIIIGModulPRO/Kontext-im-Gesamtprojekt-Bezuege-zu-anderen-Modulen.page.md` | 3 | `input/pagecontent/implementer-guidance.md` | semantic match 'kontextimgesamtprojekt' -> implementer-guidance (routing-table) <br>_(union page: the authoritative guide tree `MII-PRO-v2026-DE` was not the primary input; routing-table home 'implementer-guidance' is not a page in this target - confirm the home)_ |
| `MIIIGModulPRO/Referenzen.page.md` | 3 | `input/pagecontent/implementer-guidance.md` | semantic match 'referenzen' -> implementer-guidance (routing-table) <br>_(union page: the authoritative guide tree `MII-PRO-v2026-DE` was not the primary input; routing-table home 'implementer-guidance' is not a page in this target - confirm the home)_ |
| `MIIIGModulPRO/Release-Notes.page.md` | 3 | `input/pagecontent/changes.md` | semantic match 'releasenotes' -> changes (routing-table) <br>_(union page: the authoritative guide tree `MII-PRO-v2026-DE` was not the primary input; source page is 2810 words > 2500 - merging it trips the host's size gate on its own (rule 5))_ |
| `MIIIGModulPRO/Anwendungsfaelle-Informationsmodell/Index.page.md` | 4 | `input/pagecontent/anwendungsfaelle-informationsmodell.md` | no artefact anchor; no agreed page; 3 child page(s) <br>_(union page: the authoritative guide tree `MII-PRO-v2026-DE` was not the primary input; folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ |
| `MIIIGModulPRO/Anwendungsfaelle-Informationsmodell/Beschreibung-von-Anwendungsfaellen.page.md` | 3 | `input/pagecontent/guidance.md` | semantic match 'anwendungsfaelle' -> guidance (routing-table) <br>_(union page: the authoritative guide tree `MII-PRO-v2026-DE` was not the primary input; routing-table home 'guidance' is not a page in this target - confirm the home)_ |
| `MIIIGModulPRO/Anwendungsfaelle-Informationsmodell/Datensaetze-inkl-Beschreibungen.page.md` | 3 | `input/pagecontent/logical-models.md` | semantic match 'datensaetze' -> logical-models (routing-table) <br>_(union page: the authoritative guide tree `MII-PRO-v2026-DE` was not the primary input; routing-table home 'logical-models' is not a page in this target - confirm the home)_ |
| `MIIIGModulPRO/Anwendungsfaelle-Informationsmodell/UML.page.md` | 3 | `input/pagecontent/uml-diagrams.md` | semantic match 'uml' -> uml-diagrams (routing-table) <br>_(union page: the authoritative guide tree `MII-PRO-v2026-DE` was not the primary input)_ |
| `MIIIGModulPRO/Technische-Implementierung/Index.page.md` | 4 | `input/pagecontent/technische-implementierung.md` | no artefact anchor; no agreed page; 7 child page(s) <br>_(union page: the authoritative guide tree `MII-PRO-v2026-DE` was not the primary input; folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ |
| `MIIIGModulPRO/Technische-Implementierung/Workflows.page.md` | 3 | `input/pagecontent/workflows.md` | agreed page named 'workflows' exists in the target <br>_(union page: the authoritative guide tree `MII-PRO-v2026-DE` was not the primary input)_ |
| `MIIIGModulPRO/Technische-Implementierung/Scoring.page.md` | 3 | `input/pagecontent/scoring.md` | agreed page named 'scoring' exists in the target <br>_(union page: the authoritative guide tree `MII-PRO-v2026-DE` was not the primary input)_ |
| `MIIIGModulPRO/Technische-Implementierung/ID-Systematik.page.md` | 4 | `input/pagecontent/id-systematik.md` | no artefact anchor; no agreed page; 0 child page(s) <br>_(union page: the authoritative guide tree `MII-PRO-v2026-DE` was not the primary input)_ |
| `MIIIGModulPRO/Technische-Implementierung/Terminologie-Strategien.page.md` | 4 | `input/pagecontent/terminologie-strategien.md` | no artefact anchor; no agreed page; 0 child page(s) <br>_(union page: the authoritative guide tree `MII-PRO-v2026-DE` was not the primary input)_ |
| `MIIIGModulPRO/Technische-Implementierung/Validierung.page.md` | 4 | `input/pagecontent/validierung.md` | no artefact anchor; no agreed page; 0 child page(s) <br>_(union page: the authoritative guide tree `MII-PRO-v2026-DE` was not the primary input)_ |
| `MIIIGModulPRO/Technische-Implementierung/QuestionnaireCapabilites.page.md` | 4 | `input/pagecontent/questionnairecapabilites.md` | no artefact anchor; no agreed page; 0 child page(s) <br>_(on disk but not listed in MIIIGModulPRO/Technische-Implementierung/toc.yaml; union page: the authoritative guide tree `MII-PRO-v2026-DE` was not the primary input)_ |
| `MIIIGModulPRO/Technische-Implementierung/FHIR-Profile/Extension-Capabilities.page.md` | 1 | `input/intro-notes/StructureDefinition-mii-ex-pro-questionnaire-capabilities-intro.md` | tokens match on mii-ex-pro-questionnaire-capabilities (2 candidate artefacts) <br>_(union page: the authoritative guide tree `MII-PRO-v2026-DE` was not the primary input)_ |
| `MIIIGModulPRO/Technische-Implementierung/FHIR-Profile/Extension-ScoreHealthCorrelation.page.md` | 1 | `input/intro-notes/StructureDefinition-mii-ex-pro-questionnaire-capabilities-intro.md` | child of single-artefact page MIIIGModulPRO/Technische-Implementierung/FHIR-Profile/Extension-Capabilities.page.md (no anchor of its own) <br>_(union page: the authoritative guide tree `MII-PRO-v2026-DE` was not the primary input)_ |
| `MIIIGModulPRO/Technische-Implementierung/FHIR-Profile/Abstrakte-Profile/Questionnaire.page.md` | 1 | `input/intro-notes/StructureDefinition-mii-pr-pro-questionnaire-intro.md` | compact match on mii-pr-pro-questionnaire (5 candidate artefacts) <br>_(union page: the authoritative guide tree `MII-PRO-v2026-DE` was not the primary input)_ |
| `MIIIGModulPRO/Technische-Implementierung/FHIR-Profile/Abstrakte-Profile/QuestionnaireResponse.page.md` | 1 | `input/intro-notes/StructureDefinition-mii-pr-pro-questionnaire-response-intro.md` | compact match on mii-pr-pro-questionnaire-response (1 candidate artefact) <br>_(union page: the authoritative guide tree `MII-PRO-v2026-DE` was not the primary input)_ |
| `MIIIGModulPRO/Technische-Implementierung/FHIR-Profile/Abstrakte-Profile/ObservationDefinition.page.md` | 1 | `input/intro-notes/SearchParameter-mii-sp-pro-observationdefinition-code-intro.md` | compact match on mii-sp-pro-observationdefinition-code (6 candidate artefacts) <br>_(union page: the authoritative guide tree `MII-PRO-v2026-DE` was not the primary input)_ |
| `MIIIGModulPRO/Technische-Implementierung/FHIR-Profile/Abstrakte-Profile/Observation.page.md` | 1 | `input/intro-notes/StructureDefinition-mii-pr-pro-observation-phq-9-intro.md` | compact match on mii-pr-pro-observation-phq-9 (13 candidate artefacts) <br>_(union page: the authoritative guide tree `MII-PRO-v2026-DE` was not the primary input)_ |
| `MIIIGModulPRO/Technische-Implementierung/FHIR-Profile/Abstrakte-Profile/Index.page.md` | 2 | `input/pagecontent/profiles.md` | 4 children, 4 anchoring distinct artefacts (StructureDefinition) <br>_(on disk but not listed in MIIIGModulPRO/Technische-Implementierung/FHIR-Profile/Abstrakte-Profile/toc.yaml; union page: the authoritative guide tree `MII-PRO-v2026-DE` was not the primary input; folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children; host 'profiles' is not an agreed page in this target - confirm the host)_ |
| `MIIIGModulPRO/PRO-Bibliothek/Index.page.md` | 4 | `input/pagecontent/pro-bibliothek.md` | no artefact anchor; no agreed page; 18 child page(s) <br>_(union page: the authoritative guide tree `MII-PRO-v2026-DE` was not the primary input; folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ |
| `MIIIGModulPRO/PRO-Bibliothek/PHQ-9/Index.page.md` | 4 | `input/pagecontent/phq-9.md` | no artefact anchor; no agreed page; 0 child page(s) <br>_(union page: the authoritative guide tree `MII-PRO-v2026-DE` was not the primary input; folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ |
| `MIIIGModulPRO/PRO-Bibliothek/PHQ-15/Index.page.md` | 4 | `input/pagecontent/phq-15.md` | no artefact anchor; no agreed page; 0 child page(s) <br>_(union page: the authoritative guide tree `MII-PRO-v2026-DE` was not the primary input; folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ |
| `MIIIGModulPRO/PRO-Bibliothek/EQ-5D-5L/Index.page.md` | 4 | `input/pagecontent/eq-5d-5l.md` | no artefact anchor; no agreed page; 1 child page(s) <br>_(union page: the authoritative guide tree `MII-PRO-v2026-DE` was not the primary input; folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ |
| `MIIIGModulPRO/PRO-Bibliothek/EQ-5D-5L/EQ-5D-5L-Scores.page.md` | 3 | `input/pagecontent/eq-5d-5l-scores.md` | agreed page named 'eq-5d-5l-scores' exists in the target <br>_(union page: the authoritative guide tree `MII-PRO-v2026-DE` was not the primary input)_ |
| `MIIIGModulPRO/PRO-Bibliothek/EORTC-QLQ-C30/Index.page.md` | 4 | `input/pagecontent/eortc-qlq-c30.md` | no artefact anchor; no agreed page; 1 child page(s) <br>_(union page: the authoritative guide tree `MII-PRO-v2026-DE` was not the primary input; folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ |
| `MIIIGModulPRO/PRO-Bibliothek/EORTC-QLQ-C30/EORTC-QLQ-C30.page.md` | 3 | `input/pagecontent/eortc-qlq-c30.md` | agreed page named 'eortc-qlq-c30' exists in the target <br>_(union page: the authoritative guide tree `MII-PRO-v2026-DE` was not the primary input)_ |
| `MIIIGModulPRO/PRO-Bibliothek/PRO-CTCAE/Index.page.md` | 4 | `input/pagecontent/pro-ctcae.md` | no artefact anchor; no agreed page; 1 child page(s) <br>_(union page: the authoritative guide tree `MII-PRO-v2026-DE` was not the primary input; folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ |
| `MIIIGModulPRO/PRO-Bibliothek/PRO-CTCAE/Onkologisches-Basisscreening.page.md` | 1 | `input/intro-notes/Questionnaire-mii-qst-pro-pro-ctcae-onkologisches-basisscreening-intro.md` | compact match on mii-qst-pro-pro-ctcae-onkologisches-basisscreening (1 candidate artefact) <br>_(union page: the authoritative guide tree `MII-PRO-v2026-DE` was not the primary input)_ |
| `MIIIGModulPRO/PRO-Bibliothek/MIDOS2/Index.page.md` | 4 | `input/pagecontent/midos2.md` | no artefact anchor; no agreed page; 0 child page(s) <br>_(union page: the authoritative guide tree `MII-PRO-v2026-DE` was not the primary input; folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ |
| `MIIIGModulPRO/PRO-Bibliothek/PROMIS/Index.page.md` | 2 | `input/pagecontent/profiles.md` | 3 children, 3 anchoring distinct artefacts (Questionnaire) <br>_(union page: the authoritative guide tree `MII-PRO-v2026-DE` was not the primary input; folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children; host 'profiles' is not an agreed page in this target - confirm the host)_ |
| `MIIIGModulPRO/PRO-Bibliothek/PROMIS/PROMIS-29.page.md` | 3 | `input/pagecontent/promis-29.md` | agreed page named 'promis-29' exists in the target <br>_(union page: the authoritative guide tree `MII-PRO-v2026-DE` was not the primary input)_ |
| `MIIIGModulPRO/PRO-Bibliothek/PROMIS/PROMIS-16.page.md` | 3 | `input/pagecontent/promis-16.md` | agreed page named 'promis-16' exists in the target <br>_(union page: the authoritative guide tree `MII-PRO-v2026-DE` was not the primary input)_ |
| `MIIIGModulPRO/PRO-Bibliothek/PROMIS/PROMIS-Depression.page.md` | 3 | `input/pagecontent/promis-depression.md` | agreed page named 'promis-depression' exists in the target <br>_(union page: the authoritative guide tree `MII-PRO-v2026-DE` was not the primary input)_ |
| `MIIIGModulPRO/PRO-Bibliothek/DASS-21/Index.page.md` | 4 | `input/pagecontent/dass-21.md` | no artefact anchor; no agreed page; 0 child page(s) <br>_(union page: the authoritative guide tree `MII-PRO-v2026-DE` was not the primary input; folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ |
| `MIIIGModulPRO/PRO-Bibliothek/WHODAS-2.0/Index.page.md` | 4 | `input/pagecontent/whodas-2-0.md` | no artefact anchor; no agreed page; 0 child page(s) <br>_(union page: the authoritative guide tree `MII-PRO-v2026-DE` was not the primary input; folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ |
| `MIIIGModulPRO/PRO-Bibliothek/SCOFF/Index.page.md` | 4 | `input/pagecontent/scoff.md` | no artefact anchor; no agreed page; 0 child page(s) <br>_(union page: the authoritative guide tree `MII-PRO-v2026-DE` was not the primary input; folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ |
| `MIIIGModulPRO/PRO-Bibliothek/WI-7/Index.page.md` | 4 | `input/pagecontent/wi-7.md` | no artefact anchor; no agreed page; 0 child page(s) <br>_(union page: the authoritative guide tree `MII-PRO-v2026-DE` was not the primary input; folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ |
| `MIIIGModulPRO/PRO-Bibliothek/PC-PTSD/Index.page.md` | 4 | `input/pagecontent/pc-ptsd.md` | no artefact anchor; no agreed page; 0 child page(s) <br>_(union page: the authoritative guide tree `MII-PRO-v2026-DE` was not the primary input; folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ |
| `MIIIGModulPRO/PRO-Bibliothek/SSD-12/Index.page.md` | 4 | `input/pagecontent/ssd-12.md` | no artefact anchor; no agreed page; 0 child page(s) <br>_(union page: the authoritative guide tree `MII-PRO-v2026-DE` was not the primary input; folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ |
| `MIIIGModulPRO/PRO-Bibliothek/ISR-Z/Index.page.md` | 4 | `input/pagecontent/isr-z.md` | no artefact anchor; no agreed page; 0 child page(s) <br>_(union page: the authoritative guide tree `MII-PRO-v2026-DE` was not the primary input; folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ |
| `MIIIGModulPRO/PRO-Bibliothek/EURONET-SOMA/Index.page.md` | 4 | `input/pagecontent/euronet-soma.md` | no artefact anchor; no agreed page; 0 child page(s) <br>_(union page: the authoritative guide tree `MII-PRO-v2026-DE` was not the primary input; folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ |
| `MIIIGModulPRO/PRO-Bibliothek/GAD-7/Index.page.md` | 4 | `input/pagecontent/gad-7.md` | no artefact anchor; no agreed page; 0 child page(s) <br>_(union page: the authoritative guide tree `MII-PRO-v2026-DE` was not the primary input; folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ |
| `MIIIGModulPRO/PRO-Bibliothek/BDI-II/Index.page.md` | 4 | `input/pagecontent/bdi-ii.md` | no artefact anchor; no agreed page; 0 child page(s) <br>_(union page: the authoritative guide tree `MII-PRO-v2026-DE` was not the primary input; folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ |
| `MIIIGModulPRO/PRO-Bibliothek/Minimal-Reference-Questionnaires/Index.page.md` | 4 | `input/pagecontent/minimal-reference-questionnaires.md` | no artefact anchor; no agreed page; 0 child page(s) <br>_(union page: the authoritative guide tree `MII-PRO-v2026-DE` was not the primary input; folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ |
| `MIIIGModulPRO/Domaenen-basiertes-Scoring/Index.page.md` | 4 | `input/pagecontent/domaenen-basiertes-scoring.md` | no artefact anchor; no agreed page; 3 child page(s) <br>_(union page: the authoritative guide tree `MII-PRO-v2026-DE` was not the primary input; folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ |
| `MIIIGModulPRO/Domaenen-basiertes-Scoring/Domaenen.page.md` | 4 | `input/pagecontent/domaenen.md` | no artefact anchor; no agreed page; 0 child page(s) <br>_(union page: the authoritative guide tree `MII-PRO-v2026-DE` was not the primary input)_ |
| `MIIIGModulPRO/Domaenen-basiertes-Scoring/Domain-basiertes-Scoring.page.md` | 4 | `input/pagecontent/domain-basiertes-scoring.md` | no artefact anchor; no agreed page; 0 child page(s) <br>_(union page: the authoritative guide tree `MII-PRO-v2026-DE` was not the primary input)_ |
| `MIIIGModulPRO/Domaenen-basiertes-Scoring/Cross-Instrument-Mappings.page.md` | 3 | `input/pagecontent/cross-instrument-mappings.md` | agreed page named 'cross-instrument-mappings' exists in the target <br>_(union page: the authoritative guide tree `MII-PRO-v2026-DE` was not the primary input)_ |
| `MIIIGModulPRO/Abgeleitete-Metriken/Index.page.md` | 4 | `input/pagecontent/abgeleitete-metriken.md` | no artefact anchor; no agreed page; 0 child page(s) <br>_(directory is reached by no toc.yaml - placed by directory nesting; union page: the authoritative guide tree `MII-PRO-v2026-DE` was not the primary input; folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ |

### 7.3 Coverage validation

Universe re-derived from disk: **98** page(s). Every one needs a row with a non-empty target; every RETIRED row needs a reason. The exit code reports the result (0 covered, 1 not).

**Covered.** All 98 universe pages have a target row; every RETIRED row carries a reason.

## 8. M9 optional-page / other-bucket proposal (Gate 0 census)

Counts: generated_crosscheck.counts (fsh-generated/resources). Rule (spec 9a): count 0 -> REMOVE the optional page, count > 0 -> KEEP and fill it; artefacts are never deleted to force a removal. Each proposal is a `5.4a` run-log line and a HUMAN decision - this table only measures.

| Optional page | Census key | Count | Proposal |
| --- | --- | ---: | --- |
| `extensions.md` | `extensions` | 2 | **KEEP** (fill it, delete the banner + OPTIONAL-PAGE marker in both languages) |
| `search-parameters.md` | `searchparameters` | 7 | **KEEP** (fill it, delete the banner + OPTIONAL-PAGE marker in both languages) |
| `operations.md` | `operations` | 0 | **REMOVE** per the template's docs/optional-pages.md procedure |
| `value-sets.md` | `valuesets` | 26 | **KEEP** (fill it, delete the banner + OPTIONAL-PAGE marker in both languages) |
| `code-systems.md` | `codesystems` | 12 | **KEEP** (fill it, delete the banner + OPTIONAL-PAGE marker in both languages) |
| `researcher-guidance.md` | - | - | no artefact count decides it - source narrative does (human decision) |
| `metadata.md` | - | - | no artefact count decides it - source narrative does (human decision) |

Artefact types in the census's OTHER bucket - each has NO template page and needs its own named placement (its own `5.4a` line; a type nobody placed is a queue-1 item):

| `artifacts.other` type | Count | Proposed placement |
| --- | ---: | --- |
| ConceptMap | 2 | h3/h4 section on `artifacts.md` |
| ObservationDefinition | 47 | h3/h4 section on `profiles.md` |

Declared-vs-generated mismatches Gate 0 reports (5) - the GENERATED counts above are the authoritative ones: `codesystems` 13->12, `examples` 156->60, `other:Measure` 1->0, `other:ObservationDefinition` 0->47, `questionnaires` 0->32.

