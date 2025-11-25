/**
 * MII Logical Model für Patient-Reported Outcomes (PRO)
 * 
 * Dieses Modell beschreibt die konzeptuelle Struktur von PRO-Daten
 * basierend auf dem Informationsmodell aus dem MII PRO Modul.
 * Es dient als Grundlage für die FHIR-Profile und zeigt die Mappings
 * zu den entsprechenden FHIR-Ressourcen.
 * 
 * Basiert auf den UML-Diagrammen in input/Images/Logical_Model_UML_*.pu
 */

Logical: MII_LM_PRO
Id: mii-lm-pro
Title: "MII Logical Model Modul PRO - Patient-Reported Outcomes und abgeleitete Metriken"
Description: "Logisches Modell für die strukturierte Erfassung und Verarbeitung von Patient-Reported Outcomes (PROs) inklusive Fragebögen, Antworten, Scores und Domain-Mappings."
* ^status = #active
* ^experimental = true
* ^version = "2025.0.0-alpha"
* ^publisher = "Medizininformatik Initiative"
* ^contact.name = "Medizininformatik Initiative"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.medizininformatik-initiative.de"

// ==================== HAUPTKOMPONENTEN ====================

* Fragebogen 1..* BackboneElement "Fragebogen (Questionnaire)" "Strukturierter Fragebogen zur Erfassung von Patient-Reported Outcomes"
  * FragebogenID 1..1 string "Fragebogen-ID" "Eindeutige Identifikation des Fragebogens"
  * FragebogenNameVollstaendig 0..1 string "Vollständiger Name" "Ausgeschriebener Name des Fragebogens (z.B. 'Patient Health Questionnaire-9')"
  * FragebogenNameAbkuerzung 0..1 string "Abkürzung" "Kurzbezeichnung des Fragebogens (z.B. 'PHQ-9')"
  * FragebogenVersion 1..1 string "Version" "Versionsnummer des Fragebogens nach SemVer"
  * FragebogenIDIntern 0..1 string "Interne ID" "Einrichtungsspezifische ID"
  * FragebogenStandardID 0..1 string "Standard-ID" "ID aus Standardterminologie (z.B. LOINC)"
  * FragebogenStandardSystem 0..1 uri "Codesystem" "URI des verwendeten Codesystems"
  * FragebogenStandardVersion 0..1 string "Codesystem-Version" "Version des verwendeten Codesystems"
  * Fragen 1..* BackboneElement "Fragen" "Einzelne Fragen/Items des Fragebogens"
    * FragenIDIntern 1..1 string "Frage-ID" "Eindeutige ID der Frage innerhalb des Fragebogens"
    * FragenIDStandardID 0..1 string "Standard Frage-ID" "ID der Frage aus Standardterminologie"
    * FragenIDStandardSystem 0..1 uri "Frage Codesystem" "Codesystem der Frage"
    * FragenIDStandardVersion 0..1 string "Frage Codesystem-Version" "Version des Frage-Codesystems"
    * Fragetext 1..1 string "Fragetext" "Der anzuzeigende Fragetext"
    * FragetextAusfuellhinweise 0..1 string "Ausfüllhinweise" "Instruktionen zum Ausfüllen"
    * Anzeigemodalitaet 0..1 code "Anzeigemodus" "Art der Darstellung (z.B. Radio-Button, Slider)"
    * FragetextAusgefuelltWenn 0..1 string "Bedingte Anzeige" "FHIRPath-Expression für bedingte Anzeige"
    * AntwortVorlage 1..1 BackboneElement "Antwortoptionen" "Definierte Antwortmöglichkeiten"
      * Antworttyp 1..1 code "Antworttyp" "Datentyp der Antwort (boolean, integer, string, etc.)"
      * AntwortUhrzeit 0..1 boolean "Zeiterfassung" "Ob Zeitpunkt der Antwort erfasst wird"
      * AntwortDatum 0..1 BackboneElement "Datumsformat" "Spezifikation für Datumsantworten"
        * minDatum 0..1 date "Minimales Datum" "Frühestes erlaubtes Datum"
        * Datumsgenauigkeit 0..1 code "Genauigkeit" "Tag, Monat oder Jahr"
      * AntwortNumerischerWert 0..1 BackboneElement "Numerische Antwort" "Spezifikation für numerische Antworten"
        * AntwortNumerischerWertKleinster 0..1 decimal "Minimum" "Kleinster erlaubter Wert"
        * AntwortNumerischerWertGroesster 0..1 decimal "Maximum" "Größter erlaubter Wert"
        * AntwortNumerischerWertEinheit 0..1 code "Einheit" "UCUM-Code der Einheit"
        * AntwortNumerischerWertPraezision 0..1 integer "Dezimalstellen" "Anzahl der Nachkommastellen"
      * AntwortString 0..1 BackboneElement "Text-Antwort" "Spezifikation für Textantworten"
        * AntwortStringMinLength 0..1 integer "Minimale Länge" "Minimale Anzahl Zeichen"
        * AntwortStringMaxLength 0..1 integer "Maximale Länge" "Maximale Anzahl Zeichen"
      * AntwortAuswahl 0..* BackboneElement "Auswahlantworten" "Vordefinierte Antwortoptionen"
        * Mehrfachauswahl 0..1 boolean "Mehrfachauswahl" "Ob mehrere Optionen wählbar sind"
        * AntwortStandardValueSetReference 0..1 uri "ValueSet Referenz" "Verweis auf externes ValueSet"
        * AntwortAuswahlOption 1..* BackboneElement "Antwortoption" "Einzelne Antwortoption"
          * AntwortOptionText 1..1 string "Anzeigetext" "Text der Antwortoption"
          * AntwortOptionExklusive 0..1 boolean "Exklusiv" "Schließt andere Optionen aus"
          * AntwortOptionCodeIntern 0..1 code "Interner Code" "Einrichtungsspezifischer Code"
          * AntwortOptionStandardCode 0..1 code "Standard Code" "Code aus Standardterminologie"
          * AntwortOptionStandardSystem 0..1 uri "Codesystem" "URI des Codesystems"
          * AntwortOptionStandardSystemVersion 0..1 string "Codesystem-Version" "Version des Codesystems"
          * AntwortOptionGewicht 0..1 decimal "Scoring-Gewicht" "Numerischer Wert für Score-Berechnung"
  * Autoren 0..* BackboneElement "Autoren" "Ersteller des Fragebogens"
    * Autor 1..1 string "Name" "Name des Autors oder der Organisation"
  * Copyright 0..1 string "Copyright" "Urheberrechtsinformationen"

