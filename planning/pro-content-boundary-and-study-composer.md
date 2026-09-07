# PRO Content-Boundary, Beispiele & Study-Composer — Konzept

> Konsolidiert aus vorhandenem Design (interop-prototypes/fhir-sdc-questionnaire-service `VISION.md` §3.7a, `ARTIFACT_METADATA_POLICY.md`) + Maintainer-Steer 2026-07-27.
> Kernaussage: **Beispiele (kurzfristig) NICHT von der Schicht-Architektur (mittelfristig) blockieren lassen.**

## Die Schichten (existieren real)

| Layer | Repo/Artefakt | Rolle | Registrierung |
|---|---|---|---|
| **L0 Infrastruktur** | `kerndatensatzmodul-proms` → `de…pros` | Profile, Extensions, Terminologie, ObsDef-**Blueprints**, `capabilities`/`questionnaire-catalogue` | **1 Simplifier-Package** |
| **L1 Content** | `pro-library` → `bih-cei.fhir.pro-library` | Questionnaire-**Instanzen** als `derivedFrom`-Overlays + CQL-Scoring + Klinik-Enrichment (z. B. PHQ-9-Severity-Bands) + **Test-Korpora** + CRMI-Release-Manifeste | eigenes Package, SemVer/Artefakt |
| **L2 Distribution** | `fhir-sdc-questionnaire-service` | Form Manager: Container/REST `$package`/`$assemble`/`$populate`/`$extract`, Syndication, NPM, **mTLS-Lizenz-Gate** | Container-Image |
| **L3 Study-Composer** *(mittelfristig, neu)* | dünne Business-Layer *oder* Endpoint am L2 | „Needs zusammenklickbar" → pro Studie FHIR ausliefern | — |

**Boundary-Regeln (aus ARTIFACT_METADATA_POLICY §6/§7):**
- L1-Instanz `derivedFrom` = **versioniertes** MII-Canonical (`…|2026.5.1`) → reproduzierbar.
- Editorial-Korrekturen (VS-Expansion, Übersetzung, Scoring, **Cut-offs**) → L1 publiziert Variante unter *eigenem* Canonical + `Provenance`, attributiert Upstream.
- **Lizenz-Gate sitzt bei L2** (mTLS-gated asset-collection-Bundles pro Institution), nicht beim Authoring → löst BAASIS/MTSOSD/WHODAS/SF-36 ohne out-of-package-Bastelei.

## Die Crux: Beispiele kurzfristig

Was JETZT gebraucht wird = **Beispiele** (QuestionnaireResponses, Observations, populierte Instanzen, Studien-Bundles) für Studien/DIZ. Diese sind laut VISION selbst **L1-Content** („per-instrument test suites / test corpora").

**Empfehlung (entblockt sofort, zukunftskompatibel):**
1. Beispiele **jetzt** weiter im `kerndatensatzmodul-proms` authoren (wo die Instrumente schon sind) — kein Warten auf die L1-Migration.
2. **Pro Instrument** ein kanonisches Beispiel (wie WHODAS/GAD-7 schon) **+ pro Studie/Use-Case** ein Bundle, **getaggt** (`meta.tag` = Studien-/Use-Case-Code, z. B. `longcare`).
3. Diese Beispiele sind damit gleichzeitig: (a) IG-Beispiele heute, (b) **Fixtures für den Study-Composer** morgen, (c) Test-Korpora für die L1-CQL-Scoring-Tests.
4. Später wandern Instanzen+Beispiele opportunistisch nach L1 (pro-library) — die `meta.tag`/Katalog-Zuordnung trägt mit.

## Der Study-Composer (L3, mittelfristig)

### Zwei Manifest-Typen NICHT verwechseln
- **Release-Manifest** (Library-intern): „was ist in pro-library vX.Y.Z" — FHIR `Library` asset-collection, **FSH-authored** im pro-library-Repo (`release-0.1.3.fsh`).
- **Studienteilnahme-Manifest**: „was erhebt Studie X" — FHIR `Library` asset-collection, aber **zur Laufzeit vom L3-Composer GENERIERT**, NICHT FSH-Quelle im L0-Infra-Package.
- **Study-Spec (Input)**: die menschenfreundliche „Needs"-Auswahl kann eine schlanke **YAML/JSON** sein (Domänen→Instrumente); der Composer transformiert `study-spec.yaml → Library(asset-collection).json`. CRMI selbst kennt kein YAML — YAML ist nur das Composer-*Input*, das Manifest ist FHIR.

### Mechanismus
„Needs zusammenklickbar und als FHIR pro Studie ausliefern" = **modulare Assemblierung**:
- **Input = die Use-Case-Kataloge** (LongCARE/PCOR/NTx A/B-Matrizen). Genau die Empfehlungslisten, die wir gerade als Beads/Doku haben, sind der Katalog, aus dem eine Studie ihre Domänen/Instrumente wählt.
- **Mechanismus = SDC `$assemble`** (im sdc-service **schon prototypisiert** — `ASSEMBLE_OPERATION_SUMMARY.md`): modulare Sub-Questionnaires → ein Studien-Questionnaire.
- **Release/Lieferung = CRMI `Library` asset-collection-Manifest pro Studie** (pinnt exakte Instrument-Versionen) → `$crmi-package?manifest=…/Library/study-xyz` liefert deterministisches Bundle, mTLS-lizenz-gated.
- **Wo L3 lebt:** dünne Business-/UI-Layer ODER Endpoint am sdc-service — Entscheidung *deferrable*, ändert das Datenmodell nicht.

## Offene Entscheidungen (nicht blockierend)

1. **pro-library-Dependency bumpen** `de…pros: 2026.3.0 → 2026.5.1` (neue Blueprints/Scores sichtbar machen). *Quick Win.*
2. **Authoring-Ort neuer Instrument-Instanzen** (L0-Repo vs. direkt L1) — vorerst **L0**, weil Beispiele dort gebraucht werden; formale Migration = eigenes späteres Thema.
3. **L3-Verortung** (eigene Layer vs. sdc-service-Endpoint) — später.
4. Namespace `bih-cei` 0.x provisorisch (siehe ARTIFACT_METADATA_POLICY §2).

## Sofort-Nächste Schritte (Vorschlag)
- Weiter **Instrumente bauen** (LongCARE-A-Quick-Wins) **+ je ein getaggtes Studien-Bundle-Beispiel** — bedient die Crux und füttert L3.
- Optional parallel: pro-library-Dep-Bump auf 2026.5.1.
