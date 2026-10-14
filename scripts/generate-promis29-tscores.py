#!/usr/bin/env python3
"""Generiert die PROMIS-29-T-Score-Kaskaden aus der offiziellen Tabelle.

Quelle der Werte: scripts/data/promis29-t-score-tables.csv — transkribiert aus
dem Appendix des PROMIS Adult Profile Scoring Manual (Tabellen "PROMIS-29
Profile v2.1", HealthMeasures, Stand 2/13/2020). Die Kaskaden werden hier
GENERIERT statt von Hand gepflegt (HDB-1009: sechs von sieben Tabellen waren
frei erfunden, zwei Domaenenpaare bitidentisch).

Zusaetzlich bekommt jede Kaskade einen Vollstaendigkeits-Guard: Die
raw-sum-Lookup-Tabellen gelten laut Manual nur, wenn ALLE vier Items der
Short Form beantwortet sind — ohne Guard liefert eine Teilantwort einen
scheinbar validen, aber falschen T-Score.

Idempotent: ersetzt in den beiden FSH-Dateien jede bestehende
T-Score-Expression (erkannt an `iif(%<variable>=4,` bzw. der bereits
generierten Guard-Form) durch die aktuelle Fassung.

Aufruf:  python3 scripts/generate-promis29-tscores.py
"""
import csv
import re
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parent.parent
CSV_PATH = Path(__file__).resolve().parent / "data" / "promis29-t-score-tables.csv"
FSH_FILES = [
    REPO / "input/fsh/definitions/promis-29/mii-qst-pro-promis-29.fsh",
    REPO / "input/fsh/definitions/promis-29/mii-qst-pro-promis-29-de.fsh",
]
ITEMS_PER_FORM = 4


def load_tables() -> dict:
    tables: dict[str, dict[int, str]] = {}
    with open(CSV_PATH, newline="") as f:
        for row in csv.DictReader(f):
            tables.setdefault(row["variable"], {})[int(row["raw"])] = row["tscore"]
    for var, t in tables.items():
        if sorted(t) != list(range(4, 21)):
            sys.exit(f"CSV unvollstaendig fuer {var}: {sorted(t)}")
    return tables


def cascade(var: str, table: dict[int, str]) -> str:
    expr = "{}"
    for raw in sorted(table, reverse=True):
        expr = f"iif(%{var}={raw}, {table[raw]}, {expr})"
    return expr


def item_filter_of_variable(src: str, var: str) -> str:
    """Liest den Collection-Teil der zugehoerigen variable-Expression aus
    der FSH-Datei — so bleiben linkId-Muster an genau einer Stelle gepflegt."""
    m = re.search(
        r'valueExpression\.name = "' + var + r'"[\s\S]{0,300}?'
        r'valueExpression\.expression = "(%resource[^"]*?)\.answer\.value\.(?:weight|ordinal)\(\)\.sum\(\)"',
        src,
    )
    if not m:
        sys.exit(f"variable {var}: Collection-Ausdruck nicht gefunden")
    return m.group(1)


def main() -> None:
    tables = load_tables()
    for path in FSH_FILES:
        src = path.read_text()
        changed = 0
        for var, table in tables.items():
            collection = item_filter_of_variable(src, var)
            guarded = (
                f"iif({collection}.answer.count() = {ITEMS_PER_FORM}, "
                f"{cascade(var, table)}, {{}})"
            )
            # bestehende Expression dieser Variable finden (nackt oder mit Guard)
            pattern = re.compile(
                r'expression = "(?:iif\(%resource[^"]*?\.answer\.count\(\) = \d+, )?iif\(%' + var + r'=4,[^"]*"'
            )
            new_src, n = pattern.subn(f'expression = "{guarded}"', src)
            if n != 1:
                sys.exit(f"{path.name}: {var} — erwartete genau 1 Kaskade, fand {n}")
            src = new_src
            changed += n
        path.write_text(src)
        print(f"{path.name}: {changed} Kaskaden generiert (mit count()-Guard)")


if __name__ == "__main__":
    main()
