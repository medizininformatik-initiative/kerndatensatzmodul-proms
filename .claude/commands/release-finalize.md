# Release Finalization

Help finalize the release after PR has been merged (Phase 5 of MII Module Release Workflow).

## Your Task

Execute Phase 5: Merge and Tag Release

### Prerequisites Check
1. Verify PR has been merged to dev branch
2. Ensure all CI checks passed
3. Confirm you're ready to create the release tag

### Steps

1. **Switch to dev branch and pull latest**
   ```
   git checkout dev
   git pull origin dev
   ```

2. **Verify the version**
   - Read `sushi-config.yaml` to get the version number
   - Confirm with user: "Ready to tag release v{VERSION}?"

2a0. **Merge-back-Gate: Ist der Release-Branch vollstaendig in dev? (HARTES GATE)**

   Der Tag wird auf `dev` gesetzt, NIE auf dem Release-Branch. Vorher pruefen, dass
   jeder Commit des Release-Branches in `dev` enthalten ist:

   ```bash
   git fetch origin
   git log --oneline origin/dev..origin/release/v{VERSION}
   ```

   Die Ausgabe MUSS leer sein. Ist sie es nicht, wurde der Release-PR nicht gemergt
   (oder nur teilweise): PR mergen bzw. die fehlenden Commits nach `dev` bringen,
   dann erst weiter. Zusaetzlich fuer die Vorgaenger-Branches:

   ```bash
   for b in $(git branch -r --list 'origin/release/*'); do
     n=$(git rev-list --count origin/dev..$b); [ "$n" -gt 0 ] && echo "$b: $n Commits nicht in dev"
   done
   ```

   Hintergrund: 2026.3.0 wurde vom Release-Branch getaggt und PR #97 nach `dev` als
   "verwaist" geschlossen statt gemergt. Der PROMIS-29-Sprachfix (608212e74b) fehlte
   dadurch in 2026.4.0 bis 2027.0.0-ballot.1 (Beads g3b.11). Nach dem Tag den
   Release-Branch nur loeschen, wenn dieser Check leer war.

2a. **Versionskonsistenz pruefen (Gate vor dem Tag)**

   ```bash
   scripts/check-version-consistency.sh
   ```

   Prueft sushi-config.yaml, package.json, version.fsh, guide.yaml, die Versionsliste
   in qc/custom.rules.yaml sowie die generierten Ressourcen inkl. der
   artifact-version-Extension der ObservationDefinitions.
   Exit 1 -> nicht taggen. Die guide.yaml wurde historisch vier Releases lang uebersehen.

2b. **HAPI Package Smoke-Test (MANDATORY GATE — do not tag if this fails)**

   The package MUST load into a clean HAPI FHIR server without crashing it at
   startup. This catches the class of bug that made 2026.4.0–2026.5.1 unusable:
   a single malformed resource (e.g. `HAPI-0838: ConceptMap ... without a value in
   ConceptMap.group.source`) aborts the whole server boot — SUSHI and IG-Publisher
   validation do NOT catch this, only actually loading the package does.

   Requires Docker. Build the package first (`/mii-build-package`), then run:
   ```bash
   scripts/hapi-smoketest.sh
   ```
   - Exit 0 / "✅ PASS" → proceed to tagging.
   - Exit 1 / "❌ FAIL" → STOP. Do not tag. Fix the offending resource
     (the script prints the HAPI error, e.g. which ConceptMap), rebuild, re-run.

   The script boots `hapiproject/hapi` with the built `.tgz` mounted via
   `hapi.fhir.implementationguides` and fails on `HAPI-0838`/`HAPI-1286`/
   "Application run failed". It is the same gate that should run in CI (see below).

3. **Create and push the tag**
   ```
   git tag -a v{VERSION} -m "Release v{VERSION}"
   git push origin v{VERSION}
   ```

4. **Inform about next steps**
   - GitHub Actions will automatically create a draft release
   - User needs to:
     - Phase 6: Formale Publikation via go-publish-Workflow (Dry-Run, dann
       `publish=true` mit Environment-Freigabe)
     - Phase 7: Edit GitHub draft release and publish
     - Phase 8: Simplifier-Publish des **Publisher-Pakets**:
       `scripts/publish-simplifier.sh` (lädt das package.tgz der
       Pages-Publikation, HAPI-Smoke-Test, `fhir publish-package`).
       NICHT mehr Firely Bake verwenden — der Bake-Filter status='active'
       warf draft-Terminologie aus dem Paket (rc3: MIDOS2-Lücke).

### Safety

- Only proceed if user explicitly confirms
- Show the tag that will be created before pushing
- Remind about the automatic GitHub release creation

### Post-Tag Actions

After successfully creating the tag:
1. Stay on dev branch (already there)
2. Optionally clean up the release branch if user wants — nur wenn Gate 2a0 leer war (sonst gehen Commits verloren)
3. Display the GitHub release URL: `https://github.com/medizininformatik-initiative/kerndatensatzmodul-proms/releases`

### CI wiring (recommended — belt and suspenders)

The local gate (step 2b) relies on a human running it. To make it non-skippable,
the same `scripts/hapi-smoketest.sh` should run in CI on every PR that touches
`input/fsh/**` or `fsh-generated/**`. GitHub-hosted runners have Docker, so the job
can: build the package (SUSHI + Firely Bake, or reuse the release artifact) and run
`scripts/hapi-smoketest.sh <tarball>`. A red job = a package that would crash HAPI —
block the merge. See `.github/workflows/` for where to add the job.