* AusgefuellterFragebogen 0..* BackboneElement "Ausgefüllter Fragebogen (QuestionnaireResponse)" "Ausgefüllte Instanz eines Fragebogens"
  * FragebogenIDIntern 1..1 string "Referenz zum Fragebogen" "Verweis auf den zugrundeliegenden Fragebogen"
  * Antwort 0..* BackboneElement "Antworten" "Erfasste Antworten"
    * AntwortErfasst 0..1 boolean "Antwort vorhanden" "Ob eine Antwort gegeben wurde"
    * FragenIntern 1..1 string "Frage-Referenz" "Verweis auf die beantwortete Frage"
    * AntwortCode 0..1 code "Antwort-Code" "Codierte Antwort"
    * AntwortNummer 0..1 decimal "Numerische Antwort" "Zahlenwert als Antwort"
    * AntwortString 0..1 string "Text-Antwort" "Freitext als Antwort"
    * AntwortDatum 0..1 date "Datums-Antwort" "Datum als Antwort"
    * Erfassungsdatum 0..1 dateTime "Erfassungszeitpunkt" "Zeitpunkt der Antworterfassung"
    * AntwortVorlage 0..1 BackboneElement "Gewählte Option" "Bei Auswahlantworten"
      * Antworttyp 1..1 code "Typ" "Typ der gewählten Antwort"
      * Antwortinhalt 0..1 string "Inhalt" "Inhalt der gewählten Option"

