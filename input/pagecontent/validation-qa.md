# Validation & Quality Assurance

Diese Seite dokumentiert bekannte Validierungsprobleme und deren Status im MII PRO Modul.

## Validierungsstatus

| Status | Bedeutung |
|--------|-----------|
| Suppressed | Bekanntes Problem, in advisor.json unterdrückt |
| Experimental | Ressource ist als experimental markiert |
| Planned | Fix für zukünftige Version geplant |

## Bekannte Issues (Version 2026.0.0-rc.3)

### EORTC QLQ-C30 Questionnaires (Experimental)

Die EORTC QLQ-C30 Implementierung ist als **experimental** markiert und weist folgende bekannte Validierungsprobleme auf:

#### Betroffene Ressourcen

| Ressource | Status | Fehleranzahl |
|-----------|--------|--------------|
| `mii-qst-pro-eortc-qlq-c30` | experimental | 24 |
| `mii-qst-pro-eortc-qlq-c30-variant-a` | experimental | 8 |
| `mii-qst-pro-eortc-qlq-c30-variant-b` | experimental | 28 |
| `mii-exa-pro-eortc-qlq-c30-bundle` | experimental | 24 |

#### Fehlertypen

1. **`not-supported`**: "This element is not allowed by the profile"
   - **Ursache**: Contained CodeSystems und ValueSets in Questionnaire-Instanzen
   - **Status**: Suppressed - Design-Entscheidung für Self-contained Questionnaires
   - **Geplanter Fix**: Refactoring auf externe CodeSystem-Referenzen in v2026.1.0

2. **`structure`**: Fehlende Pflichtfelder
   - `Questionnaire.code`: minimum required = 1, but only found 0
   - `Questionnaire.extension:capabilities`: required slice missing
   - **Status**: Suppressed - Contained Questionnaires erben nicht das Profil
   - **Geplanter Fix**: Hinzufügen der Pflichtfelder zu contained Questionnaires

3. **`invalid`**: ValueSet.compose.include.system URI
   - "URI values must be absolute. To reference a contained code system, use the full CodeSystem URL"
   - **Ursache**: Lokale Referenz `#eortc-qlq-c30-cs-b` statt absolute URL
   - **Status**: Suppressed - Bekannte FHIR-Einschränkung für contained resources
   - **Geplanter Fix**: Migration zu absolute URLs mit `http://hl7.org/fhir/StructureDefinition/valueset-system` Extension

### Status-Inkonsistenz Warnungen

Alle EORTC-Ressourcen sind als `experimental = true` markiert. Warnungen über Status-Inkonsistenz zwischen referenzierenden und referenzierten Ressourcen sind daher erwartet und unterdrückt.

## Unterdrückte Warnungen (advisor.json)

Die folgenden Warnungstypen sind global unterdrückt, da sie bekannte Einschränkungen der Toolchain oder bewusste Design-Entscheidungen darstellen:

| Pattern | Grund |
|---------|-------|
| `Terminology_TX_NoValid_16` | TX-Server kennt bestimmte Codes nicht |
| `UNABLE_TO_INFER_CODESYSTEM` | Inferred CodeSystem nicht auflösbar |
| `dom-6` | DomainResource Constraint für contained resources |
| `CONTAINED_ORPHAN_DOM3` | Orphaned contained resource warning |

### EORTC-spezifische Unterdrückungen

| Pattern | Ressourcen |
|---------|-----------|
| `STATUS_INCONSISTENT@*eortc*` | Alle EORTC Questionnaires, CodeSystems, ValueSets |
| `not-supported@Questionnaire/mii-qst-pro-eortc*` | EORTC Questionnaire variants |
| `structure@Questionnaire/mii-qst-pro-eortc*` | EORTC Questionnaire variants |
| `invalid@Questionnaire/mii-qst-pro-eortc*` | EORTC Questionnaire variants |

## Validierungsumgebung

- **FHIR Validator**: Java Validator 6.5.7
- **Terminologie-Server**: CDS-DEV via NGINX Proxy
- **Profil-Version**: 2026.0.0-rc.3

## Roadmap

| Version | Geplante Fixes |
|---------|---------------|
| 2026.0.0 | Finaler Release mit aktuellen Suppressions |
| 2026.1.0 | EORTC Refactoring: Externe CodeSystem-Referenzen |
| 2027.0.0 | Entfernung der experimental-Flags nach Stabilisierung |

## Referenzen

- [FHIR Validator Dokumentation](https://confluence.hl7.org/display/FHIR/Using+the+FHIR+Validator)
- [advisor.json Format](https://github.com/hapifhir/org.hl7.fhir.core/wiki/Validator-Advisor-File)
- [MII Validierungsrichtlinien](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Validation)
