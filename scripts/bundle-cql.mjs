#!/usr/bin/env node
/**
 * Bundle CQL files into FHIR Library resources.
 *
 * Reads .cql files from input/cql/, wraps each as a FHIR Library
 * with base64-encoded content, and writes to fsh-generated/resources/.
 * This makes CQL part of the FHIR Package (installed via $install-package).
 *
 * Usage:
 *   node scripts/bundle-cql.mjs
 *
 * Run AFTER sushi but BEFORE packaging.
 */

import { readFileSync, writeFileSync, readdirSync } from 'fs';
import { resolve, basename, dirname } from 'path';

const repoRoot = resolve(dirname(new URL(import.meta.url).pathname), '..');
const cqlDir = resolve(repoRoot, 'input/cql');
const outputDir = resolve(repoRoot, 'fsh-generated/resources');

const cqlFiles = readdirSync(cqlDir).filter(f => f.endsWith('.cql'));

console.log(`📦 Bundling ${cqlFiles.length} CQL files into FHIR Library resources...\n`);

for (const file of cqlFiles) {
  const cqlPath = resolve(cqlDir, file);
  const cqlSource = readFileSync(cqlPath, 'utf-8');

  // Extract library name and version from CQL source
  let libName = basename(file, '.cql');
  let libVersion = '1.0.0';

  for (const line of cqlSource.split('\n')) {
    const match = line.match(/^library\s+(\S+)(?:\s+version\s+'([^']+)')?/);
    if (match) {
      libName = match[1];
      if (match[2]) libVersion = match[2];
      break;
    }
  }

  // Check for 'include' statements to set relatedArtifact
  const includes = [];
  for (const line of cqlSource.split('\n')) {
    const match = line.match(/^include\s+(\S+)/);
    if (match) includes.push(match[1]);
  }

  const library = {
    resourceType: 'Library',
    id: `mii-lib-pro-${libName.toLowerCase().replace(/_/g, '-')}`,
    url: `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Library/${libName}`,
    version: libVersion,
    name: libName,
    title: `MII PRO CQL Library: ${libName.replace(/_/g, ' ')}`,
    status: 'active',
    type: {
      coding: [{
        system: 'http://terminology.hl7.org/CodeSystem/library-type',
        code: 'logic-library',
        display: 'Logic Library'
      }]
    },
    content: [{
      contentType: 'text/cql',
      data: Buffer.from(cqlSource).toString('base64')
    }]
  };

  // Add relatedArtifact for includes
  if (includes.length > 0) {
    library.relatedArtifact = includes.map(name => ({
      type: 'depends-on',
      resource: `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Library/${name}`
    }));
  }

  const outputPath = resolve(outputDir, `Library-${library.id}.json`);
  writeFileSync(outputPath, JSON.stringify(library, null, 2));
  console.log(`  📚 ${libName} → ${basename(outputPath)}`);
}

console.log(`\n✅ ${cqlFiles.length} Library resources written to fsh-generated/resources/`);
