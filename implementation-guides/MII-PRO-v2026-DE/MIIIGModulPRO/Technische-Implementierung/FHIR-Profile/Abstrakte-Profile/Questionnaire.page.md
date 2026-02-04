---
parent:
topic: Questionnaire
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire
---

## MII_PR_PRO_Questionnaire (Abstract)

### Beschreibung

Das abstrakte Questionnaire-Profil bildet die Grundlage für alle PRO-Fragebögen. Es erbt vom [SDC Questionnaire](https://hl7.org/fhir/uv/sdc/STU3/StructureDefinition-sdc-questionnaire.html) Profil und erweitert es mit MII-spezifischen Capabilities und Extensions. Konkrete Instrument-Profile (z.B. PHQ-9, EQ-5D-5L, PROMIS-29) müssen von diesem Profil erben und instrument-spezifische Constraints hinzufügen.

**Kernelemente:**
- Verpflichtende URL zur eindeutigen Identifikation
- Status und Version für Lifecycle-Management
- Capability-Extensions zur Verhaltenssteuerung (displayable, collectable, calculatable, extractable)
- SDC-Extensions für erweiterte Funktionalität (Rendering, Berechnung, Extraktion)

---

### Konformität

@```
from
    StructureDefinition
where
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire'
select
    Name: name, Status: status, Version: version, Canonical: url, Basis: baseDefinition
```

### Inhalt

<tabs>
  <tab title="Darstellung">{{tree, buttons}}</tab>
  <tab title="Beschreibung">
        @```
        from
	        StructureDefinition
        where
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from
            StructureDefinition
        where
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire'
        for
            differential.element
            where
                mustSupport = true
            select Feldname: id, Kurzbeschreibung: short, Hinweise: comment
        ```
  </tab>
  <tab title="XML">{{xml}}</tab>
  <tab title="JSON">{{json}}</tab>
  <tab title="Link">{{link}}</tab>
</tabs>

---

### Suchparameter

@```
from CapabilityStatement
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CapabilityStatement/mii-cps-pro-capabilitystatement'
    for rest.resource
    where type = 'Questionnaire'
    for searchParam
    select Suchparameter: name, Definition: definition, Typ: type
```

---

### Beispiele

Konkrete Questionnaire-Instanzen, die von diesem abstrakten Profil erben:

{{json:mii-qst-pro-phq-9}}
