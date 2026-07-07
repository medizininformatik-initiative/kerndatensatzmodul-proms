---
name: render-questionnaire
description: "Render a generated FHIR Questionnaire JSON as a dependency-free, offline HTML preview for review. Resolves answerValueSet via the CodeSystems in fsh-generated, shows each item with its answer options, the ordinalValue scoring weights (badges), and German translations (translation extension). Use when you want to SEE/review a questionnaire form without the IG Publisher (no Jekyll) or LHC-Forms (no CDN) — e.g. reviewing PHQ-9/PHQ-15/WHODAS/PROMIS questionnaires. Triggers: 'render the questionnaire', 'preview the form', 'show me the questionnaire to review'."
---

# render-questionnaire

Produces a self-contained HTML preview of a FHIR R4 Questionnaire so it can be reviewed
visually, **without** external dependencies (no IG Publisher/Jekyll, no LHC-Forms CDN).

## What it shows
- Groups → sections, `display` items → stems, `choice` items → questions with their answer options.
- **answerValueSet is resolved** against the CodeSystems found in the same `fsh-generated/resources`
  folder, so options appear even when not inline.
- **ordinalValue weight badges** per option (read from the answerOption extension OR the
  CodeSystem concept `ordinalValue`/`itemWeight` property) — a missing weight is flagged red.
- **German translations** (the `hl7-translation` extension) shown under each EN-primary text.

## Usage
```bash
python3 .claude/skills/render-questionnaire/render_questionnaire.py \
  fsh-generated/resources/Questionnaire-mii-qst-pro-phq-15.json \
  --title "PHQ-15 (Review)" --open
```
- First arg: path (or glob) to the generated Questionnaire JSON.
- `--out <file>`: output HTML path (default: /tmp/<id>-preview.html).
- `--title "..."`: heading. `--note "..."`: yellow note box (e.g. licensing).
- `--open`: open the HTML in the default browser (macOS `open`).

Terminology (CodeSystem/ValueSet) is auto-loaded from the Questionnaire JSON's directory.

## Notes
- This is a **review** tool, not a form filler — it does not evaluate `calculatedExpression`
  (no live scoring). Weight badges reflect the declared ordinalValue, so reviewers can check
  the scoring weights without a runtime engine.
- For interactive filling/live scoring use the project's actual SDC renderer (gefyra/ISiK) or
  the IG Publisher build.
