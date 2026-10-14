// Rendert FHIR-TestReport-Instanzen zu Markdown (Job-Summary / PR-Kommentar)
// und einer selbstenthaltenen HTML-Seite (Build-Artifact) — das Geschwister
// von patrick-werner/validation-outcome-markdown-renderer, nur für
// TestReports statt OperationOutcomes.
//
// Aufruf:  node scripts/render-testreport.mjs <report.json|dir>... \
//              [--md out.md] [--html out.html] [--gate]
//   --md    Markdown schreiben (Default: stdout)
//   --html  HTML-Report schreiben
//   --gate  Exit-Code 1, wenn irgendein Test nicht "pass" ist
//
// Markdown zeigt die Zählerzeile plus NUR die Failures (sonst erschlagen
// 30 grüne Tests jede PR-Seite); der volle Durchlauf steht im HTML.
import { readdirSync, readFileSync, statSync, writeFileSync } from 'node:fs';
import { join } from 'node:path';

const args = process.argv.slice(2);
const opt = (name) => {
  const i = args.indexOf(name);
  return i >= 0 ? args.splice(i, 2)[1] : null;
};
const gate = args.includes('--gate');
if (gate) args.splice(args.indexOf('--gate'), 1);
const mdOut = opt('--md');
const htmlOut = opt('--html');

const files = [];
for (const a of args) {
  if (statSync(a).isDirectory()) {
    for (const f of readdirSync(a, { recursive: true })) {
      if (String(f).endsWith('.json')) files.push(join(a, String(f)));
    }
  } else files.push(a);
}
const reports = files
  .map((f) => JSON.parse(readFileSync(f, 'utf8')))
  .filter((r) => r.resourceType === 'TestReport');
if (!reports.length) {
  console.error('Keine TestReport-Instanzen gefunden.');
  process.exit(2);
}

const rows = [];
for (const r of reports) {
  for (const t of r.test ?? []) {
    const actions = (t.action ?? []).map((a) => a.operation ?? a.assert).filter(Boolean);
    const failed = actions.filter((a) => a.result !== 'pass' && a.result !== 'skip');
    rows.push({
      report: r.name ?? r.id ?? 'TestReport',
      test: t.name ?? t.id ?? '(unbenannt)',
      result: failed.length ? 'fail' : 'pass',
      detail: failed.map((a) => a.message ?? a.result).join(' · '),
      actions,
    });
  }
}
const passed = rows.filter((r) => r.result === 'pass').length;
const failedRows = rows.filter((r) => r.result !== 'pass');
const badge = failedRows.length ? '❌' : '✅';

// ── Markdown ────────────────────────────────────────────────────────────────
let md = `## ${badge} TestScript-Ergebnisse — ${passed}/${rows.length} Tests bestanden\n\n`;
if (failedRows.length) {
  md += '| Test | Meldung |\n|---|---|\n';
  for (const r of failedRows) {
    md += `| \`${r.test}\` | ${r.detail.replace(/\|/g, '\\|').slice(0, 300)} |\n`;
  }
  md += '\nVollständiger Durchlauf: HTML-Report im Build-Artifact.\n';
} else {
  md += 'Alle Szenarien grün. Vollständiger Durchlauf: HTML-Report im Build-Artifact.\n';
}
if (mdOut) writeFileSync(mdOut, md); else console.log(md);

// ── HTML (selbstenthalten) ──────────────────────────────────────────────────
if (htmlOut) {
  const esc = (s) => String(s ?? '').replace(/[&<>]/g, (c) => ({ '&': '&amp;', '<': '&lt;', '>': '&gt;' }[c]));
  const html = `<!doctype html><meta charset="utf-8"><title>TestReport</title>
<style>
 body{font-family:system-ui,sans-serif;margin:2rem;max-width:70rem}
 h1{font-size:1.3rem} table{border-collapse:collapse;width:100%}
 td,th{border:1px solid #ddd;padding:.4rem .6rem;text-align:left;vertical-align:top}
 .pass{color:#176617}.fail{color:#a11;font-weight:600}
 details{margin:.2rem 0}summary{cursor:pointer}
 code{background:#f4f4f4;padding:0 .2rem}
</style>
<h1>${badge} TestScript-Ergebnisse — ${passed}/${rows.length} bestanden</h1>
<table><tr><th>TestScript</th><th>Test</th><th>Ergebnis</th><th>Aktionen</th></tr>
${rows.map((r) => `<tr><td>${esc(r.report)}</td><td><code>${esc(r.test)}</code></td>
<td class="${r.result}">${r.result}</td><td><details><summary>${r.actions.length} Aktionen</summary>
<ul>${r.actions.map((a) => `<li class="${a.result === 'pass' ? 'pass' : 'fail'}">${esc(a.result)} — ${esc(a.message ?? '')}</li>`).join('')}</ul>
</details></td></tr>`).join('\n')}
</table>`;
  writeFileSync(htmlOut, html);
}

if (gate && failedRows.length) process.exit(1);
