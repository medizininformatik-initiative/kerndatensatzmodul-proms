# Release Preparation Command

You are helping prepare a new release for the MII PRO module following the official MII Module Release Workflow.

## Usage

```
/release-prepare <VERSION>
```

Example: `/release-prepare 2026.0.0-rc.2`

The VERSION parameter is optional. If not provided, ask the user for it.

## Your Task

Execute Phase 1-5 of the MII Module Release Workflow (automated preparation through PR creation):

### Phase 1: Create Release Branch
1. Check current git status - ensure working tree is clean
2. Ensure you're on the `dev` branch
3. Get VERSION from command arguments, or ask user if not provided (format: `YYYY.0.0-rc.X` or `YYYY.0.0`)
4. Validate version format matches `YYYY.0.0` or `YYYY.0.0-rc.X` or `YYYY.0.0-ballot`
5. Create a new branch named `release/v{VERSION}` from dev

### Phase 2: Update Version Information

Update version numbers in these files:

1. **package.json**: Update the `version` field
2. **sushi-config.yaml**: Update the `version` parameter (may already be done)
3. **qc/custom.rules.yaml**: Add the new version to the `version-filled` predicate list (line 25)
4. **input/fsh/rulesets/version.fsh**: Update ALL version strings in this file:
   - `Version` RuleSet: `* version = "{VERSION}"` (for Questionnaire instances)
   - `PR_CS_VS_Version` RuleSet: `* ^version = "{VERSION}"` (for Profile/CS/VS)
   - `ObsDefVersion` RuleSet: `* extension[=].valueString = "{VERSION}"` (R5 backport for ObservationDefinition)
   - `MetaProfile` RuleSet: Update the version in `"{canonical}|{VERSION}"` (for meta.profile conformance)
5. **guide.yaml** (Simplifier IG config): Path is `implementation-guides/MII-PRO-v2026-DE/guide.yaml`, update:
   - `version` field to match new release version

IMPORTANT:
- Read each file first to verify current state before making changes.
- The version.fsh file has 4 separate version strings that ALL must be updated consistently.
- See CLAUDE.md section "Version Management & Profile Conformance" for documentation.

### Phase 3: Prepare Release Notes

1. Search for existing release notes or CHANGELOG files
2. Check git log for changes since last release: `git log --oneline v{LAST_VERSION}..HEAD` (if previous tag exists)
3. Generate a draft of release notes highlighting:
   - New features
   - Bug fixes
   - Breaking changes
   - Updated dependencies
4. Present release notes to user for review

### Phase 4: Create TODO Checklist

Use TodoWrite to create a comprehensive checklist:
- Version updates completed
- Release branch created
- Release notes prepared
- Ready to create PR
- Waiting for CI validation
- Ready to merge
- Ready to tag release

### Safety Checks

Before starting:
- Verify no uncommitted changes: `git status --porcelain`
- Verify on dev branch: `git branch --show-current`
- Pull latest changes: `git pull origin dev`

After all changes:
- Show summary of all modified files
- Create a single atomic commit with message: `chore: Prepare release v{VERSION}`

### Phase 5: Push and Create PR

After committing, automatically push and create PR:

1. **Push release branch**:
   ```bash
   git push origin release/v{VERSION}
   ```

2. **Create Pull Request** using `gh` CLI:
   ```bash
   gh pr create --base dev --head release/v{VERSION} \
     --title "Release v{VERSION}" \
     --body "## Summary

   Release candidate for MII PRO Module {VERSION}.

   ### Changes since v{PREVIOUS_VERSION}

   {RELEASE_NOTES}

   ### Version Updates

   | File | Version |
   |------|---------|
   | package.json | {VERSION} |
   | sushi-config.yaml | {VERSION} |
   | qc/custom.rules.yaml | Added to version list |
   | version.fsh | All 4 RuleSets |
   | guide.yaml | {VERSION} |

   ## Test plan

   - [ ] CI validation passes
   - [ ] SUSHI compiles without errors
   - [ ] All resources have correct version

   🤖 Generated with [Claude Code](https://claude.com/claude-code)"
   ```

3. **Report PR URL** to user for tracking

## Context

The MII Module Release Workflow has 8 phases total. This command handles phases 1-4 (automated preparation + PR creation). The remaining phases:
- Phase 5: Merge and tag (use `/release-finalize`)
- Phase 6-8: Simplifier publishing and IG export (manual)

Refer to: https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Module-Release-Workflow
