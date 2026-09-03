This page documents known validation errors that occur during FHIR validation but do not represent actual problems with the resources.

## Known Errors

### 1. Language Code System Inference (UNABLE_TO_INFER_CODESYSTEM)

**Error message:**
```
The System URI could not be determined for the code 'en' in the ValueSet 'http://hl7.org/fhir/ValueSet/all-languages'
```

**Cause:**
The translation extension uses `valueCode` for language codes (e.g., `#en`, `#de`). The validator cannot infer the URI system (`urn:ietf:bcp:47`) from the `all-languages` ValueSet, since it is a plain code without a system specification.

**Affected resources:**
- PHQ-9 Questionnaire (LOINC answer codes with German translations)
- All resources with translation extensions

**Assessment:**
This is a validator/terminology server configuration issue, not a data error. The binding to `all-languages` is "preferred", not "required", so the resources are conformant to the specification.

**References:**
- [HL7 Translation Extension](https://build.fhir.org/ig/HL7/fhir-extensions/StructureDefinition-translation.html)
- [all-languages ValueSet](https://hl7.org/fhir/R4/valueset-all-languages.html)

### 2. LOINC Display Names (Wrong Display Name)

**Error message:**
```
Wrong Display Name 'Ueberhaupt nicht' for http://loinc.org#LA6568-5 - should be 'Not at all'
```

**Cause:**
The MII PRO implementation uses German display names for LOINC answer codes to ensure clinical usability in the German healthcare system. The validator expects the English LOINC original displays.

**Affected resources:**
- PHQ-9 Questionnaire

**Assessment:**
The English original labels are provided via translation extensions. The use of German displays as primary display values is a deliberate design decision for the German implementation.

### 3. Terminology Validation (Terminology_TX_NoValid_16)

**Error message:**
```
No valid coding for 'en' from http://hl7.org/fhir/ValueSet/all-languages
```

**Cause:**
Related to issue #1 -- the validator cannot validate the language code against the ValueSet.

**Assessment:**
Will be resolved by fixing the language code system inference.

## Suppressed Errors (advisor.json)

The following error codes are suppressed in CI validation:

| Error Code | Description |
|------------|-------------|
| `UNABLE_TO_INFER_CODESYSTEM` | Language code system inference not possible |
| `Terminology_TX_NoValid_16` | Terminology validation error for language codes |
| `Terminology_TX_NoValid_16@ImplementationGuide.definition.parameter.code` | Specific IG parameter validation |
| `MSG_DRAFT` | Warnings about draft status of resources |
| `dom-6` | DomainResource invariant |

## Configuration

Error suppression is configured via the `advisor.json` file in the project directory:

```json
{
  "suppress" : [
    "UNABLE_TO_INFER_CODESYSTEM",
    "Terminology_TX_NoValid_16",
    ...
  ]
}
```

## Setting Up Local Validation

To perform FHIR validation locally, you need the following components:

### Prerequisites

1. **Java 17+**: OpenJDK 17 or higher
   ```bash
   # macOS with Homebrew
   brew install openjdk@17
   ```

2. **FHIR Validator CLI**: Download the HAPI FHIR Validator
   ```bash
   mkdir -p ~/.fhir/validators
   curl -L -o ~/.fhir/validators/validator_cli.jar \
     https://github.com/hapifhir/org.hl7.fhir.core/releases/latest/download/validator_cli.jar
   ```

3. **Terminology Server** (optional, but recommended): Local TX server for faster validation
   - Default endpoint: `http://localhost:3000`
   - Without a local TX server, the public HL7 server is used (slower)

4. **SUSHI**: FSH compiler for FHIR Shorthand
   ```bash
   npm install -g fsh-sushi
   ```

### Running Validation

**Option 1: Use the validation script (recommended)**
```bash
# Compilation and validation
sushi . --snapshot
./scripts/validate.sh
```

**Option 2: Direct validator execution**
```bash
java -jar ~/.fhir/validators/validator_cli.jar \
  -version 4.0.1 \
  -tx http://localhost:3000 \
  -allow-example-urls true \
  -display-issues-are-warnings \
  fsh-generated/resources/*.json
```

### Pre-Commit Hook (optional)

The project includes a pre-commit hook that automatically runs SUSHI and validation before each commit:

```bash
# Activate hook (already present in .git/hooks/pre-commit)
chmod +x .git/hooks/pre-commit
```

The hook automatically skips validation if no local terminology server is available.

### Validator Exit Codes

| Code | Meaning | Action |
|------|---------|--------|
| 0 | No errors or warnings | Successful |
| 1 | Warnings only | Acceptable for development |
| 2+ | Errors | Must be resolved |

## Recommendations for Implementers

1. **Language codes**: In your own implementations, `valueCoding` with an explicit system can alternatively be used:
   ```json
   {
     "url": "lang",
     "valueCoding": {
       "system": "urn:ietf:bcp:47",
       "code": "en"
     }
   }
   ```

2. **LOINC display names**: For international interoperability, the English LOINC displays can be used as primary values, with German translations in the translation extension.

3. **Local validation**: The project provides a validation script that automatically filters known errors:
   ```bash
   ./scripts/validate.sh
   ```

   **Important**: The `-advisor` flag is only supported by the IG Publisher, not by the validator_cli. The validation script therefore uses grep-based filtering of the output.

   **Filtered patterns in the validation script**:
   - `dom-6` -- Narrative requirement
   - `UNABLE_TO_INFER_CODESYSTEM` -- Language code system inference
   - `Terminology_TX_NoValid_16` -- Terminology validation
   - `MSG_DRAFT` -- Draft status warnings
   - `Wrong Display Name` -- German LOINC translations
   - `all-languages` -- Validator bug with translation extension valueCode
   - `Unable to find resource type` -- TX proxy parsing issues
   - `does not support batch validation` -- Batch validation not supported
