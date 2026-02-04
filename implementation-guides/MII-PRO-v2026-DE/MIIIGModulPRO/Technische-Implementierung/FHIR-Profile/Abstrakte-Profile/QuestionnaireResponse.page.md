---
parent:
topic: QuestionnaireResponse
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response
---

## MII_PR_PRO_QuestionnaireResponse (Abstract)

### Beschreibung

Das abstrakte QuestionnaireResponse-Profil standardisiert die Struktur ausgefüllter Fragebögen. Es erbt vom [SDC QuestionnaireResponse](https://hl7.org/fhir/uv/sdc/STU3/StructureDefinition-sdc-questionnaireresponse.html) Profil und stellt sicher, dass alle PRO-Antworten konsistent erfasst und verarbeitet werden können. Konkrete Implementierungen müssen dieses Profil erweitern und instrument-spezifische Constraints hinzufügen.

**Kernelemente:**
- Referenz zum zugehörigen Questionnaire
- Verpflichtender Status (completed, in-progress, etc.)
- Strukturierte Items mit Antworten
- Authored-Zeitstempel für Verlaufsdokumentation

---

### Konformität

@```
from
    StructureDefinition
where
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response'
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from
            StructureDefinition
        where
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response'
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
    where type = 'QuestionnaireResponse'
    select Suchparameter: searchParam.name, Typ: searchParam.type
```

---

### Beispiele

Konkrete QuestionnaireResponse-Instanzen, die von diesem abstrakten Profil erben:

{{json:mii-exa-pro-phq-9-response}}
