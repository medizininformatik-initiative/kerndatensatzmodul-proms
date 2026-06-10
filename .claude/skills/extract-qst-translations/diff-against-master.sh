#!/usr/bin/env bash
# Diff a generated Questionnaire JSON's German item texts against the
# validated PROMIS master reference TSV (extracted from
# MASTER_3EntitiesOverview.xlsx, "Item Level Dictionary" sheet).
#
# Output columns: status | linkId | master_text | our_text
# status = MATCH | DIFF | MISSING_IN_OURS | EXTRA_IN_OURS
#
# Usage: ./diff-against-master.sh <Questionnaire-*.json>
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REF="$SCRIPT_DIR/reference/promis-master-de.tsv"
EXTRACT="$SCRIPT_DIR/extract-de.sh"

if [[ $# -lt 1 ]]; then
  echo "Usage: $0 <Questionnaire-*.json>" >&2
  exit 1
fi
[[ -f "$REF" ]] || { echo "Reference TSV missing: $REF" >&2; exit 2; }
[[ -f "$1" ]]   || { echo "JSON missing: $1" >&2; exit 2; }

# Build python-side comparison (handles unicode normalization cleanly)
python3 - "$1" "$REF" "$EXTRACT" <<'PY'
import sys, subprocess, csv, re, unicodedata
json_path, ref_path, extract_sh = sys.argv[1:4]

def norm(s):
    # Lowercase + collapse whitespace + drop trailing punctuation
    s = unicodedata.normalize('NFC', s or '')
    s = s.replace('\xa0', ' ').strip().lower()
    s = re.sub(r'\s+', ' ', s)
    s = re.sub(r'[.,;:!?…]+$', '', s)
    return s

# Load reference, keyed by master variable suffix (lowercased, hyphen-normalized)
def suffix_key(v):
    return v.lower().replace('_','-').replace('promis-','').replace('cognition-','')

ref = {}
with open(ref_path, encoding='utf-8') as f:
    r = csv.DictReader(f, delimiter='\t')
    for row in r:
        ref[suffix_key(row['master_var'])] = row

# Run extractor for the JSON
out = subprocess.run([extract_sh, json_path], capture_output=True, text=True, check=True).stdout
ours = {}
for line in out.splitlines()[1:]:
    parts = line.split('\t')
    if len(parts) < 5: continue
    fn, linkId, kind, loinc, de_text, *rest = parts
    if kind == 'item':
        ours[suffix_key(linkId)] = (linkId, de_text)

# Re-shape ours to plain dict for comparison
ours_text = {k: v[1] for k,v in ours.items()}

# Compare
match = diff = missing = extra = 0
print(f"{'STATUS':<16} {'master_var':<18} {'our linkId':<32} {'master':<55} {'ours':<55}")
print("-"*180)
all_keys = sorted(set(ref) | set(ours_text))
for k in all_keys:
    m = ref.get(k, {}).get('text', '')
    mvar = ref.get(k, {}).get('master_var', '')
    o = ours_text.get(k, '')
    olid = ours.get(k, ('',''))[0]
    if k in ref and k in ours_text:
        if norm(m) == norm(o):
            status = 'MATCH'; match += 1
        else:
            status = 'DIFF';  diff += 1
    elif k in ref:
        status = 'MISSING_IN_OURS'; missing += 1
    else:
        status = 'EXTRA_IN_OURS';   extra += 1
    if status != 'MATCH':
        print(f"{status:<16} {mvar[:17]:<18} {olid[:31]:<32} {m[:53]:<55} {o[:53]:<55}")

print("-"*180)
print(f"Summary: MATCH={match}  DIFF={diff}  MISSING_IN_OURS={missing}  EXTRA_IN_OURS={extra}")
PY
