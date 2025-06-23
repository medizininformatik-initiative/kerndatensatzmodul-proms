CodeSystem: MII_CS_PRO_EQ_5D_ValueSet
Id: mii-cs-pro-eq-5d-value-set
Title: "MII CS EQ-5D Value Set"
Description: "EuroQol EQ-5D Value Set"

// de-DE: https://eq-5dpublications.euroqol.org/download?id=0_66697&fileId=66424
// de-DE ValueSet: https://euroqol.org/wp-content/uploads/2024/01/Germany_valueset_SPSS.txt
// en-US: https://eq-5dpublications.euroqol.org/download?id=0_68287&fileId=68077
// en-US ValueSet: https://euroqol.org/wp-content/uploads/2024/01/US_valueset_SPSS.txt

* ^language = #de-DE
* ^status = #draft
* ^experimental = true
* ^hierarchyMeaning = #grouped-by
* ^content = #complete

* ^property[+].code = #eq-5d-vs-coefficient-de-de
* ^property[=].uri = "http://hl7.org/fhir/concept-properties/itemWeight"
* ^property[=].description = "EQ-5D ValueSet Coefficient Germany"
* ^property[=].type = #decimal

* ^property[+].code = #eq-5d-vs-coefficient-en-us
* ^property[=].uri = "http://hl7.org/fhir/concept-properties/itemWeight"
* ^property[=].description = "EQ-5D ValueSet Coefficient US"
* ^property[=].type = #decimal

* #MO "BEWEGLICHKEIT / MOBILITÄT"
  * ^designation.language = #en
  * ^designation.use = $SCT#900000000000013009 "Synonym"
  * ^designation.value = "MOBILITY"

  * #MO-1  "Ich habe keine Probleme herumzugehen"
    * ^designation.language = #en-US
    * ^designation.use = $SCT#900000000000013009 "Synonym"
    * ^designation.value = "I have no problems in walking about"
    * ^property[+].code = #eq-5d-vs-coefficient-de-de
    * ^property[=].valueDecimal = 0
    * ^property[+].code = #eq-5d-vs-coefficient-en-us
    * ^property[=].valueDecimal = 0

  * #MO-2 "Ich habe leichte Probleme herumzugehen"
    * ^designation.language = #en-US
    * ^designation.use = $SCT#900000000000013009 "Synonym"
    * ^designation.value = "I have slight problems in walking about"
    * ^property[+].code = #eq-5d-vs-coefficient-de-de
    * ^property[=].valueDecimal = 0.026
    * ^property[+].code = #eq-5d-vs-coefficient-en-us
    * ^property[=].valueDecimal = 0.096

  * #MO-3 "Ich habe mäßige Probleme herumzugehen"
    * ^designation.language = #en-US
    * ^designation.use = $SCT#900000000000013009 "Synonym"
    * ^designation.value = "I have moderate problems in walking about"
    * ^property[+].code = #eq-5d-vs-coefficient-de-de
    * ^property[=].valueDecimal = 0.042
    * ^property[+].code = #eq-5d-vs-coefficient-en-us
    * ^property[=].valueDecimal = 0.122

  * #MO-4 "Ich habe große Probleme herumzugehen"
    * ^designation.language = #en-US
    * ^designation.use = $SCT#900000000000013009 "Synonym"
    * ^designation.value = "I have severe problems in walking about"
    * ^property[+].code = #eq-5d-vs-coefficient-de-de
    * ^property[=].valueDecimal = 0.139
    * ^property[+].code = #eq-5d-vs-coefficient-en-us
    * ^property[=].valueDecimal = 0.237

  * #MO-5 "Ich bin nicht in der Lage herumzugehen"
    * ^designation.language = #en-US
    * ^designation.use = $SCT#900000000000013009 "Synonym"
    * ^designation.value = "I am unable to walk about"
    * ^property[+].code = #eq-5d-vs-coefficient-de-de
    * ^property[=].valueDecimal = 0.224
    * ^property[+].code = #eq-5d-vs-coefficient-en-us
    * ^property[=].valueDecimal = 0.322

