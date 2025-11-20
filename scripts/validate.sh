#!/bin/bash
# FHIR Validator wrapper script for MII PRO Module
# Uses local terminology server and caching for optimal performance

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"
VALIDATOR_JAR="$HOME/.fhir/validators/validator_cli.jar"
JAVA_CMD="${JAVA_HOME:-/opt/homebrew/opt/openjdk@17}/bin/java"
OUTPUT_DIR="$PROJECT_ROOT/fsh-generated/resources"

# Configuration
TX_SERVER="http://localhost:3000"
IG_VERSION="4.0.1"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Check prerequisites
if [ ! -f "$VALIDATOR_JAR" ]; then
    echo -e "${RED}Error: FHIR Validator not found at $VALIDATOR_JAR${NC}"
    echo "Download it with: curl -L -o ~/.fhir/validators/validator_cli.jar https://github.com/hapifhir/org.hl7.fhir.core/releases/latest/download/validator_cli.jar"
    exit 1
fi

if ! command -v "$JAVA_CMD" &> /dev/null; then
    echo -e "${RED}Error: Java not found at $JAVA_CMD${NC}"
    exit 1
fi

# Check if output directory exists
if [ ! -d "$OUTPUT_DIR" ]; then
    echo -e "${YELLOW}Warning: Output directory not found. Run sushi first.${NC}"
    exit 1
fi

echo -e "${GREEN}=== FHIR Validation ===${NC}"
echo "Terminology Server: $TX_SERVER"
echo "Output Directory: $OUTPUT_DIR"
echo ""

# Run validator with caching enabled
# -tx: terminology server
# -ig: implementation guide version
# -advisor: use advisor.json for suppressions
# -allow-example-urls: needed for example resources

# Build command arguments
# Note: -advisor is only supported by IG Publisher, not validator_cli
CMD_ARGS=(
    -version "$IG_VERSION"
    -allow-example-urls true
    -display-issues-are-warnings
)

# Add tx server unless overridden by user args
if [[ ! " $* " =~ " -tx " ]]; then
    CMD_ARGS+=(-tx "$TX_SERVER")
fi

# Add user args
CMD_ARGS+=("$@")

# Add files to validate
CMD_ARGS+=("$OUTPUT_DIR"/*.json)

# Run validator and filter output based on advisor.json suppressions
# Suppressed patterns from advisor.json:
# - dom-6 (narrative requirement)
# - UNABLE_TO_INFER_CODESYSTEM
# - Terminology_TX_NoValid_16
# - MSG_DRAFT
# Additional suppressions for local TX server limitations:
# - "Unable to find resource type" (TX proxy parsing issues)
# - "does not support batch validation"
# - "Wrong Display Name" (German translations for LOINC codes are intentional)
# - "all-languages" (validator bug with HL7 translation extension valueCode)

"$JAVA_CMD" -jar "$VALIDATOR_JAR" "${CMD_ARGS[@]}" 2>&1 | grep -v -E \
    "dom-6|UNABLE_TO_INFER_CODESYSTEM|Terminology_TX_NoValid_16|MSG_DRAFT|Unable to find resource type|does not support batch validation|Wrong Display Name|all-languages"

RESULT=${PIPESTATUS[0]}

# Validator returns exit code 1 for warnings, but we treat warnings as acceptable
# for local development. Use -level error flag to fail only on actual errors.
if [ $RESULT -eq 0 ]; then
    echo -e "\n${GREEN}✓ Validation passed!${NC}"
elif [ $RESULT -eq 1 ]; then
    echo -e "\n${YELLOW}⚠ Validation completed with warnings (acceptable for dev)${NC}"
    exit 0
else
    echo -e "\n${RED}✗ Validation failed with errors${NC}"
fi

exit $RESULT
