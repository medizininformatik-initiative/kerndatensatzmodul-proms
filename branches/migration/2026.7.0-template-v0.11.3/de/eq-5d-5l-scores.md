# EQ-5D-5L Scores - MII IG PRO v2026.7.0

* [**Table of Contents**](toc.md)
* [**PRO Library**](pro-library.md)
* **EQ-5D-5L Scores**

## EQ-5D-5L Scores

Der EQ-5D-5L generiert drei verschiedene Score-Typen, die unterschiedliche Aspekte der gesundheitsbezogenen Lebensqualität erfassen. Diese Scores werden durch ObservationDefinitions spezifiziert und können aus den QuestionnaireResponse-Daten extrahiert werden.

### Score-Typen

#### 1. EQ-5D-5L Index Score

Der Index Score ist ein einzelner Wert, der den Gesundheitszustand auf einer Skala von -0.661 bis 1 darstellt, wobei 1 perfekte Gesundheit repräsentiert.

**ObservationDefinition: mii-obsdef-pro-score-eq5d5l-index**

| | |
| :--- | :--- |
| **Titel** | MII ObsDef PRO Score EQ-5D-5L Index |
| **SNOMED CT Code** | 736534008 - EuroQol five dimension five level index value (observable entity) |
| **MII Code** | euroqol-eq5d5l-index |
| **Datentyp** | Quantity |
| **Einheit** | 1 (UCUM) |
| **Wertebereich** | -0.661 bis 1.000 |
| **Dezimalstellen** | 3 |
| **Interpretation** | Höhere Werte zeigen besseren Gesundheitszustand an |

#### 2. EQ-5D-5L VAS Score

Die Visual Analog Scale (VAS) erfasst die selbsteingeschätzte Gesundheit auf einer Skala von 0 (schlechtester vorstellbarer Gesundheitszustand) bis 100 (bester vorstellbarer Gesundheitszustand).

**ObservationDefinition: mii-obsdef-pro-score-eq5d5l-vas**

| | |
| :--- | :--- |
| **Titel** | MII ObsDef PRO Score EQ-5D-5L VAS |
| **SNOMED CT Code** | 736535009 - EuroQol visual analogue score (observable entity) |
| **MII Code** | euroqol-eq5d5l-vas |
| **Datentyp** | Quantity |
| **Einheit** | 1 (UCUM) |
| **Wertebereich** | 0 bis 100 |
| **Dezimalstellen** | 0 |
| **Interpretation** | Höhere Werte zeigen besseren Gesundheitszustand an |

#### 3. EQ-5D-5L Profil

Das Profil ist eine fünfstellige Zahlenkombination (z.B. 21234), die den Gesundheitszustand über alle fünf Dimensionen darstellt. Jede Ziffer repräsentiert das Antwortlevel (1-5) für eine Dimension.

**ObservationDefinition: mii-obsdef-pro-score-eq5d5l-profile**

| | |
| :--- | :--- |
| **Titel** | MII ObsDef PRO Score EQ-5D-5L Profile |
| **MII Code** | euroqol-eq5d5l-profile |
| **Datentyp** | String |
| **Format** | 5-stellige Zahl (z.B. "21234") |
| **Interpretation** | Jede Ziffer (1-5) repräsentiert den Schweregrad in einer Dimension |

### Berechnungsmethodik

Alle drei Scores basieren auf der Methode:

* **SNOMED CT**: 73041000052103 - EuroQoL five dimension five level questionnaire (assessment scale)

Die Berechnung erfolgt entweder:

1. **Client-seitig**: Direkt im Questionnaire durch SDC calculated expressions
1. **Server-seitig**: Durch Extraktion und Transformation der QuestionnaireResponse-Daten

### Referenzen

Die Score-Definitionen basieren auf der Publikation:

* [https://doi.org/10.1016/j.jad.2017.08.060](https://doi.org/10.1016/j.jad.2017.08.060)

-------

### Observation Profile

#### EQ-5D-5L Index Score

Die vollständige Elementstruktur finden Sie in der [Profildefinition](StructureDefinition-mii-pr-pro-observation-eq5d5l-index.md).

-------

#### EQ-5D-5L VAS Score

Die vollständige Elementstruktur finden Sie in der [Profildefinition](StructureDefinition-mii-pr-pro-observation-eq5d5l-vas.md).

-------

#### EQ-5D-5L Profile

Die vollständige Elementstruktur finden Sie in der [Profildefinition](StructureDefinition-mii-pr-pro-observation-eq5d5l-profile.md).

-------

### ObservationDefinition Instanzen

Die ObservationDefinition-Ressourcen spezifizieren die Messmethodik und Referenzbereiche für die EQ-5D-5L Scores. Diese Instanzen basieren auf dem MII_PR_PRO_Score_Blueprint Profil.

#### Implementierte ObservationDefinitions:

* **EQ-5D-5L Index**: `mii-obsdef-pro-score-eq5d5l-index` 
* SNOMED: 736534008 "EuroQol five dimension five level index value"
* Wertebereich: -0.661 bis 1.000
 
* **EQ-5D-5L VAS**: `mii-obsdef-pro-score-eq5d5l-vas` 
* SNOMED: 736535009 "EuroQol visual analogue score"
* Wertebereich: 0 bis 100
 
* **EQ-5D-5L Profile**: `mii-obsdef-pro-score-eq5d5l-profile` 
* Format: 5-stellige Zahl (z.B. "21234")
 

Diese ObservationDefinitions werden von den Observation-Profilen über das `instantiates` Element referenziert.

**Technische Einschränkung**: ObservationDefinition-Instanzen besitzen in FHIR R4 keine kanonischen URLs, weshalb sie von einigen IG-Publishing-Tools nicht direkt gerendert werden können.

