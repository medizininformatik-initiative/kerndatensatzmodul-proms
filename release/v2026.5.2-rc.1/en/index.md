# Home - MII IG PRO v2026.5.2-rc.1

## Home

 
This page includes translations from the original source language in which the guide was authored. Information on these translations and instructions on how to provide feedback on the translations can be found [here](translationinfo.md). 

This specification of the PROs, PROMs, and Derived Metrics module describes the FHIR representation of the Patient-Reported Outcomes (PROs) core dataset module of the Medical Informatics Initiative (Medizininformatik-Initiative, MII).

| | |
| :--- | :--- |
| Date | 30.03.2026 |
| Version | 2026.2.0 |
| Status | active |
| Realm | DE |

### Objective

The MII PRO module standardizes the collection and analysis of patient-reported health data for the German healthcare system. It enables cross-site comparability of PRO data through uniform FHIR-based implementations.

### Scope of the Specification

#### Production-Ready Instruments

* **PHQ-9**: Depression screening with automatic score calculation
* **EQ-5D-5L**: Quality of life with index, VAS, and profile scores

#### Technical Preview

* **PROMIS-29**: Multi-domain health status (7 domains)
* **EORTC QLQ-C30**: Oncological quality of life
* **DASS-21**: Depression, Anxiety, and Stress
* **BDI-II**: Beck Depression Inventory (license reference)

#### Core Functionality

* **SDC-based questionnaires** with advanced rendering and calculation capabilities
* **Capability architecture** for flexible use case scenarios
* **Domain-based scoring** for harmonization across instruments
* **MII terminology** for reliable score calculations

### Technical Foundations

The implementation is based on:

* FHIR R4 (4.0.1)
* SDC (Structured Data Capture) 3.0.0
* HL7 Terminology 6.4.0

### Imprint

This guide was created within the Medical Informatics Initiative and is subject to the coordination procedure of the Interoperability Forum and the Technical Committees of HL7 Germany e.V. per the governance process.

### Contact

* Thomas Debertshaeuser, Berlin Institute of Health (Charite)
* Mathias Rose, Charite - Universitaetsmedizin Berlin
* Fabian Prasser, Berlin Institute of Health (Charite)
* Karoline Buckow, TMF – Technology and Methodology Platform for Networked Medical Research e.V.
* Franziska Klepka, TMF – Technology and Methodology Platform for Networked Medical Research e.V.

Questions about this publication can be posted at any time on [chat.fhir.org](https://chat.fhir.org) in the 'german/mi-initiative' stream.

Comments and feedback are welcome as issues in the [GitHub project](https://github.com/medizininformatik-initiative/kerndatensatzmodul-proms/issues).

### Authors (in alphabetical order)

* Thomas Debertshaeuser, Berlin Institute of Health (Charite)
* Felix Fischer, Charite - Universitaetsmedizin Berlin
* Thimo Hoelter, Berlin Institute of Health (Charite)
* Marcel Susky, Technical University of Dresden, Digital Health Research Group
* Christian Zilske, Berlin Institute of Health (Charite)

### Copyright Notice, Terms of Use

Copyright 2019+: TMF e. V., Charlottenstrasse 42, 10117 Berlin

The content of this specification is public. There are no restrictions on reuse or publication rights.

For the usage rights of the underlying FHIR technology, see the FHIR base specification.

Some code systems used are published and maintained by other organizations. The copyright of the respective publishers applies.

### Disclaimer

The content of this document is public. Please note that parts of this document are based on FHIR version R4, for which the copyright of HL7 International applies.

