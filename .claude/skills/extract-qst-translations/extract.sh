#!/usr/bin/env bash
# Extract item texts, answer labels and translations from a generated FHIR Questionnaire JSON.
# Usage: ./extract.sh <Questionnaire-*.json> [<more-files>...]
# Output: TSV on stdout with columns: file, lang, linkId, kind, loinc, primary, de_trans, en_trans, ord
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
JQ_SCRIPT="$SCRIPT_DIR/extract-translations.jq"

if [[ $# -lt 1 ]]; then
  echo "Usage: $0 <Questionnaire-*.json> [more files...]" >&2
  exit 1
fi

print_header=1
for f in "$@"; do
  if [[ ! -f "$f" ]]; then
    echo "skip (not a file): $f" >&2
    continue
  fi
  filename="$(basename "$f")"
  lang="$(jq -r '.language // ""' "$f")"
  jq -rf "$JQ_SCRIPT" "$f" | awk -v fn="$filename" -v lg="$lang" -v hdr="$print_header" '
    NR==1 && hdr==1 { print "file\tlang\t"$0; next }
    NR==1 && hdr==0 { next }
    { print fn"\t"lg"\t"$0 }
  '
  print_header=0
done