* #SC "FÜR SICH SELBST SORGEN"
  * ^designation.language = #en
  * ^designation.use = $SCT#900000000000013009 "Synonym"
  * ^designation.value = "SELF-CARE"

  * #SC-1 "Ich habe keine Probleme, mich selbst zu waschen oder anzuziehen"
    * ^designation.language = #en-US
    * ^designation.use = $SCT#900000000000013009 "Synonym"
    * ^designation.value = "I have no problems washing or dressing myself"
    * ^property[+].code = #eq-5d-vs-coefficient-de-de
    * ^property[=].valueDecimal = 0
    * ^property[+].code = #eq-5d-vs-coefficient-en-us
    * ^property[=].valueDecimal = 0

  * #SC-2 "Ich habe leichte Probleme, mich selbst zu waschen oder anzuziehen"
    * ^designation.language = #en-US
    * ^designation.use = $SCT#900000000000013009 "Synonym"
    * ^designation.value = "I have slight problems washing or dressing myself"
    * ^property[+].code = #eq-5d-vs-coefficient-de-de
    * ^property[=].valueDecimal = 0.050
    * ^property[+].code = #eq-5d-vs-coefficient-en-us
    * ^property[=].valueDecimal = 0.089

  * #SC-3 "Ich habe mäßige Probleme, mich selbst zu waschen oder anzuziehen"
    * ^designation.language = #en-US
    * ^designation.use = $SCT#900000000000013009 "Synonym"
    * ^designation.value = "I have moderate problems washing or dressing myself"
    * ^property[+].code = #eq-5d-vs-coefficient-de-de
    * ^property[=].valueDecimal = 0.056
    * ^property[+].code = #eq-5d-vs-coefficient-en-us
    * ^property[=].valueDecimal = 0.107

  * #SC-4 "Ich habe große Probleme, mich selbst zu waschen oder anzuziehen"
    * ^designation.language = #en-US
    * ^designation.use = $SCT#900000000000013009 "Synonym"
    * ^designation.value = "I have severe problems washing or dressing myself"
    * ^property[+].code = #eq-5d-vs-coefficient-de-de
    * ^property[=].valueDecimal = 0.169
    * ^property[+].code = #eq-5d-vs-coefficient-en-us
    * ^property[=].valueDecimal = 0.220

  * #SC-5 "Ich bin nicht in der Lage, mich selbst zu waschen oder anzuziehen"
    * ^designation.language = #en-US
    * ^designation.use = $SCT#900000000000013009 "Synonym"
    * ^designation.value = "I am unable to wash or dress myself"
    * ^property[+].code = #eq-5d-vs-coefficient-de-de
    * ^property[=].valueDecimal = 0.260
    * ^property[+].code = #eq-5d-vs-coefficient-en-us
    * ^property[=].valueDecimal = 0.261

* #UA "ALLTÄGLICHE TÄTIGKEITEN (z.B. Arbeit, Studium, Hausarbeit, Familien- / Freizeitaktivitäten)"
  * ^designation.language = #en
  * ^designation.use = $SCT#900000000000013009 "Synonym"
  * ^designation.value = "USUAL ACTIVITIES (e.g. work, study, housework, family or leisure activities)"

  * #UA-1 "Ich habe keine Probleme, meinen alltäglichen Tätigkeiten nachzugehen"
    * ^designation.language = #en-US
    * ^designation.use = $SCT#900000000000013009 "Synonym"
    * ^designation.value = "I have no problems doing my usual activities"
    * ^property[+].code = #eq-5d-vs-coefficient-de-de
    * ^property[=].valueDecimal = 0
    * ^property[+].code = #eq-5d-vs-coefficient-en-us
    * ^property[=].valueDecimal = 0
  
  * #UA-2 "Ich habe leichte Probleme, meinen alltäglichen Tätigkeiten nachzugehen"
    * ^designation.language = #en-US
    * ^designation.use = $SCT#900000000000013009 "Synonym"
    * ^designation.value = "I have slight problems doing my usual activities"
    * ^property[+].code = #eq-5d-vs-coefficient-de-de
    * ^property[=].valueDecimal = 0.036
    * ^property[+].code = #eq-5d-vs-coefficient-en-us
    * ^property[=].valueDecimal = 0.068
  
  * #UA-3 "Ich habe mäßige Probleme, meinen alltäglichen Tätigkeiten nachzugehen"
    * ^designation.language = #en-US
    * ^designation.use = $SCT#900000000000013009 "Synonym"
    * ^designation.value = "I have moderate problems doing my usual activities"
    * ^property[+].code = #eq-5d-vs-coefficient-de-de
    * ^property[=].valueDecimal = 0.049
    * ^property[+].code = #eq-5d-vs-coefficient-en-us
    * ^property[=].valueDecimal = 0.101
  
  * #UA-4 "Ich habe große Probleme, meinen alltäglichen Tätigkeiten nachzugehen"
    * ^designation.language = #en-US
    * ^designation.use = $SCT#900000000000013009 "Synonym"
    * ^designation.value = "I have severe problems doing my usual activities"
    * ^property[+].code = #eq-5d-vs-coefficient-de-de
    * ^property[=].valueDecimal = 0.129
    * ^property[+].code = #eq-5d-vs-coefficient-en-us
    * ^property[=].valueDecimal = 0.255
  
  * #UA-5 "Ich bin nicht in der Lage, meinen alltäglichen Tätigkeiten nachzugehen"
    * ^designation.language = #en-US
    * ^designation.use = $SCT#900000000000013009 "Synonym"
    * ^designation.value = "I am unable to do my usual activities"
    * ^property[+].code = #eq-5d-vs-coefficient-de-de
    * ^property[=].valueDecimal = 0.209
    * ^property[+].code = #eq-5d-vs-coefficient-en-us
    * ^property[=].valueDecimal = 0.255

