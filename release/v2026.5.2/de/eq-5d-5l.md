# EQ-5D-5L - MII IG PRO v2026.5.2

## EQ-5D-5L

### Architektonisches Muster: Varianten-Architektur

Der EQ-5D-5L demonstriert die Trennung von Capabilities in spezialisierte Varianten. Während der PHQ-9 alle Capabilities in einer einzigen Ressource vereint, implementiert der EQ-5D-5L verschiedene Anwendungsfälle durch separate, spezialisierte Questionnaire-Instanzen. Dieser Ansatz ermöglicht optimierte Ressourcen für spezifische Use Cases und vermeidet die Überladung einzelner Questionnaire-Definitionen mit Funktionalität, die nicht in allen Szenarien benötigt wird.

### Klinischer Kontext

Der EQ-5D-5L ist ein generisches Instrument zur Messung der gesundheitsbezogenen Lebensqualität. Das Instrument besteht aus fünf Dimensionen, die jeweils zentrale Aspekte der Gesundheit erfassen: Mobilität, Selbstversorgung, alltägliche Tätigkeiten, Schmerzen/Beschwerden sowie Angst/Depression. Jede Dimension wird auf einer fünfstufigen Skala von "keine Probleme" bis "extreme Probleme" bewertet. Zusätzlich enthält das Instrument eine visuelle Analogskala (VAS), auf der Patienten ihren aktuellen Gesundheitszustand von 0 (schlechtester vorstellbarer Gesundheitszustand) bis 100 (bester vorstellbarer Gesundheitszustand) einschätzen.

Die Auswertung des EQ-5D-5L erfolgt auf drei Ebenen:

* Der **EQ-5D-5L Index** ist ein gewichteter Utility-Score, der auf populationsspezifischen Wertesets basiert und (basierend auf der deutschen Population) Werte zwischen -0.661 und 1.0 annehmen kann. Der Index-Score wird insbesondere für gesundheitsökonomische Berechnungen genutzt.
* Das **EQ-5D-5L Profil** ist ein fünfstelliger Code, der die Antworten direkt repräsentiert (beispielsweise "11223" für keine Probleme in den ersten beiden Dimensionen und leichte bis moderate Probleme in den weiteren). Er dient häufig als schnelle Zusammenfassung des Gesamtzustands über die fünf verschiedenen Gesundheitsdomänen.
* Die **EQ VAS** stellt die direkte Selbsteinschätzung des individuellen Gesundheitszustands anhand einer Skala von 0-100 dar.

### FHIR-Implementierung durch Varianten

Die Implementierung des EQ-5D-5L folgt einem modularen Ansatz mit einer Basis-Definition und mehreren abgeleiteten Varianten. Die Basis-Definition mit der Canonical URL `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-euroqol-eq5d5l` enthält die gemeinsame Struktur aller EQ-5D-5L Varianten ohne spezifische Capabilities. Von dieser Basis leiten sich spezialisierte Varianten ab, die jeweils für bestimmte Anwendungsfälle optimiert sind.

#### Minimal-Variante (Referenz-Implementation)

Die Minimal-Variante dient als reine Strukturdefinition ohne aktive Capabilities. Sie wird primär als Referenz für Metadaten und Strukturinformationen verwendet und eignet sich für Systeme, die lediglich die Struktur des EQ-5D-5L kennen müssen, ohne ihn aktiv zu nutzen. Diese Variante enthält keine Extensions für Rendering oder Berechnungen, kann aber bereits als Mappingstruktur zu Datenharmonisierungen eingesetzt werden.

Die vollständige Ressource finden Sie in der [Questionnaire-Definition](Questionnaire-mii-qst-pro-eq-5d-5l-minimal.md).

#### Displayable-Variante (Nur-Anzeige)

Die Displayable-Variante ist für die reine Anzeige von bereits erfassten EQ-5D-5L Daten optimiert. Sie wird in klinischen Informationssystemen verwendet, wenn Ärzte oder Pflegepersonal die Ergebnisse eines bereits ausgefüllten Fragebogens einsehen möchten. Diese Variante enthält spezielle Rendering-Hinweise für eine optimale Darstellung, verzichtet aber auf Eingabevalidierung und Berechnungslogik, da keine Interaktion mit dem Fragebogen stattfindet.

Die vollständige Ressource finden Sie in der [Questionnaire-Definition](Questionnaire-mii-qst-pro-euroqol-eq5d5l-displayable.md).

#### Collectable-Variante (Datenerfassung)

Die Collectable-Variante ist für die aktive Datenerfassung durch Patienten konzipiert. Sie enthält vollständige Validierungsregeln, Required-Markierungen für alle Items und eine versteckte "Keine Angabe" Option für Situationen, in denen Patienten einzelne Fragen nicht beantworten können oder möchten. Diese Variante wird typischerweise in Patientenportalen oder mobilen Apps eingesetzt und stellt sicher, dass die erfassten Daten vollständig und valide sind.

Die vollständige Ressource finden Sie in der [Questionnaire-Definition](Questionnaire-mii-qst-pro-euroqol-eq5d5l-collectable.md).

#### Answer-Coding-Variante (MII-spezifische Kodierung)

Die Answer-Coding-Variante verwendet das MII CodeSystem anstelle von LOINC-Codes. Diese Variante ist besonders wichtig, wenn zuverlässige ordinale Werte für automatische Score-Berechnungen benötigt werden. Die LinkIds folgen einem spezifischen Pattern (`euroqol-eq5d5l-coded-q01-MO`), das die Unterscheidung von anderen Varianten ermöglicht. Diese Variante kombiniert die Capabilities Collectable und Calculatable und ermöglicht damit sowohl die Datenerfassung als auch die automatische Berechnung von Scores.

