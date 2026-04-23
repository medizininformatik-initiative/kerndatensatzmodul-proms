#!/bin/bash
# Start HAPI, wait for IG package install, then load CQL Libraries

# Start HAPI (it will auto-install the IG package from application.yaml)
java -jar /app/main.war &
HAPI_PID=$!

# Wait for HAPI to be ready (IG install happens during startup)
echo "⏳ Starting HAPI FHIR with MII PRO Package..."
until curl -sf http://localhost:8080/fhir/metadata > /dev/null 2>&1; do
  sleep 3
done

# Give IG install a moment to complete
sleep 5

echo "📦 IG Package installed. Loading CQL Libraries..."
python3 /app/preload-cql.py

echo ""
echo "═══════════════════════════════════════════════════"
echo "  MII PRO HAPI FHIR Server ready!"
echo "  Base URL: http://localhost:8080/fhir"
echo "═══════════════════════════════════════════════════"
echo ""

# Wait for HAPI process
wait $HAPI_PID
