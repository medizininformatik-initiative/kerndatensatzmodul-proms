#!/usr/bin/env node
/**
 * Debug: Check what the gematik renderer produces for a single questionnaire
 */
import { chromium } from 'playwright';

const FHIR_BASE = process.argv[2] || 'http://localhost:8080/fhir';
const QST_ID = process.argv[3] || 'mii-qst-pro-phq-9';

async function main() {
  const browser = await chromium.launch({ headless: true });
  const page = await browser.newPage();

  // Capture console messages
  page.on('console', msg => console.log(`  [browser ${msg.type()}] ${msg.text()}`));
  page.on('pageerror', err => console.log(`  [browser error] ${err.message}`));
  page.on('requestfailed', req => console.log(`  [request failed] ${req.url()} — ${req.failure()?.errorText}`));

  const rendererBase = process.argv[4] || 'http://127.0.0.1:5173';
  const url = `${rendererBase}/?base=${encodeURIComponent(FHIR_BASE)}&id=${QST_ID}&minimal=true`;
  console.log(`URL: ${url}\n`);

  await page.goto(url, { waitUntil: 'networkidle', timeout: 30000 });
  await page.waitForTimeout(5000);

  // Check page content
  const bodyHTML = await page.evaluate(() => document.body.innerHTML.substring(0, 2000));
  console.log('\n=== Body HTML (first 2000 chars) ===');
  console.log(bodyHTML);

  const renderTarget = await page.evaluate(() => {
    const el = document.getElementById('renderTarget');
    return el ? el.innerHTML.substring(0, 1000) : 'NO #renderTarget FOUND';
  });
  console.log('\n=== #renderTarget (first 1000 chars) ===');
  console.log(renderTarget);

  await browser.close();
}

main().catch(console.error);
