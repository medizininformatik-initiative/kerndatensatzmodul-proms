#!/usr/bin/env python3
"""Generiert die CQL-Scoring-Library fuer PROMIS-29 (Server-Kanal der Dual-Channel-
Architektur, Beads 6yu) aus DENSELBEN Quellen wie die FHIRPath-calculatedExpressions:

  scripts/data/promis29-answer-weights.csv   Antwortgewichte je Item/LA-Code (6yu.3: kein
                                              .weight() in CQL, daher Lookup-Tabellen —
                                              Drift ist ausgeschlossen, weil beide Kanaele
                                              aus dieser Datei generiert werden)
  scripts/data/promis29-t-score-tables.csv   Rohwert -> T-Score je Domaene (Adult Profile
                                              Scoring Manual v2.1, Appendix)
  fsh-generated/resources/Questionnaire-mii-qst-pro-promis-29.json  Domaenen/Items
  input/fsh/rulesets/version.fsh             Modulversion (= Library.version = CQL-Version)

Erzeugt input/cql/mii-lib-pro-promis-29.cql (GENERIERT — nie von Hand editieren).

Konvention (6yu.14): Jeder Score-Define heisst exakt wie das Score-Item (linkId), z. B.
"promis-29-anxiety-tscore". Server-Werkzeuge (Form Manager $compute-and-extract) finden den
Define damit ueber die linkId, unabhaengig davon, welche Expression-Sprache das Item traegt.

Flow: SDC Flow A (context Patient, Retrieve der juengsten QuestionnaireResponse des
Instruments) UND Flow B (Parameter "Response" fuer Library/$evaluate); Coalesce entscheidet.
Ohne FHIRHelpers (explizite .value-Zugriffe), damit das ELM ohne Hilfsbibliothek laeuft.
"""
import csv, json, re, sys
from collections import OrderedDict
from pathlib import Path

REPO = Path(__file__).resolve().parent.parent
Q = json.loads((REPO / "fsh-generated/resources/Questionnaire-mii-qst-pro-promis-29.json").read_text())
VERSION = re.search(r'RuleSet: Version\n\* version = "([^"]+)"', (REPO / "input/fsh/rulesets/version.fsh").read_text()).group(1)
OUT = REPO / "input/cql/mii-lib-pro-promis-29.cql"

# Gruppe -> (Score-Slug, Variablenname der T-Tabelle)
DOMAINS = OrderedDict([
    ("PROMIS-29.PhysicalFunction", ("physical-function", "physicalFunctionRaw")),
    ("PROMIS-29.Anxiety", ("anxiety", "anxietyRaw")),
    ("PROMIS-29.Depression", ("depression", "depressionRaw")),
    ("PROMIS-29.Fatigue", ("fatigue", "fatigueRaw")),
    ("PROMIS-29.Sleep", ("sleep", "sleepRaw")),
    ("PROMIS-29.Social", ("social", "socialRaw")),
    ("PROMIS-29.PainInterference", ("pain-interference", "painInterferenceRaw")),
])
items = {}  # group -> [linkIds der choice-Items]
for g in Q["item"]:
    if g["linkId"] in DOMAINS:
        items[g["linkId"]] = [i["linkId"] for i in g.get("item", []) if i.get("type") == "choice"]
        assert len(items[g["linkId"]]) == 4, g["linkId"]

weights = {}  # linkId -> {la: w}
with (REPO / "scripts/data/promis29-answer-weights.csv").open() as fh:
    for row in csv.DictReader(fh):
        weights.setdefault(row["linkId"], {})[row["la_code"]] = int(row["weight"])
tables = {}  # variable -> [(raw, t)]
with (REPO / "scripts/data/promis29-t-score-tables.csv").open() as fh:
    for row in csv.DictReader(fh):
        tables.setdefault(row["variable"], []).append((int(row["raw"]), row["tscore"]))

# Skalen: Items mit identischer Code->Gewicht-Abbildung teilen sich eine Funktion
scales = OrderedDict()  # signature -> (name, mapping, [linkIds])
for lid in [l for g in items.values() for l in g]:
    sig = tuple(sorted(weights[lid].items()))
    if sig not in scales:
        scales[sig] = [f"Scale{len(scales) + 1}", dict(sig), []]
    scales[sig][2].append(lid)