* #PD "SCHMERZEN / KÖRPERLICHEN BESCHWERDEN"
  * ^designation.language = #en
  * ^designation.use = $SCT#900000000000013009 "Synonym"
  * ^designation.value = "PAIN / DISCOMFORT"

  * #PD-1 "Ich habe keine Schmerzen oder Beschwerden"
    * ^designation.language = #en-US
    * ^designation.use = $SCT#900000000000013009 "Synonym"
    * ^designation.value = "I have no pain or discomfort"
    * ^property[+].code = #eq-5d-vs-coefficient-de-de
    * ^property[=].valueDecimal = 0
    * ^property[+].code = #eq-5d-vs-coefficient-en-us
    * ^property[=].valueDecimal = 0
  
  * #PD-2 "Ich habe leichte Schmerzen oder Beschwerden"
    * ^designation.language = #en-US
    * ^designation.use = $SCT#900000000000013009 "Synonym"
    * ^designation.value = "I have slight pain or discomfort"
    * ^property[+].code = #eq-5d-vs-coefficient-de-de
    * ^property[=].valueDecimal = 0.057
    * ^property[+].code = #eq-5d-vs-coefficient-en-us
    * ^property[=].valueDecimal = 0.060
  
  * #PD-3 "Ich habe mäßige Schmerzen oder Beschwerden"
    * ^designation.language = #en-US
    * ^designation.use = $SCT#900000000000013009 "Synonym"
    * ^designation.value = "I have moderate pain or discomfort"
    * ^property[+].code = #eq-5d-vs-coefficient-de-de
    * ^property[=].valueDecimal = 0.109
    * ^property[+].code = #eq-5d-vs-coefficient-en-us
    * ^property[=].valueDecimal = 0.098
  
  * #PD-4 "Ich habe starke Schmerzen oder Beschwerden"
    * ^designation.language = #en-US
    * ^designation.use = $SCT#900000000000013009 "Synonym"
    * ^designation.value = "I have severe pain or discomfort"
    * ^property[+].code = #eq-5d-vs-coefficient-de-de
    * ^property[=].valueDecimal = 0.404
    * ^property[+].code = #eq-5d-vs-coefficient-en-us
    * ^property[=].valueDecimal = 0.318
  
  * #PD-5 "Ich habe extreme Schmerzen oder Beschwerden"
    * ^designation.language = #en-US
    * ^designation.use = $SCT#900000000000013009 "Synonym"
    * ^designation.value = "I have extreme pain or discomfort"
    * ^property[+].code = #eq-5d-vs-coefficient-de-de
    * ^property[=].valueDecimal = 0.612
    * ^property[+].code = #eq-5d-vs-coefficient-en-us
    * ^property[=].valueDecimal = 0.414

* #AD "ANGST / NIEDERGESCHLAGENHEIT"
  * ^designation.language = #en
  * ^designation.use = $SCT#900000000000013009 "Synonym"
  * ^designation.value = "ANXIETY / DEPRESSION"

  * #AD-1 "Ich bin nicht ängstlich oder deprimiert"
    * ^designation.language = #en-US
    * ^designation.use = $SCT#900000000000013009 "Synonym"
    * ^designation.value = "I am not anxious or depressed"
    * ^property[+].code = #eq-5d-vs-coefficient-de-de
    * ^property[=].valueDecimal = 0
    * ^property[+].code = #eq-5d-vs-coefficient-en-us
    * ^property[=].valueDecimal = 0
  
  * #AD-2 "Ich bin ein wenig ängstlich oder deprimiert"
    * ^designation.language = #en-US
    * ^designation.use = $SCT#900000000000013009 "Synonym"
    * ^designation.value = "I am slightly anxious or depressed"
    * ^property[+].code = #eq-5d-vs-coefficient-de-de
    * ^property[=].valueDecimal = 0.030
    * ^property[+].code = #eq-5d-vs-coefficient-en-us
    * ^property[=].valueDecimal = 0.057
  
  * #AD-3 "Ich bin mäßig ängstlich oder deprimiert"
    * ^designation.language = #en-US
    * ^designation.use = $SCT#900000000000013009 "Synonym"
    * ^designation.value = "I am moderately anxious or depressed"
    * ^property[+].code = #eq-5d-vs-coefficient-de-de
    * ^property[=].valueDecimal = 0.082
    * ^property[+].code = #eq-5d-vs-coefficient-en-us
    * ^property[=].valueDecimal = 0.123
  
  * #AD-4 "Ich bin sehr ängstlich oder deprimiert"
    * ^designation.language = #en-US
    * ^designation.use = $SCT#900000000000013009 "Synonym"
    * ^designation.value = "I am severely anxious or depressed"
    * ^property[+].code = #eq-5d-vs-coefficient-de-de
    * ^property[=].valueDecimal = 0.244
    * ^property[+].code = #eq-5d-vs-coefficient-en-us
    * ^property[=].valueDecimal = 0.299
  
  * #AD-5 "Ich bin extrem ängstlich oder deprimiert"
    * ^designation.language = #en-US
    * ^designation.use = $SCT#900000000000013009 "Synonym"
    * ^designation.value = "I am extremely anxious or depressed"
    * ^property[+].code = #eq-5d-vs-coefficient-de-de
    * ^property[=].valueDecimal = 0.356
    * ^property[+].code = #eq-5d-vs-coefficient-en-us
    * ^property[=].valueDecimal = 0.321