---
name: author-pro-questionnaire
description: "Author a new PRO instrument (FHIR Questionnaire + score ObservationDefinition + example) in the MII PRO module, following the repo's settled conventions: naming, canonical item-bank linkIds, answerValueSet + ordinalValue-on-CodeSystem answer modelling, EN-primary + DE-translation, scoring (FHIRPath .ordinal() vs CQL), licensing tiers, and subset/derivedFrom for abbreviated instruments. Use when adding/refactoring a questionnaire instrument (PHQ, GAD, WHODAS, PROMIS, EORTC, etc.). Triggers: 'add a questionnaire', 'implement instrument X', 'build a PRO questionnaire', 'how do we model the answers/scoring/items'."
---

# author-pro-questionnaire

Playbook + conventions for building a PRO **Questionnaire** resource (plus its score
**ObservationDefinition** and an example **QuestionnaireResponse**) in this IG.

**Canonical templates to copy from:** `input/fsh/definitions/phq-15/` and `phq-9/` (depression),
`whodas/` (licensed instrument, derived-from), `promis-29/` (multi-domain + variable scoring).

---

## 1. Files & naming

Folder: `input/fsh/definitions/<instrument>/`. Files (MII prefixes):
- `mii-qst-pro-<instrument>.fsh` — the Questionnaire (`Instance`, `InstanceOf: mii-pr-pro-questionnaire`, `Usage: #definition`).
- `mii-cs-pro-<instrument>-answers.fsh` + `mii-vs-pro-<instrument>-answers.fsh` — answer scale (see §4).
- `mii-obsdef-pro-score-<instrument>.fsh` — score ObservationDefinition (see §5).
- `mii-exa-pro-<instrument>-response.fsh` — example (see §7).

Register: add the questionnaire code to `input/fsh/profiles/mii-cs-pro-questionnaire-catalogue.fsh`
(`* #<code> "..."`), the score code to `mii-cs-pro-score-catalogue.fsh`, and aliases to `input/fsh/aliases.fsh`.

**Resource IDs are stable** (canonical URLs) — never rename a published resource id; change linkIds instead.

## 2. Versioning (always)
`* insert Version` (Questionnaire) · `* insert MetaProfile(<canonical>)` (instances) ·
`* insert PR_CS_VS_Version` (CS/VS/profiles) · `* insert ObsDefVersion` (ObservationDefinition).
Never hardcode version strings. (RuleSets in `input/fsh/rulesets/version.fsh`.)

