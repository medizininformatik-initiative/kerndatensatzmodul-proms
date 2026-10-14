#!/usr/bin/env python3
"""Generiert TestScript + Fixture-QRs für das PROMIS-29-Scoring.

Quelle ist dieselbe Case-Datei wie für die Runtime-Tests
(scripts/data/scoring-cases/promis29-cases.json) — TestScript ist hier ein
EXPORTFORMAT der Szenarien, kein zweiter Wahrheitsspeicher. Die Fixture-QRs
enthalten die erwarteten Score-Antworten (sie repräsentieren das Ergebnis
eines korrekt rechnenden Form Fillers); der Server prüft Validität,
Persistenz und Extraktion.

Erzeugt unter input/testscripts/ (liegt außerhalb des IG-Builds):
  fixtures/QuestionnaireResponse-promis29-<case>.json   je Szenario
  fixtures/Parameters-promis29-<case>.json              je Decken-Szenario
                                                        ($extract-Aufrufkörper)
  TestScript-promis29-scoring.json

Ausführung der TestScripts: AEGIS Touchstone oder fhir-crucible/
testscript-engine, Ziel = FHIR-Server mit geladenem PROMIS-29-Questionnaire,
Terminologie-Validierung (LOINC) und SDC-$extract (z. B. HAPI + clinical-
reasoning). displayLanguage-Prüfungen für Deutsch folgen mit dem geplanten
CodeSystem-Supplement (siehe HDB-1008).

Aufruf:  python3 scripts/generate-promis29-testscripts.py
"""
import json
from pathlib import Path

REPO = Path(__file__).resolve().parent.parent
CASES = json.loads((REPO / "scripts/data/scoring-cases/promis29-cases.json").read_text())
Q = json.loads(
    (REPO / "fsh-generated/resources/Questionnaire-mii-qst-pro-promis-29.json").read_text()
)
OUT = REPO / "input/testscripts"
FIX = OUT / "fixtures"
CANONICAL_NS = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro"


def walk(items, parent=None):
    for it in items or []:
        yield it, parent
        yield from walk(it.get("item"), it)


# linkId -> (Parent-Gruppe, Item); dazu LOINC-Code + Typ der Score-Items
PARENT = {}
ITEM = {}
for it, parent in walk(Q["item"]):
    PARENT[it["linkId"]] = parent["linkId"] if parent else None
    ITEM[it["linkId"]] = it


def display_of(link_id, code):
    for ao in ITEM[link_id].get("answerOption", []):
        if ao["valueCoding"]["code"] == code:
            return ao["valueCoding"].get("display")
    raise SystemExit(f"{code} ist keine Option von {link_id}")


def score_answer(link_id, value):
    typ = ITEM[link_id]["type"]
    if typ == "integer":
        return {"valueInteger": int(value)}
    return {"valueDecimal": value}


def build_qr(case):
    groups = {}
    def put(link_id, answer):
        g = PARENT[link_id]
        groups.setdefault(g, {"linkId": g, "item": []})["item"].append(
            {"linkId": link_id, "answer": [answer]}
        )
    for link_id, a in case["answers"].items():
        put(link_id, {"valueCoding": {
            "system": "http://loinc.org",
            "code": a["code"],
            "display": display_of(link_id, a["code"]),
        }})
    for link_id, expected in case["expect"].items():
        if expected is not None:
            put(link_id, score_answer(link_id, expected))
    return {
        "resourceType": "QuestionnaireResponse",
        "id": f"promis29-{case['id']}",
        "questionnaire": f"{Q['url']}|{Q['version']}",
        "status": "completed",
        "item": list(groups.values()),
    }


def op(code=None, **kw):
    o = {"encodeRequestUrl": True}
    if code:
        o["type"] = {
            "system": "http://terminology.hl7.org/CodeSystem/testscript-operation-codes",
            "code": code,
        }
    o.update(kw)
    return {"operation": o}


def expr_assert(description, expression):
    return {"assert": {
        "description": description,
        "expression": expression,
        "warningOnly": False,
    }}


