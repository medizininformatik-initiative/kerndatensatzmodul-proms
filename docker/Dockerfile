# MII PRO HAPI FHIR Server
# Pre-configured with Clinical Reasoning (CQL) and MII PRO Package
#
# Usage:
#   docker pull ghcr.io/medizininformatik-initiative/kerndatensatzmodul-proms/mii-pro-hapi:latest
#   docker run -p 8080:8080 ghcr.io/medizininformatik-initiative/kerndatensatzmodul-proms/mii-pro-hapi
#
# What's included:
#   - HAPI FHIR R4 with Clinical Reasoning (CR=true, CQL enabled)
#   - All MII PRO Questionnaires (PHQ-9, PROMIS-29, EQ-5D-5L, DASS-21, EORTC, etc.)
#   - CQL Libraries (PRO-CTCAE Composite Grading, EORTC Scoring Engine)
#   - ObservationDefinitions for all scores
#   - ValueSets, CodeSystems, ConceptMaps
#
# Endpoints:
#   GET  /fhir/metadata                    — CapabilityStatement
#   GET  /fhir/Questionnaire               — All questionnaires
#   POST /fhir/Library/{id}/$evaluate      — CQL scoring
#   POST /fhir/QuestionnaireResponse/$extract — Data extraction

FROM hapiproject/hapi:latest

# HAPI Configuration
ENV hapi.fhir.fhir_version=R4
ENV hapi.fhir.cr.enabled=true
ENV hapi.fhir.validation.enabled=true
ENV hapi.fhir.auto_create_placeholder_reference_targets=true

# Copy FHIR resources for preloading
COPY fsh-generated/resources/ /app/resources/
COPY input/cql/ /app/cql/
COPY docker/preload.py /app/preload.py

# Install Python for preloading script
USER root
RUN apt-get update -qq && apt-get install -y -qq python3 python3-pip > /dev/null 2>&1 \
    && pip3 install requests --quiet \
    && apt-get clean && rm -rf /var/lib/apt/lists/*
USER hapi

# Preload script runs after HAPI starts
COPY docker/entrypoint.sh /app/entrypoint.sh
USER root
RUN chmod +x /app/entrypoint.sh
USER hapi

ENTRYPOINT ["/app/entrypoint.sh"]