Die vollständige Ressource finden Sie in der [Questionnaire-Definition](Questionnaire-mii-qst-pro-euroqol-eq5d5l-answer-coding.md).

### Score-Berechnung und Interpretation

Die Berechnung der EQ-5D-5L Scores erfolgt auf drei verschiedenen Ebenen, die unterschiedliche Aspekte der Lebensqualität erfassen. Der EQ-5D-5L Index ist der komplexeste Score und erfordert populationsspezifische Wertetabellen. Für die deutsche Population existieren spezifische Koeffizienten, die die gesellschaftlichen Präferenzen für verschiedene Gesundheitszustände widerspiegeln. Die Berechnung erfolgt durch eine nicht-lineare Transformation der fünf Dimensionsantworten unter Berücksichtigung von Interaktionseffekten zwischen den Dimensionen.

Das EQ-5D-5L Profil ist eine direkte Repräsentation der Antworten als fünfstelliger Code. Dieser Code ermöglicht eine schnelle Erfassung des Gesundheitszustands ohne numerische Transformation und eignet sich besonders für die deskriptive Darstellung von Gesundheitszuständen in klinischen Berichten. Die EQ VAS repräsentiert die subjektive Einschätzung des Patienten und wird häufig als Ergänzung zum Index-Score verwendet, um Diskrepanzen zwischen "objektiver" und subjektiver Gesundheitsbewertung zu identifizieren.

Detaillierte Score-Definitionen finden Sie auf der Seite [EQ-5D-5L Scores](eq-5d-5l-scores.md).

### Architektonische Vorteile der Varianten-Trennung

Die Trennung in verschiedene Varianten bietet mehrere signifikante Vorteile für die Implementierung und Wartung. Jede Variante enthält nur die für ihren spezifischen Use Case notwendigen Extensions und Funktionalitäten. Die klare Trennung der Verantwortlichkeiten bedeutet, dass die Displayable-Variante keine unnötige Berechnungslogik enthält, während die Collectable-Variante nicht mit extraktionsspezifischen Extensions überladen wird. In der Praxis können die Varianten auch wie beim vorliegenden PHQ-9 zu einer einzigen Variante oder beliebigen Kombinationen kombiniert werden.

Diese Architektur ermöglicht auch eine flexible Evolution des Systems. Neue Varianten können hinzugefügt werden, ohne bestehende Implementierungen zu beeinflussen. Wenn beispielsweise zukünftig eine spezielle Variante für Computer Adaptive Testing benötigt wird, kann diese als zusätzliche Variante implementiert werden, ohne die bestehenden Varianten zu modifizieren.

### Implementierungsempfehlungen

Die Entscheidung zwischen einer All-in-One-Implementierung wie beim PHQ-9 und einer Varianten-Architektur wie beim EQ-5D-5L sollte auf mehreren Faktoren basieren. Für einfache Instrumente mit wenigen Use Cases ist der All-in-One-Ansatz oft ausreichend und reduziert die Komplexität. Bei komplexen Instrumenten mit vielfältigen Anwendungsszenarien bietet die Varianten-Architektur jedoch deutliche Vorteile in Bezug auf Wartbarkeit und Performance.

Implementierer sollten auch die erwartete Evolution des Instruments und den Austausch zwischen verschiedenen Systemen berücksichtigen. Instrumente, die voraussichtlich stabil bleiben, können vom einfacheren All-in-One-Ansatz profitieren. Instrumente, bei denen häufige Änderungen oder Erweiterungen erwartet werden, sind mit der Varianten-Architektur besser bedient, da Änderungen isoliert in einzelnen Varianten vorgenommen werden können.

### Geschichte

Der EQ-5D-5L ist eine Weiterentwicklung des EQ-5D-3L aus dem Jahr 2009. Siehe [https://euroqol.org/information-and-support/euroqol-instruments/eq-5d-5l/](https://euroqol.org/information-and-support/euroqol-instruments/eq-5d-5l/).

### Lizenzsituation

Der EQ-5D-5L ist für nichtkommerzielle Zwecke nach Registrierung ohne zusätzliche Lizenzkosten nutzbar. Dies betrifft sowohl den Einsatz in klinischen Studien als auch der Krankenversorgung. Siehe die [EQ-5D User License Policy](https://euroqol.org/wp-content/uploads/2025/01/EQ-5D-User-License-Policy-10SEP2024.pdf).

### Weiterführende Links und Informationen

* Handbuch: [https://euroqol.org/wp-content/uploads/2025/01/EQ-5D-5LUserguide-23-07.pdf](https://euroqol.org/wp-content/uploads/2025/01/EQ-5D-5LUserguide-23-07.pdf)
* Deutsche Populationswerte: Ludwig K, Graf von der Schulenburg JM, Greiner W. German Value Set for the EQ-5D-5L. Pharmacoeconomics. 2018 Jun;36(6):663-674. DOI: 10.1007/s40273-018-0615-8. PMID: 29460066; PMCID: PMC5954069.

### Zusammenfassung

Der EQ-5D-5L demonstriert erfolgreich die Varianten-Architektur des MII PRO Moduls und zeigt, wie komplexe Instrumente durch modulare Ansätze effizient implementiert werden können. Die Trennung der Capabilities in spezialisierte Questionnaire-Instanzen ermöglicht optimierte Implementierungen für spezifische Use Cases bei gleichzeitiger Wahrung der semantischen Konsistenz. Diese Architektur stellt einen wichtigen Baustein für die skalierbare Implementierung von Patient-Reported Outcomes im deutschen Gesundheitswesen dar.

