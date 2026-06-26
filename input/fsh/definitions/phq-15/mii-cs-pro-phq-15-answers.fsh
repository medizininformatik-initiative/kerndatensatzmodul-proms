// PHQ-15 (Kroenke K, Spitzer RL, Williams JBW. The PHQ-15: Validity of a New Measure for Evaluating the
// Severity of Somatic Symptoms. Psychosomatic Medicine 2002; 64(2):258–266)
// German version: PHQ-D (Löwe B, Spitzer RL, Zipfel S, Herzog W. PHQ-D. Gesundheitsfragebogen für
// Patienten. Pfizer, Karlsruhe 2002)
// German validation: Gräfe K, Zipfel S, Herzog W, Löwe B. Dtsch Med Wochenschr 2004.
// doi:10.1026/0012-1924.50.4.171 (Gräfe et al. 2004)
// License: frei verfügbar (public domain, no permission required) — fully displayable and collectable.
// Note: this is the canonical self-contained PHQ-15. ALL 15 items use the 0–2 bother scale (incl. sleep
// and fatigue items 14–15). Cross-battery item-bank alignment (PCOR-MII) is tracked separately.

CodeSystem: MII_CS_PRO_PHQ_15_Answers
Id: mii-cs-pro-phq-15-answers
Title: "MII CS PRO PHQ-15 Answers"
Description: "MII-controlled bother severity answer scale for PHQ-15 (0–2). German primary (PHQ-D). Enables reliable ordinal() score calculation via SDC calculatedExpression."

* insert PR_CS_VS_Version
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-phq-15-answers"
* ^status = #active
* ^content = #complete
* ^language = #de

* #not-bothered "Nicht beeinträchtigt"
  * ^designation[+].language = #en
  * ^designation[=].value = "Not bothered at all"
* #bothered-a-little "Wenig beeinträchtigt"
  * ^designation[+].language = #en
  * ^designation[=].value = "Bothered a little"
* #bothered-a-lot "Stark beeinträchtigt"
  * ^designation[+].language = #en
  * ^designation[=].value = "Bothered a lot"
