# FHIR Validation Workflow Setup

## Central Location
These files are maintained in:
`kerndatensatzmodul-proms/.claude/export/`

## Quick Setup

### Option A: Reference from central repo
```bash
# Symlink to central location
ln -s /path/to/kerndatensatzmodul-proms/.claude/export/analyze_validation.py TARGET_REPO/.claude/scripts/
cp /path/to/kerndatensatzmodul-proms/.claude/export/advisor.json TARGET_REPO/  # Copy, don't symlink (repo-specific)
```

### Option B: Copy files to target repo
```bash
mkdir -p .claude/scripts
cp analyze_validation.py TARGET_REPO/.claude/scripts/
cp advisor.json TARGET_REPO/
```

2. Ensure CI uploads `validation.json` artifact named `validation-output`

3. Create `.validation-history/` directory (add to .gitignore)

## Usage

### Analyze validation results
```bash
# Get latest CI run
RUN_ID=$(gh run list -L 1 --json databaseId -q '.[0].databaseId')

# Download and analyze
OUTDIR=".validation-history/$(date +%Y%m%d)_$(git rev-parse --short HEAD)"
mkdir -p "$OUTDIR"
gh run download $RUN_ID -n validation-output -D "$OUTDIR"
python3 .claude/scripts/analyze_validation.py "$OUTDIR/validation.json"
```

### MCP Terminology Validation
Before fixing LOINC display names, validate codes:
```
mcp__terminology__lookup_code(system="http://loinc.org", code="77861-3")
```

### advisor.json Suppressions
Add patterns to suppress known/acceptable errors:
- `ERROR_TYPE@Resource.path` - Specific path
- `ERROR_TYPE@Resource.*` - All paths in resource type

## Key Patterns

### Suppression examples
```json
{
  "suppress": [
    "UNABLE_TO_INFER_CODESYSTEM@ImplementationGuide.definition.parameter.code",
    "CONTAINED_ORPHAN_DOM3",
    "Terminology_TX_NoValid_16@StructureDefinition.*"
  ]
}
```

### Common LOINC issues
- Version 2.0 codes: "T-score" (hyphen)
- Version 1.0 codes: "Tscore" (no hyphen)
- Always validate display names via MCP before fixing
