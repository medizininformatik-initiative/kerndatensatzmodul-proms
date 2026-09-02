# EURONET-SOMA - MII IG PRO v2026.7.0

## EURONET-SOMA

 
There is no translation page available for the current page, so it has been rendered in the default language 

### Klinischer Kontext

**EURONET-SOMA** ist keine Skala im üblichen Sinn, sondern eine Empfehlung des European Network on Somatic Symptom Disorders für **zwei Einzelitems**, die in klinischen Studien zu somatischen Belastungsstörungen einheitlich erhoben werden sollen:

1. die**Gesamtstärke**der Körperbeschwerden in den letzten sieben Tagen
1. die**Beeinträchtigung**durch diese Beschwerden im selben Zeitraum

Beide werden auf einer numerischen Ratingskala von 0 bis 10 beantwortet. Der Zweck ist Vergleichbarkeit: Studien, die sonst unterschiedliche Instrumente verwenden, sollen zumindest über diese beiden Kernfragen aufeinander beziehbar bleiben.

**Kein Summenscore.** Die beiden Items werden einzeln ausgewertet und nicht zu einem gemeinsamen Wert verrechnet — sie messen unterschiedliche Konstrukte.

### FHIR-Implementierung

> **Sprachstrategie:** Englisch als Primärsprache (Original nach Rief et al. 2017, Figure 1, dort mit Itemtexten und Ankerbeschriftungen abgedruckt), deutsche Texte als Translations aus dem PCOR-MII Item Level Dictionary.

#### Questionnaire

**Canonical URL:** `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-euronet-soma`

**Capabilities:** Displayable, Collectable, Extractable, Domain-aligned — **nicht** Calculatable, da kein Score gebildet wird.

**Besonderheiten:**

* linkIds `euronet-soma-q01` (Gesamtstärke) und `euronet-soma-q02` (Beeinträchtigung).
* Numerische Modellierung statt kodierter Antworten: `type = #integer` mit `minValue` 0, `maxValue` 10 und `sliderStepValue` 1 — kein CodeSystem, kein `answerValueSet`.
* Die Ankertexte der Skalenenden stehen als eigene `display`-Kind-Items, damit sie auch in Renderern ohne Slider-Unterstützung sichtbar bleiben.
* `observation-extract` steht direkt auf den beiden Items (nicht auf einem Score-Item, da keines existiert), sodass jedes Item einzeln als Observation extrahiert wird.
* Weder LOINC noch SNOMED CT führen passende Codes; die vorhandenen LOINC-Codes zu „somatic symptom" gehören zu anderen Instrumenten und wurden bewusst nicht verwendet.

> **Bekannte Abweichung in der Quelldatei:** Das PCOR-MII Item Level Dictionary gibt für beide Items denselben deutschen Ankertext an, während das englische Original je Item unterschiedliche Anker verwendet (Intensität: „No symptoms at all"/„Worst possible symptoms"; Beeinträchtigung: „Not at all"/„Interfered completely"). Die Quelle wurde wortgetreu übernommen und nicht angeglichen; die Klärung mit dem PCOR-Team steht aus.

Die vollständige Ressource: [Questionnaire-Definition](Questionnaire-mii-qst-pro-euronet-soma.md).

#### Score-Repräsentation

Kein Score-Item und keine ObservationDefinition. Beide Items werden als eigenständige Observations extrahiert.

### Lizenz

**Frei verfügbar** laut DIZ-Implementierungsliste PCOR-MII; die deutschen Formulierungen sind in der Originalpublikation enthalten.

### Quellen

* Rief W, Burton C, Frostholm L, Henningsen P, Kleinstäuber M, Kop WJ, Löwe B, Martin A, Persoons P, Rosmalen JGM, Schröder A, Shedden-Mora M, Toussaint A, van der Feltz-Cornelis C. Core Outcome Domains for Clinical Trials on Somatic Symptom Disorder, Bodily Distress Disorder, and Functional Somatic Syndromes: European Network on Somatic Symptom Disorders Recommendations. **Psychosomatic Medicine** 2017;79(9):1008–1015. doi:10.1097/PSY.0000000000000502