* Score 0..* BackboneElement "Scores (Observation)" "Berechnete Scores aus Fragebögen"
  * ScoreVorlage 1..1 BackboneElement "Score-Definition (ObservationDefinition)" "Template für Score-Berechnung"
    * ScoreVorlageID 1..1 string "Score-ID" "Eindeutige Identifikation des Score-Typs"
    * ScoreName 1..1 string "Score-Name" "Bezeichnung des Scores"
    * Scoreberechnung 1..1 BackboneElement "Berechnungsvorschrift" "Algorithmus zur Score-Berechnung"
      * ScoreBerechnungsID 1..1 string "Berechnungs-ID" "ID des Berechnungsalgorithmus"
      * ScoreDatentyp 1..1 code "Ergebnis-Datentyp" "Datentyp des berechneten Scores"
      * ScoreBerechnungsAlgorithmus 1..1 string "Algorithmus" "FHIRPath oder CQL Expression"
      * ScoreQuelle 0..1 uri "Quellenangabe" "Referenz zur Algorithmus-Dokumentation"
    * Domainenskala 0..* BackboneElement "Domain-Zuordnung" "Zuordnung zu Gesundheitsdomänen"
      * DomainID 1..1 string "Domain-ID" "ID der Gesundheitsdomäne"
      * DomainCode 0..1 code "Domain-Code" "Code der Domain (z.B. SNOMED)"
      * DomainTitel 0..1 string "Domain-Titel" "Name der Domain"
      * DomainBeschreibung 0..1 string "Beschreibung" "Beschreibung der Domain"
      * DomainSkalen 0..* BackboneElement "Skalen-Details" "Details zur Domain-Skala"
        * Minimum 0..1 decimal "Minimum" "Minimaler Skalenwert"
        * Maximum 0..1 decimal "Maximum" "Maximaler Skalenwert"
        * Skalenwert 0..1 code "Skalentyp" "Art der Skala (ordinal, interval, ratio)"
        * DomainenskalaDomainenskala 0..1 string "Subskalierung" "Verweis auf Unterskalen"
    * ScoreMapping 0..* BackboneElement "Score-Mapping" "Mapping zu anderen Scoring-Systemen"
      * SourceScoreID 1..1 string "Quell-Score" "ID des Ausgangs-Scores"
      * TargetScoreID 1..1 string "Ziel-Score" "ID des Ziel-Scores"
      * MappingScorewert 1..* BackboneElement "Wert-Mapping" "Konkrete Wertezuordnungen"
        * SourceValue 1..1 decimal "Quellwert" "Wert im Ausgangssystem"
        * TargetValue 1..1 decimal "Zielwert" "Wert im Zielsystem"
        * MappingExpression 0..1 string "Mapping-Formel" "Mathematische Transformation"
  * ScoreBerechnet 0..* BackboneElement "Berechnete Score-Instanz" "Konkret berechneter Score-Wert"
    * ScoreID 1..1 string "Score-Instanz-ID" "ID der Score-Berechnung"
    * ScoreVorlage 1..1 string "Score-Template" "Verweis auf Score-Definition"
    * ScoreBerechnung 1..1 string "Verwendeter Algorithmus" "Referenz zum Berechnungsalgorithmus"
    * Berechnungsdatum 1..1 dateTime "Berechnungszeitpunkt" "Zeitpunkt der Score-Berechnung"
    * ScoreInterpretation 0..1 code "Interpretation" "Klinische Interpretation (normal, auffällig, kritisch)"
    * BerechneterScorewert 1..1 decimal "Score-Wert" "Der berechnete numerische Wert"
  * ScoreFragebogenScore 0..* BackboneElement "Fragebogen-basierter Score" "Score direkt aus Fragebogen berechnet"
    * FragebogenVorlage 1..1 string "Fragebogen-Referenz" "Verweis auf Fragebogen-Template"
    * AusgefuellterFragebogen 1..1 string "Response-Referenz" "Verweis auf QuestionnaireResponse"
  * ScoreItembasierterScore 0..* BackboneElement "Item-basierter Score" "Score aus einzelnen Items/Antworten"
    * AusgefuellteAntworten 1..* string "Item-Referenzen" "Verweise auf einzelne Antwort-Items"

// ==================== DOMAIN MAPPINGS ====================

