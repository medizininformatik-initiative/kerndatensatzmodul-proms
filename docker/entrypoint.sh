#!/bin/bash
# Start HAPI in background, preload resources, keep running

# Start HAPI
java -jar /app/main.war &
HAPI_PID=$!

# Wait for HAPI to be ready
echo "Waiting for HAPI FHIR to start..."
until curl -sf http://localhost:8080/fhir/metadata > /dev/null 2>&1; do
  sleep 2
done
echo "HAPI FHIR is ready. Loading MII PRO resources..."

# Preload all resources
python3 /app/preload.py

echo "MII PRO HAPI FHIR Server ready!"
echo "  Base URL: http://localhost:8080/fhir"
echo "  Questionnaires: http://localhost:8080/fhir/Questionnaire"
echo "  CQL Scoring: POST /fhir/Library/{id}/\$evaluate"

# Wait for HAPI process
wait $HAPI_PID
