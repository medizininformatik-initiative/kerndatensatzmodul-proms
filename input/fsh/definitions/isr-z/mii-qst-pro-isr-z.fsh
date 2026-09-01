// ISR-Z — Subskala "Zwang" (3 Items) des ICD-10-Symptom-Rating (ISR)
//
// Original: Tritt K, von Heymann F, Zaudig M, Zacharias I, Söllner W, Loew T. "Entwicklung des
// Fragebogens »ICD-10-Symptom-Rating« (ISR)". Z Psychosom Med Psychother 2008; 54(4):409-418.
// doi:10.13109/zptm.2008.54.4.409
// License: freely available (Tier A) — fully displayable and collectable.
//
// SCOPE NOTE: Das vollständige ISR umfasst 29 Items in sechs Syndromskalen (Depression, Angst,
// Zwang, Somatisierung, Essstörung, Zusatzitems). Hier ist BEWUSST NUR die Zwang(Z)-Subskala
// abgebildet — die einzige, die im PCOR-MII-Set (ISRZ01-03) erhoben wird. Die übrigen ISR-Subskalen
// sind nicht Gegenstand dieser Implementierung.
//
// LANGUAGE: language = #de. Das ISR wurde auf Deutsch entwickelt (Tritt et al. 2008, Klinik
// Windach) — Deutsch ist die Originalsprache. Es liegt keine validierte englische Fassung dieser
// Items vor; daher KEINE erfundene englische Übersetzung (siehe pcor-pss-instrumente.md, Abschnitt 6).
//
// ANSWER MODELLING: Fall B (docs/design/pcor-pss-instrumente.md, Abschnitt 4) — die Wortwahl der
// Zustimmungsskala ("trifft nicht/kaum/ziemlich/deutlich/extrem zu") ist Teil des validierten
// ISR-Instruments. Eigenes MII-CodeSystem (mii-cs-pro-isr-z-answers) mit ordinalValue-Property,
// gebunden über answerValueSet (mii-vs-pro-isr-z-answers) — analog zu PHQ-15.
//
// TERMINOLOGY: kein LOINC- und kein SNOMED-CT-Code für das ISR bzw. die Z-Subskala gefunden
// (geprüft gegen LOINC 2.81 und SNOMED International 2026-05-01, Suchbegriffe "ICD-10-Symptom-
// Rating", "ISR", "Symptom-Rating"), daher nur der MII-Fragebogenkatalog-Code.
//
// SCORING — ABWEICHUNG VON DER SUMMENSCORE-KONVENTION DIESES MODULS:
// Das ISR bildet Skalenwerte NICHT als Summe, sondern als MITTELWERT der Items (Tritt et al. 2008).
// Der Gesamtscore des vollständigen ISR ist die Summe der sechs Skalenmittelwerte geteilt durch
// sechs; für die einzelne Z-Subskala (3 Items) ist der Skalenwert direkt der Mittelwert dieser
// 3 Items. Das ist der HÄUFIGSTE FEHLERQUELLE-KANDIDAT beim parallelen Umsetzen der PSS-Instrumente
// (siehe pcor-pss-instrumente.md, Abschnitt 5) — deshalb hier ausdrücklich: `.avg()` statt `.sum()`,
// Wertebereich des Skalenwerts ist 0-4 (NICHT 0-12, wie ein Summenscore über 3 Items mit Bereich
// 0-4 nahelegen würde).

Instance: mii-qst-pro-isr-z
InstanceOf: mii-pr-pro-questionnaire
Title: "MII QST PRO ISR-Z"
Description: "ISR-Z — Subskala Zwang (3 Items) des ICD-10-Symptom-Rating (Tritt et al. 2008); Skalenwert als Mittelwert, nicht Summe"
Usage: #definition
* insert Version
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire)

* url = $mii-qst-pro-isr-z
* status = #active
* experimental = true
* language = #de
* code[+] = $mii-cs-pro-questionnaire-catalogue#isr-z "ISR-Z (ICD-10-Symptom-Rating, Subskala Zwang, Tritt et al. 2008)"

