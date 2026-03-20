#!/usr/bin/env node
/**
 * expand-valuesets.js
 * Post-SUSHI ValueSet expansion using local CodeSystem resources.
 *
 * Usage: node expand-valuesets.js
 * Run after: sushi .
 *
 * Expands:
 *   - Standalone ValueSet-*.json in fsh-generated/resources/
 *   - Contained ValueSets inside Questionnaire-*.json
 *
 * Preserves: designations (de/en), ordinalValue extensions, all other extensions
 */

const fs = require('fs');
const path = require('path');

const RESOURCES_DIR = path.join(__dirname, 'fsh-generated', 'resources');
const TIMESTAMP = new Date().toISOString();
const PKG_VERSION = JSON.parse(fs.readFileSync(path.join(__dirname, 'package.json'), 'utf8')).version;

// ── CodeSystem index ────────────────────────────────────────────────────────

function buildCodeSystemIndex(extraCS = []) {
  const index = {}; // keyed by URL
  const idIndex = {}; // keyed by "#id" for fragment references

  const files = fs.readdirSync(RESOURCES_DIR)
    .filter(f => f.startsWith('CodeSystem-') && f.endsWith('.json'));

  for (const file of files) {
    const cs = JSON.parse(fs.readFileSync(path.join(RESOURCES_DIR, file), 'utf8'));
    if (cs.url) index[cs.url] = cs;
    if (cs.id) idIndex[`#${cs.id}`] = cs;
  }

  // Merge contained CodeSystems — indexed by both URL and fragment id
  for (const cs of extraCS) {
    if (cs.url) index[cs.url] = cs;
    if (cs.id) idIndex[`#${cs.id}`] = cs;
  }

  index._byId = idIndex;
  return index;
}

// Flatten nested concepts into { code → concept } map
function flattenConcepts(concepts = {}) {
  const map = {};
  function walk(items) {
    for (const item of (items || [])) {
      map[item.code] = item;
      if (item.concept) walk(item.concept);
    }
  }
  walk(concepts);
  return map;
}

// ── Expansion builder ───────────────────────────────────────────────────────

function buildContainsEntry(systemUrl, csConcept, composeConcept) {
  const entry = {
    system: systemUrl,
    code: csConcept.code,
    display: (composeConcept && composeConcept.display) || csConcept.display,
  };

  // Designations from CodeSystem concept
  if (csConcept.designation && csConcept.designation.length > 0) {
    entry.designation = csConcept.designation;
  }

  // Extensions: merge from compose concept first, then CS concept properties
  const extensions = [
    ...((composeConcept && composeConcept.extension) || []),
    ...((csConcept && csConcept.extension) || []),
  ];
  if (extensions.length > 0) {
    entry.extension = extensions;
  }

  return entry;
}

function expandValueSet(vs, csIndex) {
  if (vs.expansion) return false; // already expanded

  const contains = [];

  for (const include of (vs.compose && vs.compose.include) || []) {
    // Support both URL lookup and fragment-id lookup (#contained-cs-id)
    const cs = csIndex[include.system] || (csIndex._byId && csIndex._byId[include.system]);

    if (!cs) {
      if (include.concept && include.concept.length > 0) {
        // No local CS, but compose has explicit concepts with full data (e.g. LOINC answer lists)
        // → use compose concepts directly, they already carry display/designation/extensions
        for (const composeConcept of include.concept) {
          const entry = {
            system: include.system,
            code: composeConcept.code,
            display: composeConcept.display,
          };
          if (composeConcept.designation) entry.designation = composeConcept.designation;
          if (composeConcept.extension) entry.extension = composeConcept.extension;
          contains.push(entry);
        }
      } else {
        console.warn(`    ⚠️  CodeSystem not found locally: ${include.system}`);
        console.warn(`        → Skipping (use Tx server for external CodeSystems)`);
      }
      continue;
    }

    const csConcepts = flattenConcepts(cs.concept);

    if (include.concept && include.concept.length > 0) {
      // Explicit concept list — enrich with CS designations/extensions
      for (const composeConcept of include.concept) {
        const csConcept = csConcepts[composeConcept.code];
        contains.push(buildContainsEntry(include.system, csConcept || composeConcept, composeConcept));
      }
    } else {
      // No filter → include all CS concepts
      for (const csConcept of Object.values(csConcepts)) {
        contains.push(buildContainsEntry(include.system, csConcept, null));
      }
    }
  }

  if (contains.length === 0) return false; // nothing resolved, skip

  vs.expansion = {
    identifier: `urn:uuid:mii-pro-expansion-${Date.now()}`,
    timestamp: TIMESTAMP,
    total: contains.length,
    parameter: [
      { name: "mii-pro-version", valueString: PKG_VERSION },
      { name: "expandedAt", valueDateTime: TIMESTAMP },
    ],
    contains,
  };

  return true;
}

// ── Standalone ValueSets ────────────────────────────────────────────────────

function processStandaloneValueSets(csIndex) {
  const files = fs.readdirSync(RESOURCES_DIR)
    .filter(f => f.startsWith('ValueSet-') && f.endsWith('.json'));

  let count = 0;
  for (const file of files) {
    const filePath = path.join(RESOURCES_DIR, file);
    const vs = JSON.parse(fs.readFileSync(filePath, 'utf8'));

    if (vs.expansion) {
      console.log(`  ⏭️  ${file} (already expanded)`);
      continue;
    }

    console.log(`  📦 ${file}`);
    if (expandValueSet(vs, csIndex)) {
      fs.writeFileSync(filePath, JSON.stringify(vs, null, 2));
      console.log(`      → ${vs.expansion.total} concepts`);
      count++;
    }
  }
  return count;
}

// ── Questionnaires with contained ValueSets ─────────────────────────────────

function processQuestionnaires(csIndex) {
  const files = fs.readdirSync(RESOURCES_DIR)
    .filter(f => f.startsWith('Questionnaire-') && f.endsWith('.json'));

  let count = 0;
  for (const file of files) {
    const filePath = path.join(RESOURCES_DIR, file);
    const qst = JSON.parse(fs.readFileSync(filePath, 'utf8'));

    const contained = qst.contained || [];
    const containedVS = contained.filter(r => r.resourceType === 'ValueSet');
    if (containedVS.length === 0) continue;

    // Contained CodeSystems override standalone (same URL, more specific context)
    const containedCS = contained.filter(r => r.resourceType === 'CodeSystem');
    const localIndex = buildCodeSystemIndex(containedCS);

    let modified = false;
    for (const vs of containedVS) {
      if (vs.expansion) continue;
      console.log(`  📦 ${file} → contained VS "${vs.id}"`);
      if (expandValueSet(vs, localIndex)) {
        console.log(`      → ${vs.expansion.total} concepts`);
        modified = true;
      }
    }

    if (modified) {
      fs.writeFileSync(filePath, JSON.stringify(qst, null, 2));
      count++;
    }
  }
  return count;
}

// ── Main ────────────────────────────────────────────────────────────────────

console.log('🔧 ValueSet Expansion');
console.log(`📁 ${RESOURCES_DIR}\n`);

const csIndex = buildCodeSystemIndex();
console.log(`✅ ${Object.keys(csIndex).length} CodeSystems geladen\n`);

console.log('── Standalone ValueSets ──────────────────────────');
const vsCount = processStandaloneValueSets(csIndex);

console.log('\n── Questionnaires (contained ValueSets) ──────────');
const qstCount = processQuestionnaires(csIndex);

console.log(`\n✅ Fertig: ${vsCount} ValueSet-Dateien, ${qstCount} Questionnaire-Dateien expandiert`);
