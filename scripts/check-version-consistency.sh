#!/bin/bash
# Prüft, ob die Modulversion an ALLEN Stellen übereinstimmt.
#
# Hintergrund: Zwischen 2026.2.0 und 2026.6.0 blieb
# implementation-guides/MII-PRO-v2026-DE/guide.yaml vier Releases lang auf einem
# veralteten Stand, weil sie beim Version-Bump vergessen wurde. Diese Prüfung
# macht solche Abweichungen sichtbar, bevor getaggt wird.
#
# Verwendung:  scripts/check-version-consistency.sh
# Exit 0 = alle Stellen konsistent, Exit 1 = Abweichung gefunden.

cd "$(dirname "${BASH_SOURCE[0]}")/.." || exit 1

python3 - <<'PYEOF'
import json, glob, re, sys, os

G, R, Y, N = '\033[0;32m', '\033[0;31m', '\033[1;33m', '\033[0m'
fail = False

def line(label, value, ok, hint=""):
    global fail
    col = G if ok else R
    print(f"  {col}{label:<52s} {value}{(' — ' + hint) if hint else ''}{N}")
    if not ok: fail = True

# --- Referenz: sushi-config.yaml
ref = None
for l in open('sushi-config.yaml', encoding='utf-8'):
    m = re.match(r'^version:\s*"?([^"\s#]+)"?', l)
    if m: ref = m.group(1); break
if not ref:
    print(f"{R}Konnte die Version aus sushi-config.yaml nicht lesen.{N}"); sys.exit(1)
print(f"Referenzversion (sushi-config.yaml): {ref}\n")

# --- package.json
try:
    v = json.load(open('package.json', encoding='utf-8')).get('version')
    line("package.json", v or "(fehlt)", v == ref, "" if v == ref else f"erwartet {ref}")
except Exception as e:
    line("package.json", f"Lesefehler: {e}", False)

# --- version.fsh (alle Vorkommen müssen gleich sein)
vs = sorted(set(re.findall(r'\d{4}\.\d+\.\d+(?:-[A-Za-z0-9.]+)?', open('input/fsh/rulesets/version.fsh', encoding='utf-8').read())))
line("input/fsh/rulesets/version.fsh", " ".join(vs) or "(fehlt)",
     vs == [ref], "" if vs == [ref] else f"erwartet nur {ref}")

# --- guide.yaml (Simplifier-IG-Konfiguration)
guides = glob.glob('implementation-guides/*/guide.yaml')
if not guides:
    print(f"  {Y}{'implementation-guides/*/guide.yaml':<52s} nicht gefunden{N}")
for g in guides:
    v = None
    for l in open(g, encoding='utf-8'):
        m = re.match(r'^version:\s*"?([^"\s#]+)"?', l)
        if m: v = m.group(1); break
    line(g, v or "(fehlt)", v == ref, "" if v == ref else f"erwartet {ref}")

# --- qc/custom.rules.yaml führt eine LISTE gültiger Versionen
if os.path.exists('qc/custom.rules.yaml'):
    txt = open('qc/custom.rules.yaml', encoding='utf-8').read()
    inside = f"'{ref}'" in txt
    line("qc/custom.rules.yaml (Versionsliste)",
         f"enthält {ref}" if inside else f"{ref} FEHLT in der Liste", inside)

# --- generierte Conformance-Ressourcen (nur Top-Level-.version)
alt = []
for f in glob.glob('fsh-generated/resources/*.json'):
    try: d = json.load(open(f, encoding='utf-8'))
    except Exception: continue
    v = d.get('version')
    if v is not None and v != ref:
        alt.append((os.path.basename(f), v))
if os.path.isdir('fsh-generated/resources'):
    line("fsh-generated/resources (Top-Level .version)",
         f"alle auf {ref}" if not alt else f"{len(alt)} mit Altversion", not alt)
    for f, v in alt[:5]: print(f"      {f} -> {v}")

# --- ObservationDefinitions tragen die Version in der artifact-version-Extension (R4-Backport)
odef_bad = []
for f in glob.glob('fsh-generated/resources/ObservationDefinition-*.json'):
    try: d = json.load(open(f, encoding='utf-8'))
    except Exception: continue
    ev = [e.get('valueString') for e in d.get('extension', []) if str(e.get('url','')).endswith('artifact-version')]
    if not ev or ev[0] != ref:
        odef_bad.append((os.path.basename(f), ev[0] if ev else "(keine Extension)"))
odefs = glob.glob('fsh-generated/resources/ObservationDefinition-*.json')
if odefs:
    line("ObservationDefinitions (artifact-version)",
         f"alle {len(odefs)} auf {ref}" if not odef_bad else f"{len(odef_bad)} abweichend", not odef_bad)
    for f, v in odef_bad[:5]: print(f"      {f} -> {v}")

print()
if fail:
    print(f"{R}❌ Versionsabweichung — vor dem Tag beheben.{N}")
    print("   qc/custom.rules.yaml braucht die neue Version ZUSÄTZLICH in der Liste, nicht als Ersatz.")
    print("   fsh-generated nach dem Bump mit 'sushi . --snapshot' neu erzeugen.")
    sys.exit(1)
print(f"{G}✅ Alle Versionsstellen konsistent auf {ref}.{N}")
PYEOF
