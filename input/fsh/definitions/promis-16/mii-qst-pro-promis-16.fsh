Instance: mii-qst-pro-promis-16
InstanceOf: mii-pr-pro-questionnaire
Title: "MII QST PRO PROMIS-16 (Adults)"
Description: "PROMIS-16 Profile v1.0 - Ultra-short 16-item HRQoL Profile across 8 domains (Edelen et al. 2024, doi:10.1007/s11136-023-03597-6). T-score calculation per Supplement S4 is delegated to a CQL Library (see roadmap 2027)."
Usage: #definition
* insert Version
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire)
* insert PROMIS_Copyright_DE

* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-16"
* status = #draft
* experimental = true
* language = #en

// TODO: add LOINC code for PROMIS-16 once published in LOINC
* code[+] = $mii-cs-pro-questionnaire-catalogue#promis-promis16 "PROMIS-16 Profile Questionnaire (ultra-short 8-domain profile)"

* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueReference.reference = "https://doi.org/10.1007/s11136-023-03597-6"
* useContext[=].valueReference.display = "PROMIS-16 Profile (Edelen et al. 2024, Qual Life Res)"

* extension[capabilities].extension[displayable].valueBoolean = true
* extension[capabilities].extension[collectable].valueBoolean = true
// calculatable intentionally false: pattern-based T-score lookup (Supplement S4) delegated to CQL Library
* extension[capabilities].extension[calculatable].valueBoolean = false
* extension[capabilities].extension[extractable].valueBoolean = true
* extension[capabilities].extension[domainAligned].valueBoolean = true

// ===== PHYSICAL FUNCTION DOMAIN =====
* item[+].linkId = "PROMIS-16.PhysicalFunction"
* item[=].type = #group
* item[=].text = "Physical Function"
* item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #de
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "Körperliche Funktion"

// PF Item 1: PFA21 - Stairs
* item[=].item[+].linkId = "promis-pfa21"
* item[=].item[=].type = #choice
* item[=].item[=].code = $LNC#62826-3 "Are you able to go up and down stairs at a normal pace [PROMIS]"
* item[=].item[=].text = "Are you able to go up and down stairs at a normal pace?"
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].text.extension[=].extension[+].url = "lang"
* item[=].item[=].text.extension[=].extension[=].valueCode = #de
* item[=].item[=].text.extension[=].extension[+].url = "content"
* item[=].item[=].text.extension[=].extension[=].valueString = "Können Sie mit normaler Geschwindigkeit Treppen hoch- und runtergehen?"
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-physical-function-response-scale"

// PF Item 2: PFA23 - 15-min walk
* item[=].item[+].linkId = "promis-pfa23"
* item[=].item[=].type = #choice
* item[=].item[=].code = $LNC#62827-1 "Are you able to go for a walk of at least 15 minutes [PROMIS]"
* item[=].item[=].text = "Are you able to go for a walk of at least 15 minutes?"
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].text.extension[=].extension[+].url = "lang"
* item[=].item[=].text.extension[=].extension[=].valueCode = #de
* item[=].item[=].text.extension[=].extension[+].url = "content"
* item[=].item[=].text.extension[=].extension[=].valueString = "Können Sie mindestens 15 Minuten lang spazieren gehen?"
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-physical-function-response-scale"

// ===== ANXIETY DOMAIN =====
// German wordings per official PROMIS Health Organization PDF "PROMIS-16 Profile v2.1 (PROPr)
// German, 20 September 2024" and PCOR-MII Master Item-Level Dictionary.
// Response scale: Frequency (Never/Rarely/Sometimes/Often/Always)
* item[+].linkId = "PROMIS-16.Anxiety"
* item[=].type = #group
* item[=].text = "Emotional Distress — Anxiety"
* item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #de
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "Emotionale Belastung — Angst"

