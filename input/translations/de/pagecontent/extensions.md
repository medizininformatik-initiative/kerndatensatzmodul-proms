<!-- markdownlint-disable MD041 -->
<!-- Deutsche Übersetzung von input/pagecontent/extensions.md (aufgeteilt aus
     der früheren Kombi-Seite profiles-and-extensions.md). -->


### Extensions

Diese Seite listet die FHIR-Extensions, die das Modul **PRO**
definiert (Namenskonvention `MII_EX_<Modul>_<Name>`). Extensions transportieren
Informationen, die die Basis-Ressourcen und Profile nicht ausdrücken können; die
Profile, die sie verwenden, stehen auf der Seite [Profile](profiles.html).

Das Modul definiert zwei Extensions:

* **[Questionnaire Capabilities](StructureDefinition-mii-ex-pro-questionnaire-capabilities.html)**
  — deklariert, welche Capability-Kombination eine Fragebogen-Variante
  bedient (*displayable, collectable, populatable, calculatable,
  extractable*). Die Architektur dahinter erklärt
  [Questionnaire-Capabilities](questionnaire-capabilities.html).
* **[Score Health Correlation](StructureDefinition-mii-ex-pro-score-score-health-correlation.html)**
  — verknüpft eine Score-Definition mit den [Gesundheitsdomänen](domains.html),
  die sie misst, und ermöglicht domänenweise Abfragen über
  Instrumentgrenzen hinweg.
