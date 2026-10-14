#!/usr/bin/env python3
"""Generiert die PROMIS-29-Scoring-Testartefakte als FSH (IG-Artefakte).

Quelle ist dieselbe Case-Datei wie für die Runtime-Tests
(scripts/data/scoring-cases/promis29-cases.json) — TestScript und Fixtures
sind EXPORTFORMATE der Szenarien, kein zweiter Wahrheitsspeicher.

Erzeugt (beide Dateien tragen einen GENERIERT-Kopf — nie von Hand editieren):

  input/fsh/testscripts/promis29-scoring-fixtures.fsh
      je Szenario eine profilkonforme QuestionnaireResponse
      (InstanceOf MII_PR_PRO_QuestionnaireResponse, Usage #example) —
      der IG-Publisher validiert die Fixtures damit bei jedem Build mit.
      Die erwarteten Score-Antworten sind enthalten: Die Fixture
      repräsentiert das Ergebnis eines korrekt rechnenden Form Fillers.

  input/fsh/testscripts/promis29-scoring-testscript.fsh
      TestScript promis29-scoring     — je Szenario $validate + Anlage
      TestScript promis29-terminology — jedes verwendete Coding nativ per
          CodeSystem/$validate-code (Ziel braucht LOINC-Terminologie;
          displayLanguage=de folgt mit dem Supplement, HDB-1008)

Die $extract-Prüfungen (Score landet als Observation in der Ressource)
liegen NICHT im IG-TestScript: Der Aufruf braucht einen Parameters-Wrapper,
den scripts/assemble-testscript-rundir.mjs für den CI-Lauf aus denselben
Cases synthetisiert. So bleiben die IG-Artefakte frei von Hilfskonstrukten.

Ausführung: Touchstone oder fhir-crucible/testscript-engine — das
CI-Laufverzeichnis baut scripts/assemble-testscript-rundir.mjs.

Aufruf:  python3 scripts/generate-promis29-testscripts.py
"""
import json
from pathlib import Path

REPO = Path(__file__).resolve().parent.parent
CASES = json.loads((REPO / "scripts/data/scoring-cases/promis29-cases.json").read_text())
Q = json.loads(
    (REPO / "fsh-generated/resources/Questionnaire-mii-qst-pro-promis-29.json").read_text()
)
OUT = REPO / "input/fsh/testscripts"
NS = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro"
QR_PROFILE = f"{NS}/StructureDefinition/mii-pr-pro-questionnaire-response"
Q_CANONICAL = f"{NS}/Questionnaire/mii-qst-pro-promis-29"
OP_CODES = "http://terminology.hl7.org/CodeSystem/testscript-operation-codes"
HEADER = (
    "// ═══════════════════════════════════════════════════════════════════\n"
    "// GENERIERT aus scripts/data/scoring-cases/promis29-cases.json durch\n"
    "// scripts/generate-promis29-testscripts.py — NICHT von Hand editieren.\n"
    "// Szenarien ändern = Case-Datei ändern und neu generieren.\n"
    "// ═══════════════════════════════════════════════════════════════════\n\n"
)


def walk(items, parent=None):
    for it in items or []:
        yield it, parent
        yield from walk(it.get("item"), it)


PARENT, ITEM = {}, {}
for it, parent in walk(Q["item"]):
    PARENT[it["linkId"]] = parent["linkId"] if parent else None
    ITEM[it["linkId"]] = it


def display_of(link_id, code):
    for ao in ITEM[link_id].get("answerOption", []):
        if ao["valueCoding"]["code"] == code:
            return ao["valueCoding"].get("display")
    raise SystemExit(f"{code} ist keine Option von {link_id}")


def qr_instance(case):
    rid = f"promis29-{case['id']}"
    lines = [
        f"Instance: {rid}",
        "InstanceOf: MII_PR_PRO_QuestionnaireResponse",
        f'Title: "PROMIS-29 Scoring-Fixture — {case["id"]}"',
        f'Description: "{case.get("source", "Scoring-Szenario")}. '
        'Fixture des TestScript promis29-scoring; enthält die erwarteten '
        'Score-Antworten (Soll-Ergebnis eines korrekt rechnenden Form Fillers)."',
        "Usage: #example",
        "* language = #en",
        f"* insert MetaProfile({QR_PROFILE})",
        f"* insert QuestionnaireRef({Q_CANONICAL})",
        "* status = #completed",
        "* subject = Reference(Patient/mii-exa-pro-patient)",
        '* authored = "2026-10-14T08:00:00Z"',
    ]
    groups = {}
    def put(link_id, answer_lines):
        groups.setdefault(PARENT[link_id], []).append((link_id, answer_lines))
    for link_id, a in case["answers"].items():
        disp = display_of(link_id, a["code"])
        put(link_id, [f'* item[=].item[=].answer[+].valueCoding = $LNC#{a["code"]} "{disp}"'])
    for link_id, expected in case["expect"].items():
        if expected is None:
            continue
        typ = ITEM[link_id]["type"]
        val = int(expected) if typ == "integer" else expected
        put(link_id, [f"* item[=].item[=].answer[+].value{'Integer' if typ=='integer' else 'Decimal'} = {val}"])
    for group, entries in groups.items():
        lines.append(f'* item[+].linkId = "{group}"')
        for link_id, answer_lines in entries:
            lines.append(f'* item[=].item[+].linkId = "{link_id}"')
            lines.extend(answer_lines)
    return "\n".join(lines) + "\n"


