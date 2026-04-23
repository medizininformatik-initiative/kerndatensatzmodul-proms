# MII PRO HAPI FHIR Server
# Pre-configured with Clinical Reasoning (CQL) and MII PRO IG Package
#
# Usage:
#   docker pull ghcr.io/medizininformatik-initiative/kerndatensatzmodul-proms/mii-pro-hapi:latest
#   docker run -p 8080:8080 ghcr.io/medizininformatik-initiative/kerndatensatzmodul-proms/mii-pro-hapi
#
# What's included:
#   - HAPI FHIR R4 with Clinical Reasoning (CR=true, CQL enabled)
#   - MII PRO IG Package installed via $install-package at startup
#   - CQL Libraries loaded separately (not part of SUSHI output)
#
# The IG Package contains:
#   - All Questionnaires (PHQ-9, PROMIS-29, EQ-5D-5L, DASS-21, EORTC, PRO-CTCAE, etc.)
#   - All Profiles, Extensions, ObservationDefinitions
#   - All CodeSystems, ValueSets, ConceptMaps
#   - Examples (QuestionnaireResponses, Observations)

FROM hapiproject/hapi:latest

# Copy the built IG package (created by SUSHI + IG Publisher or Firely Bake)
COPY output/package.tgz /app/package.tgz

# Copy CQL Libraries (not part of SUSHI output — loaded separately)
COPY input/cql/ /app/cql/

# Copy HAPI configuration with IG auto-install
COPY docker/application.yaml /data/hapi/application.yaml

# Copy CQL preload script (only for CQL libraries, not FHIR resources)
COPY docker/preload-cql.py /app/preload-cql.py
COPY docker/entrypoint.sh /app/entrypoint.sh

USER root
RUN apt-get update -qq && apt-get install -y -qq python3 python3-pip > /dev/null 2>&1 \
    && pip3 install requests --quiet \
    && apt-get clean && rm -rf /var/lib/apt/lists/* \
    && chmod +x /app/entrypoint.sh
USER hapi

ENTRYPOINT ["/app/entrypoint.sh"]
