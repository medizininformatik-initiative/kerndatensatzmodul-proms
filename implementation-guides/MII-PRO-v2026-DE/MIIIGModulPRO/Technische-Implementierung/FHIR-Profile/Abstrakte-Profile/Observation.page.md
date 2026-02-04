---
parent:
topic: Observation
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance
---

## MII_PR_PRO_Score_Instance (Abstract)

### Beschreibung

Das abstrakte Score Instance Profil definiert die Struktur für konkrete Score-Observations. Es stellt sicher, dass alle PRO-Scores konsistent dokumentiert werden, einschließlich der Rückverfolgbarkeit zur ursprünglichen QuestionnaireResponse und der zugehörigen ObservationDefinition. Instrument-spezifische Score-Profile (z.B. PHQ-9 Score, PROMIS Depression T-Score) müssen von diesem abstrakten Profil erben.

**Kernelemente:**
- Status (final, preliminary, etc.)
- Code mit Score-Typ (LOINC oder MII-Code)
- ValueQuantity mit numerischem Score
- DerivedFrom-Referenz zur QuestionnaireResponse
- Instantiates-Referenz zur ObservationDefinition (R5 Backport)

---

### Konformität

@```
from
    StructureDefinition
where
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance'
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from
            StructureDefinition
        where
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance'
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
    where type = 'Observation'
    for searchParam
    select Suchparameter: name, Definition: definition, Typ: type
```

---

### Beispiele

Konkrete Score-Observation-Instanzen, die von diesem abstrakten Profil erben:

{{json:mii-exa-pro-phq-9-observation}}
