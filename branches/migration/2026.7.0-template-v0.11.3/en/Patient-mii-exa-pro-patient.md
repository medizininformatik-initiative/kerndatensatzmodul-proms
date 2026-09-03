# MII EXA PRO Patient - MII IG PRO v2026.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EXA PRO Patient**

## Example Patient: MII EXA PRO Patient

-------

**English**

-------

Max Mustermann Male, DoB: 1980-05-15 ( http://identifiers.org/patient-ids#12345)

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "mii-exa-pro-patient",
  "identifier" : [{
    "system" : "http://identifiers.org/patient-ids",
    "value" : "12345"
  }],
  "name" : [{
    "family" : "Mustermann",
    "given" : ["Max"]
  }],
  "gender" : "male",
  "birthDate" : "1980-05-15"
}

```
