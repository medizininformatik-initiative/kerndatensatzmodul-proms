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
     - Phase 6: Publish package on Simplifier and download .tgz
     - Phase 7: Edit GitHub draft release, upload .tgz, and publish
     - Phase 8: Export IG and upload to TMF SharePoint

### Safety

- Only proceed if user explicitly confirms
- Show the tag that will be created before pushing
- Remind about the automatic GitHub release creation

### Post-Tag Actions

After successfully creating the tag:
1. Stay on dev branch (already there)
2. Optionally clean up the release branch if user wants
3. Display the GitHub release URL: `https://github.com/medizininformatik-initiative/kerndatensatzmodul-proms/releases`

### CI wiring (recommended — belt and suspenders)

The local gate (step 2b) relies on a human running it. To make it non-skippable,
the same `scripts/hapi-smoketest.sh` should run in CI on every PR that touches
`input/fsh/**` or `fsh-generated/**`. GitHub-hosted runners have Docker, so the job
can: build the package (SUSHI + Firely Bake, or reuse the release artifact) and run
`scripts/hapi-smoketest.sh <tarball>`. A red job = a package that would crash HAPI —
block the merge. See `.github/workflows/` for where to add the job.
