---
topic: Kontext-im-Gesamptprojekt
---
## {{page-title}}

### Position im MII-Kerndatensatz

Das PRO-Modul erweitert den MII-Kerndatensatz um die systematische Erfassung patientenberichteter Gesundheitsdaten und schafft damit eine essenzielle Verbindung zwischen objektiven klinischen Parametern und der subjektiven Patientenperspektive. Als Querschnittsmodul integriert es sich nahtlos in bestehende Datenstrukturen und nutzt die etablierten Identifikations- und Consent-Mechanismen der MII-Basismodule, während es gleichzeitig spezifische Anforderungen der Fachmodule durch domänenspezifische PRO-Instrumente bedient.

### Kernabhängigkeiten und Datenflüsse

Die technische Integration erfolgt primär über die FHIR-Ressourcen Questionnaire und QuestionnaireResponse für die Datenerfassung sowie Observation für die strukturierte Speicherung von Scores und Einzelitems. Die Verknüpfung mit klinischen Daten geschieht über etablierte Referenzmechanismen zu Encounter (Erhebungskontext), Condition (Diagnosebezug) und Procedure (prä-/postinterventionelle Messung), wobei die automatisierte Score-Berechnung durch SDC-Calculated-Expressions eine direkte Integration in klinische Workflows ohne manuelle Auswertungsschritte ermöglicht.

### Fachmodulspezifische Integration

In der Onkologie ermöglicht das PRO-Modul die standardisierte Erfassung der Lebensqualität mittels EORTC QLQ-C30 als primären oder sekundären Studienendpunkt, während in der Psychiatrie und Psychosomatik Instrumente wie PHQ-9 und PROMIS-Depression sowohl für das initiale Screening als auch für die Verlaufskontrolle psychotherapeutischer und pharmakologischer Interventionen eingesetzt werden. Die Kardiologie profitiert von der strukturierten Erfassung funktioneller Einschränkungen und Belastbarkeit bei chronischer Herzinsuffizienz, während die Intensivmedizin PRO-Instrumente zur Langzeitnachverfolgung von Post-Intensive-Care-Syndromen und zur systematischen Erfassung von Patient-Reported-Outcome-Measures nach kritischen Erkrankungen nutzt.

### Interoperabilitätsstrategie

Die konsequente Verwendung internationaler Terminologiestandards (LOINC für Fragebogenitems, SNOMED CT für klinische Konzepte) bei gleichzeitiger Berücksichtigung deutscher Gesundheitssystem-Spezifika durch MII-kontrollierte Terminologien gewährleistet sowohl internationale Anschlussfähigkeit als auch nationale Praxistauglichkeit. Die Implementierung folgt durchgängig der SDC-Spezifikation für erweiterte Fragebogenfunktionalitäten und ermöglicht damit eine herstellerunabhängige, standardbasierte Umsetzung in unterschiedlichen IT-Systemen der Konsortialstandorte.