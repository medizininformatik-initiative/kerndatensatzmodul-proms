### Overview

The Beck Depression Inventory II (BDI-II) is an established screening instrument for assessing depressive symptoms.

**Licensing Notice**: Due to licensing restrictions, this implementation is **not displayable** but does provide **calculatable** functionality for score calculations.

### Implemented Components

- **Questionnaire**: Technical implementation with score calculation
- **Score Calculation**: Automatic calculation of the BDI-II total score (itemWeight-based)
- **Capabilities**:
  - `displayable = false` (licensing restrictions)
  - `collectable = false` (cannot be collected directly)
  - `calculatable = true` (score calculation implemented)
  - `extractable = true` (Observation extraction possible)
  - `domainAligned = true` (depression domain mapping)

### Technical Details

- **Canonical URL**: `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-bdi-bdi2`
- **Scoring**: Sum score (0-63 points)
- **Implementation**: Complete FSH definition with itemWeight extensions
- **Status**: Functional score calculation without display capability
- **Testing**: Contains placeholder texts (`[TEST PLACEHOLDER...]`) solely for technical validation
  - Enables testing in tools that require renderable Questionnaires
  - Capabilities remain `displayable=false`, `collectable=false`
  - For technical validation ONLY, NOT for clinical use

See the [Questionnaire definition](Questionnaire-mii-qst-pro-bdi-bdi2.html) for the full resource.

### Licensing

This implementation respects the copyright of the BDI-II. For use in production environments, appropriate licenses must be obtained from the rights holder.
