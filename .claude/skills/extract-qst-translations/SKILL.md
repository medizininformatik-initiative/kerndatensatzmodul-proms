---
name: extract-qst-translations
description: Extract item texts, answer labels and language translations from generated FHIR Questionnaire JSON files. Outputs TSV/CSV for systematic comparison against external source PDFs (e.g. PROMIS Profile 33 deutsch). Use when validating translation quality, finding LOINC-vs-validated-translation drift, auditing primary-language consistency, or preparing diff tables for reviewers.
---

# Extract Questionnaire Translations

Pulls item texts, answer-option labels and their `translation`-extension content out of generated FHIR Questionnaire JSON. Emits TSV so the rendered DE/EN text can be compared line-by-line against an external validated source (typically a PROMIS / EORTC / PROMIS Germany PDF).

## When to Use

- Reviewer reports "the German wording doesn't match the validated PROMIS translation"
- Auditing whether `text` (primary) and `_text.extension[translation]` (DE) match a reference PDF
- Catching mixed-architecture files where some items are EN-primary and some DE-primary (a common refactor artifact)
- Cross-checking Anxiety/Depression/Fatigue/Sleep wording before publishing
- Producing a clean side-by-side table for a co-author to mark up

## Files

| File | Purpose |
|------|---------|
| `extract-translations.jq` | Core jq logic. Reusable standalone. |
| `extract.sh` | Full extractor: outputs `file, lang, linkId, kind, loinc, primary, de_trans, en_trans, ord`. Use to spot architectural inconsistencies (e.g. `primary` is German but `lang=en`). |
| `extract-de.sh` | German-only view: outputs `file, linkId, kind, loinc, de_text, ord`. Picks the explicit DE translation, otherwise falls back to `primary`. Use this for direct PDF comparison. |
| `diff-against-master.sh` | Auto-diff against the validated master reference. Output: status (MATCH/DIFF/MISSING_IN_OURS/EXTRA_IN_OURS), master_var, our linkId, master text, our text. |
| `reference/promis-master-de.tsv` | Validated German PROMIS items extracted from `MASTER_3EntitiesOverview.xlsx` "Item Level Dictionary" sheet (DZPG 3-Entities consortium reference). Columns: instrument, master_var, our_linkId (suggested), intro, text, responses. Re-generate with the python script in this README if the master is updated. |

## Quick Usage

```bash
# Full diagnostic view (all languages, side by side)
.claude/skills/extract-qst-translations/extract.sh \
  fsh-generated/resources/Questionnaire-mii-qst-pro-promis-29.json \
  > /tmp/promis29-translations.tsv

# German-only view, items only (no answer rows)
.claude/skills/extract-qst-translations/extract-de.sh \
  fsh-generated/resources/Questionnaire-mii-qst-pro-promis-29.json \
  | awk -F'\t' 'NR==1 || $3=="item"' \
  > /tmp/promis29-de-items.tsv

# Compare DE-primary vs EN-primary variant of the same instrument
.claude/skills/extract-qst-translations/extract-de.sh \
  fsh-generated/resources/Questionnaire-mii-qst-pro-promis-29.json \
  fsh-generated/resources/Questionnaire-mii-qst-pro-promis-29-de.json
```

## Diagnosing Mixed Architecture

If `extract.sh` shows rows where the file declares `lang=en` but `primary` contains German text and `de_trans` is empty, the file has been partially migrated to DE-primary without the corresponding cleanup. Example from PROMIS-29:

```
lang  linkId         primary                                    de_trans
en    promis-pfa11   Are you able to do chores...               Können Sie Hausarbeiten...   ← correct EN-primary
en    promis-edanx01 ...fühlte ich mich ängstlich               (empty)                       ← BROKEN: DE in primary slot
```

This is the symptom of an incomplete refactor (cf. commit `d72bcca5` "Switch to German primary, English translation").

## Comparing Against a PDF

1. Run `extract-de.sh` → TSV with all rendered German text
2. Open the source PDF (e.g. PROMIS Profile 33 deutsch)
3. Diff item-by-item using `linkId` as anchor
4. Common divergence patterns:
   - LOINC-derived translation (e.g. "fühlte ich mich ängstlich") vs validated PROMIS wording ("Ich fürchtete mich")
   - Answer scale uses LOINC default (Nie/Selten/...) but PROMIS-29 prescribes harmonized scale (Überhaupt nicht/Ein wenig/...)
   - Time prompt "vergangenen 7 Tagen" vs validated "letzten 7 Tagen"

## Limitations

- Reads generated JSON, not FSH source. Re-run `sushi` first if FSH was edited.
- Display items (`type=display`) are skipped — they're typically instruction text, not item content.
- Only extracts `text`, `valueCoding.display` and `translation` extension content. Other text-carrying fields (e.g. `prefix`, `initial`) are ignored.
- TSV output: if your source text contains tabs or newlines, the columns will misalign. Quote with `column -t -s $'\t'` for display only.
