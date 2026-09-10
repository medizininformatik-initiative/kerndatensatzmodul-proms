<!-- markdownlint-disable MD041 -->
<!-- Split from the former terminology.md per the TF-KDS-agreed menu structure (one
     page per artifact type); SNOMED CT version policy from the meta wiki page
     "Terminology Version Policy". The IG Publisher lists the ValueSets on the
     artifact pages automatically; this page carries the MII notes on them.
     German mirror: input/translations/de/pagecontent/value-sets.md. -->


### Value Sets

This page describes the ValueSets of the **PRO** module (naming
convention `MII_VS_<Module>_<Name>`). For general guidance on using codes, see
[FHIR Terminology](http://hl7.org/fhir/R4/terminologies.html); the code systems
the sets draw from are described on the [Code Systems](code-systems.html) page.

{:.bg-info}
**Expansions:** ValueSet expansions in this guide are produced by a FHIR
terminology server — SU-TermServ if the client certificate is configured,
otherwise the public HL7 server `tx.fhir.org` (in which case some KDS-specific
ValueSets may not expand completely).

**SNOMED CT** is used to *identify instruments* — assessment-scale concepts
such as `273446001` (EORTC QLQ-C30) or `273524006` (HADS) — not for answer
scales. The edition and version follow the KDS-wide
[Terminology Version Policy](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki)
of the meta module; this module pins no SNOMED edition of its own. Expansion
parameters are pinned centrally via the module's
[expansion manifest](Parameters-mii-param-pro-manifest.html).

The **answer scales** are MII-controlled ValueSets over the module's own
CodeSystems: each answer concept carries its scoring weight as an
`itemWeight` property, which is what makes the calculated expressions
(`.weight()`) reliable — the core of the module's
[terminology strategy](terminologie.html).