// ANX Item 1: EDANX40
* item[=].item[+].linkId = "promis-edanx40"
* item[=].item[=].type = #choice
* item[=].item[=].code = $LNC#61941-1 "I found it hard to focus on anything other than my anxiety in past 7 days"
* item[=].item[=].text = "I found it hard to focus on anything other than my anxiety."
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].text.extension[=].extension[+].url = "lang"
* item[=].item[=].text.extension[=].extension[=].valueCode = #de
* item[=].item[=].text.extension[=].extension[+].url = "content"
* item[=].item[=].text.extension[=].extension[=].valueString = "Ich fand es schwer, auf etwas anderes zu achten als auf meine Angst."
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-frequency-response-scale"

// ANX Item 2: EDANX41
* item[=].item[+].linkId = "promis-edanx41"
* item[=].item[=].type = #choice
* item[=].item[=].code = $LNC#61942-9 "My worries overwhelmed me in past 7 days"
* item[=].item[=].text = "My worries overwhelmed me."
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].text.extension[=].extension[+].url = "lang"
* item[=].item[=].text.extension[=].extension[=].valueCode = #de
* item[=].item[=].text.extension[=].extension[+].url = "content"
* item[=].item[=].text.extension[=].extension[=].valueString = "Meine Sorgen haben mich überwältigt."
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-frequency-response-scale"

// ===== DEPRESSION DOMAIN =====
// Response scale: Frequency (Never/Rarely/Sometimes/Often/Always)
* item[+].linkId = "PROMIS-16.Depression"
* item[=].type = #group
* item[=].text = "Emotional Distress — Depression"
* item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #de
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "Emotionale Belastung — Depressivität"

// DEP Item 1: EDDEP29
* item[=].item[+].linkId = "promis-eddep29"
* item[=].item[=].type = #choice
* item[=].item[=].code = $LNC#61967-6 "I felt depressed in past 7 days [PROMIS]"
* item[=].item[=].text = "I felt depressed."
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].text.extension[=].extension[+].url = "lang"
* item[=].item[=].text.extension[=].extension[=].valueCode = #de
* item[=].item[=].text.extension[=].extension[+].url = "content"
* item[=].item[=].text.extension[=].extension[=].valueString = "Ich fühlte mich niedergeschlagen."
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-frequency-response-scale"

// DEP Item 2: EDDEP41
* item[=].item[+].linkId = "promis-eddep41"
* item[=].item[=].type = #choice
* item[=].item[=].code = $LNC#61973-4 "I felt hopeless in past 7 days [PROMIS]"
* item[=].item[=].text = "I felt hopeless."
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].text.extension[=].extension[+].url = "lang"
* item[=].item[=].text.extension[=].extension[=].valueCode = #de
* item[=].item[=].text.extension[=].extension[+].url = "content"
* item[=].item[=].text.extension[=].extension[=].valueString = "Ich fühlte mich hoffnungslos."
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-frequency-response-scale"

// ===== FATIGUE DOMAIN =====
// Response scale: Intensity (Not at all/A little bit/Somewhat/Quite a bit/Very much)
* item[+].linkId = "PROMIS-16.Fatigue"
* item[=].type = #group
* item[=].text = "Fatigue"
* item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #de
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "Erschöpfung"

// FTG Item 1: HI7
* item[=].item[+].linkId = "promis-hi7"
* item[=].item[=].type = #choice
* item[=].item[=].code = $LNC#61878-5 "I feel fatigued during the past 7 days [PROMIS]"
* item[=].item[=].text = "I feel fatigued."
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].text.extension[=].extension[+].url = "lang"
* item[=].item[=].text.extension[=].extension[=].valueCode = #de
* item[=].item[=].text.extension[=].extension[+].url = "content"
* item[=].item[=].text.extension[=].extension[=].valueString = "Ich bin erschöpft."
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-intensity-response-scale"

// FTG Item 2: AN3
* item[=].item[+].linkId = "promis-an3"
* item[=].item[=].type = #choice
* item[=].item[=].code = $LNC#61882-7 "I had trouble starting things because I was tired in past 7 days [PROMIS]"
* item[=].item[=].text = "I had trouble starting things because I was tired."
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].text.extension[=].extension[+].url = "lang"
* item[=].item[=].text.extension[=].extension[=].valueCode = #de
* item[=].item[=].text.extension[=].extension[+].url = "content"
* item[=].item[=].text.extension[=].extension[=].valueString = "Es fällt mir schwer, etwas anzufangen, weil ich müde bin."
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-intensity-response-scale"

