#!/usr/bin/env bash
# Extract only the German-facing text from a Questionnaire JSON, regardless of
# whether it lives in `text`/`display` (DE-primary) or in `_text`/`_display` translation extension (EN-primary).
# Output is one row per item/answer:  file, linkId, kind, loinc, de_text, ord
# Use to compare against German source PDFs (e.g. PROMIS Profile 33 deutsch).
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [[ $# -lt 1 ]]; then
  echo "Usage: $0 <Questionnaire-*.json> [more files...]" >&2
  exit 1
fi

print_header=1
for f in "$@"; do
  [[ -f "$f" ]] || { echo "skip: $f" >&2; continue; }
  filename="$(basename "$f")"
  if [[ $print_header -eq 1 ]]; then
    printf "file\tlinkId\tkind\tloinc\tde_text\tord\n"
    print_header=0
  fi
  lang="$(jq -r '.language // ""' "$f")"
  jq -r --arg lang "$lang" --arg fn "$filename" '
    def trans: if .extension then
        [.extension[] | select(.url=="http://hl7.org/fhir/StructureDefinition/translation") |
         {l:(.extension[]|select(.url=="lang")|.valueCode),
          t:(.extension[]|select(.url=="content")|.valueString)}]
      else [] end;
    def pick_de(primary; trans_obj):
      # Prefer explicit DE translation extension; otherwise fall back to primary
      # (which is the practical effective text shown to a DE renderer when the
      # file is DE-primary OR when the file is broken/mixed and DE text was put
      # directly into the primary slot without a translation extension).
      ((trans_obj | trans | map(select(.l=="de")) | first | .t) // primary // "");
    def walk:
      .[] |
      if .type=="group" then (.item // [] | walk)
      elif .type=="display" then empty
      else
        . as $i |
        ([{linkId:$i.linkId,kind:"item",
           loinc:($i.code[0].code // ""),
           de_text: pick_de($i.text; ($i._text // {})),
           ord:""}] +
         [($i.answerOption // [])[] |
          {linkId:$i.linkId,kind:"answer",
           loinc:.valueCoding.code,
           de_text: pick_de(.valueCoding.display; (.valueCoding._display // {})),
           ord:((.extension[]?|select(.url=="http://hl7.org/fhir/StructureDefinition/ordinalValue")|.valueDecimal) // "")}]
        )[]
      end;
    .item | walk | [$fn, .linkId, .kind, .loinc, .de_text, (.ord|tostring)] | @tsv
  ' "$f"
done