def op_lines(first, **fields):
    sign = "+" if first else "="
    out = []
    for i, (k, v) in enumerate(fields.items()):
        idx = sign if i == 0 else "="
        out.append(f"* test[=].action[{idx}].operation.{k} = {v}")
    return out


def assert_lines(description, expression):
    return [
        f'* test[=].action[+].assert.description = "{description}"',
        f'* test[=].action[=].assert.expression = "{expression}"',
        "* test[=].action[=].assert.warningOnly = false",
    ]


def testscript_scoring():
    lines = [
        "Instance: promis29-scoring",
        "InstanceOf: TestScript",
        'Title: "PROMIS-29 Scoring — Validierung und Persistenz"',
        'Description: "Je Szenario: QuestionnaireResponse serverseitig validieren '
        "($validate) und anlegen. Die Fixtures sind die IG-Beispiele "
        "promis29-*. Voraussetzung am Ziel: PROMIS-29-Questionnaire geladen. "
        "Die $extract-Prüfungen synthetisiert scripts/assemble-testscript-"
        'rundir.mjs für den CI-Lauf."',
        "Usage: #definition",
        f'* url = "{NS}/TestScript/promis29-scoring"',
        "* insert Version",
        '* name = "PROMIS29ScoringTestScript"',
        "* status = #draft",
        "* experimental = true",
        '* publisher = "Medizininformatik Initiative"',
        "* metadata.capability[+].required = true",
        "* metadata.capability[=].validated = false",
        '* metadata.capability[=].description = "FHIR R4 Server, PROMIS-29-Questionnaire geladen"',
        '* metadata.capability[=].capabilities = "http://hl7.org/fhir/CapabilityStatement/base"',
    ]
    for case in CASES["cases"]:
        fid = f"qr-{case['id']}"
        lines += [
            f'* fixture[+].id = "{fid}"',
            "* fixture[=].autocreate = false",
            "* fixture[=].autodelete = false",
            f"* fixture[=].resource = Reference(QuestionnaireResponse/promis29-{case['id']})",
        ]
    for case in CASES["cases"]:
        fid = f"qr-{case['id']}"
        lines += [
            f'* test[+].name = "case-{case["id"]}"',
            f'* test[=].description = "{case.get("source", "")}"',
        ]
        lines += op_lines(
            True,
            type=f"{OP_CODES}#validate",
            resource="#QuestionnaireResponse",
            sourceId=f'"{fid}"',
            params='"/$validate"',
            encodeRequestUrl="true",
        )
        lines += assert_lines(
            "keine Validierungsfehler",
            "OperationOutcome.issue.where(severity = 'error').empty()",
        )
        lines += op_lines(
            True,
            type=f"{OP_CODES}#create",
            resource="#QuestionnaireResponse",
            sourceId=f'"{fid}"',
            encodeRequestUrl="true",
        )
        lines += [
            '* test[=].action[+].assert.description = "angelegt"',
            "* test[=].action[=].assert.response = #created",
            "* test[=].action[=].assert.warningOnly = false",
        ]
    return "\n".join(lines) + "\n"


def testscript_terminology():
    lines = [
        "Instance: promis29-terminology",
        "InstanceOf: TestScript",
        'Title: "PROMIS-29 Scoring — Terminologie der Antwortoptionen"',
        'Description: "Validiert jedes in den Szenarien verwendete Coding nativ '
        "per CodeSystem/$validate-code (Code UND Display) gegen LOINC. "
        "Voraussetzung am Ziel: LOINC-fähige Terminologie. displayLanguage=de "
        'folgt mit dem geplanten CodeSystem-Supplement (HDB-1008)."',
        "Usage: #definition",
        f'* url = "{NS}/TestScript/promis29-terminology"',
        "* insert Version",
        '* name = "PROMIS29TerminologyTestScript"',
        "* status = #draft",
        "* experimental = true",
        '* publisher = "Medizininformatik Initiative"',
        "* metadata.capability[+].required = true",
        "* metadata.capability[=].validated = false",
        '* metadata.capability[=].description = "FHIR R4 Terminologieserver mit LOINC"',
        '* metadata.capability[=].capabilities = "http://hl7.org/fhir/CapabilityStatement/base"',
        '* test[+].name = "terminology-displays"',
        '* test[=].description = "Antwort-Codings (Code+Display) gegen LOINC"',
    ]
    seen = set()
    for case in CASES["cases"]:
        for link_id, a in case["answers"].items():
            disp = display_of(link_id, a["code"])
            if (a["code"], disp) in seen:
                continue
            seen.add((a["code"], disp))
            lines += [
                "* test[=].action[+].operation.encodeRequestUrl = true",
                f'* test[=].action[=].operation.url = "/CodeSystem/$validate-code?url=http://loinc.org&code={a["code"]}&display={disp}"',
            ]
            lines += assert_lines(
                f"{a['code']} ({disp}) gültig",
                "Parameters.parameter.where(name = 'result').value = true",
            )
    return "\n".join(lines) + "\n"


def main():
    OUT.mkdir(parents=True, exist_ok=True)
    (OUT / "promis29-scoring-fixtures.fsh").write_text(
        HEADER + "\n".join(qr_instance(c) for c in CASES["cases"])
    )
    (OUT / "promis29-scoring-testscript.fsh").write_text(
        HEADER + testscript_scoring() + "\n" + testscript_terminology()
    )
    print(f"{len(CASES['cases'])} Fixtures + 2 TestScripts → {OUT}")


if __name__ == "__main__":
    main()