// ===== SLEEP DOMAIN =====
// Note: Sleep25 uses Intensity scale, Sleep90 uses Frequency scale (per PHO PDF)
// TODO: confirm LOINC codes for Sleep25 / Sleep90 — PROMIS-29 uses Sleep109/116/20/44, not these
* item[+].linkId = "PROMIS-16.Sleep"
* item[=].type = #group
* item[=].text = "Sleep-related Impairment / Sleep Disturbance"
* item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #de
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "Schlafbezogene Beeinträchtigungen / Schlafbeeinträchtigung"

// SLP Item 1: Sleep25 — Intensity scale
* item[=].item[+].linkId = "promis-sleep25"
* item[=].item[=].type = #choice
// TODO: confirm LOINC code for Sleep25
* item[=].item[=].text = "I had problems during the day because of poor sleep."
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].text.extension[=].extension[+].url = "lang"
* item[=].item[=].text.extension[=].extension[=].valueCode = #de
* item[=].item[=].text.extension[=].extension[+].url = "content"
* item[=].item[=].text.extension[=].extension[=].valueString = "Ich hatte tagsüber Probleme, weil ich schlecht geschlafen habe."
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-intensity-response-scale"

// SLP Item 2: Sleep90 — Frequency scale
* item[=].item[+].linkId = "promis-sleep90"
* item[=].item[=].type = #choice
// TODO: confirm LOINC code for Sleep90
* item[=].item[=].text = "I had trouble sleeping."
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].text.extension[=].extension[+].url = "lang"
* item[=].item[=].text.extension[=].extension[=].valueCode = #de
* item[=].item[=].text.extension[=].extension[+].url = "content"
* item[=].item[=].text.extension[=].extension[=].valueString = "Es fiel mir schwer zu schlafen."
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-frequency-response-scale"

// ===== SOCIAL ROLES & ACTIVITIES DOMAIN =====
// Response scale: Frequency (Never/Rarely/Sometimes/Often/Always) — REVERSE-SCORED per PHO PDF
// (5=Nie, 1=Immer): higher response = better participation. Reverse-scoring handled by CQL Library.
* item[+].linkId = "PROMIS-16.SocialRoles"
* item[=].type = #group
* item[=].text = "Ability to Participate in Social Roles and Activities"
* item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #de
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "Teilhabe an sozialen Rollen und Aktivitäten"

// SOC Item 1: SRPPER31_CaPS
* item[=].item[+].linkId = "promis-srpper31-caps"
* item[=].item[=].type = #choice
// TODO: confirm LOINC code for SRPPER31-CaPS
* item[=].item[=].text = "I have trouble taking care of my regular personal responsibilities."
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].text.extension[=].extension[+].url = "lang"
* item[=].item[=].text.extension[=].extension[=].valueCode = #de
* item[=].item[=].text.extension[=].extension[+].url = "content"
* item[=].item[=].text.extension[=].extension[=].valueString = "Es fällt mir schwer, mich um meine regelmäßigen persönlichen Verpflichtungen zu kümmern."
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-frequency-response-scale"

// SOC Item 2: SRPPER46_CaPS
* item[=].item[+].linkId = "promis-srpper46-caps"
* item[=].item[=].type = #choice
* item[=].item[=].code = $LNC#76712-9 "I have trouble doing all of the activities with friends that I want to do [PROMIS]"
* item[=].item[=].text = "I have trouble doing all of the activities with friends that I want to do."
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].text.extension[=].extension[+].url = "lang"
* item[=].item[=].text.extension[=].extension[=].valueCode = #de
* item[=].item[=].text.extension[=].extension[+].url = "content"
* item[=].item[=].text.extension[=].extension[=].valueString = "Es fällt mir schwer, allen Aktivitäten nachzugehen, die ich mit Freunden machen möchte."
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-frequency-response-scale"

