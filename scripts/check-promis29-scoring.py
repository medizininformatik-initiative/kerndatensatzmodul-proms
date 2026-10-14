#!/usr/bin/env python3
"""Prüft das PROMIS-29-Scoring gegen die vendorten Referenzdaten.

Hintergrund: HDB-1007 (invertierte Gewichte srpper23), HDB-1008 (Antwortoption
Usually/Often), HDB-1009 (erfundene T-Score-Tabellen). Die Fehler waren Jahre
unentdeckt, weil keine maschinenlesbare Referenz existierte.

Stufe 1 (immer, CI-tauglich, KEIN LOINC nötig):
  1a  T-Score-Kaskaden beider Sprachvarianten == scripts/data/
      promis29-t-score-tables.csv (offizieller v2.1-Appendix), Zeile für Zeile
  1b  keine zwei Domänen mit identischer Tabelle (hätte PF==Social und
      Anxiety==Pain allein gefangen)
  1c  jede Kaskade trägt den count()-Vollständigkeits-Guard
  1d  answerOption-Gewichte beider Sprachvarianten == scripts/data/
      promis29-answer-weights.csv

Stufe 2 (nur wenn $LOINC_DIR gesetzt, lokaler Release-Check):
  2a  Fixture-Gewichte gegen die Scores der LOINC-AnswerLists
      (AccessoryFiles/AnswerFile/AnswerList.csv). Bekannte, über HDB-1008
      getrackte Abweichung: Social-Items kodieren LA10044-8 statt LA14747-2 —
      wird als WARNUNG gemeldet, nicht als Fehler.

Exit-Code 0 = alles konsistent; 1 = Befund in Stufe 1 oder 2a-Score-Mismatch.
"""
import csv
import os
import re
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parent.parent
DATA = Path(__file__).resolve().parent / "data"
FSH_FILES = [
    REPO / "input/fsh/definitions/promis-29/mii-qst-pro-promis-29.fsh",
    REPO / "input/fsh/definitions/promis-29/mii-qst-pro-promis-29-de.fsh",
]
# Social-Items: LOINC-Liste LL3003-2 nennt als 4. Option LA14747-2 "Usually";
# das Modul kodiert (noch) LA10044-8 "Often" — getrackt als HDB-1008.
KNOWN_DEVIATIONS = {("LL3003-2", "LA10044-8")}
ANSWER_LISTS = {  # linkId-Präfix -> erwartete LOINC-AnswerList (für Stufe 2)
    "promis-srpper": "LL3003-2",
    "promis-edanx": "LL1016-6",
    "promis-eddep": "LL1016-6",
}

errors: list[str] = []
warnings: list[str] = []


def load_expected_tables() -> dict:
    tables: dict[str, dict[int, str]] = {}
    with open(DATA / "promis29-t-score-tables.csv", newline="") as f:
        for row in csv.DictReader(f):
            tables.setdefault(row["variable"], {})[int(row["raw"])] = row["tscore"]
    return tables


def extract_cascades(src: str) -> dict:
    found: dict[str, dict[int, str]] = {}
    for m in re.finditer(r'expression = "([^"]*iif\(%(\w+Raw)=4,[^"]*)"', src):
        expr, var = m.group(1), m.group(2)
        found[var] = dict(
            (int(a), b) for a, b in re.findall(r"%" + var + r"=(\d+), ([\d.]+)", expr)
        )
        if ".answer.count() =" not in expr:
            errors.append(f"{var}: Kaskade ohne count()-Vollständigkeits-Guard")
    return found


def extract_weights(src: str) -> dict:
    rows: dict[tuple, str] = {}
    cur = la = None
    pending = False
    for line in src.splitlines():
        m = re.search(r'linkId = "(promis-[a-z0-9-]+)"', line)
        if m:
            cur, la = m.group(1), None
            continue
        m = re.search(r'answerOption\[\+\]\.valueCoding = \$LNC#(LA[\d-]+)', line)
        if m:
            la, pending = m.group(1), False
            continue
        if 'itemWeight"' in line:
            pending = True
            continue
        m = re.search(r"answerOption\[=\]\.extension\[=\]\.valueDecimal = (\d+)", line)
        if m and pending and cur and la:
            rows[(cur, la)] = m.group(1)
            pending = False
    return rows


def stage1() -> None:
    expected_tables = load_expected_tables()
    expected_weights = {}
    with open(DATA / "promis29-answer-weights.csv", newline="") as f:
        for row in csv.DictReader(f):
            expected_weights[(row["linkId"], row["la_code"])] = row["weight"]

    for path in FSH_FILES:
        src = path.read_text()
        name = path.name
        cascades = extract_cascades(src)
        for var, table in expected_tables.items():
            got = cascades.get(var)
            if not got:
                errors.append(f"{name}: Kaskade für {var} fehlt")
                continue
            diffs = {k: (got.get(k), v) for k, v in table.items() if got.get(k) != v}
            if diffs:
                errors.append(f"{name}: {var} weicht in {len(diffs)} Zeilen ab, z. B. {list(diffs.items())[:2]}")
        # 1b: Duplikate
        seen: dict[tuple, str] = {}
        for var, table in cascades.items():
            key = tuple(sorted(table.items()))
            if key in seen:
                errors.append(f"{name}: {var} und {seen[key]} tragen identische Tabellen")
            seen[key] = var
        # 1d: Gewichte
        got_w = extract_weights(src)
        for key, w in expected_weights.items():
            if got_w.get(key) != w:
                errors.append(f"{name}: Gewicht {key} = {got_w.get(key)}, erwartet {w}")


def stage2() -> None:
    loinc_dir = os.environ.get("LOINC_DIR")
    if not loinc_dir:
        print("Stufe 2 übersprungen (LOINC_DIR nicht gesetzt).")
        return
    answer_file = Path(loinc_dir) / "AccessoryFiles" / "AnswerFile" / "AnswerList.csv"
    if not answer_file.exists():
        print(f"Stufe 2 übersprungen ({answer_file} fehlt).")
        return
    scores: dict[tuple, str] = {}
    members: dict[str, set] = {}
    with open(answer_file, newline="", encoding="utf-8-sig") as f:
        for row in csv.DictReader(f):
            lid, aid = row.get("AnswerListId"), row.get("AnswerStringId")
            if lid and aid:
                members.setdefault(lid, set()).add(aid)
                if row.get("Score"):
                    scores[(lid, aid)] = row["Score"].strip()
    with open(DATA / "promis29-answer-weights.csv", newline="") as f:
        for row in csv.DictReader(f):
            ll = next((v for k, v in ANSWER_LISTS.items() if row["linkId"].startswith(k)), None)
            if not ll:
                continue
            la = row["la_code"]
            if la not in members.get(ll, set()):
                msg = f"{row['linkId']}: {la} ist nicht Mitglied von {ll}"
                (warnings if (ll, la) in KNOWN_DEVIATIONS else errors).append(
                    msg + (" (bekannt, HDB-1008)" if (ll, la) in KNOWN_DEVIATIONS else "")
                )
                continue
            official = scores.get((ll, la))
            if official and official != row["weight"]:
                errors.append(f"{row['linkId']}: Gewicht {row['weight']} ≠ LOINC-Score {official} ({ll}/{la})")
    print("Stufe 2 gelaufen (LOINC-AnswerList-Abgleich).")


def main() -> None:
    stage1()
    stage2()
    for w in warnings:
        print(f"WARNUNG: {w}")
    if errors:
        for e in errors:
            print(f"FEHLER: {e}")
        sys.exit(1)
    print("check-promis29-scoring: alles konsistent.")


if __name__ == "__main__":
    main()