## 3. Language — EN-primary + DE-translation (repo convention)
`* language = #en`. Each item: `* item[x].text = "<English>"` + the `$hl7-translation` extension
carrying `#de` + the validated German. Answer CodeSystem: English `display` + German `designation` (#de).
(Mirror PHQ-9/PROMIS-29.) The validated German comes from the PCOR-MII Item Level Dictionary /
official translation (e.g. PHQ-D for the PHQ family).

## 4. Answers — answerValueSet + ordinalValue on the CodeSystem
Define one MII answer CodeSystem with an `ordinalValue` **property** per concept (the scoring weight),
and a ValueSet binding it; items reference it via `answerValueSet`:
```fsh
CodeSystem: MII_CS_PRO_<X>_Answers
* ^property[+].code = #ordinalValue
* ^property[=].uri = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* ^property[=].type = #decimal
* #not-bothered "Not bothered at all"
  * ^designation[+].language = #de
  * ^designation[=].value = "Nicht beeinträchtigt"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 0
... (repeat per option)
// Questionnaire item:
* item[x].answerValueSet = Canonical(MII_VS_PRO_<X>_Answers)
```
A shared scale (same options for all items) → ONE CS/VS for the whole instrument.

⚠️ **Scoring caveat:** in-form `.ordinal()` resolution from `answerValueSet` is **engine-dependent**
(many SDC form-fillers read the weight only from inline `answerOption`). For robust scoring use **CQL**
(resolves CodeSystem weights reliably; see `cql-development` skill, 2026+ roadmap). If you need
FHIRPath in-form live scoring, fall back to inline `answerOption` + `ordinalValue`. Document the choice.

## 5. Scoring
Root FHIR `variable` + a readOnly score item:
```fsh
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "<x>Sum"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.item.where(linkId.matches('<regex over the scored linkIds>')).answer.value.ordinal().sum()"
* item[score].type = #decimal     // readOnly = true
* item[score].extension[calculatedExpression]...expression = "%<x>Sum"
* item[score].extension[observationExtract].valueBoolean = true
* item[score].extension[questionnaire-unit].valueCoding = $UCUM#{score}
```
For multiple/derived scores (T-scores etc.) define variables once and reference them (avoids circular deps).
`ObservationDefinition`: `insert ObsDefVersion` + MetaProfile, `code` = LOINC + MII score-catalogue code,
`permittedDataType = #Quantity`, `quantitativeDetails.unit = $UCUM#{score}`, `qualifiedInterval.range` (e.g. 0–N),
plus the ScoreHealthCorrelation extension (increase/decrease).

## 6. linkId namespace — canonical item ids (item bank)
linkId = **canonical item identity**, shared across instruments so the SAME question has the SAME linkId.
- **PHQ family** uses the PHQ-D block namespace: `phq-phq1{a..m}` (somatic/PHQ-15), `phq-phq2{a..i}`
  (depression/PHQ-9), `phq-phq5{a..g}` (GAD). Shared items (sleep `phq-phq2c`, fatigue `phq-phq2d`)
  carry the **same linkId** in PHQ-9 and PHQ-15. (Instrument-specific code/recall is allowed on the same
  shared linkId.) Non-symptom items (functional, derived scores) keep instrument-specific ids.
- **Other instruments:** `<instrument>-<itemid>` (e.g. `whodas-whodas12-q01`, `promis-pfa11`).
The `item.code` carries the terminology (LOINC where it exists; else MII item codes).

## 7. Example
`mii-exa-pro-<instrument>-response` (`InstanceOf: QuestionnaireResponse` or the QR profile, `Usage: #example`):
answer all items with values giving an **easy-to-verify sum** (state it in a comment), set `status`,
`questionnaire`, `authored` (required by MII_PR_PRO_QuestionnaireResponse). Optionally a score Observation example.

## 8. Licensing tiers — drive the capabilities
| Tier | License | Modelling |
|---|---|---|
| **A — open** | public/free (PHQ, GAD, PROMIS) | full items; displayable/collectable = true |
| **B — licensed/permission** | WHO/WHODAS (free non-commercial **with permission**) | full items, `experimental = true`, `copyright` notice, **"NOT FOR PUBLICATION until licensing confirmed"** header; review-only |
| **C — commercial/registration** | BDI-II, EORTC, FACT, registration-required | **metadata-only** (no item text), displayable/collectable = false; document the licensing process |
Classify the license BEFORE setting capabilities. (See the DIZ/PCOR-MII license table.)

## 9. Abbreviated / subset instruments (derivedFrom)
When an instrument uses only a subset of a larger one (e.g. a 2-item PROMIS Global Health):
- model a **separate Questionnaire** with `* derivedFrom = "<canonical of the full instrument>"`, containing
  only the used items, with `required = true`. Questionnaire-based validation then enforces the subset
  (rejects foreign items + requires the chosen items present) — **no QR profile needed** in the normal case.
- A `closed`-slicing QR profile is only a **fallback** for pipelines that validate against the profile WITHOUT
  the questionnaire; use `open` slicing + required slices (never bother with `closed` — the questionnaire
  already rejects foreign items). Subset questionnaires belong in the **PCOR-MII repo** (use-case layer),
  not the KDS module (canonical instruments).

## 10. Validate & review
- `sushi . --snapshot` → must be **0 errors** (snapshots needed for profile/QR validation).
- Review the form with the **`render-questionnaire`** skill (dependency-free HTML, shows options + weights + DE).
- Optional deep validation: HL7 `validator_cli.jar` (QR vs questionnaire/profile) — needs snapshots.
- Commit only the instrument's FSH + its generated JSON; never commit SUSHI snapshot churn (3.19 vs 3.20).

---

## 11. Completeness-Checkliste — wann ist ein Instrument fertig?

Ein Instrument ist **nicht** fertig, wenn die FSH-Dateien kompilieren. Diese Liste entstand aus
einer Umsetzung von sechs Instrumenten, bei der genau die Punkte 5–8 systematisch fehlten.

### A. Ressourcen (`input/fsh/definitions/<instrument>/`)
1. **Questionnaire** — `mii-qst-pro-<instrument>.fsh`
2. **Antwortskala** — eigenes CS+VS (Fall B) *oder* geteiltes RuleSet (Fall A) *oder* numerisch (Fall C), siehe §4
3. **Score-ObservationDefinition** — `mii-obsdef-pro-score-<instrument>.fsh` (entfällt nur, wenn das Instrument keinen Score hat)
4. **Beispiel-QuestionnaireResponse** — `mii-exa-pro-<instrument>-response.fsh`, mit leicht nachrechenbarem Score
5. **Beispiel-Score-Observation** — `mii-exa-pro-<instrument>-score.fsh`, `InstanceOf: mii-pr-pro-score-instance`,
   mit `derivedFrom` auf die Beispiel-QuestionnaireResponse. **Wird am häufigsten vergessen.**

### B. Registrierung (geteilte Dateien — bei Parallelarbeit VORAB zentral eintragen)
6. **Katalogcodes** — `mii-cs-pro-questionnaire-catalogue.fsh` und `mii-cs-pro-score-catalogue.fsh`
7. **Aliase** — `input/fsh/aliases.fsh`

### C. Dokumentation (die eigentliche Lücke)
8. **IG-Instrumentenseite** — `input/pagecontent/<instrument>.md` nach dem Muster von `phq-15.md`:
   klinischer Kontext, Scoring und Interpretation, FHIR-Implementierung (Canonical, Capabilities,
   Besonderheiten), Score-Repräsentation, Lizenz, Quellen
9. **Menü und Seitenliste** — `sushi-config.yaml`, Abschnitte `pages:` **und** `menu:` unter *PRO Library*
10. **Katalogtabelle** — Zeile in `input/pagecontent/pro-library.md` mit Capabilities-Spalten
11. **Release Notes** — Eintrag in `input/pagecontent/changes.md`

### D. Verifikation
12. `sushi . --snapshot` → 0 Errors
13. **Abgleich gegen die Quelle** — Item-Texte zeichengenau gegen das Item Level Dictionary bzw. die
    Publikation; nicht nur „sieht plausibel aus"
14. **Score nachrechnen** — den Beispielwert aus den `ordinalValue`-Gewichten unabhängig nachrechnen
15. **Validator** — QuestionnaireResponse gegen Questionnaire und Profil, 0 Errors
16. **Optische Kontrolle** — `render-questionnaire`-Skill

> **Faustregel für Agenten:** Punkte 1–5 gehören in den eigenen Instrumentenordner. Punkte 6–7 und 9–11
> fassen geteilte Dateien an — bei Parallelarbeit vom Orchestrator vorab eintragen lassen, sonst
> überschreiben sich mehrere Agenten gegenseitig.
