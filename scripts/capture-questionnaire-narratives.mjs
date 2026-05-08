#!/usr/bin/env node
/**
 * Capture rendered Questionnaire forms from gematik poc-isik-formular
 * and inject them as text.div narratives into FHIR Questionnaire JSON files.
 *
 * Usage: node scripts/capture-questionnaire-narratives.mjs [fhir-base-url]
 * Default FHIR base: http://localhost:8080/fhir
 */

import { chromium } from 'playwright';
import { readFileSync, writeFileSync, readdirSync } from 'fs';
import { join, dirname } from 'path';
import { fileURLToPath } from 'url';

const __dirname = dirname(fileURLToPath(import.meta.url));
const PROJECT_ROOT = join(__dirname, '..');

const FHIR_BASE = process.argv[2] || 'http://localhost:8080/fhir';
const RENDERER_URL = process.argv[3] || 'http://127.0.0.1:5173';
const RESOURCES_DIR = join(PROJECT_ROOT, 'fsh-generated/resources');
const TIMEOUT_MS = 30000;

async function captureNarrative(page, questionnaireId) {
  const url = `${RENDERER_URL}?base=${encodeURIComponent(FHIR_BASE)}&id=${questionnaireId}&minimal=true`;

  console.log(`  Loading: ${questionnaireId}`);
  await page.goto(url, { waitUntil: 'networkidle', timeout: TIMEOUT_MS });

  // Wait for LHC-Forms web component to render inside #renderTarget
  await page.waitForSelector('#renderTarget wc-lhc-form form', { timeout: TIMEOUT_MS }).catch(() => {
    console.warn(`  ⚠ No lhc-form element found for ${questionnaireId}, trying fallback...`);
  });

  // Give it a moment to fully render
  await page.waitForTimeout(2000);

  // Extract the rendered HTML
  const html = await page.evaluate(() => {
    const target = document.getElementById('renderTarget');
    if (!target) return null;
    return target.innerHTML;
  });

  return html;
}

function sanitizeNarrativeHtml(html) {
  if (!html) return null;

  // Remove script tags
  let clean = html.replace(/<script[^>]*>[\s\S]*?<\/script>/gi, '');
  // Remove event handlers
  clean = clean.replace(/\s+on\w+="[^"]*"/gi, '');
  // Wrap in XHTML namespace div
  clean = `<div xmlns="http://www.w3.org/1999/xhtml">${clean}</div>`;

  return clean;
}

async function main() {
  const files = readdirSync(RESOURCES_DIR)
    .filter(f => f.startsWith('Questionnaire-') && f.endsWith('.json'));

  console.log(`Found ${files.length} Questionnaire files`);
  console.log(`FHIR base: ${FHIR_BASE}`);
  console.log(`Renderer: ${RENDERER_URL}\n`);

  const browser = await chromium.launch({ headless: true });
  const context = await browser.newContext();
  const page = await context.newPage();

  let success = 0;
  let failed = 0;

  for (const file of files) {
    const filePath = join(RESOURCES_DIR, file);
    const questionnaire = JSON.parse(readFileSync(filePath, 'utf-8'));
    const qId = questionnaire.id;

    try {
      const html = await captureNarrative(page, qId);

      if (html && html.trim().length > 100) {
        const narrative = sanitizeNarrativeHtml(html);
        questionnaire.text = {
          status: 'generated',
          div: narrative
        };
        writeFileSync(filePath, JSON.stringify(questionnaire, null, 2) + '\n');
        console.log(`  ✓ ${qId} (${html.length} bytes)`);
        success++;
      } else {
        console.log(`  ✗ ${qId} — empty or too short render`);
        failed++;
      }
    } catch (err) {
      console.error(`  ✗ ${qId} — ${err.message}`);
      failed++;
    }
  }

  await browser.close();
  console.log(`\nDone: ${success} captured, ${failed} failed`);
}

main().catch(console.error);
