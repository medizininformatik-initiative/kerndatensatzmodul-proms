// Baut die fachliche Review-Ansicht eines PROMs als selbstenthaltenen
// One-Pager: alle Items mit Antwortoptionen (Label en/de, LA-Code, Gewicht,
// Quelle), die Score-Definitionen samt offizieller Lookup-Tabelle und die
// Scoring-Szenarien mit Soll/Ist — Ist zur BUILDZEIT mit der echten
// fhirpath.js berechnet (dieselbe Engine wie in LHC-Forms und in
// promis29-scoring.test.mjs).
//
// Datenquellen (alles vorhandene Artefakte, nichts von Hand):
//   fsh-generated/resources/Questionnaire-mii-qst-pro-promis-29{,-de}.json
//   scripts/data/promis29-answer-weights.csv      (Gewichts-Fixture)
//   scripts/data/promis29-t-score-tables.csv      (offizieller v2.1-Appendix)
//   scripts/data/scoring-cases/promis29-cases.json
//
// Aufruf:  node scripts/build-prom-review.mjs [out.html]
import { readFileSync, writeFileSync } from 'node:fs';
import { createRequire } from 'node:module';
import { dirname, join } from 'node:path';
import { fileURLToPath } from 'node:url';

const HERE = dirname(fileURLToPath(import.meta.url));
const require = createRequire(import.meta.url);
const fhirpath = require(join(HERE, 'node_modules', 'fhirpath'));
const r4model = require(join(HERE, 'node_modules', 'fhirpath/fhir-context/r4'));

const OUT = process.argv[2] ?? join(HERE, '..', 'prom-review-promis-29.html');
const GEN = join(HERE, '..', 'fsh-generated', 'resources');
const qEn = JSON.parse(readFileSync(join(GEN, 'Questionnaire-mii-qst-pro-promis-29.json'), 'utf8'));
const qDe = JSON.parse(readFileSync(join(GEN, 'Questionnaire-mii-qst-pro-promis-29-de.json'), 'utf8'));
const casesDoc = JSON.parse(readFileSync(join(HERE, 'data/scoring-cases/promis29-cases.json'), 'utf8'));

// Bekannte, über Tickets getrackte Abweichungen (markiert statt verschwiegen)
const KNOWN = { 'LA10044-8|LL3003-2': 'HDB-1008: LOINC-Liste LL3003-2 führt hier LA14747-2 „Usually“' };
const ANSWER_LIST = (lid) =>
  lid.startsWith('promis-srpper') ? 'LL3003-2'
  : /^promis-(edanx|eddep)/.test(lid) ? 'LL1016-6' : null;

const TRANSLATION = 'http://hl7.org/fhir/StructureDefinition/translation';
const CALC = 'http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression';
const UNIT = 'http://hl7.org/fhir/StructureDefinition/questionnaire-unit';
const deOf = (el) => {
  for (const e of el?.extension ?? el?._display?.extension ?? [])
    if (e.url === TRANSLATION) {
      const c = Object.fromEntries((e.extension ?? []).map((x) => [x.url, x.valueCode ?? x.valueString]));
      if (c.lang === 'de') return c.content;
    }
  return null;
};
const textDe = (it) => deOf({ extension: it._text?.extension }) ?? null;

// T-Tabellen
const tTables = {};
for (const line of readFileSync(join(HERE, 'data/promis29-t-score-tables.csv'), 'utf8').trim().split('\n').slice(1)) {
  const [v, raw, t] = line.split(',');
  (tTables[v] ??= {})[raw] = t;
}

// Struktur einlesen
function* walk(items, parent) {
  for (const it of items ?? []) { yield { it, parent }; yield* walk(it.item, it); }
}
const deText = new Map(); // linkId -> de-Primärtext aus der -de-Variante
for (const { it } of walk(qDe.item)) deText.set(it.linkId, it.text);

