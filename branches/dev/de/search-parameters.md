# Search Parameters - MII IG PRO v2027.0.0-ballot.rc4

* [**Table of Contents**](toc.md)
* **Search Parameters**

## Search Parameters

 Diese Seite enthält Übersetzungen aus der Originalsprache, in der der Leitfaden verfasst wurde. Informationen zu diesen Übersetzungen und Anweisungen zum Abgeben von Feedback zu den Übersetzungen finden Sie [hier](translationinfo.md). 

### Suchparameter

Diese Seite listet die modul-spezifischen FHIR-Suchparameter des Moduls **PRO** (Namenskonvention `MII_SP_<Modul>_<Name>`), sofern definiert. Modulübergreifende Suchparameter definiert das Meta-Modul.

Das Modul definiert sieben Suchparameter für **Katalogabfragen** — Instrumente und Score-Definitionen über ihre Eigenschaften finden statt über ihre id:

| | | |
| :--- | :--- | :--- |
| Questionnaire | [capabilities](SearchParameter-mii-sp-pro-questionnaire-capabilities.md) | Varianten nach Capability (z. B. alle**calculatable**Fragebögen) |
| ObservationDefinition | [code](SearchParameter-mii-sp-pro-observationdefinition-code.md) | Score-Definitionen nach Score-Code |
| ObservationDefinition | [health-correlation](SearchParameter-mii-sp-pro-observationdefinition-health-correlation.md) | Scores nach[Gesundheitsdomäne](domains.md) |
| ObservationDefinition | [unit](SearchParameter-mii-sp-pro-observationdefinition-unit.md) | Scores nach Ergebniseinheit |
| ObservationDefinition | [permitted-datatype](SearchParameter-mii-sp-pro-observationdefinition-permitted-datatype.md) | Scores nach Ergebnis-Datentyp |
| ObservationDefinition | [preferred-report-name](SearchParameter-mii-sp-pro-observationdefinition-preferred-report-name.md) | Scores nach Berichtsname |
| ObservationDefinition | [interval-category](SearchParameter-mii-sp-pro-observationdefinition-interval-category.md) | Scores nach Referenzintervall-Kategorie |

Das [CapabilityStatement](capability-statements.md) legt fest, welche davon ein konformer Server unterstützen muss.