def main():
    FIX.mkdir(parents=True, exist_ok=True)
    fixtures, tests = [], []

    # Test 1 — Terminologie: jedes verwendete Coding nativ gegen LOINC
    seen, actions = set(), []
    for case in CASES["cases"]:
        for link_id, a in case["answers"].items():
            key = (a["code"], display_of(link_id, a["code"]))
            if key in seen:
                continue
            seen.add(key)
            code, disp = key
            actions.append(op(
                code="validate-code", resource="CodeSystem",
                url=f"/CodeSystem/$validate-code?url=http://loinc.org&code={code}&display={disp.replace(' ', '%20')}",
            ))
            actions.append(expr_assert(
                f"{code} '{disp}' ist gültig (Code+Display)",
                "Parameters.parameter.where(name='result').value = true",
            ))
    tests.append({"name": "terminology-displays",
                  "description": "Antwort-Codings nativ gegen LOINC validieren",
                  "action": actions})

    # Test je Szenario — $validate + Anlage
    for case in CASES["cases"]:
        qr = build_qr(case)
        (FIX / f"QuestionnaireResponse-{qr['id']}.json").write_text(
            json.dumps(qr, indent=1, ensure_ascii=False))
        fid = f"qr-{case['id']}"
        fixtures.append({"id": fid, "autocreate": False, "autodelete": False,
                         "resource": {"reference": f"fixtures/QuestionnaireResponse-{qr['id']}.json"}})
        actions = [
            op(code="validate", resource="QuestionnaireResponse",
               sourceId=fid, params="/$validate"),
            expr_assert("keine Validierungsfehler",
                        "OperationOutcome.issue.where(severity = 'error').empty()"),
            op(code="create", resource="QuestionnaireResponse", sourceId=fid),
            {"assert": {"description": "angelegt", "response": "created",
                        "warningOnly": False}},
        ]
        tests.append({"name": f"case-{case['id']}",
                      "description": case.get("source", ""), "action": actions})

    # Test je Decken-Szenario — $extract liefert die Score-Observation
    for case in CASES["cases"]:
        if not case["id"].endswith("-ceil"):
            continue
        qr = build_qr(case)
        params = {"resourceType": "Parameters", "id": f"promis29-{case['id']}-extract",
                  "parameter": [{"name": "questionnaire-response", "resource": qr}]}
        (FIX / f"Parameters-promis29-{case['id']}.json").write_text(
            json.dumps(params, indent=1, ensure_ascii=False))
        fid = f"extract-{case['id']}"
        fixtures.append({"id": fid, "autocreate": False, "autodelete": False,
                         "resource": {"reference": f"fixtures/Parameters-promis29-{case['id']}.json"}})
        actions = [op(resource="QuestionnaireResponse", sourceId=fid,
                      url="/QuestionnaireResponse/$extract", method="post")]
        for link_id, expected in case["expect"].items():
            if "tscore" not in link_id:
                continue
            loinc = next(c["code"] for c in ITEM[link_id]["code"]
                         if c.get("system") == "http://loinc.org")
            actions.append(expr_assert(
                f"extrahierte Score-Observation {loinc} = {expected}",
                f"Bundle.entry.resource.ofType(Observation)"
                f".where(code.coding.code = '{loinc}').value.value = {expected}",
            ))
        tests.append({"name": f"extract-{case['id']}",
                      "description": "Score landet als Observation in der Ressource",
                      "action": actions})

    ts = {
        "resourceType": "TestScript",
        "id": "promis29-scoring",
        "url": f"{CANONICAL_NS}/TestScript/promis29-scoring",
        "version": Q["version"],
        "name": "PROMIS29ScoringTestScript",
        "title": "PROMIS-29 Scoring — Validierung, Persistenz, Extraktion",
        "status": "draft",
        "description": (
            "Generiert aus scripts/data/scoring-cases/promis29-cases.json "
            "(HDB-1007/-1008/-1009). Voraussetzungen am Ziel: PROMIS-29-"
            "Questionnaire geladen, LOINC-Terminologie, SDC-$extract."
        ),
        "metadata": {"capability": [{
            "required": True, "validated": False,
            "description": "FHIR R4 Server mit Terminologie und SDC-$extract",
            "capabilities": "http://hl7.org/fhir/CapabilityStatement/base",
        }]},
        "fixture": fixtures,
        "test": tests,
    }
    (OUT / "TestScript-promis29-scoring.json").write_text(
        json.dumps(ts, indent=1, ensure_ascii=False))
    print(f"TestScript mit {len(tests)} Tests, {len(fixtures)} Fixtures → {OUT}")


if __name__ == "__main__":
    main()
