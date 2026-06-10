// ============================================================================
// PROMIS Copyright & License RuleSet
// ============================================================================
// Layered attribution for PROMIS-based Questionnaire instances.
//
// Three independent IP layers are involved:
//   1. FHIR resource scaffolding (linkIds, extensions, score calculations,
//      observation extraction logic) — © Medizininformatik-Initiative (MII)
//   2. PROMIS item content (item text, response options, scoring algorithms,
//      IRT parameters) — © PROMIS Health Organization (Northwestern University)
//   3. Official German translations — provided by PCOR-MII (Patient-Centered
//      Outcomes Research within the Medizininformatik-Initiative); curated by
//      the PROMIS National Center Germany (CPCOR, Charité – Universitätsmedizin
//      Berlin; head: Felix Fischer)
//
// Plus: LOINC codes used for items and answer options are © Regenstrief.
//
// Apply via:  * insert PROMIS_Copyright_DE
// ============================================================================

RuleSet: PROMIS_Copyright_DE
* publisher = "Medizininformatik-Initiative (MII) – PRO Modul"
* copyright = """
The FHIR Questionnaire resource (linkIds, extensions, score calculation logic, observation extraction definitions) is part of the MII PRO Module and is licensed under CC-BY 4.0.

The PROMIS items contained herein (item text, response options, scoring algorithms, IRT parameters) are © 2008–2024 PROMIS Health Organization and PROMIS Cooperative Group. PROMIS® is a registered trademark. See https://www.healthmeasures.net for the upstream license.

The official German translations are provided by PCOR-MII (Patient-Centered Outcomes Research within the Medizininformatik-Initiative) and curated by the PROMIS National Center Germany (CPCOR, Charité – Universitätsmedizin Berlin; head: Felix Fischer).

Institutional use outside the PCOR-MII / MII context requires a usage request to CPCOR: https://cpcor.charite.de/promis_national_center_deutschland/nutzungsanfragen

LOINC® codes are © Regenstrief Institute, Inc. and used under the LOINC license: https://loinc.org/license/
"""

// Primary upstream source — PROMIS / HealthMeasures
* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueReference.reference = "https://www.healthmeasures.net/explore-measurement-systems/promis"
* useContext[=].valueReference.display = "PROMIS (Patient-Reported Outcomes Measurement Information System)"

// German translation source — CPCOR Charité
* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueReference.reference = "https://cpcor.charite.de/promis_national_center_deutschland"
* useContext[=].valueReference.display = "PROMIS National Center Deutschland (CPCOR Charité) — Curator of the official German translations provided by PCOR-MII"

// Contact for licensing inquiries
* contact[+].name = "PROMIS National Center Deutschland (CPCOR)"
* contact[=].telecom[+].system = #url
* contact[=].telecom[=].value = "https://cpcor.charite.de/promis_national_center_deutschland/nutzungsanfragen"