const domains = []; // {group, titleEn, titleDe, items:[], scores:[]}
for (const { it } of walk(qEn.item)) {
  if (it.type !== 'group') continue;
  const dom = { group: it.linkId, titleEn: it.text, titleDe: textDe(it) ?? deText.get(it.linkId), items: [], scores: [] };
  for (const sub of it.item ?? []) {
    if (sub.type === 'display') continue;
    const loinc = (sub.code ?? []).find((c) => c.system === 'http://loinc.org')?.code;
    if (sub.answerOption?.length) {
      dom.items.push({
        linkId: sub.linkId, loinc,
        textEn: sub.text, textDe: textDe(sub) ?? deText.get(sub.linkId),
        options: sub.answerOption.map((ao) => ({
          code: ao.valueCoding.code,
          en: ao.valueCoding.display,
          de: deOf(ao.valueCoding) ?? deOf({ extension: ao.valueCoding._display?.extension }),
          weight: (ao.extension ?? []).find((e) => e.url.endsWith('itemWeight') || e.url.endsWith('ordinalValue'))?.valueDecimal,
        })),
      });
    } else if ((sub.extension ?? []).some((e) => e.url === CALC)) {
      const unit = (sub.extension ?? []).find((e) => e.url === UNIT)?.valueCoding?.code;
      dom.scores.push({
        linkId: sub.linkId, loinc, textEn: sub.text, textDe: textDe(sub) ?? deText.get(sub.linkId),
        unit, expr: (sub.extension ?? []).find((e) => e.url === CALC).valueExpression.expression,
      });
    }
  }
  if (dom.items.length || dom.scores.length) domains.push(dom);
}

// Scoring zur Buildzeit (identische Logik wie promis29-scoring.test.mjs)
const VARIABLE = 'http://hl7.org/fhir/StructureDefinition/variable';
function evaluateScores(questionnaire, qr) {
  const env = { questionnaire };
  for (const v of (questionnaire.extension ?? []).filter((e) => e.url === VARIABLE).map((e) => e.valueExpression)) {
    const r = fhirpath.evaluate(qr, v.expression, { resource: qr, ...env }, r4model);
    env[v.name] = r.length ? r[0] : null;
  }
  const out = {};
  for (const { it } of walk(questionnaire.item)) {
    const expr = (it.extension ?? []).find((e) => e.url === CALC)?.valueExpression?.expression;
    if (!expr) continue;
    const r = fhirpath.evaluate(qr, expr, { resource: qr, ...env }, r4model);
    out[it.linkId] = r.length ? r[0] : null;
  }
  return out;
}
const parentOf = new Map();
for (const { it, parent } of walk(qEn.item)) parentOf.set(it.linkId, parent?.linkId);
function buildQr(answers) {
  const groups = new Map();
  for (const [linkId, a] of Object.entries(answers)) {
    const g = parentOf.get(linkId);
    if (!groups.has(g)) groups.set(g, { linkId: g, item: [] });
    groups.get(g).item.push({ linkId, answer: [{ valueCoding: { system: 'http://loinc.org', code: a.code } }] });
  }
  return { resourceType: 'QuestionnaireResponse', status: 'completed', item: [...groups.values()] };
}
const caseRows = casesDoc.cases.map((c) => {
  const scores = evaluateScores(qEn, buildQr(c.answers));
  const checks = Object.entries(c.expect).map(([linkId, exp]) => {
    const got = scores[linkId];
    const ok = exp === null ? got === null : got === exp;
    return { linkId, exp, got, ok };
  });
  return { ...c, checks, ok: checks.every((x) => x.ok) };
});

