<!-- markdownlint-disable MD041 -->

### Einführung

Diese Spezifikation beschreibt die FHIR-Repräsentation des Kerndatensatz-Erweiterungsmoduls **PROs, PROMs und abgeleitete Metriken** der Medizininformatik-Initiative (MII). Sie standardisiert Erhebung, Scoring und Sekundärnutzung patientenberichteter Gesundheitsdaten für das deutsche Gesundheitswesen und ermöglicht standortübergreifende Vergleichbarkeit von PRO-Daten durch einheitliche FHIR-basierte Implementierungen.

Das Modul basiert maßgeblich auf der [FHIR-Structured-Data-Capture-Spezifikation (SDC)](https://build.fhir.org/ig/HL7/sdc/) und deckt den vollständigen Workflow **Questionnaire → QuestionnaireResponse → Score-Observation** ab — von validierten Instrumentendefinitionen über die Erfassung bis zu berechneten, rückverfolgbaren Scores.

| Publikation |               |
|-------------|---------------|
| Version     | {{site.data.fhir.igVer}} (CalVer `YYYY.n.n`) |
| Status      | active        |
| Realm       | DE            |

### Umfang

Die [PRO-Bibliothek](pro-library.html) umfasst derzeit **mehr als zwanzig Instrumente** — von der PHQ-Familie, EQ-5D-5L, den PROMIS-Profilen und dem EORTC QLQ-C30 über PRO-CTCAE, MIDOS2 und WHODAS 2.0 bis zum PSS-Screening-Set des PCOR-MII. Jedes Instrument folgt derselben Architektur: kanonische Item-Identitäten ([ID-Systematik](id-systematics.html)), Antwortskalen mit ordinalen Gewichten, maschinenlesbare [Capabilities](questionnaire-capabilities.html) und eine Score-Pipeline entlang der [drei Scoring-Kanäle](scoring.html).

Vier Instrumente (HADS, EPDS, CES-D, K6) sind aus Lizenzgründen als [Metadata-only-Referenzen](minimal-reference-questionnaires.html) abgebildet.

### Zielgruppen

<div class="ig-highlight ig-highlight-blue">
<h5>Softwarehersteller und Implementierende</h5>
<p>Formular-Renderer, KIS-Integrationen, ePRO-Apps, ETL-Strecken und Scoring-Services.<br/>
→ Einstieg über die <a href="implementer-guidance.html">Hinweise für Implementierende</a> — fünf Regeln, die jede Implementierung einhalten muss.</p>
</div>

<div class="ig-highlight ig-highlight-green">
<h5>Studien und Forschende</h5>
<p>Instrumentenauswahl, Lizenzstufen und was die erhobenen Daten nachgelagert bedeuten.<br/>
→ Einstieg über die <a href="researcher-guidance.html">Hinweise für Forschende</a>.</p>
</div>

### Inhalte

- **[Leitfaden](guidance.html)** — Einstieg, Anwendungsfälle, ID-Systematik, Capabilities und die 2027er Konzepte ([CAT](cat.html), [Nationaler Fragebogenserver](national-questionnaire-server.html), [abgeleitete Metriken](derived-metrics.html)).
- **[PRO-Bibliothek](pro-library.html)** — alle Instrumente mit Fokus, Items, Sprache, Scoring und Lizenz auf einen Blick.
- **[Scoring](scoring.html)** — clientseitig, serverseitig (CQL) und extern vorberechnet, einschließlich der Medizinprodukte-Abgrenzung.
- **Konformität** — die KDS-weiten Regeln (Anforderungssprache, Must Support, fehlende Daten) pflegt zentral das [Meta-Modul](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Conformance); die modulspezifischen Überlegungen zu [Sicherheit und Datenschutz](security-and-privacy.html) sind Teil dieses Leitfadens.
- **[Profile](profiles.html)** und die weiteren [Artefakte](artifacts.html) — die normativen FHIR-Ressourcen.
- **[Änderungen](changes.html)** — alle Versionen einschließlich der Vorbereitung von 2027.0.0-ballot.

### Autorinnen, Autoren und Kontakt

* Thomas Debertshäuser
* Mathias Rose
* Fabian Praßer
* Karoline Buckow
* Franziska Klepka

Feedback und Fragen: über das [GitHub-Repository](https://github.com/medizininformatik-initiative/kerndatensatzmodul-proms/issues) oder die MII-Kanäle.

Die MII-eigenen FHIR-Strukturen dieses Moduls stehen unter CC0; Instrumententexte Dritter behalten ihre eigenen Lizenzbedingungen — siehe die Lizenzspalte der [PRO-Bibliothek](pro-library.html) und das `copyright`-Element der jeweiligen Ressource.
