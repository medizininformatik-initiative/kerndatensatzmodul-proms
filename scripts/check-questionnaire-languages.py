#!/usr/bin/env python3
"""CI-Guard Sprach-Architektur und Master-Drift der Questionnaires (Beads g3b.9).

Guard A — Sprach-Architektur: Ein Questionnaire mit language=en, das die translation-
  Extension nutzt, muss sie an JEDEM Itemtext (Gruppen, Display, Fragen, Score-Items) tragen,
  und der Primaertext darf nicht die deutsche Fassung sein. Faengt den Zustand, der von
  2026.4.0 bis 2027.0.0-ballot.1 im PROMIS-29 lag (39 deutsch-primaere Items in der
  englischen Instanz; Fix lag nur auf einem Release-Branch).

Guard B — Master-Drift: Deutsche Itemtexte der PROMIS-Questionnaires muessen dem validierten
  Master (Item Level Dictionary, .claude/skills/extract-qst-translations/reference/
  promis-master-de.tsv) entsprechen. Bekannte, begruendete Abweichungen stehen in EXCEPTIONS.

Aufruf: python3 scripts/check-questionnaire-languages.py   (nach sushi .)
Exit 1 bei Befund.
"""
import glob, json, re, sys, unicodedata
from pathlib import Path

REPO = Path(__file__).resolve().parent.parent
TR = "http://hl7.org/fhir/StructureDefinition/translation"
MASTER = REPO / ".claude/skills/extract-qst-translations/reference/promis-master-de.tsv"

# (questionnaire id, linkId): Begruendung
EXCEPTIONS = {
    ("mii-qst-pro-promis-29", "promis-painin9"):  "Praeteritum nach PHO-DE-PDF (8a259f7f3f); Master Praesens",
    ("mii-qst-pro-promis-29", "promis-painin22"): "Praeteritum nach PHO-DE-PDF (8a259f7f3f); Master Praesens",
    ("mii-qst-pro-promis-29", "promis-painin31"): "Praeteritum nach PHO-DE-PDF (8a259f7f3f); Master Praesens",
    ("mii-qst-pro-promis-29", "promis-painin34"): "Praeteritum nach PHO-DE-PDF (8a259f7f3f); Master Praesens",
    ("mii-qst-pro-promis-29", "promis-srpper23-caps"): "Master-Tippfehler 'erldigen'",
    ("mii-qst-pro-promis-16", "promis-srpper23-caps"): "Master-Tippfehler 'erldigen'",
}
# Bekannte, getrackte Luecken (Guard A): (questionnaire id, linkId): Ticket
KNOWN_GAPS = {
    ("mii-qst-pro-eortc-qlq-c30", "QLQ-C30.Introduction"): "r8t: offizielle EORTC-DE-Texte fuer Einleitung/Abschnitte fehlen",
    ("mii-qst-pro-eortc-qlq-c30", "QLQ-C30.Section1"): "r8t",
    ("mii-qst-pro-eortc-qlq-c30", "QLQ-C30.Section2"): "r8t",
}
GERMAN_HINT = re.compile(r"[äöüÄÖÜß]|^(Ich|Wie|Sind|Können|Mein|Meine|Es|In den)\b")

def norm(s):
    return re.sub(r"\s+", " ", unicodedata.normalize("NFC", s or "")).strip()

def de_of(elem):
    for e in (elem or {}).get("extension", []):
        if e.get("url") == TR:
            d = {x["url"]: x for x in e.get("extension", [])}
            if d.get("lang", {}).get("valueCode") == "de":
                return d.get("content", {}).get("valueString")
    return None

def walk(items):
    for it in items or []:
        yield it
        yield from walk(it.get("item"))

master = {}
if MASTER.exists():
    rows = [l.split("\t") for l in MASTER.read_text(encoding="utf-8").splitlines()[1:]]
    for r in rows:
        if len(r) >= 5 and r[2]:
            master[r[2]] = norm(r[4])

problems = []
for f in sorted(glob.glob(str(REPO / "fsh-generated/resources/Questionnaire-*.json"))):
    q = json.loads(Path(f).read_text(encoding="utf-8"))
    qid = q.get("id"); lang = q.get("language")
    items = list(walk(q.get("item")))
    texts = [(it["linkId"], it.get("text"), de_of(it.get("_text"))) for it in items if it.get("text")]
    # Guard A
    if lang == "en" and any(de for _, _, de in texts):
        for lid, text, de in texts:
            if de is None:
                if (qid, lid) in KNOWN_GAPS: continue
                problems.append(f"{qid}: {lid}: EN-primaeres Questionnaire, aber keine DE-Translation am Text '{text[:50]}'")
            elif norm(de) == norm(text) and GERMAN_HINT.search(text or ""):
                problems.append(f"{qid}: {lid}: Primaertext ist deutsch ('{text[:50]}')")
            elif GERMAN_HINT.search(text or "") and not GERMAN_HINT.search(de or ""):
                problems.append(f"{qid}: {lid}: Primaer- und Translationssprache vertauscht ('{text[:40]}' / '{de[:40]}')")
    # Guard B (nur Items, die der Master kennt)
    if qid and qid.startswith("mii-qst-pro-promis") and master:
        for lid, text, de in texts:
            if lid not in master: continue
            ours = norm(de if lang == "en" else text)
            if ours != master[lid] and (qid, lid) not in EXCEPTIONS:
                problems.append(f"{qid}: {lid}: weicht vom Master ab\n      Master: {master[lid][:90]}\n      Modul:  {ours[:90]}")

if problems:
    print(f"check-questionnaire-languages: {len(problems)} Befund(e)")
    for p in problems: print("  - " + p)
    sys.exit(1)
print(f"check-questionnaire-languages: ok ({len(EXCEPTIONS)} dokumentierte Master-Ausnahmen, {len(KNOWN_GAPS)} getrackte Luecken)")