// ── HTML ─────────────────────────────────────────────────────────────────────
const esc = (s) => String(s ?? '').replace(/[&<>"]/g, (c) => ({ '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;' }[c]));
const lang = (en, de) =>
  `<span class="l-en">${esc(en)}</span><span class="l-de">${esc(de ?? en ?? '—')}</span>`;

const itemRows = (dom) => dom.items.map((it) => `
<tr>
 <td><code>${esc(it.linkId)}</code><div class="src"><code>LOINC ${esc(it.loinc)}</code>${ANSWER_LIST(it.linkId) ? ` · Liste <code>${ANSWER_LIST(it.linkId)}</code>` : ''}</div></td>
 <td class="qtext">${lang(it.textEn, it.textDe)}</td>
 <td><div class="opts">${it.options.map((o) => {
   const known = KNOWN[`${o.code}|${ANSWER_LIST(it.linkId)}`];
   return `<span class="opt${known ? ' dev' : ''}"${known ? ` title="${esc(known)}"` : ''}>
     <b>${lang(o.en, o.de)}</b><span class="w">${o.weight ?? '–'}</span><span class="src">${esc(o.code)}</span>${known ? '<span class="flag">⚠</span>' : ''}</span>`;
 }).join('')}</div></td>
</tr>`).join('');

const scoreRows = (dom) => dom.scores.map((s) => {
  const table = tTables[Object.keys(tTables).find((v) => s.expr.includes(`%${v}`))];
  return `
<tr>
 <td><code>${esc(s.linkId)}</code><div class="src"><code>LOINC ${esc(s.loinc)}</code> · Unit <code>${esc(s.unit ?? '—')}</code></div></td>
 <td class="qtext">${lang(s.textEn, s.textDe)}
   <details><summary>calculatedExpression</summary><pre>${esc(s.expr)}</pre></details></td>
 <td>${table && s.linkId.endsWith('tscore') ? `<details><summary>Lookup raw→T (offiziell, v2.1-Appendix)</summary>
   <div class="ttab">${Object.entries(table).map(([r, t]) => `<span><em>${r}</em>${t}</span>`).join('')}</div></details>` : '<span class="src">Summe der Gewichte</span>'}</td>
</tr>`;
}).join('');

const caseTable = caseRows.map((c) => `
<tr class="${c.ok ? '' : 'bad'}">
 <td><code>${esc(c.id)}</code></td>
 <td class="answers">${Object.entries(c.answers).map(([l, a]) => `<span class="src">${esc(l.replace('promis-', ''))}</span> ${esc(a.label)}`).join(' · ')}</td>
 <td>${c.checks.map((x) => `<div>${esc(x.linkId.replace('promis-29-', ''))} = <b>${x.exp === null ? '∅ (Guard)' : x.exp}</b>
   <span class="pill ${x.ok ? 'ok' : 'crit'}">${x.ok ? '✓' : `✗ ist ${x.got}`}</span></div>`).join('')}</td>
 <td class="src">${esc(c.source ?? '')}</td>
</tr>`).join('');

const html = `<title>PROM-Review PROMIS-29</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans:wght@400;500;600;700&family=IBM+Plex+Mono:wght@400;500&display=swap">
<style>
:root{--bg:#f7f8fa;--surface:#fff;--ink:#1d232b;--muted:#5b6472;--line:#dde2e9;
 --accent:#0f766e;--accent-ink:#fff;--ok-bg:#e7f3ea;--ok:#15803d;--warn-bg:#fdf0e0;
 --warn:#b45309;--crit-bg:#fdeaea;--crit:#b91c1c;--code-bg:#eef1f5}
@media (prefers-color-scheme: dark){:root:not([data-theme="light"]){--bg:#14181d;--surface:#1c2228;
 --ink:#e8ebee;--muted:#9aa5b1;--line:#2c343d;--accent:#14b8a6;--accent-ink:#082f2b;
 --ok-bg:#12301d;--ok:#5ccf85;--warn-bg:#37270f;--warn:#e0a64e;--crit-bg:#3a1717;--crit:#ef8a8a;--code-bg:#242b33}}
:root[data-theme="dark"]{--bg:#14181d;--surface:#1c2228;--ink:#e8ebee;--muted:#9aa5b1;
 --line:#2c343d;--accent:#14b8a6;--accent-ink:#082f2b;--ok-bg:#12301d;--ok:#5ccf85;
 --warn-bg:#37270f;--warn:#e0a64e;--crit-bg:#3a1717;--crit:#ef8a8a;--code-bg:#242b33}
*{box-sizing:border-box}
body{margin:0;background:var(--bg);color:var(--ink);font:400 14.5px/1.5 "IBM Plex Sans",system-ui,sans-serif;padding:2rem 1.25rem 4rem}
.wrap{max-width:74rem;margin:0 auto}
header{display:flex;flex-wrap:wrap;gap:.75rem 1.5rem;align-items:center;margin-bottom:.5rem}
h1{font-size:1.5rem;margin:0;letter-spacing:-.01em}
.meta{color:var(--muted);font-size:.85rem;margin:0 0 1.25rem}
.meta code{font-family:"IBM Plex Mono",monospace}
.toggles{display:flex;gap:.5rem;margin-left:auto}
.tg{border:1px solid var(--line);background:var(--surface);color:var(--ink);border-radius:.45rem;
 padding:.3rem .7rem;font:600 .78rem "IBM Plex Sans";cursor:pointer}
.tg[aria-pressed="true"]{background:var(--accent);color:var(--accent-ink);border-color:var(--accent)}
h2{font-size:.8rem;text-transform:uppercase;letter-spacing:.08em;color:var(--muted);
 margin:1.75rem 0 .5rem;display:flex;gap:.5rem;align-items:center}
h2::before{content:"";width:.55rem;height:.55rem;border-radius:2px;background:var(--accent)}
h3{font-size:1rem;margin:1.1rem 0 .4rem}
h3 .src{font-weight:400}
.card{background:var(--surface);border:1px solid var(--line);border-radius:.6rem;padding:.4rem .9rem .7rem;overflow-x:auto}
table{border-collapse:collapse;width:100%;font-size:.86rem}
td{padding:.5rem .55rem;border-top:1px solid var(--line);vertical-align:top}
tr:first-child td{border-top:none}
code{font-family:"IBM Plex Mono",monospace;font-size:.84em;background:var(--code-bg);padding:.03rem .28rem;border-radius:.25rem;white-space:nowrap}
.qtext{min-width:16rem;max-width:26rem}
.opts{display:flex;flex-wrap:wrap;gap:.35rem}
.opt{border:1px solid var(--line);border-radius:.45rem;padding:.2rem .45rem;display:inline-flex;gap:.45rem;align-items:baseline;background:var(--bg)}
.opt b{font-weight:500}
.opt .w{font-family:"IBM Plex Mono",monospace;font-size:.8em;color:var(--accent);font-weight:600}
.opt.dev{border-color:var(--warn);background:var(--warn-bg)}
.flag{color:var(--warn)}
.src{color:var(--muted);font-size:.78rem}
body:not(.show-src) .src{display:none}
body:not(.show-src) .opt .w{display:inline} /* Gewichte immer sichtbar */
.l-de{display:none} body.lang-de .l-de{display:inline} body.lang-de .l-en{display:none}
details{margin-top:.25rem} summary{cursor:pointer;font-size:.8rem;color:var(--accent)}
pre{background:var(--code-bg);padding:.5rem .6rem;border-radius:.4rem;font:.78rem/1.45 "IBM Plex Mono";overflow-x:auto;white-space:pre-wrap;word-break:break-all}
.ttab{display:flex;flex-wrap:wrap;gap:.3rem;margin-top:.4rem}
.ttab span{background:var(--code-bg);border-radius:.35rem;padding:.15rem .4rem;font:.78rem "IBM Plex Mono"}
.ttab em{color:var(--muted);font-style:normal;margin-right:.3rem}
.pill{display:inline-block;font-size:.72rem;font-weight:600;padding:.08rem .45rem;border-radius:99px}
.ok{background:var(--ok-bg);color:var(--ok)} .crit{background:var(--crit-bg);color:var(--crit)}
tr.bad td{background:var(--crit-bg)}
.answers{max-width:24rem}
.legend{font-size:.8rem;color:var(--muted);margin:.4rem 0 0}
</style>
<body class="show-src">
<div class="wrap">
<header>
 <h1>PROM-Review — PROMIS-29</h1>
 <div class="toggles">
  <button class="tg" id="tg-lang" aria-pressed="false">Deutsch</button>
  <button class="tg" id="tg-src" aria-pressed="true">Quellen</button>
 </div>
</header>
<p class="meta">Generiert aus <code>${esc(qEn.url)}|${esc(qEn.version)}</code> (en + de-Variante) · Gewichte aus den answerOptions ·
Soll-Tabellen: Adult Profile Scoring Manual, v2.1-Appendix · Ist-Werte zur Buildzeit mit fhirpath.js berechnet ·
⚠ = bekannte Abweichung (Ticket im Tooltip) · Zahl im Chip = itemWeight</p>

<h2>Items &amp; Antwortoptionen</h2>
${domains.filter((d) => d.items.length).map((d) => `
<h3>${lang(d.titleEn, d.titleDe)} <span class="src"><code>${esc(d.group)}</code></span></h3>
<div class="card"><table>${itemRows(d)}</table></div>`).join('')}

<h2>Scores</h2>
${domains.filter((d) => d.scores.length).map((d) => `
<h3>${lang(d.titleEn, d.titleDe)}</h3>
<div class="card"><table>${scoreRows(d)}</table></div>`).join('')}

<h2>Scoretests — ${caseRows.filter((c) => c.ok).length}/${caseRows.length} grün (Buildzeit-Lauf)</h2>
<div class="card"><table>
<tr><td class="src">Szenario</td><td class="src">Antworten</td><td class="src">Erwartet → Ist</td><td class="src">Quelle</td></tr>
${caseTable}
</table></div>
<p class="legend">Dieselben Szenarien laufen als CI-Tests (fhirpath.js), als IG-TestScripts und als Server-E2E ($extract) — Quelle: <code>scripts/data/scoring-cases/promis29-cases.json</code>.</p>
</div>
<script>
const tgLang = document.getElementById('tg-lang');
tgLang.addEventListener('click', () => {
  const on = tgLang.getAttribute('aria-pressed') !== 'true';
  tgLang.setAttribute('aria-pressed', on);
  document.body.classList.toggle('lang-de', on);
});
const tgSrc = document.getElementById('tg-src');
tgSrc.addEventListener('click', () => {
  const on = tgSrc.getAttribute('aria-pressed') !== 'true';
  tgSrc.setAttribute('aria-pressed', on);
  document.body.classList.toggle('show-src', on);
});
</script>
</body>`;
writeFileSync(OUT, html);
console.log(`Review-Seite: ${OUT} — ${domains.length} Domänen, ${caseRows.length} Szenarien (${caseRows.filter((c) => c.ok).length} grün)`);
