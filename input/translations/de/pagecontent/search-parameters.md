<!-- markdownlint-disable MD041 -->
<!-- Deutsche Übersetzung von input/pagecontent/search-parameters.md
     (aufgeteilt aus der früheren Kombi-Seite
     search-parameters-and-operations.md). -->


### Suchparameter

Diese Seite listet die modul-spezifischen FHIR-Suchparameter des Moduls
**PRO** (Namenskonvention `MII_SP_<Modul>_<Name>`), sofern
definiert. Modulübergreifende Suchparameter definiert das Meta-Modul.

Das Modul definiert sieben Suchparameter für **Katalogabfragen** —
Instrumente und Score-Definitionen über ihre Eigenschaften finden statt
über ihre id:

| Ressource | Parameter | Findet |
|---|---|---|
| Questionnaire | [capabilities](SearchParameter-mii-sp-pro-questionnaire-capabilities.html) | Varianten nach Capability (z. B. alle *calculatable* Fragebögen) |
| ObservationDefinition | [code](SearchParameter-mii-sp-pro-observationdefinition-code.html) | Score-Definitionen nach Score-Code |
| ObservationDefinition | [health-correlation](SearchParameter-mii-sp-pro-observationdefinition-health-correlation.html) | Scores nach [Gesundheitsdomäne](domains.html) |
| ObservationDefinition | [unit](SearchParameter-mii-sp-pro-observationdefinition-unit.html) | Scores nach Ergebniseinheit |
| ObservationDefinition | [permitted-datatype](SearchParameter-mii-sp-pro-observationdefinition-permitted-datatype.html) | Scores nach Ergebnis-Datentyp |
| ObservationDefinition | [preferred-report-name](SearchParameter-mii-sp-pro-observationdefinition-preferred-report-name.html) | Scores nach Berichtsname |
| ObservationDefinition | [interval-category](SearchParameter-mii-sp-pro-observationdefinition-interval-category.html) | Scores nach Referenzintervall-Kategorie |

Das [CapabilityStatement](capability-statements.html) legt fest, welche
davon ein konformer Server unterstützen muss.