// ===== PAIN INTERFERENCE DOMAIN =====
// Response scale: Intensity (Not at all/A little bit/Somewhat/Quite a bit/Very much)
* item[+].linkId = "PROMIS-16.PainInterference"
* item[=].type = #group
* item[=].text = "Pain Interference"
* item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #de
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "Beeinträchtigung durch Schmerzen"

// PI Item 1: PAININ9
* item[=].item[+].linkId = "promis-painin9"
* item[=].item[=].type = #choice
* item[=].item[=].code = $LNC#61758-9 "How much did pain interfere with your day to day activities in past 7 days [PROMIS]"
* item[=].item[=].text = "How much did pain interfere with your day-to-day activities?"
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].text.extension[=].extension[+].url = "lang"
* item[=].item[=].text.extension[=].extension[=].valueCode = #de
* item[=].item[=].text.extension[=].extension[+].url = "content"
* item[=].item[=].text.extension[=].extension[=].valueString = "Wie sehr beeinträchtigen Schmerzen Ihre Alltagsaktivitäten?"
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-intensity-response-scale"

// PI Item 2: PAININ31
* item[=].item[+].linkId = "promis-painin31"
* item[=].item[=].type = #choice
* item[=].item[=].code = $LNC#61773-8 "How much did pain interfere with your ability to participate in social activities in past 7 days [PROMIS]"
* item[=].item[=].text = "How much did pain interfere with your ability to participate in social activities?"
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].text.extension[=].extension[+].url = "lang"
* item[=].item[=].text.extension[=].extension[=].valueCode = #de
* item[=].item[=].text.extension[=].extension[+].url = "content"
* item[=].item[=].text.extension[=].extension[=].valueString = "Wie sehr beeinträchtigen Schmerzen Ihre Fähigkeit, an sozialen Aktivitäten teilzunehmen?"
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-intensity-response-scale"

// ===== COGNITIVE FUNCTION DOMAIN =====
// Response scale: Intensity (Not at all/A little bit/Somewhat/Quite a bit/Very much)
// Note: PROMIS-16 uses different Cog Fn items than the PROMIS Cognitive Function SF 4a
// (SF 4a has PC2r/PC35r/PC36r/PC42r; PROMIS-16 has PC27r/PC-CaPS3r)
* item[+].linkId = "PROMIS-16.Cognition"
* item[=].type = #group
* item[=].text = "Cognitive Function — Abilities"
* item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #de
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "Kognitive Funktionen — Fähigkeiten"

// CF Item 1: PC27r
* item[=].item[+].linkId = "promis-pc27r"
* item[=].item[=].type = #choice
// TODO: confirm LOINC code for PC27r
* item[=].item[=].text = "I have been able to remember to do things, like take medicine or buy something I needed."
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].text.extension[=].extension[+].url = "lang"
* item[=].item[=].text.extension[=].extension[=].valueCode = #de
* item[=].item[=].text.extension[=].extension[+].url = "content"
* item[=].item[=].text.extension[=].extension[=].valueString = "Ich bin fähig gewesen, mich an Dinge zu erinnern, die ich tun musste, wie z.B. Medikamente einnehmen oder etwas kaufen, das ich benötigte."
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-intensity-response-scale"

// CF Item 2: PC-CaPS3r
* item[=].item[+].linkId = "promis-pc-caps3r"
* item[=].item[=].type = #choice
// TODO: confirm LOINC code for PC-CaPS3r (PROMIS-16 specific cognitive item)
* item[=].item[=].text = "I have been able to think clearly without extra effort."
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].text.extension[=].extension[+].url = "lang"
* item[=].item[=].text.extension[=].extension[=].valueCode = #de
* item[=].item[=].text.extension[=].extension[+].url = "content"
* item[=].item[=].text.extension[=].extension[=].valueString = "Ich bin fähig gewesen, klar zu denken, ohne mich extra anzustrengen."
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-intensity-response-scale"

// ===== END OF ITEMS =====
// Score-Berechnung: bewusst nicht implementiert in v2026.5.0 (PROPr / CQL Library später).
// Item-Wordings: German per PROMIS-16 v2.1 (PROPr) PHO PDF, 20 Sep 2024; cross-confirmed with PCOR-MII Master.
