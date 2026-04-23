#!/usr/bin/env python3
"""
Preload MII PRO FHIR resources into HAPI FHIR server.

Loads all generated resources + CQL libraries in dependency order:
1. CodeSystems, ValueSets (terminology)
2. StructureDefinitions (profiles)
3. ObservationDefinitions (score blueprints)
4. Questionnaires (instruments)
5. CQL Libraries (scoring engines)
6. Examples (optional)
"""

import os
import json
import base64
import glob
import requests
import time

HAPI_BASE_URL = os.getenv("HAPI_BASE_URL", "http://localhost:8080/fhir")
RESOURCES_DIR = "/app/resources"
CQL_DIR = "/app/cql"

# Load order: dependencies first
RESOURCE_ORDER = [
    "CodeSystem",
    "ValueSet",
    "StructureDefinition",
    "SearchParameter",
    "CapabilityStatement",
    "ConceptMap",
    "ObservationDefinition",
    "Questionnaire",
    "Patient",
    "QuestionnaireResponse",
    "Observation",
    "Bundle",
]

def load_resource(filepath):
    """Load a single FHIR resource via PUT."""
    with open(filepath) as f:
        resource = json.load(f)

    resource_type = resource.get("resourceType")
    resource_id = resource.get("id")

    if not resource_type or not resource_id:
        return False

    url = f"{HAPI_BASE_URL}/{resource_type}/{resource_id}"
    resp = requests.put(url, json=resource, headers={"Content-Type": "application/fhir+json"}, timeout=30)

    if resp.status_code in (200, 201):
        return True
    else:
        print(f"  ⚠️  {resource_type}/{resource_id}: {resp.status_code}")
        return False


def load_cql_library(filepath):
    """Upload a CQL file as a FHIR Library resource."""
    with open(filepath) as f:
        cql_source = f.read()

    # Extract library name from CQL source
    for line in cql_source.split('\n'):
        if line.strip().startswith('library '):
            parts = line.strip().split()
            lib_name = parts[1] if len(parts) > 1 else os.path.basename(filepath).replace('.cql', '')
            break
    else:
        lib_name = os.path.basename(filepath).replace('.cql', '')

    library = {
        "resourceType": "Library",
        "id": lib_name,
        "url": f"http://example.org/Library/{lib_name}",
        "version": "1.0.0",
        "name": lib_name,
        "status": "active",
        "type": {"coding": [{"system": "http://terminology.hl7.org/CodeSystem/library-type", "code": "logic-library"}]},
        "content": [{"contentType": "text/cql", "data": base64.b64encode(cql_source.encode()).decode()}]
    }

    url = f"{HAPI_BASE_URL}/Library/{lib_name}"
    resp = requests.put(url, json=library, headers={"Content-Type": "application/fhir+json"}, timeout=30)

    if resp.status_code in (200, 201):
        print(f"  📚 CQL Library: {lib_name}")
        return True
    elif resp.status_code == 410:
        # Tombstone — use POST
        del library["id"]
        resp = requests.post(f"{HAPI_BASE_URL}/Library", json=library,
                           headers={"Content-Type": "application/fhir+json"}, timeout=30)
        if resp.status_code in (200, 201):
            print(f"  📚 CQL Library: {lib_name} (POST)")
            return True

    print(f"  ⚠️  CQL Library {lib_name}: {resp.status_code}")
    return False


def main():
    loaded = 0
    failed = 0

    # Load FHIR resources in order
    for resource_type in RESOURCE_ORDER:
        files = sorted(glob.glob(f"{RESOURCES_DIR}/*.json"))
        type_files = []
        for f in files:
            try:
                with open(f) as fh:
                    r = json.load(fh)
                if r.get("resourceType") == resource_type:
                    type_files.append(f)
            except:
                pass

        if type_files:
            for filepath in type_files:
                if load_resource(filepath):
                    loaded += 1
                else:
                    failed += 1

    # Load CQL Libraries
    cql_files = sorted(glob.glob(f"{CQL_DIR}/*.cql"))
    # Load Core first, then others
    core_files = [f for f in cql_files if 'Core' in f]
    other_files = [f for f in cql_files if 'Core' not in f]

    for filepath in core_files + other_files:
        if load_cql_library(filepath):
            loaded += 1
        else:
            failed += 1

    print(f"\n✅ Loaded {loaded} resources ({failed} failures)")


if __name__ == "__main__":
    main()
