CodeSystem: MII_CS_PRO_WHODAS_12
Id: mii-cs-pro-whodas-12
Title: "MII CS PRO WHODAS 2.0 12-Item Response Scale and Item Codes"
Description: "CodeSystem for the WHO Disability Assessment Schedule 2.0, 12-item self-administered version (WHODAS-12), with answer codes and item codes. German (de-DE) primary text from the validated PCOR-MII Item Level Dictionary (MASTER_3EntitiesOverview.xlsx). Ordinal scoring weights are applied at the Questionnaire level via ordinalValue extensions. NOTE: WHODAS 2.0 © WHO 2010 - electronic reproduction requires written WHO permission; reproduced here for review only, NOT for publication until licensing is confirmed."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-whodas-12"
* insert PR_CS_VS_Version
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete

// ============================================================================
// Answer codes: 5-point ordinal scale (0-4), shared by all 12 items
// German primary text per PCOR-MII validated dictionary.
// Scoring weights applied at the Questionnaire level via ordinalValue.
// ============================================================================

* #whodas12-answer-0 "keine"
* #whodas12-answer-1 "geringe"
* #whodas12-answer-2 "mäßige"
* #whodas12-answer-3 "starke"
* #whodas12-answer-4 "sehr starke/nicht möglich"

// ============================================================================
// Item codes: 12 items across 6 ICF domains
// (Cognition, Mobility, Self-care, Getting along, Life activities, Participation)
// German primary text per PCOR-MII validated dictionary (variable IDs WHODAS12_01..12).
// ============================================================================

* #whodas12-q01 "längere Zeit (ca. 30 min) zu stehen?"
* #whodas12-q02 "Ihren Haushaltspflichten nachzukommen?"
* #whodas12-q03 "Neue Aufgaben zu lernen (z.B. erlernen an einen neuen Ort zu gelangen, den sie nicht kannten?)"
* #whodas12-q04 "Wie viele Schwierigkeiten hatten Sie, an gesellschaftlichen Aktivitäten (wie z.B. Festlichkeiten, religiöse oder andere Aktivitäten) in der gleichen Art und Weise teilzunehmen, wie jeder andere?"
* #whodas12-q05 "Wie sehr wurden Sie durch Ihren gesundheitlichen Zustand emotional belastet?"
* #whodas12-q06 "Sich auf etwas für 10 Minuten zu konzentrieren?"
* #whodas12-q07 "Eine längere Strecke (ca. einen Kilometer) zu Fuß zu gehen?"
* #whodas12-q08 "Ihren gesamten Körper zu waschen?"
* #whodas12-q09 "sich anzuziehen?"
* #whodas12-q10 "Im Umgang mit anderen Personen, die Sie nicht kennen?"
* #whodas12-q11 "Eine Freundschaft aufrechtzuerhalten?"
* #whodas12-q12 "Bei der Bewältigung des Arbeits-/Schulalltags?"
