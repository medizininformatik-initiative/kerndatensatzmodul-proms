<!-- markdownlint-disable MD041 -->
<!-- Deutsche Übersetzung von input/pagecontent/value-sets.md (aufgeteilt aus
     der früheren Seite terminology.md gemäß der TF-KDS-abgestimmten Menüstruktur).
     Der IG-Publisher listet die ValueSets auf den Artefakt-Seiten automatisch;
     hier stehen die MII-Hinweise dazu. -->


### ValueSets

Diese Seite beschreibt die ValueSets des Moduls **PRO**
(Namenskonvention `MII_VS_<Modul>_<Name>`). Allgemeine Hinweise zur Verwendung
von Codes: siehe
[FHIR Terminology](http://hl7.org/fhir/R4/terminologies.html); die
zugrunde liegenden CodeSystems beschreibt die Seite
[CodeSystems](code-systems.html).

{:.bg-info}
**Expansionen:** ValueSet-Expansionen dieses Leitfadens werden über einen
FHIR-Terminologieserver erzeugt — über SU-TermServ, sofern das
Client-Zertifikat konfiguriert ist, sonst über den öffentlichen HL7-Server
`tx.fhir.org` (dann expandieren einige KDS-spezifische ValueSets ggf. nicht
vollständig).

**SNOMED CT** dient der *Identifikation von Instrumenten* —
Assessment-Scale-Konzepte wie `273446001` (EORTC QLQ-C30) oder `273524006`
(HADS) — nicht den Antwortskalen. Edition und Version folgen der KDS-weiten
[Terminology Version Policy](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki)
des Meta-Moduls; dieses Modul pinnt keine eigene SNOMED-Edition.
Expansionsparameter sind zentral über das
[Expansion-Manifest](Parameters-mii-param-pro-manifest.html) des Moduls
fixiert.

Die **Antwortskalen** sind MII-kontrollierte ValueSets über den eigenen
CodeSystems des Moduls: Jedes Antwortkonzept trägt sein Scoring-Gewicht als
`itemWeight`-Property — das macht die berechneten Ausdrücke (`.weight()`)
verlässlich und ist der Kern der
[Terminologie-Strategie](terminologie.html) des Moduls.