* copyright = "ICD-10-Symptom-Rating (ISR) © Tritt, von Heymann, Zaudig, Zacharias, Söllner & Loew 2008. Freely available — no permission required for reproduction, translation, display or use. Lizenz-Status: frei verfügbar (Tier A)."

* extension[capabilities].extension[displayable].valueBoolean = true
* extension[capabilities].extension[collectable].valueBoolean = true
* extension[capabilities].extension[calculatable].valueBoolean = true
* extension[capabilities].extension[extractable].valueBoolean = true
* extension[capabilities].extension[domainAligned].valueBoolean = true

// Root variable: MITTELWERT (nicht Summe!) der drei Zwang-Items (ordinalValue 0-4 je Item)
// Abweichung von der Summenscore-Konvention des Moduls — siehe Kopfkommentar.
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "isrZMean"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.item.where(linkId.matches('^isr-z-q0[1-3]$')).answer.value.ordinal().avg()"

// Item 0: introductory display
* item[0].linkId = "isr-z-intro"
* item[0].type = #display
* item[0].text = "Bitte geben Sie jetzt an, ob eine der nachfolgenden Beschwerden in den letzten zwei Wochen auf Sie selbst zutrifft:"

// Item 1
* item[1].linkId = "isr-z-q01"
* item[1].type = #choice
* item[1].prefix = "1"
* item[1].text = "Ich leide unter meinen ständig wiederkehrenden, sinnlosen Gedanken oder Handlungen, gegen die ich mich aber nicht wehren kann (z.B. Hände waschen)."
* item[1].answerValueSet = Canonical(MII_VS_PRO_ISR_Z_Answers)

// Item 2
* item[2].linkId = "isr-z-q02"
* item[2].type = #choice
* item[2].prefix = "2"
* item[2].text = "Ich leiste Widerstand gegen immer wiederkehrende, unsinnige Gedanken oder Handlungen, auch wenn mir das nicht immer gelingt."
* item[2].answerValueSet = Canonical(MII_VS_PRO_ISR_Z_Answers)

// Item 3
* item[3].linkId = "isr-z-q03"
* item[3].type = #choice
* item[3].prefix = "3"
* item[3].text = "Ich leide unter quälenden, sinnlosen Gedanken oder Handlungen, die mein normales Leben beeinträchtigen."
* item[3].answerValueSet = Canonical(MII_VS_PRO_ISR_Z_Answers)

// Item 4: ISR-Z Skalenwert — MITTELWERT der 3 Items, Bereich 0-4 (kein Summenscore!)
* item[4].linkId = "isr-z-score-mean"
* item[4].type = #decimal
* item[4].prefix = "Skalenwert"
* item[4].code = $mii-cs-pro-score-catalogue#isr-z-mean "ISR-Z Skalenwert (Mittelwert 0-4)"
* item[4].readOnly = true
* item[4].extension[0].url = $sdc-questionnaire-calculated-expression
* item[4].extension[0].valueExpression.name = "Scoreberechnung"
* item[4].extension[0].valueExpression.language = #text/fhirpath
* item[4].extension[0].valueExpression.expression = "%isrZMean"
* item[4].text = "ISR-Z Skalenwert (Mittelwert der 3 Zwang-Items, Bereich 0-4)"
* item[4].extension[1].url = $sdc-questionnaire-observation-extract
* item[4].extension[1].valueBoolean = true
* item[4].extension[2].url = $hl7-questionnaire-unit
* item[4].extension[2].valueCoding.system = $UCUM
* item[4].extension[2].valueCoding.code = #{score}
* item[4].extension[3].url = $sdc-questionnaire-observation-extract-category
* item[4].extension[3].valueCodeableConcept.coding.system = $hl7-observation-category
* item[4].extension[3].valueCodeableConcept.coding.code = #survey