def q(s): return "'" + s.replace("'", "\\'") + "'"
L = []
L.append(f'''// GENERIERT von scripts/generate-promis29-cql.py — nicht von Hand editieren.
// Quellen: promis29-answer-weights.csv, promis29-t-score-tables.csv, Questionnaire-JSON.
//
// PROMIS-29 Profile v2.1 — Scoring (Server-Kanal, Dual-Channel-Architektur).
// Rohwert = Summe der Antwortgewichte der vier Items einer Domaene; T-Score nur bei
// vollstaendig beantworteter Short Form (Count-Guard, wie im FHIRPath-Kanal).
// Define-Namen == Score-linkIds des Questionnaires (Konvention 6yu.14).
library "mii-lib-pro-promis-29" version '{VERSION}'

using FHIR version '4.0.1'

// Flow B: QuestionnaireResponse explizit uebergeben (Library/$evaluate mit Parameters).
parameter "Response" QuestionnaireResponse

context Patient

define "QuestionnaireUrl":
  {q(Q["url"])}

// Flow A: juengste Response des Instruments aus den Patientendaten.
define "MostRecentResponse":
  First(
    ([QuestionnaireResponse]) R
      where R.questionnaire.value.startsWith("QuestionnaireUrl")
        and R.status.value in {{'completed', 'amended'}}
      sort by authored.value desc
  )

define "ScoredResponse":
  Coalesce("Response", "MostRecentResponse")

// PROMIS-29 ist zweistufig gruppiert (Domaene -> Items); flach fuer die Summen.
define "AllItems":
  flatten((("ScoredResponse".item) G return all G.item))

define function "AnswerCode"(I FHIR.QuestionnaireResponse.Item):
  ((First(I.answer).value) as FHIR.Coding).code.value
''')
L.append("// ---- Antwortskalen (Gewichte aus promis29-answer-weights.csv) ----")
for name, mapping, lids in scales.values():
    L.append(f'// {name}: {", ".join(lids)}')
    L.append(f'define function "{name}"(code String):')
    L.append("  case code")
    for la, w in mapping.items():
        L.append(f"    when {q(la)} then {w}")
    L.append("    else null\n  end\n")
L.append('define function "Weight"(linkId String, code String):')
L.append("  case")
for name, mapping, lids in scales.values():
    L.append(f'    when linkId in {{{", ".join(q(l) for l in lids)}}} then "{name}"(code)')
L.append("    else null\n  end\n")
for g, (slug, var) in DOMAINS.items():
    lids = items[g]; ids = "{" + ", ".join(q(l) for l in lids) + "}"
    L.append(f"// ---- {g} ----")
    L.append(f'define "{slug}-answered":')
    L.append(f'  Count((("AllItems") I where I.linkId.value in {ids} and exists(I.answer)))\n')
    L.append(f'define "promis-29-{slug}-raw":')
    L.append(f'  if "{slug}-answered" = 4 then')
    L.append(f'    Sum((("AllItems") I where I.linkId.value in {ids}')
    L.append(f'      return all "Weight"(I.linkId.value, "AnswerCode"(I))))')
    L.append("  else null\n")
    L.append(f'define "promis-29-{slug}-tscore":')
    L.append(f'  case "promis-29-{slug}-raw"')
    for raw, t in tables[var]:
        L.append(f"    when {raw} then {t}")
    L.append("    else null\n  end\n")
L.append('''// ---- Pain Intensity (Einzelitem, 0-10) ----
define "promis-global07":
  First((("AllItems") I where I.linkId.value = 'promis-global07'
    return all ((First(I.answer).value) as FHIR.integer).value))

// Smoke-Define fuer das Release-Gate (6yu.4): liefert true, sobald die Library laeuft.
define "LibraryLoaded":
  true
''')
OUT.write_text("\n".join(L))
print(f"{OUT.relative_to(REPO)}: {len(scales)} Skalen, {len(DOMAINS)} Domaenen, Version {VERSION}")
