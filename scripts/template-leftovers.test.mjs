// A created module must NOT carry the template repository's own release
// automation. docs/recipes/first-run-setup.md tells the bootstrap to remove
// these files, but a later "copy every workflow 1:1 from the template" (PR #133)
// silently brought notify-zulip.yml back — and on the next published release it
// announced the MODULE as a "New template release" in the Zulip topic
// "Template Releases", next to the correct CalVer announcement that
// module-release.yml posts to "Releases" (v2027.0.0-ballot.rc1 and
// v2027.0.0-ballot.2 both hit this). This test makes the leftover a red CI
// instead of a public mis-announcement. Run with:
//   node --test scripts/template-leftovers.test.mjs
import { test } from "node:test";
import assert from "node:assert/strict";
import { existsSync } from "node:fs";
import { fileURLToPath } from "node:url";

const repository = fileURLToPath(new URL("../", import.meta.url));

/** Template-repo maintenance files the first-run bootstrap removes from a module. */
const TEMPLATE_ONLY = [
  ".github/workflows/notify-zulip.yml", // SemVer "Template Releases" announcement
  ".github/workflows/release-please.yml",
  "release-please-config.json",
  ".release-please-manifest.json",
];

for (const relativePath of TEMPLATE_ONLY) {
  test(`${relativePath} is template-repo maintenance and must not exist in a module`, () => {
    assert.equal(
      existsSync(`${repository}${relativePath}`),
      false,
      `${relativePath} is a template-repo file; modules release via module-release.yml only (see docs/recipes/first-run-setup.md)`,
    );
  });
}
