<!-- markdownlint-disable MD041 -->
<!-- Deutsche Übersetzung von input/pagecontent/security-and-privacy.md.
     Aufgebaut in den abgestimmten DREI Stufen: (1) das übergreifende
     übergreifende Datenschutzkonzept, (2) DIMP im Datenportal, (3) die
     modul-spezifischen Aspekte. Stufen 1 und 2 sind statischer übergreifender
     Inhalt — behalten; Stufe 3 füllt Ihr Modul aus. Beide Sprachfassungen
     müssen dasselbe aussagen. -->


Dieser Abschnitt richtet sich an Sicherheits- und Datenschutz-Fachleute.
Allgemeine Anforderungen stehen in der FHIR-Kernspezifikation —
[Security & Privacy Module](https://build.fhir.org/secpriv-module.html) und die
[Security-Checkliste](https://build.fhir.org/security.html). Diese Seite
wiederholt sie nicht; sie verlinkt den übergreifenden Datenschutzrahmen und nennt,
was **für dieses Modul spezifisch** ist.

#### 1. Das übergreifende Datenschutzkonzept

Das
[übergreifende Datenschutzkonzept der Medizininformatik-Initiative](https://www.medizininformatik-initiative.de/de/datenschutzkonzept)
regelt, wie Patientendaten über das Netz der Datenintegrationszentren hinweg
für die Forschung verarbeitet werden
dürfen: die Rechtsgrundlage (der Broad Consent der MII), die Rollen der
Datenintegrationszentren und der Use-&-Access-Committees sowie die
standortübergreifenden Anwendungsszenarien (Machbarkeitsanfragen, verteilte
Analysen, Daten- und Bioproben-Bereitstellung). Alles, was dieses Modul
spezifiziert, bewegt sich innerhalb dieses Rahmens — dieser Leitfaden fügt
keinen eigenen Verarbeitungszweck hinzu.

#### 2. De-Identifikation, Minimierung und Pseudonymisierung (DIMP)

Wie Daten, die ein Datenintegrationszentrum verlassen, praktisch
de-identifiziert werden, spezifiziert
[DIMP (De-Identification — Minimisation — Pseudonymisation)](https://medizininformatik-initiative.github.io/dataportal/data-node/DIMP.html)
in der Dokumentation des Datenportals: direkte Identifikatoren werden
entfernt, vom genehmigten Projekt nicht benötigte Datenelemente entfallen, und
identifizierende Werte werden durch projektspezifische Pseudonyme ersetzt
(FHIR-Pseudonymizer-Konfiguration). Die Profile dieses Moduls beschreiben die
Daten *vor* Anwendung von DIMP; welche Elemente eine konkrete
Datenbereitstellung erreicht, entscheidet je Projekt die DIMP-Konfiguration,
nicht dieser Leitfaden.

#### 3. Modul-spezifische Aspekte

Patient-berichtete Outcomes sind **direkte Selbstauskünfte** — das prägt
die eigenen Aspekte dieses Moduls:

* **Sensible Inhaltskategorien.** Die meisten implementierten Instrumente
  screenen psychische Gesundheit (PHQ-9, BDI-II, DASS-21, EPDS, HADS, …).
  Einzelantworten können so sensibel sein wie Scores — insbesondere PHQ-9
  Item 9 (Suizidalität). Systeme SOLLEN rohe QuestionnaireResponses mit
  demselben Zugriffsschutz behandeln wie Diagnosen, nicht als bloße
  Umfragedaten.
* **Freitext-Antworten.** Instrumente mit offenen Textfeldern
  (MIDOS2-Freitext, Bemerkungsitems) können direkt identifizierende
  Angaben enthalten, die Patientinnen und Patienten selbst eingetragen
  haben. Pseudonymisierung auf Profilebene deckt das nicht ab;
  Datenausleitungen MÜSSEN Freitext-Antworten als potenziell
  identifizierend behandeln und ausschließen oder manuell kuratieren.
* **Scores sind abgeleitete Daten.** Eine Score-Observation ohne ihre
  Quell-Response verrät weniger als die Response; braucht ein Projekt nur
  Scores, ist die Ausleitung allein der Score-Observations die
  datenminimierende Option, die DIMP durchsetzen kann.

Darüber hinaus stellt das Modul keine zusätzlichen
Sicherheitsanforderungen; der übergreifende Rahmen oben gilt unverändert.
