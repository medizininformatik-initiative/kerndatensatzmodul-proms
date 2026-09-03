<!-- TODO:REVIEW — English page derived from the German original during the
     template migration (Gate C). The German text under
     input/translations/de/pagecontent/ is the authored source. -->

### Clinical Context

The **WHODAS 2.0** (WHO Disability Assessment Schedule 2.0) is the WHO's generic instrument for assessing **functioning and disability** across all conditions, methodologically aligned with the ICF (International Classification of Functioning, Disability and Health). This implementation uses the **12-item short form (self-report)**.

The 12 items cover **six ICF domains**: cognition, mobility, self-care, getting along with people, life activities and participation. They capture impairment over the **past 30 days** on a five-point scale (0 = none, 1 = mild, 2 = moderate, 3 = severe, 4 = extreme or cannot do).

**Scoring and interpretation** (sum score 0–48):
- Simple scoring (WHO "simple scoring"): the sum of the 12 item values (0–4 each), range **0–48**.
- **Higher values = greater impairment** (a limitation score).
- The complex, IRT-based WHO scoring (0–100) is not yet represented in this version (follow-up work).

**Placement in the MII PRO module:** PCOR-MII lists WHODAS-12 under the domain "Generic Health" / category "Generic Health Status" together with PROMIS Global Health. A planned conversion of the WHODAS sum score onto the PROMIS Generic/Global Health scale (ConceptMap/CQL) is envisaged as follow-up work.

### FHIR Implementation

> **Language strategy:** English as the primary language (the original instrument), German texts as translations/designations. The German item wording follows the validated PCOR-MII Item Level Dictionary.

**Canonical URL:** `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-whodas-whodas12`

**Implementation notes:**
- linkIds `whodas-whodas12-q01` … `whodas-whodas12-q12`.
- Answer scale via `answerValueSet` (`mii-vs-pro-whodas-12-answer-list`); ordinal weights (0–4) as a property on the CodeSystem concepts (`mii-cs-pro-whodas-12`).
- Automatic score calculation via FHIRPath (`.ordinal().sum()`). Note: resolving `.ordinal()` from an `answerValueSet` is engine-dependent; robust scoring via CQL/server.

**Score representation:**
- **ObservationDefinition:** `mii-obsdef-pro-score-whodas12-simple-sum` — value range 0–48, SNOMED `715823002`, MII score catalogue `whodas12-simple-sum`, direction: higher = greater impairment.

### License

> **Important:** WHODAS 2.0 is **© World Health Organization 2010** (*Measuring Health and Disability: Manual for WHODAS 2.0*, ISBN 9789241547598).

- The WHO permits **clinicians to reproduce WHODAS 2.0 for use with their own patients — free of charge and without separate permission**.
- **Any other use — in particular embedding it in electronic data capture systems** (such as this IG) — **requires a WHO licence agreement** via the WHO Classifications licensing process. This is **free for non-commercial users** and requires online acceptance of a usage agreement.
- **Translations** additionally require WHO approval.
- Only the **MII's own FHIR content** (profiles, codes, scoring logic) is under **CC0**; the **WHODAS 2.0 item text remains © WHO**.

These terms are recorded machine-readably in the `copyright` element of the Questionnaire and CodeSystem resources.

### Sources

- World Health Organization. *Measuring Health and Disability: Manual for WHO Disability Assessment Schedule (WHODAS 2.0)*. Geneva: WHO; 2010. ISBN 9789241547598.
- Kirchberger I, et al. Validation of the WHODAS 2.0 in a population-based sample (MONICA/KORA). *Population Health Metrics* 2014;12:27. doi:10.1186/s12963-014-0027-8
- Saltychev M, et al. Psychometric properties of the WHODAS 2.0 — systematic review. PMID 31335215.

**Example response:** [WHODAS-12 QuestionnaireResponse](QuestionnaireResponse-mii-exa-pro-whodas12-response-01.html)
