# Extensions - MII IG PRO v2027.0.0-ballot.1

* [**Table of Contents**](toc.md)
* **Extensions**

## Extensions

 Diese Seite enthält Übersetzungen aus der Originalsprache, in der der Leitfaden verfasst wurde. Informationen zu diesen Übersetzungen und Anweisungen zum Abgeben von Feedback zu den Übersetzungen finden Sie [hier](translationinfo.md). 

### Extensions

Diese Seite listet die FHIR-Extensions, die das Modul **PRO** definiert (Namenskonvention `MII_EX_<Modul>_<Name>`). Extensions transportieren Informationen, die die Basis-Ressourcen und Profile nicht ausdrücken können; die Profile, die sie verwenden, stehen auf der Seite [Profile](profiles.md).

Das Modul definiert zwei Extensions:

* **[Questionnaire Capabilities](StructureDefinition-mii-ex-pro-questionnaire-capabilities.md)** — deklariert, welche Capability-Kombination eine Fragebogen-Variante bedient (**displayable, collectable, populatable, calculatable, extractable**). Die Architektur dahinter erklärt [Questionnaire-Capabilities](questionnaire-capabilities.md).
* **[Score Health Correlation](StructureDefinition-mii-ex-pro-score-score-health-correlation.md)** — verknüpft eine Score-Definition mit den [Gesundheitsdomänen](domains.md), die sie misst, und ermöglicht domänenweise Abfragen über Instrumentgrenzen hinweg.

