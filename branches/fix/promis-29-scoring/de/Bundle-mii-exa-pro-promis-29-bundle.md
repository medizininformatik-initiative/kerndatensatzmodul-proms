# MII EXA PRO PROMIS-29 Bundle with Extracted Observations - MII IG PRO v2027.0.0-ballot.1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EXA PRO PROMIS-29 Bundle with Extracted Observations**

## Beispiel Bundle: MII EXA PRO PROMIS-29 Bundle with Extracted Observations



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "mii-exa-pro-promis-29-bundle",
  "type" : "collection",
  "timestamp" : "2025-01-30T14:35:00Z",
  "entry" : [{
    "fullUrl" : "urn:uuid:a1b2c3d4-e5f6-7890-abcd-ef1234567890",
    "resource" : {
      "resourceType" : "Patient",
      "id" : "patient-example-1",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Patient_patient-example-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Patient patient-example-1</b></p><a name=\"patient-example-1\"> </a><a name=\"hcpatient-example-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.gematik.isik@6.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient\">MII PR Person Patient</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Erika Mustermann  Female, DoB: 1985-03-15 ( http://example.org/fhir/sid/patients#12345)</p><hr/></div></div>"
      },
      "identifier" : [{
        "system" : "http://example.org/fhir/sid/patients",
        "value" : "12345"
      }],
      "name" : [{
        "family" : "Mustermann",
        "given" : ["Erika"]
      }],
      "gender" : "female",
      "birthDate" : "1985-03-15"
    }
  },
  {
    "fullUrl" : "urn:uuid:b2c3d4e5-f6a7-8901-bcde-f12345678901",
    "resource" : {
      "resourceType" : "QuestionnaireResponse",
      "id" : "promis-29-response-1",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response|2027.0.0-ballot.1"]
      },
      "language" : "en",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"QuestionnaireResponse_promis-29-response-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: QuestionnaireResponse promis-29-response-1</b></p><a name=\"promis-29-response-1\"> </a><a name=\"hcpromis-29-response-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Language: en</p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-pro-questionnaire-response.html\">MII PR PRO QuestionnaireResponse</a> version: 2027.0.0-ballot.1</p></div><table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"border: 1px #F0F0F0 solid; font-size: 11px; font-family: verdana; vertical-align: top;\"><tr style=\"border: 2px #F0F0F0 solid; font-size: 11px; font-family: verdana; vertical-align: top\"><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"The linkID for the item\">LinkID</a></th><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Text for the item\">Text</a></th><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Minimum and Maximum # of times the item can appear in the instance\">Definition</a></th><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"The type of the item\">Answer</a><span style=\"float: right\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Legend for this format\"><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC\" alt=\"doco\" style=\"background-color: inherit\"/></a></span></th></tr><tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_q_root.gif\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"QuestionnaireResponseRoot\" class=\"hierarchy\"/> promis-29-response-1</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Questionnaire:<a href=\"Questionnaire-mii-qst-pro-promis-29.html\">MII QST PRO PROMIS-29 (Adults)</a></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck11.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-group.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Group\" class=\"hierarchy\"/> PROMIS-29.PhysicalFunction</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">KÖRPERLICHE FUNKTION</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> PROMIS-29.PhysicalFunction.Description</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Sind Sie zu folgenden Tätigkeiten imstande:</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> promis-pfa11</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Are you able to do chores such as vacuuming or yard work [PROMIS]</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://loinc.org/LA13920-6\">LOINC: LA13920-6</a> (With some difficulty)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> promis-pfa21</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Are you able to go up and down stairs at a normal pace [PROMIS]</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://loinc.org/LA13920-6\">LOINC: LA13920-6</a> (With some difficulty)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> promis-pfa23</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Are you able to go for a walk of at least 15 minutes [PROMIS]</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://loinc.org/LA13918-0\">LOINC: LA13918-0</a> (With a little difficulty)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck100.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> promis-pfa53</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Are you able to run errands and shop [PROMIS]</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://loinc.org/LA13920-6\">LOINC: LA13920-6</a> (With some difficulty)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck11.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-group.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Group\" class=\"hierarchy\"/> PROMIS-29.Anxiety</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">ANGST</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> PROMIS-29.Anxiety.Description</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">In den letzten 7 Tagen:</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> promis-edanx01</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Ich fürchtete mich.</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://loinc.org/LA10066-1\">LOINC: LA10066-1</a> (Rarely)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> promis-edanx40</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Ich fand es schwer, auf etwas anderes zu achten als auf meine Angst.</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://loinc.org/LA10082-8\">LOINC: LA10082-8</a> (Sometimes)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> promis-edanx41</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Meine Sorgen haben mich überwältigt.</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://loinc.org/LA10066-1\">LOINC: LA10066-1</a> (Rarely)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck100.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> promis-edanx53</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Ich fühlte mich unruhig.</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://loinc.org/LA10066-1\">LOINC: LA10066-1</a> (Rarely)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck11.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-group.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Group\" class=\"hierarchy\"/> PROMIS-29.Depression</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">DEPRESSION</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> PROMIS-29.Depression.Description</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">In den letzten 7 Tagen:</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> promis-eddep04</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Ich fühlte mich wertlos.</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://loinc.org/LA10082-8\">LOINC: LA10082-8</a> (Sometimes)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> promis-eddep06</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Ich fühlte mich hilflos.</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://loinc.org/LA10082-8\">LOINC: LA10082-8</a> (Sometimes)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> promis-eddep29</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Ich fühlte mich niedergeschlagen.</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://loinc.org/LA10044-8\">LOINC: LA10044-8</a> (Often)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck100.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> promis-eddep41</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Ich fühlte mich hoffnungslos.</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://loinc.org/LA10082-8\">LOINC: LA10082-8</a> (Sometimes)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck11.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-group.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Group\" class=\"hierarchy\"/> PROMIS-29.Fatigue</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">ERSCHÖPFUNG</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> PROMIS-29.Fatigue.Description</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">In den letzten 7 Tagen:</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> promis-hi7</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Ich bin erschöpft.</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://loinc.org/LA13902-4\">LOINC: LA13902-4</a> (Quite a bit)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> promis-an3</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Es fällt mir schwer, etwas anzufangen, weil ich müde bin.</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://loinc.org/LA13902-4\">LOINC: LA13902-4</a> (Quite a bit)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> promis-fatexp41</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Wie ausgelaugt fühlten Sie sich im Allgemeinen?</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://loinc.org/LA13909-9\">LOINC: LA13909-9</a> (Somewhat)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck100.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> promis-fatexp40</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Wie erschöpft waren Sie im Allgemeinen?</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://loinc.org/LA13902-4\">LOINC: LA13902-4</a> (Quite a bit)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck11.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-group.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Group\" class=\"hierarchy\"/> PROMIS-29.Sleep</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">SCHLAFSTÖRUNGEN</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> PROMIS-29.Sleep.Description</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">In den letzten 7 Tagen:</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> promis-sleep109</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Meine Schlafqualität war ...</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://loinc.org/LA8968-5\">LOINC: LA8968-5</a> (Fair)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> promis-sleep116</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Mein Schlaf war erfrischend.</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://loinc.org/LA13909-9\">LOINC: LA13909-9</a> (Somewhat)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> promis-sleep20</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Ich hatte Schlafprobleme.</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://loinc.org/LA13909-9\">LOINC: LA13909-9</a> (Somewhat)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck100.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> promis-sleep44</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Ich hatte Schwierigkeiten einzuschlafen.</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://loinc.org/LA13863-8\">LOINC: LA13863-8</a> (A little bit)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck11.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-group.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Group\" class=\"hierarchy\"/> PROMIS-29.Social</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">SOZIALE TEILHABE</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> PROMIS-29.Social.Description</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">In den letzten 7 Tagen:</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> promis-srpper23-caps</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Es fällt mir schwer, meine gewohnte Arbeit zu erledigen (einschließlich der Arbeit zu Hause).</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://loinc.org/LA10082-8\">LOINC: LA10082-8</a> (Sometimes)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> promis-srpper11-caps</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Es fällt mir schwer, allen meinen regelmäßigen Freizeitaktivitäten mit anderen nachzugehen.</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://loinc.org/LA10082-8\">LOINC: LA10082-8</a> (Sometimes)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> promis-srpper18-caps</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Es fällt mir schwer, allen Aktivitäten nachzugehen, die ich mit meiner Familie machen möchte.</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://loinc.org/LA10066-1\">LOINC: LA10066-1</a> (Rarely)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck100.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> promis-srpper46-caps</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Es fällt mir schwer, allen Aktivitäten nachzugehen, die ich mit Freunden machen möchte.</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://loinc.org/LA10082-8\">LOINC: LA10082-8</a> (Sometimes)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck11.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-group.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Group\" class=\"hierarchy\"/> PROMIS-29.PainInterference</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">SCHMERZBEDINGTE BEEINTRÄCHTIGUNG</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> PROMIS-29.PainInterference.Description</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">In den letzten 7 Tagen: Inwieweit beeinträchtigten Schmerzen...</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> promis-painin9</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Wie sehr beeinträchtigten Schmerzen Ihre Alltagsaktivitäten?</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://loinc.org/LA13909-9\">LOINC: LA13909-9</a> (Somewhat)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> promis-painin22</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Wie sehr beeinträchtigten Schmerzen Ihre häuslichen Tätigkeiten?</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://loinc.org/LA13909-9\">LOINC: LA13909-9</a> (Somewhat)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> promis-painin31</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Wie sehr beeinträchtigten Schmerzen Ihre Fähigkeit, an sozialen Aktivitäten teilzunehmen?</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://loinc.org/LA13863-8\">LOINC: LA13863-8</a> (A little bit)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck100.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> promis-painin34</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Wie sehr beeinträchtigten Schmerzen Sie bei Ihrer Hausarbeit?</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://loinc.org/LA13909-9\">LOINC: LA13909-9</a> (Somewhat)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck11.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-group.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Group\" class=\"hierarchy\"/> PROMIS-29.PainIntensity</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">SCHMERZINTENSITÄT</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck100.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> promis-global07</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Wie würden Sie Ihre Schmerzen im Allgemeinen einschätzen?</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">5</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck01.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-group.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Group\" class=\"hierarchy\"/> PROMIS-29.Scores</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">BEREICHS-BEWERTUNGEN</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck010.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> promis-29-physical-function-raw</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">PROMIS-29 Körperliche Funktion - Rohwert</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">13</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck010.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> promis-29-physical-function-tscore</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">PROMIS-29 Körperliche Funktion - T-Score</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">42.6</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck010.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> promis-29-anxiety-raw</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">PROMIS-29 Angst - Rohwert</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">9</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck010.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> promis-29-anxiety-tscore</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">PROMIS-29 Angst - T-Score</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">56.8</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck010.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> promis-29-depression-raw</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">PROMIS-29 Depression - Rohwert</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">13</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck010.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> promis-29-depression-tscore</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">PROMIS-29 Depression - T-Score</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">63.9</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck010.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> promis-29-fatigue-raw</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">PROMIS-29 Erschöpfung - Rohwert</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">15</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck010.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> promis-29-fatigue-tscore</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">PROMIS-29 Erschöpfung - T-Score</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">64.9</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck010.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> promis-29-sleep-raw</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">PROMIS-29 Schlafstörungen - Rohwert</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">11</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck010.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> promis-29-sleep-tscore</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">PROMIS-29 Schlafstörungen - T-Score</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">53.6</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck010.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> promis-29-social-raw</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">PROMIS-29 Soziale Teilhabe - Rohwert</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">11</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck010.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> promis-29-social-tscore</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">PROMIS-29 Soziale Teilhabe - T-Score</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">39.7</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck010.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> promis-29-pain-interference-raw</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">PROMIS-29 Schmerzbedingte Beeinträchtigung - Rohwert</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">11</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck000.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> promis-29-pain-interference-tscore</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">PROMIS-29 Schmerzbedingte Beeinträchtigung - T-Score</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">60.9</td></tr>\r\n<tr><td colspan=\"4\" class=\"hierarchy\"><br/><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Legend for this format\"><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC\" alt=\"doco\" style=\"background-color: inherit\"/> Documentation for this format</a></td></tr></table></div></div>"
      },
      "questionnaire" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29|2027.0.0-ballot.1",
      "status" : "completed",
      "subject" : {
        "reference" : "Patient/patient-example-1"
      },
      "authored" : "2025-01-30T14:30:00Z",
      "item" : [{
        "linkId" : "PROMIS-29.PhysicalFunction",
        "text" : "KÖRPERLICHE FUNKTION",
        "_text" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "KÖRPERLICHE FUNKTION"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "item" : [{
          "linkId" : "PROMIS-29.PhysicalFunction.Description",
          "text" : "Sind Sie zu folgenden Tätigkeiten imstande:",
          "_text" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "Sind Sie zu folgenden Tätigkeiten imstande:"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          }
        },
        {
          "linkId" : "promis-pfa11",
          "text" : "Are you able to do chores such as vacuuming or yard work [PROMIS]",
          "_text" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "Können Sie Hausarbeiten erledigen, z.B. Staubsaugen oder Gartenarbeit?"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "answer" : [{
            "valueCoding" : {
              "system" : "http://loinc.org",
              "code" : "LA13920-6",
              "display" : "With some difficulty",
              "_display" : {
                "extension" : [{
                  "extension" : [{
                    "url" : "lang",
                    "valueCode" : "de"
                  },
                  {
                    "url" : "content",
                    "valueString" : "Mit einigen Schwierigkeiten"
                  }],
                  "url" : "http://hl7.org/fhir/StructureDefinition/translation"
                }]
              }
            }
          }]
        },
        {
          "linkId" : "promis-pfa21",
          "text" : "Are you able to go up and down stairs at a normal pace [PROMIS]",
          "_text" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "Können Sie mit normaler Geschwindigkeit Treppen hoch- und runtergehen?"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "answer" : [{
            "valueCoding" : {
              "system" : "http://loinc.org",
              "code" : "LA13920-6",
              "display" : "With some difficulty",
              "_display" : {
                "extension" : [{
                  "extension" : [{
                    "url" : "lang",
                    "valueCode" : "de"
                  },
                  {
                    "url" : "content",
                    "valueString" : "Mit einigen Schwierigkeiten"
                  }],
                  "url" : "http://hl7.org/fhir/StructureDefinition/translation"
                }]
              }
            }
          }]
        },
        {
          "linkId" : "promis-pfa23",
          "text" : "Are you able to go for a walk of at least 15 minutes [PROMIS]",
          "_text" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "Können Sie mindestens 15 Minuten lang spazieren gehen?"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "answer" : [{
            "valueCoding" : {
              "system" : "http://loinc.org",
              "code" : "LA13918-0",
              "display" : "With a little difficulty",
              "_display" : {
                "extension" : [{
                  "extension" : [{
                    "url" : "lang",
                    "valueCode" : "de"
                  },
                  {
                    "url" : "content",
                    "valueString" : "Mit geringen Schwierigkeiten"
                  }],
                  "url" : "http://hl7.org/fhir/StructureDefinition/translation"
                }]
              }
            }
          }]
        },
        {
          "linkId" : "promis-pfa53",
          "text" : "Are you able to run errands and shop [PROMIS]",
          "_text" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "Können Sie Besorgungen machen und einkaufen gehen?"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "answer" : [{
            "valueCoding" : {
              "system" : "http://loinc.org",
              "code" : "LA13920-6",
              "display" : "With some difficulty",
              "_display" : {
                "extension" : [{
                  "extension" : [{
                    "url" : "lang",
                    "valueCode" : "de"
                  },
                  {
                    "url" : "content",
                    "valueString" : "Mit einigen Schwierigkeiten"
                  }],
                  "url" : "http://hl7.org/fhir/StructureDefinition/translation"
                }]
              }
            }
          }]
        }]
      },
      {
        "linkId" : "PROMIS-29.Anxiety",
        "text" : "ANGST",
        "_text" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "ANGST"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "item" : [{
          "linkId" : "PROMIS-29.Anxiety.Description",
          "text" : "In den letzten 7 Tagen:",
          "_text" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "In den letzten 7 Tagen:"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          }
        },
        {
          "linkId" : "promis-edanx01",
          "text" : "Ich fürchtete mich.",
          "_text" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "Ich fürchtete mich."
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "answer" : [{
            "valueCoding" : {
              "system" : "http://loinc.org",
              "code" : "LA10066-1",
              "display" : "Rarely",
              "_display" : {
                "extension" : [{
                  "extension" : [{
                    "url" : "lang",
                    "valueCode" : "de"
                  },
                  {
                    "url" : "content",
                    "valueString" : "Selten"
                  }],
                  "url" : "http://hl7.org/fhir/StructureDefinition/translation"
                }]
              }
            }
          }]
        },
        {
          "linkId" : "promis-edanx40",
          "text" : "Ich fand es schwer, auf etwas anderes zu achten als auf meine Angst.",
          "_text" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "Ich fand es schwer, auf etwas anderes zu achten als auf meine Angst."
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "answer" : [{
            "valueCoding" : {
              "system" : "http://loinc.org",
              "code" : "LA10082-8",
              "display" : "Sometimes",
              "_display" : {
                "extension" : [{
                  "extension" : [{
                    "url" : "lang",
                    "valueCode" : "de"
                  },
                  {
                    "url" : "content",
                    "valueString" : "Manchmal"
                  }],
                  "url" : "http://hl7.org/fhir/StructureDefinition/translation"
                }]
              }
            }
          }]
        },
        {
          "linkId" : "promis-edanx41",
          "text" : "Meine Sorgen haben mich überwältigt.",
          "_text" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "Meine Sorgen haben mich überwältigt."
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "answer" : [{
            "valueCoding" : {
              "system" : "http://loinc.org",
              "code" : "LA10066-1",
              "display" : "Rarely",
              "_display" : {
                "extension" : [{
                  "extension" : [{
                    "url" : "lang",
                    "valueCode" : "de"
                  },
                  {
                    "url" : "content",
                    "valueString" : "Selten"
                  }],
                  "url" : "http://hl7.org/fhir/StructureDefinition/translation"
                }]
              }
            }
          }]
        },
        {
          "linkId" : "promis-edanx53",
          "text" : "Ich fühlte mich unruhig.",
          "_text" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "Ich fühlte mich unruhig."
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "answer" : [{
            "valueCoding" : {
              "system" : "http://loinc.org",
              "code" : "LA10066-1",
              "display" : "Rarely",
              "_display" : {
                "extension" : [{
                  "extension" : [{
                    "url" : "lang",
                    "valueCode" : "de"
                  },
                  {
                    "url" : "content",
                    "valueString" : "Selten"
                  }],
                  "url" : "http://hl7.org/fhir/StructureDefinition/translation"
                }]
              }
            }
          }]
        }]
      },
      {
        "linkId" : "PROMIS-29.Depression",
        "text" : "DEPRESSION",
        "_text" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "DEPRESSION"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "item" : [{
          "linkId" : "PROMIS-29.Depression.Description",
          "text" : "In den letzten 7 Tagen:",
          "_text" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "In den letzten 7 Tagen:"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          }
        },
        {
          "linkId" : "promis-eddep04",
          "text" : "Ich fühlte mich wertlos.",
          "_text" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "Ich fühlte mich wertlos."
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "answer" : [{
            "valueCoding" : {
              "system" : "http://loinc.org",
              "code" : "LA10082-8",
              "display" : "Sometimes",
              "_display" : {
                "extension" : [{
                  "extension" : [{
                    "url" : "lang",
                    "valueCode" : "de"
                  },
                  {
                    "url" : "content",
                    "valueString" : "Manchmal"
                  }],
                  "url" : "http://hl7.org/fhir/StructureDefinition/translation"
                }]
              }
            }
          }]
        },
        {
          "linkId" : "promis-eddep06",
          "text" : "Ich fühlte mich hilflos.",
          "_text" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "Ich fühlte mich hilflos."
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "answer" : [{
            "valueCoding" : {
              "system" : "http://loinc.org",
              "code" : "LA10082-8",
              "display" : "Sometimes",
              "_display" : {
                "extension" : [{
                  "extension" : [{
                    "url" : "lang",
                    "valueCode" : "de"
                  },
                  {
                    "url" : "content",
                    "valueString" : "Manchmal"
                  }],
                  "url" : "http://hl7.org/fhir/StructureDefinition/translation"
                }]
              }
            }
          }]
        },
        {
          "linkId" : "promis-eddep29",
          "text" : "Ich fühlte mich niedergeschlagen.",
          "_text" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "Ich fühlte mich niedergeschlagen."
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "answer" : [{
            "valueCoding" : {
              "system" : "http://loinc.org",
              "code" : "LA10044-8",
              "display" : "Often",
              "_display" : {
                "extension" : [{
                  "extension" : [{
                    "url" : "lang",
                    "valueCode" : "de"
                  },
                  {
                    "url" : "content",
                    "valueString" : "Oft"
                  }],
                  "url" : "http://hl7.org/fhir/StructureDefinition/translation"
                }]
              }
            }
          }]
        },
        {
          "linkId" : "promis-eddep41",
          "text" : "Ich fühlte mich hoffnungslos.",
          "_text" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "Ich fühlte mich hoffnungslos."
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "answer" : [{
            "valueCoding" : {
              "system" : "http://loinc.org",
              "code" : "LA10082-8",
              "display" : "Sometimes",
              "_display" : {
                "extension" : [{
                  "extension" : [{
                    "url" : "lang",
                    "valueCode" : "de"
                  },
                  {
                    "url" : "content",
                    "valueString" : "Manchmal"
                  }],
                  "url" : "http://hl7.org/fhir/StructureDefinition/translation"
                }]
              }
            }
          }]
        }]
      },
      {
        "linkId" : "PROMIS-29.Fatigue",
        "text" : "ERSCHÖPFUNG",
        "_text" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "ERSCHÖPFUNG"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "item" : [{
          "linkId" : "PROMIS-29.Fatigue.Description",
          "text" : "In den letzten 7 Tagen:",
          "_text" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "In den letzten 7 Tagen:"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          }
        },
        {
          "linkId" : "promis-hi7",
          "text" : "Ich bin erschöpft.",
          "_text" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "Ich bin erschöpft."
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "answer" : [{
            "valueCoding" : {
              "system" : "http://loinc.org",
              "code" : "LA13902-4",
              "display" : "Quite a bit",
              "_display" : {
                "extension" : [{
                  "extension" : [{
                    "url" : "lang",
                    "valueCode" : "de"
                  },
                  {
                    "url" : "content",
                    "valueString" : "Ziemlich"
                  }],
                  "url" : "http://hl7.org/fhir/StructureDefinition/translation"
                }]
              }
            }
          }]
        },
        {
          "linkId" : "promis-an3",
          "text" : "Es fällt mir schwer, etwas anzufangen, weil ich müde bin.",
          "_text" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "Es fällt mir schwer, etwas anzufangen, weil ich müde bin."
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "answer" : [{
            "valueCoding" : {
              "system" : "http://loinc.org",
              "code" : "LA13902-4",
              "display" : "Quite a bit",
              "_display" : {
                "extension" : [{
                  "extension" : [{
                    "url" : "lang",
                    "valueCode" : "de"
                  },
                  {
                    "url" : "content",
                    "valueString" : "Ziemlich"
                  }],
                  "url" : "http://hl7.org/fhir/StructureDefinition/translation"
                }]
              }
            }
          }]
        },
        {
          "linkId" : "promis-fatexp41",
          "text" : "Wie ausgelaugt fühlten Sie sich im Allgemeinen?",
          "_text" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "Wie ausgelaugt fühlten Sie sich im Allgemeinen?"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "answer" : [{
            "valueCoding" : {
              "system" : "http://loinc.org",
              "code" : "LA13909-9",
              "display" : "Somewhat",
              "_display" : {
                "extension" : [{
                  "extension" : [{
                    "url" : "lang",
                    "valueCode" : "de"
                  },
                  {
                    "url" : "content",
                    "valueString" : "Mäßig"
                  }],
                  "url" : "http://hl7.org/fhir/StructureDefinition/translation"
                }]
              }
            }
          }]
        },
        {
          "linkId" : "promis-fatexp40",
          "text" : "Wie erschöpft waren Sie im Allgemeinen?",
          "_text" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "Wie erschöpft waren Sie im Allgemeinen?"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "answer" : [{
            "valueCoding" : {
              "system" : "http://loinc.org",
              "code" : "LA13902-4",
              "display" : "Quite a bit",
              "_display" : {
                "extension" : [{
                  "extension" : [{
                    "url" : "lang",
                    "valueCode" : "de"
                  },
                  {
                    "url" : "content",
                    "valueString" : "Ziemlich"
                  }],
                  "url" : "http://hl7.org/fhir/StructureDefinition/translation"
                }]
              }
            }
          }]
        }]
      },
      {
        "linkId" : "PROMIS-29.Sleep",
        "text" : "SCHLAFSTÖRUNGEN",
        "_text" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "SCHLAFSTÖRUNGEN"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "item" : [{
          "linkId" : "PROMIS-29.Sleep.Description",
          "text" : "In den letzten 7 Tagen:",
          "_text" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "In den letzten 7 Tagen:"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          }
        },
        {
          "linkId" : "promis-sleep109",
          "text" : "Meine Schlafqualität war ...",
          "_text" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "Meine Schlafqualität war ..."
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "answer" : [{
            "valueCoding" : {
              "system" : "http://loinc.org",
              "code" : "LA8968-5",
              "display" : "Fair",
              "_display" : {
                "extension" : [{
                  "extension" : [{
                    "url" : "lang",
                    "valueCode" : "de"
                  },
                  {
                    "url" : "content",
                    "valueString" : "Mäßig"
                  }],
                  "url" : "http://hl7.org/fhir/StructureDefinition/translation"
                }]
              }
            }
          }]
        },
        {
          "linkId" : "promis-sleep116",
          "text" : "Mein Schlaf war erfrischend.",
          "_text" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "Mein Schlaf war erfrischend."
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "answer" : [{
            "valueCoding" : {
              "system" : "http://loinc.org",
              "code" : "LA13909-9",
              "display" : "Somewhat",
              "_display" : {
                "extension" : [{
                  "extension" : [{
                    "url" : "lang",
                    "valueCode" : "de"
                  },
                  {
                    "url" : "content",
                    "valueString" : "Mäßig"
                  }],
                  "url" : "http://hl7.org/fhir/StructureDefinition/translation"
                }]
              }
            }
          }]
        },
        {
          "linkId" : "promis-sleep20",
          "text" : "Ich hatte Schlafprobleme.",
          "_text" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "Ich hatte Schlafprobleme."
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "answer" : [{
            "valueCoding" : {
              "system" : "http://loinc.org",
              "code" : "LA13909-9",
              "display" : "Somewhat",
              "_display" : {
                "extension" : [{
                  "extension" : [{
                    "url" : "lang",
                    "valueCode" : "de"
                  },
                  {
                    "url" : "content",
                    "valueString" : "Mäßig"
                  }],
                  "url" : "http://hl7.org/fhir/StructureDefinition/translation"
                }]
              }
            }
          }]
        },
        {
          "linkId" : "promis-sleep44",
          "text" : "Ich hatte Schwierigkeiten einzuschlafen.",
          "_text" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "Ich hatte Schwierigkeiten einzuschlafen."
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "answer" : [{
            "valueCoding" : {
              "system" : "http://loinc.org",
              "code" : "LA13863-8",
              "display" : "A little bit",
              "_display" : {
                "extension" : [{
                  "extension" : [{
                    "url" : "lang",
                    "valueCode" : "de"
                  },
                  {
                    "url" : "content",
                    "valueString" : "Ein wenig"
                  }],
                  "url" : "http://hl7.org/fhir/StructureDefinition/translation"
                }]
              }
            }
          }]
        }]
      },
      {
        "linkId" : "PROMIS-29.Social",
        "text" : "SOZIALE TEILHABE",
        "_text" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "SOZIALE TEILHABE"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "item" : [{
          "linkId" : "PROMIS-29.Social.Description",
          "text" : "In den letzten 7 Tagen:",
          "_text" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "In den letzten 7 Tagen:"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          }
        },
        {
          "linkId" : "promis-srpper23-caps",
          "text" : "Es fällt mir schwer, meine gewohnte Arbeit zu erledigen (einschließlich der Arbeit zu Hause).",
          "_text" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "Es fällt mir schwer, meine gewohnte Arbeit zu erledigen (einschließlich der Arbeit zu Hause)."
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "answer" : [{
            "valueCoding" : {
              "system" : "http://loinc.org",
              "code" : "LA10082-8",
              "display" : "Sometimes",
              "_display" : {
                "extension" : [{
                  "extension" : [{
                    "url" : "lang",
                    "valueCode" : "de"
                  },
                  {
                    "url" : "content",
                    "valueString" : "Manchmal"
                  }],
                  "url" : "http://hl7.org/fhir/StructureDefinition/translation"
                }]
              }
            }
          }]
        },
        {
          "linkId" : "promis-srpper11-caps",
          "text" : "Es fällt mir schwer, allen meinen regelmäßigen Freizeitaktivitäten mit anderen nachzugehen.",
          "_text" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "Es fällt mir schwer, allen meinen regelmäßigen Freizeitaktivitäten mit anderen nachzugehen."
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "answer" : [{
            "valueCoding" : {
              "system" : "http://loinc.org",
              "code" : "LA10082-8",
              "display" : "Sometimes",
              "_display" : {
                "extension" : [{
                  "extension" : [{
                    "url" : "lang",
                    "valueCode" : "de"
                  },
                  {
                    "url" : "content",
                    "valueString" : "Manchmal"
                  }],
                  "url" : "http://hl7.org/fhir/StructureDefinition/translation"
                }]
              }
            }
          }]
        },
        {
          "linkId" : "promis-srpper18-caps",
          "text" : "Es fällt mir schwer, allen Aktivitäten nachzugehen, die ich mit meiner Familie machen möchte.",
          "_text" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "Es fällt mir schwer, allen Aktivitäten nachzugehen, die ich mit meiner Familie machen möchte."
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "answer" : [{
            "valueCoding" : {
              "system" : "http://loinc.org",
              "code" : "LA10066-1",
              "display" : "Rarely",
              "_display" : {
                "extension" : [{
                  "extension" : [{
                    "url" : "lang",
                    "valueCode" : "de"
                  },
                  {
                    "url" : "content",
                    "valueString" : "Selten"
                  }],
                  "url" : "http://hl7.org/fhir/StructureDefinition/translation"
                }]
              }
            }
          }]
        },
        {
          "linkId" : "promis-srpper46-caps",
          "text" : "Es fällt mir schwer, allen Aktivitäten nachzugehen, die ich mit Freunden machen möchte.",
          "_text" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "Es fällt mir schwer, allen Aktivitäten nachzugehen, die ich mit Freunden machen möchte."
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "answer" : [{
            "valueCoding" : {
              "system" : "http://loinc.org",
              "code" : "LA10082-8",
              "display" : "Sometimes",
              "_display" : {
                "extension" : [{
                  "extension" : [{
                    "url" : "lang",
                    "valueCode" : "de"
                  },
                  {
                    "url" : "content",
                    "valueString" : "Manchmal"
                  }],
                  "url" : "http://hl7.org/fhir/StructureDefinition/translation"
                }]
              }
            }
          }]
        }]
      },
      {
        "linkId" : "PROMIS-29.PainInterference",
        "text" : "SCHMERZBEDINGTE BEEINTRÄCHTIGUNG",
        "_text" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "SCHMERZBEDINGTE BEEINTRÄCHTIGUNG"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "item" : [{
          "linkId" : "PROMIS-29.PainInterference.Description",
          "text" : "In den letzten 7 Tagen: Inwieweit beeinträchtigten Schmerzen...",
          "_text" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "In den letzten 7 Tagen: Inwieweit beeinträchtigten Schmerzen..."
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          }
        },
        {
          "linkId" : "promis-painin9",
          "text" : "Wie sehr beeinträchtigten Schmerzen Ihre Alltagsaktivitäten?",
          "_text" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "Wie sehr beeinträchtigten Schmerzen Ihre Alltagsaktivitäten?"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "answer" : [{
            "valueCoding" : {
              "system" : "http://loinc.org",
              "code" : "LA13909-9",
              "display" : "Somewhat",
              "_display" : {
                "extension" : [{
                  "extension" : [{
                    "url" : "lang",
                    "valueCode" : "de"
                  },
                  {
                    "url" : "content",
                    "valueString" : "Mäßig"
                  }],
                  "url" : "http://hl7.org/fhir/StructureDefinition/translation"
                }]
              }
            }
          }]
        },
        {
          "linkId" : "promis-painin22",
          "text" : "Wie sehr beeinträchtigten Schmerzen Ihre häuslichen Tätigkeiten?",
          "_text" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "Wie sehr beeinträchtigten Schmerzen Ihre häuslichen Tätigkeiten?"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "answer" : [{
            "valueCoding" : {
              "system" : "http://loinc.org",
              "code" : "LA13909-9",
              "display" : "Somewhat",
              "_display" : {
                "extension" : [{
                  "extension" : [{
                    "url" : "lang",
                    "valueCode" : "de"
                  },
                  {
                    "url" : "content",
                    "valueString" : "Mäßig"
                  }],
                  "url" : "http://hl7.org/fhir/StructureDefinition/translation"
                }]
              }
            }
          }]
        },
        {
          "linkId" : "promis-painin31",
          "text" : "Wie sehr beeinträchtigten Schmerzen Ihre Fähigkeit, an sozialen Aktivitäten teilzunehmen?",
          "_text" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "Wie sehr beeinträchtigten Schmerzen Ihre Fähigkeit, an sozialen Aktivitäten teilzunehmen?"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "answer" : [{
            "valueCoding" : {
              "system" : "http://loinc.org",
              "code" : "LA13863-8",
              "display" : "A little bit",
              "_display" : {
                "extension" : [{
                  "extension" : [{
                    "url" : "lang",
                    "valueCode" : "de"
                  },
                  {
                    "url" : "content",
                    "valueString" : "Ein wenig"
                  }],
                  "url" : "http://hl7.org/fhir/StructureDefinition/translation"
                }]
              }
            }
          }]
        },
        {
          "linkId" : "promis-painin34",
          "text" : "Wie sehr beeinträchtigten Schmerzen Sie bei Ihrer Hausarbeit?",
          "_text" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "Wie sehr beeinträchtigten Schmerzen Sie bei Ihrer Hausarbeit?"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "answer" : [{
            "valueCoding" : {
              "system" : "http://loinc.org",
              "code" : "LA13909-9",
              "display" : "Somewhat",
              "_display" : {
                "extension" : [{
                  "extension" : [{
                    "url" : "lang",
                    "valueCode" : "de"
                  },
                  {
                    "url" : "content",
                    "valueString" : "Mäßig"
                  }],
                  "url" : "http://hl7.org/fhir/StructureDefinition/translation"
                }]
              }
            }
          }]
        }]
      },
      {
        "linkId" : "PROMIS-29.PainIntensity",
        "text" : "SCHMERZINTENSITÄT",
        "_text" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "SCHMERZINTENSITÄT"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "item" : [{
          "linkId" : "promis-global07",
          "text" : "Wie würden Sie Ihre Schmerzen im Allgemeinen einschätzen?",
          "_text" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "Wie würden Sie Ihre Schmerzen im Allgemeinen einschätzen?"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "answer" : [{
            "valueInteger" : 5
          }]
        }]
      },
      {
        "linkId" : "PROMIS-29.Scores",
        "text" : "BEREICHS-BEWERTUNGEN",
        "_text" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "BEREICHS-BEWERTUNGEN"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "item" : [{
          "linkId" : "promis-29-physical-function-raw",
          "text" : "PROMIS-29 Körperliche Funktion - Rohwert",
          "_text" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "PROMIS-29 Körperliche Funktion - Rohwert"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "answer" : [{
            "valueDecimal" : 13
          }]
        },
        {
          "linkId" : "promis-29-physical-function-tscore",
          "text" : "PROMIS-29 Körperliche Funktion - T-Score",
          "_text" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "PROMIS-29 Körperliche Funktion - T-Score"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "answer" : [{
            "valueDecimal" : 42.6
          }]
        },
        {
          "linkId" : "promis-29-anxiety-raw",
          "text" : "PROMIS-29 Angst - Rohwert",
          "_text" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "PROMIS-29 Angst - Rohwert"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "answer" : [{
            "valueDecimal" : 9
          }]
        },
        {
          "linkId" : "promis-29-anxiety-tscore",
          "text" : "PROMIS-29 Angst - T-Score",
          "_text" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "PROMIS-29 Angst - T-Score"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "answer" : [{
            "valueDecimal" : 56.8
          }]
        },
        {
          "linkId" : "promis-29-depression-raw",
          "text" : "PROMIS-29 Depression - Rohwert",
          "_text" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "PROMIS-29 Depression - Rohwert"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "answer" : [{
            "valueDecimal" : 13
          }]
        },
        {
          "linkId" : "promis-29-depression-tscore",
          "text" : "PROMIS-29 Depression - T-Score",
          "_text" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "PROMIS-29 Depression - T-Score"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "answer" : [{
            "valueDecimal" : 63.9
          }]
        },
        {
          "linkId" : "promis-29-fatigue-raw",
          "text" : "PROMIS-29 Erschöpfung - Rohwert",
          "_text" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "PROMIS-29 Erschöpfung - Rohwert"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "answer" : [{
            "valueDecimal" : 15
          }]
        },
        {
          "linkId" : "promis-29-fatigue-tscore",
          "text" : "PROMIS-29 Erschöpfung - T-Score",
          "_text" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "PROMIS-29 Erschöpfung - T-Score"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "answer" : [{
            "valueDecimal" : 64.9
          }]
        },
        {
          "linkId" : "promis-29-sleep-raw",
          "text" : "PROMIS-29 Schlafstörungen - Rohwert",
          "_text" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "PROMIS-29 Schlafstörungen - Rohwert"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "answer" : [{
            "valueDecimal" : 11
          }]
        },
        {
          "linkId" : "promis-29-sleep-tscore",
          "text" : "PROMIS-29 Schlafstörungen - T-Score",
          "_text" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "PROMIS-29 Schlafstörungen - T-Score"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "answer" : [{
            "valueDecimal" : 53.6
          }]
        },
        {
          "linkId" : "promis-29-social-raw",
          "text" : "PROMIS-29 Soziale Teilhabe - Rohwert",
          "_text" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "PROMIS-29 Soziale Teilhabe - Rohwert"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "answer" : [{
            "valueDecimal" : 11
          }]
        },
        {
          "linkId" : "promis-29-social-tscore",
          "text" : "PROMIS-29 Soziale Teilhabe - T-Score",
          "_text" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "PROMIS-29 Soziale Teilhabe - T-Score"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "answer" : [{
            "valueDecimal" : 39.7
          }]
        },
        {
          "linkId" : "promis-29-pain-interference-raw",
          "text" : "PROMIS-29 Schmerzbedingte Beeinträchtigung - Rohwert",
          "_text" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "PROMIS-29 Schmerzbedingte Beeinträchtigung - Rohwert"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "answer" : [{
            "valueDecimal" : 11
          }]
        },
        {
          "linkId" : "promis-29-pain-interference-tscore",
          "text" : "PROMIS-29 Schmerzbedingte Beeinträchtigung - T-Score",
          "_text" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "PROMIS-29 Schmerzbedingte Beeinträchtigung - T-Score"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "answer" : [{
            "valueDecimal" : 60.9
          }]
        }]
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:c3d4e5f6-a7b8-9012-cdef-123456789012",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "obs-promis-29-physical-function-tscore",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-promis-29-physical-function-tscore|2027.0.0-ballot.1"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Observation_obs-promis-29-physical-function-tscore\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation obs-promis-29-physical-function-tscore</b></p><a name=\"obs-promis-29-physical-function-tscore\"> </a><a name=\"hcobs-promis-29-physical-function-tscore\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-pro-promis-29-physical-function-tscore.html\">MII PR PRO PROMIS-29 Physical Function T-Score</a> version: 2027.0.0-ballot.1</p></div><p><b>Instantiates Canonical</b>: <a href=\"https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-29-physical-function-tscore\">https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-29-physical-function-tscore</a></p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 91721-1}\">PROMIS physical function - version 2.0 T-score</span></p><p><b>subject</b>: <a href=\"Bundle-mii-exa-pro-promis-29-bundle.html#Patient_patient-example-1\">Erika Mustermann  Female, DoB: 1985-03-15 ( http://example.org/fhir/sid/patients#12345)</a></p><p><b>effective</b>: 2025-01-30 14:30:00+0000</p><p><b>value</b>: 42.6 {score}<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code{score} = '{score}')</span></p><p><b>method</b>: <span title=\"Codes:\">PROMIS-29 Profile v2.1</span></p><p><b>derivedFrom</b>: <a href=\"Bundle-mii-exa-pro-promis-29-bundle.html#QuestionnaireResponse_promis-29-response-1\">Response to Questionnaire '-&gt;MII QST PRO PROMIS-29 (Adults)' about '-&gt;Erika Mustermann  Female, DoB: 1985-03-15 ( http://example.org/fhir/sid/patients#12345)'</a></p></div></div>"
      },
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical",
        "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-29-physical-function-tscore"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "91721-1",
          "display" : "PROMIS physical function - version 2.0 T-score"
        }]
      },
      "subject" : {
        "reference" : "Patient/patient-example-1"
      },
      "effectiveDateTime" : "2025-01-30T14:30:00Z",
      "valueQuantity" : {
        "value" : 42.6,
        "unit" : "{score}",
        "system" : "http://unitsofmeasure.org",
        "code" : "{score}"
      },
      "method" : {
        "text" : "PROMIS-29 Profile v2.1"
      },
      "derivedFrom" : [{
        "reference" : "QuestionnaireResponse/promis-29-response-1"
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:d4e5f6a7-b8c9-0123-defa-234567890123",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "obs-promis-29-anxiety-tscore",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-promis-29-anxiety-tscore|2027.0.0-ballot.1"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Observation_obs-promis-29-anxiety-tscore\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation obs-promis-29-anxiety-tscore</b></p><a name=\"obs-promis-29-anxiety-tscore\"> </a><a name=\"hcobs-promis-29-anxiety-tscore\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-pro-promis-29-anxiety-tscore.html\">MII PR PRO PROMIS-29 Anxiety T-Score</a> version: 2027.0.0-ballot.1</p></div><p><b>Instantiates Canonical</b>: <a href=\"https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-29-anxiety-tscore\">https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-29-anxiety-tscore</a></p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 71967-4}\">PROMIS-29 Anxiety score T-score</span></p><p><b>subject</b>: <a href=\"Bundle-mii-exa-pro-promis-29-bundle.html#Patient_patient-example-1\">Erika Mustermann  Female, DoB: 1985-03-15 ( http://example.org/fhir/sid/patients#12345)</a></p><p><b>effective</b>: 2025-01-30 14:30:00+0000</p><p><b>value</b>: 56.8 {score}<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code{score} = '{score}')</span></p><p><b>method</b>: <span title=\"Codes:\">PROMIS-29 Profile v2.1</span></p><p><b>derivedFrom</b>: <a href=\"Bundle-mii-exa-pro-promis-29-bundle.html#QuestionnaireResponse_promis-29-response-1\">Response to Questionnaire '-&gt;MII QST PRO PROMIS-29 (Adults)' about '-&gt;Erika Mustermann  Female, DoB: 1985-03-15 ( http://example.org/fhir/sid/patients#12345)'</a></p></div></div>"
      },
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical",
        "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-29-anxiety-tscore"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "71967-4",
          "display" : "PROMIS-29 Anxiety score T-score"
        }]
      },
      "subject" : {
        "reference" : "Patient/patient-example-1"
      },
      "effectiveDateTime" : "2025-01-30T14:30:00Z",
      "valueQuantity" : {
        "value" : 56.8,
        "unit" : "{score}",
        "system" : "http://unitsofmeasure.org",
        "code" : "{score}"
      },
      "method" : {
        "text" : "PROMIS-29 Profile v2.1"
      },
      "derivedFrom" : [{
        "reference" : "QuestionnaireResponse/promis-29-response-1"
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:e5f6a7b8-c9d0-1234-efab-345678901234",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "obs-promis-29-depression-tscore",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-promis-29-depression-tscore|2027.0.0-ballot.1"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Observation_obs-promis-29-depression-tscore\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation obs-promis-29-depression-tscore</b></p><a name=\"obs-promis-29-depression-tscore\"> </a><a name=\"hcobs-promis-29-depression-tscore\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-pro-promis-29-depression-tscore.html\">MII PR PRO PROMIS-29 Depression T-Score</a> version: 2027.0.0-ballot.1</p></div><p><b>Instantiates Canonical</b>: <a href=\"https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-29-depression-tscore\">https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-29-depression-tscore</a></p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 77861-3}\">PROMIS emotional distress - depression - version 1.0 Tscore</span></p><p><b>subject</b>: <a href=\"Bundle-mii-exa-pro-promis-29-bundle.html#Patient_patient-example-1\">Erika Mustermann  Female, DoB: 1985-03-15 ( http://example.org/fhir/sid/patients#12345)</a></p><p><b>effective</b>: 2025-01-30 14:30:00+0000</p><p><b>value</b>: 63.9 {score}<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code{score} = '{score}')</span></p><p><b>method</b>: <span title=\"Codes:\">PROMIS-29 Profile v2.1</span></p><p><b>derivedFrom</b>: <a href=\"Bundle-mii-exa-pro-promis-29-bundle.html#QuestionnaireResponse_promis-29-response-1\">Response to Questionnaire '-&gt;MII QST PRO PROMIS-29 (Adults)' about '-&gt;Erika Mustermann  Female, DoB: 1985-03-15 ( http://example.org/fhir/sid/patients#12345)'</a></p></div></div>"
      },
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical",
        "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-29-depression-tscore"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "77861-3",
          "display" : "PROMIS emotional distress - depression - version 1.0 Tscore"
        }]
      },
      "subject" : {
        "reference" : "Patient/patient-example-1"
      },
      "effectiveDateTime" : "2025-01-30T14:30:00Z",
      "valueQuantity" : {
        "value" : 63.9,
        "unit" : "{score}",
        "system" : "http://unitsofmeasure.org",
        "code" : "{score}"
      },
      "method" : {
        "text" : "PROMIS-29 Profile v2.1"
      },
      "derivedFrom" : [{
        "reference" : "QuestionnaireResponse/promis-29-response-1"
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:f6a7b8c9-d0e1-2345-fabc-456789012345",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "obs-promis-29-fatigue-tscore",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-promis-29-fatigue-tscore|2027.0.0-ballot.1"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Observation_obs-promis-29-fatigue-tscore\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation obs-promis-29-fatigue-tscore</b></p><a name=\"obs-promis-29-fatigue-tscore\"> </a><a name=\"hcobs-promis-29-fatigue-tscore\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-pro-promis-29-fatigue-tscore.html\">MII PR PRO PROMIS-29 Fatigue T-Score</a> version: 2027.0.0-ballot.1</p></div><p><b>Instantiates Canonical</b>: <a href=\"https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-29-fatigue-tscore\">https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-29-fatigue-tscore</a></p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 77864-7}\">PROMIS fatigue - version 1.0 Tscore</span></p><p><b>subject</b>: <a href=\"Bundle-mii-exa-pro-promis-29-bundle.html#Patient_patient-example-1\">Erika Mustermann  Female, DoB: 1985-03-15 ( http://example.org/fhir/sid/patients#12345)</a></p><p><b>effective</b>: 2025-01-30 14:30:00+0000</p><p><b>value</b>: 64.9 {score}<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code{score} = '{score}')</span></p><p><b>method</b>: <span title=\"Codes:\">PROMIS-29 Profile v2.1</span></p><p><b>derivedFrom</b>: <a href=\"Bundle-mii-exa-pro-promis-29-bundle.html#QuestionnaireResponse_promis-29-response-1\">Response to Questionnaire '-&gt;MII QST PRO PROMIS-29 (Adults)' about '-&gt;Erika Mustermann  Female, DoB: 1985-03-15 ( http://example.org/fhir/sid/patients#12345)'</a></p></div></div>"
      },
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical",
        "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-29-fatigue-tscore"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "77864-7",
          "display" : "PROMIS fatigue - version 1.0 Tscore"
        }]
      },
      "subject" : {
        "reference" : "Patient/patient-example-1"
      },
      "effectiveDateTime" : "2025-01-30T14:30:00Z",
      "valueQuantity" : {
        "value" : 64.9,
        "unit" : "{score}",
        "system" : "http://unitsofmeasure.org",
        "code" : "{score}"
      },
      "method" : {
        "text" : "PROMIS-29 Profile v2.1"
      },
      "derivedFrom" : [{
        "reference" : "QuestionnaireResponse/promis-29-response-1"
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:a7b8c9d0-e1f2-3456-abcd-567890123456",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "obs-promis-29-sleep-tscore",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-promis-29-sleep-disturbance-tscore|2027.0.0-ballot.1"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Observation_obs-promis-29-sleep-tscore\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation obs-promis-29-sleep-tscore</b></p><a name=\"obs-promis-29-sleep-tscore\"> </a><a name=\"hcobs-promis-29-sleep-tscore\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-pro-promis-29-sleep-disturbance-tscore.html\">MII PR PRO PROMIS-29 Sleep Disturbance T-Score</a> version: 2027.0.0-ballot.1</p></div><p><b>Instantiates Canonical</b>: <a href=\"https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-29-sleep-disturbance-tscore\">https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-29-sleep-disturbance-tscore</a></p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 77860-5}\">PROMIS sleep disturbance - version 1.0 Tscore</span></p><p><b>subject</b>: <a href=\"Bundle-mii-exa-pro-promis-29-bundle.html#Patient_patient-example-1\">Erika Mustermann  Female, DoB: 1985-03-15 ( http://example.org/fhir/sid/patients#12345)</a></p><p><b>effective</b>: 2025-01-30 14:30:00+0000</p><p><b>value</b>: 53.6 {score}<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code{score} = '{score}')</span></p><p><b>method</b>: <span title=\"Codes:\">PROMIS-29 Profile v2.1</span></p><p><b>derivedFrom</b>: <a href=\"Bundle-mii-exa-pro-promis-29-bundle.html#QuestionnaireResponse_promis-29-response-1\">Response to Questionnaire '-&gt;MII QST PRO PROMIS-29 (Adults)' about '-&gt;Erika Mustermann  Female, DoB: 1985-03-15 ( http://example.org/fhir/sid/patients#12345)'</a></p></div></div>"
      },
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical",
        "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-29-sleep-disturbance-tscore"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "77860-5",
          "display" : "PROMIS sleep disturbance - version 1.0 Tscore"
        }]
      },
      "subject" : {
        "reference" : "Patient/patient-example-1"
      },
      "effectiveDateTime" : "2025-01-30T14:30:00Z",
      "valueQuantity" : {
        "value" : 53.6,
        "unit" : "{score}",
        "system" : "http://unitsofmeasure.org",
        "code" : "{score}"
      },
      "method" : {
        "text" : "PROMIS-29 Profile v2.1"
      },
      "derivedFrom" : [{
        "reference" : "QuestionnaireResponse/promis-29-response-1"
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:b8c9d0e1-f2a3-4567-bcde-678901234567",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "obs-promis-29-social-tscore",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-promis-29-social-function-tscore|2027.0.0-ballot.1"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Observation_obs-promis-29-social-tscore\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation obs-promis-29-social-tscore</b></p><a name=\"obs-promis-29-social-tscore\"> </a><a name=\"hcobs-promis-29-social-tscore\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-pro-promis-29-social-function-tscore.html\">MII PR PRO PROMIS-29 Social Function T-Score</a> version: 2027.0.0-ballot.1</p></div><p><b>Instantiates Canonical</b>: <a href=\"https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-29-social-function-tscore\">https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-29-social-function-tscore</a></p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 77854-8}\">PROMIS ability to participate in social roles and activities - version 2.0 Tscore</span></p><p><b>subject</b>: <a href=\"Bundle-mii-exa-pro-promis-29-bundle.html#Patient_patient-example-1\">Erika Mustermann  Female, DoB: 1985-03-15 ( http://example.org/fhir/sid/patients#12345)</a></p><p><b>effective</b>: 2025-01-30 14:30:00+0000</p><p><b>value</b>: 39.7 {score}<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code{score} = '{score}')</span></p><p><b>method</b>: <span title=\"Codes:\">PROMIS-29 Profile v2.1</span></p><p><b>derivedFrom</b>: <a href=\"Bundle-mii-exa-pro-promis-29-bundle.html#QuestionnaireResponse_promis-29-response-1\">Response to Questionnaire '-&gt;MII QST PRO PROMIS-29 (Adults)' about '-&gt;Erika Mustermann  Female, DoB: 1985-03-15 ( http://example.org/fhir/sid/patients#12345)'</a></p></div></div>"
      },
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical",
        "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-29-social-function-tscore"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "77854-8",
          "display" : "PROMIS ability to participate in social roles and activities - version 2.0 Tscore"
        }]
      },
      "subject" : {
        "reference" : "Patient/patient-example-1"
      },
      "effectiveDateTime" : "2025-01-30T14:30:00Z",
      "valueQuantity" : {
        "value" : 39.7,
        "unit" : "{score}",
        "system" : "http://unitsofmeasure.org",
        "code" : "{score}"
      },
      "method" : {
        "text" : "PROMIS-29 Profile v2.1"
      },
      "derivedFrom" : [{
        "reference" : "QuestionnaireResponse/promis-29-response-1"
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:c9d0e1f2-a3b4-5678-cdef-789012345678",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "obs-promis-29-pain-interference-tscore",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-promis-29-pain-interference-tscore|2027.0.0-ballot.1"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Observation_obs-promis-29-pain-interference-tscore\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation obs-promis-29-pain-interference-tscore</b></p><a name=\"obs-promis-29-pain-interference-tscore\"> </a><a name=\"hcobs-promis-29-pain-interference-tscore\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-pro-promis-29-pain-interference-tscore.html\">MII PR PRO PROMIS-29 Pain Interference T-Score</a> version: 2027.0.0-ballot.1</p></div><p><b>Instantiates Canonical</b>: <a href=\"https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-29-pain-interference-tscore\">https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-29-pain-interference-tscore</a></p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 77865-4}\">PROMIS pain interference - version 1.0 Tscore</span></p><p><b>subject</b>: <a href=\"Bundle-mii-exa-pro-promis-29-bundle.html#Patient_patient-example-1\">Erika Mustermann  Female, DoB: 1985-03-15 ( http://example.org/fhir/sid/patients#12345)</a></p><p><b>effective</b>: 2025-01-30 14:30:00+0000</p><p><b>value</b>: 60.9 {score}<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code{score} = '{score}')</span></p><p><b>method</b>: <span title=\"Codes:\">PROMIS-29 Profile v2.1</span></p><p><b>derivedFrom</b>: <a href=\"Bundle-mii-exa-pro-promis-29-bundle.html#QuestionnaireResponse_promis-29-response-1\">Response to Questionnaire '-&gt;MII QST PRO PROMIS-29 (Adults)' about '-&gt;Erika Mustermann  Female, DoB: 1985-03-15 ( http://example.org/fhir/sid/patients#12345)'</a></p></div></div>"
      },
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical",
        "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-29-pain-interference-tscore"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "77865-4",
          "display" : "PROMIS pain interference - version 1.0 Tscore"
        }]
      },
      "subject" : {
        "reference" : "Patient/patient-example-1"
      },
      "effectiveDateTime" : "2025-01-30T14:30:00Z",
      "valueQuantity" : {
        "value" : 60.9,
        "unit" : "{score}",
        "system" : "http://unitsofmeasure.org",
        "code" : "{score}"
      },
      "method" : {
        "text" : "PROMIS-29 Profile v2.1"
      },
      "derivedFrom" : [{
        "reference" : "QuestionnaireResponse/promis-29-response-1"
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:d0e1f2a3-b4c5-6789-defa-890123456789",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "obs-promis-29-pain-intensity",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-promis-29-pain-intensity|2027.0.0-ballot.1"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Observation_obs-promis-29-pain-intensity\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation obs-promis-29-pain-intensity</b></p><a name=\"obs-promis-29-pain-intensity\"> </a><a name=\"hcobs-promis-29-pain-intensity\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-pro-promis-29-pain-intensity.html\">MII PR PRO PROMIS-29 Pain Intensity</a> version: 2027.0.0-ballot.1</p></div><p><b>Instantiates Canonical</b>: <a href=\"https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-29-pain-intensity\">https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-29-pain-intensity</a></p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 75261-8}\">How intense was your average pain in the past 7 days [PROMIS]</span></p><p><b>subject</b>: <a href=\"Bundle-mii-exa-pro-promis-29-bundle.html#Patient_patient-example-1\">Erika Mustermann  Female, DoB: 1985-03-15 ( http://example.org/fhir/sid/patients#12345)</a></p><p><b>effective</b>: 2025-01-30 14:30:00+0000</p><p><b>value</b>: 5 1<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code1 = '1')</span></p><p><b>method</b>: <span title=\"Codes:\">PROMIS-29 Profile v2.1 - Pain Intensity single item</span></p><p><b>derivedFrom</b>: <a href=\"Bundle-mii-exa-pro-promis-29-bundle.html#QuestionnaireResponse_promis-29-response-1\">Response to Questionnaire '-&gt;MII QST PRO PROMIS-29 (Adults)' about '-&gt;Erika Mustermann  Female, DoB: 1985-03-15 ( http://example.org/fhir/sid/patients#12345)'</a></p></div></div>"
      },
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical",
        "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-29-pain-intensity"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "75261-8",
          "display" : "How intense was your average pain in the past 7 days [PROMIS]"
        }]
      },
      "subject" : {
        "reference" : "Patient/patient-example-1"
      },
      "effectiveDateTime" : "2025-01-30T14:30:00Z",
      "valueQuantity" : {
        "value" : 5,
        "unit" : "1",
        "system" : "http://unitsofmeasure.org",
        "code" : "1"
      },
      "method" : {
        "text" : "PROMIS-29 Profile v2.1 - Pain Intensity single item"
      },
      "derivedFrom" : [{
        "reference" : "QuestionnaireResponse/promis-29-response-1"
      }]
    }
  }]
}

```
