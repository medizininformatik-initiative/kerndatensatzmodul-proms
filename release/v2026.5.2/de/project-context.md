# Project Context - MII IG PRO v2026.5.2

## Project Context

### Position im MII-Kerndatensatz

Das PRO-Modul erweitert den MII-Kerndatensatz um die systematische Erfassung patientenberichteter Gesundheitsdaten und schafft damit eine essenzielle Verbindung zwischen objektiven klinischen Parametern und der subjektiven Patientenperspektive. Als Querschnittsmodul integriert es sich nahtlos in bestehende Datenstrukturen und nutzt die etablierten Identifikations- und Consent-Mechanismen der MII-Basismodule, während es gleichzeitig spezifische Anforderungen der Fachmodule durch domänenspezifische PRO-Instrumente bedient.

### Kernabhängigkeiten und Datenflüsse

Die technische Integration erfolgt primär über die FHIR-Ressourcen Questionnaire und QuestionnaireResponse für die Datenerfassung sowie Observation für die strukturierte Speicherung von Scores und Einzelitems. Die Verknüpfung mit klinischen Daten geschieht über etablierte Referenzmechanismen zu Encounter (Erhebungskontext), Condition (Diagnosebezug) und Procedure (prä-/postinterventionelle Messung), wobei die automatisierte Score-Berechnung durch SDC-Calculated-Expressions eine direkte Integration in klinische Workflows ohne manuelle Auswertungsschritte ermöglicht.

### Fachmodulspezifische Integration

Der konkrete Einsatz von PROMs wird in diesem Modul beispielhaft skizziert und soll in der Zukunft durch fachspezifische Anwendungsmodule weiter ausspezifiziert werden. In der Onkologie ermöglicht das PRO-Modul bereits jetzt die standardisierte Erfassung der Lebensqualität mittels EORTC QLQ-C30 als primären oder sekundären Studienendpunkt; in der Zukunft können krankheitsspezifische PRO-Instrumente wie der EORTC QLQ-BR42 bei Brustkrebs oder EORTC QLQ-LC13 bei Lungenkrebs zur Anwendung kommen. Instrumente wie PHQ-9 und PROMIS-Depression können sowohl für das initiale Screening als auch für die Verlaufskontrolle psychotherapeutischer und pharmakologischer Interventionen eingesetzt werden, sowohl in der Psychiatrie als auch in anderen Bereichen. Die Kardiologie kann zukünftig von der strukturierten Erfassung funktioneller Einschränkungen und Belastbarkeit bei chronischer Herzinsuffizienz profitieren (wobei hier lizenzrechtliche Fragen die größte Hürde für eine Spezifikation in offenen Standards darstellen).

### Interoperabilitätsstrategie

Die konsequente Verwendung internationaler Terminologiestandards (LOINC für Fragebogenitems, SNOMED CT für klinische Konzepte) bei gleichzeitiger Berücksichtigung deutscher Gesundheitssystem-Spezifika durch MII-Terminologien gewährleistet sowohl internationale Anschlussfähigkeit als auch nationale Praxistauglichkeit. Die Implementierung folgt durchgängig der SDC-Spezifikation für erweiterte Fragebogenfunktionalitäten und ermöglicht damit eine herstellerunabhängige, standardbasierte Umsetzung in unterschiedlichen IT-Systemen der Konsortialstandorte.

