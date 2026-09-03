The abstract Score Blueprint profile defines the structure of ObservationDefinitions that serve as templates for PRO scores. It describes which scores an instrument produces, including value ranges, units and reference intervals. Concrete score definitions (the PHQ-9 total score, the EQ-5D-5L index and so on) must extend this abstract profile.

**Core elements:**
- A code for unambiguous score identification (typically LOINC)
- quantitativeDetails with units and value ranges
- qualifiedInterval for reference ranges (clinical cut-offs, for instance)
- Population-specific norms
- The health-correlation extension giving the direction of score interpretation

**Example** — a concrete score definition extending this abstract profile: [BDI-II score definition](ObservationDefinition-mii-obsdef-pro-score-bdi-ii.html).
