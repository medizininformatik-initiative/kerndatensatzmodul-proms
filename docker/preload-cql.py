#!/usr/bin/env python3
"""
Preload CQL Libraries into HAPI FHIR.

The IG Package is installed via HAPI's implementationguides config.
This script only handles CQL Libraries which are not part of SUSHI output.
"""

import os
import json
import base64
import glob
import requests

HAPI_BASE_URL = os.getenv("HAPI_BASE_URL", "http://localhost:8080/fhir")
CQL_DIR = "/app/cql"


def load_cql_library(filepath):
    with open(filepath) as f:
        cql_source = f.read()

    # Extract library name
    for line in cql_source.split('\n'):
        if line.strip().startswith('library '):
            lib_name = line.strip().split()[1]
            break
    else:
        lib_name = os.path.basename(filepath).replace('.cql', '')

    library = {
        "resourceType": "Library",
        "id": lib_name,
        "url": f"https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Library/{lib_name}",
        "version": "1.0.0",
        "name": lib_name,
        "status": "active",
        "type": {"coding": [{"system": "http://terminology.hl7.org/CodeSystem/library-type", "code": "logic-library"}]},
        "content": [{"contentType": "text/cql", "data": base64.b64encode(cql_source.encode()).decode()}]
    }

    resp = requests.put(
        f"{HAPI_BASE_URL}/Library/{lib_name}",
        json=library,
        headers={"Content-Type": "application/fhir+json"},
        timeout=30
    )

    if resp.status_code in (200, 201):
        print(f"  📚 {lib_name}")
        return True
    elif resp.status_code == 410:
        del library["id"]
        resp = requests.post(f"{HAPI_BASE_URL}/Library", json=library,
                           headers={"Content-Type": "application/fhir+json"}, timeout=30)
        if resp.status_code in (200, 201):
            print(f"  📚 {lib_name} (POST)")
            return True

    print(f"  ⚠️  {lib_name}: {resp.status_code}")
    return False


if __name__ == "__main__":
    cql_files = sorted(glob.glob(f"{CQL_DIR}/*.cql"))
    # Core libraries first
    core = [f for f in cql_files if 'Core' in f]
    rest = [f for f in cql_files if 'Core' not in f]

    loaded = 0
    for f in core + rest:
        if load_cql_library(f):
            loaded += 1

    print(f"\n✅ {loaded} CQL Libraries loaded")
