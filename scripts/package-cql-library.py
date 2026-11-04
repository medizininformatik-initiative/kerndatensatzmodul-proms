#!/usr/bin/env python3
"""Packt eine CQL-Datei als FHIR-Library-Instanz (FSH) mit CQL + vorkompiliertem ELM (6yu.2).

  scripts/package-cql-library.py input/cql/mii-lib-pro-promis-29.cql \
      --out input/fsh/definitions/promis-29/mii-lib-pro-promis-29.fsh \
      --title "..." --description "..." --questionnaire <canonical> [--citation "..." --url ...]

Uebersetzt via cqframework/cql-translation-service (CQL_TRANSLATOR_URL, Default
http://localhost:18180), Gate = 0 Fehler. Schreibt das ELM nach input/cql/<name>.elm.json
(Quelle fuer den JS-Differenztest) und die FSH-Instanz mit base64-Inhalten.
Invariante: Library.name == CQL-library-Identifier (sonst HAPI CR 'Could not load source').
"""
import argparse, base64, json, re, sys, urllib.request, os
from pathlib import Path

REPO = Path(__file__).resolve().parent.parent
ap = argparse.ArgumentParser()
ap.add_argument("cql"); ap.add_argument("--out", required=True); ap.add_argument("--title", required=True)
ap.add_argument("--description", required=True); ap.add_argument("--questionnaire", required=True)
ap.add_argument("--citation", action="append", default=[]); ap.add_argument("--translator", default=os.environ.get("CQL_TRANSLATOR_URL", "http://localhost:18180"))
a = ap.parse_args()
cql_path = Path(a.cql); cql = cql_path.read_text()
m = re.search(r'^library\s+"?([^"\s]+)"?\s+version\s+\'([^\']+)\'', cql, re.M)
name, version = m.group(1), m.group(2)
req = urllib.request.Request(f"{a.translator}/cql/translator?signatures=Overloads", data=cql.encode(),
                             headers={"Content-Type": "application/cql", "Accept": "application/elm+json"})
elm = json.loads(urllib.request.urlopen(req, timeout=60).read())
ann = elm["library"].get("annotation", [])
errs = [x for x in ann if x.get("errorSeverity") == "error"]
warns = [x for x in ann if x.get("errorSeverity") == "warning"]
for x in errs + warns: print(f"  {x.get('errorSeverity')}: {x.get('message')}", file=sys.stderr)
if errs: sys.exit(f"{cql_path.name}: {len(errs)} Translator-Fehler")
elm_path = cql_path.with_suffix(".elm.json"); elm_text = json.dumps(elm, separators=(",", ":"))
elm_path.write_text(elm_text)
b64 = lambda s: base64.b64encode(s.encode()).decode()
rel = [f'* relatedArtifact[+].type = #depends-on\n* relatedArtifact[=].resource = "{a.questionnaire}"\n* relatedArtifact[=].display = "Questionnaire scored by this Library"']
for c in a.citation: rel.append(f'* relatedArtifact[+].type = #citation\n* relatedArtifact[=].display = "{c}"')
fsh = f'''// GENERIERT von scripts/package-cql-library.py aus {cql_path.resolve().relative_to(REPO)} — nicht von Hand editieren.
// Regenerieren: scripts/generate-promis29-cql.py && scripts/package-cql-library.py ... (siehe Docstring).
// ELM: cql-translation-service, signatures=Overloads; {len(warns)} Warnung(en), 0 Fehler.
Instance: {name}
InstanceOf: Library
Usage: #definition
Title: "{a.title}"
Description: "{a.description}"
* insert Version
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Library/{name}"
* name = "{name}"
* status = #active
* experimental = false
* type = http://terminology.hl7.org/CodeSystem/library-type#logic-library "Logic Library"
* subjectCodeableConcept = http://hl7.org/fhir/resource-types#Patient
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #shareable
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #computable
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #executable
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeRepresentationLevel"
* extension[=].valueCode = #executable
* parameter[+].name = #Response
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #QuestionnaireResponse
* dataRequirement[+].type = #QuestionnaireResponse
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse"
{chr(10).join(rel)}
* content[+].contentType = #text/cql
* content[=].title = "{cql_path.name}"
* content[=].data = "{b64(cql)}"
* content[+].contentType = #application/elm+json
* content[=].title = "{elm_path.name}"
* content[=].data = "{b64(elm_text)}"
'''
Path(a.out).write_text(fsh)
print(f"{a.out}: Library {name} {version}, CQL {len(cql)} B, ELM {len(elm_text)} B, {len(warns)} Warnungen")
