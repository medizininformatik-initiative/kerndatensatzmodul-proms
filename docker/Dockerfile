# MII PRO HAPI FHIR Server
# Pre-configured with Clinical Reasoning (CQL) and MII PRO IG Package
#
# Usage:
#   docker pull ghcr.io/medizininformatik-initiative/kerndatensatzmodul-proms/mii-pro-hapi:latest
#   docker run -p 8080:8080 ghcr.io/medizininformatik-initiative/kerndatensatzmodul-proms/mii-pro-hapi
#
# Everything is installed via the IG Package — no separate preloading needed.
# CQL Libraries are bundled as FHIR Library resources inside the package.

FROM hapiproject/hapi:latest

# Copy the built IG package (SUSHI output + CQL Libraries)
COPY output/package.tgz /app/package.tgz

# HAPI configuration: installs package at startup via $install-package
COPY docker/application.yaml /data/hapi/application.yaml