* Domaene 0..* BackboneElement "Gesundheitsdomänen" "Klassifikation nach Gesundheitsbereichen"
  * DomaeneID 1..1 string "Domain-ID" "Eindeutige ID der Domain"
  * DomaeneCode 0..1 code "Domain-Code" "Standardisierter Code (z.B. ICF)"
  * DomaeneTitel 1..1 string "Domain-Name" "Bezeichnung der Domain"
  * DomaeneBeschreibung 0..1 string "Beschreibung" "Detaillierte Beschreibung"
  * DomaeneSkaliert 0..1 BackboneElement "Skalierung" "Skalierungsinformationen"
    * DomaenenSkalenID 1..1 string "Skalen-ID" "ID der Domänenskala"
    * Minimum 0..1 decimal "Minimum" "Minimaler Wert"
    * Maximum 0..1 decimal "Maximum" "Maximaler Wert"
    * Skalenwert 0..1 code "Skalentyp" "Art der Skala"
  * Referenzpopulation 0..* BackboneElement "Referenzpopulation" "Normwerte für Populationen"
    * Altersbereich 0..1 string "Altersbereich" "z.B. '18-65 Jahre'"
    * Geschlecht 0..1 code "Geschlecht" "Geschlechtsspezifische Norm"
    * Indikation 0..1 string "Indikation" "Krankheitsspezifische Norm"
    * Mittelwert 0..1 decimal "Mittelwert" "Durchschnittswert der Population"
    * Standardabweichung 0..1 decimal "Standardabweichung" "Streuung der Werte"


// ==================== MAPPING DEFINITION ====================

Mapping: PRO-LogicalModel
Id: FHIR
Title: "PRO LogicalModel FHIR Mapping"
Source: MII_LM_PRO

// Fragebogen Mappings
* Fragebogen -> "Questionnaire" "Maps to FHIR Questionnaire resource"
* Fragebogen.FragebogenID -> "Questionnaire.url"
* Fragebogen.FragebogenNameVollstaendig -> "Questionnaire.title"
* Fragebogen.FragebogenNameAbkuerzung -> "Questionnaire.name"
* Fragebogen.FragebogenVersion -> "Questionnaire.version"
* Fragebogen.FragebogenStandardID -> "Questionnaire.code.code"
* Fragebogen.FragebogenStandardSystem -> "Questionnaire.code.system"
* Fragebogen.Fragen -> "Questionnaire.item"
* Fragebogen.Fragen.FragenIDIntern -> "Questionnaire.item.linkId"
* Fragebogen.Fragen.Fragetext -> "Questionnaire.item.text"
* Fragebogen.Fragen.AntwortVorlage.Antworttyp -> "Questionnaire.item.type"
* Fragebogen.Fragen.AntwortVorlage.AntwortAuswahl.AntwortAuswahlOption -> "Questionnaire.item.answerOption"
* Fragebogen.Copyright -> "Questionnaire.copyright"

// AusgefuellterFragebogen Mappings
* AusgefuellterFragebogen -> "QuestionnaireResponse" "Maps to FHIR QuestionnaireResponse resource"
* AusgefuellterFragebogen.FragebogenIDIntern -> "QuestionnaireResponse.questionnaire"
* AusgefuellterFragebogen.Antwort -> "QuestionnaireResponse.item"
* AusgefuellterFragebogen.Antwort.FragenIntern -> "QuestionnaireResponse.item.linkId"
* AusgefuellterFragebogen.Antwort.AntwortCode -> "QuestionnaireResponse.item.answer.valueCoding"
* AusgefuellterFragebogen.Antwort.AntwortNummer -> "QuestionnaireResponse.item.answer.valueDecimal"
* AusgefuellterFragebogen.Antwort.AntwortString -> "QuestionnaireResponse.item.answer.valueString"
* AusgefuellterFragebogen.Antwort.AntwortDatum -> "QuestionnaireResponse.item.answer.valueDate"
* AusgefuellterFragebogen.Antwort.Erfassungsdatum -> "QuestionnaireResponse.authored"

// Score Mappings
* Score.ScoreVorlage -> "ObservationDefinition" "Maps to FHIR ObservationDefinition resource"
* Score.ScoreVorlage.ScoreVorlageID -> "ObservationDefinition.id"
* Score.ScoreVorlage.ScoreName -> "ObservationDefinition.code.display"
* Score.ScoreVorlage.Scoreberechnung.ScoreDatentyp -> "ObservationDefinition.quantitativeDetails.type"
* Score.ScoreBerechnet -> "Observation" "Maps to FHIR Observation resource"
* Score.ScoreBerechnet.ScoreID -> "Observation.id"
* Score.ScoreBerechnet.BerechneterScorewert -> "Observation.valueQuantity.value"
* Score.ScoreBerechnet.Berechnungsdatum -> "Observation.effectiveDateTime"
* Score.ScoreBerechnet.ScoreInterpretation -> "Observation.interpretation"
* Score.ScoreFragebogenScore.AusgefuellterFragebogen -> "Observation.derivedFrom[QuestionnaireResponse]"
