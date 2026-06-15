# Validation - MII IG PRO v2026.4.1

## Validation

Diese Seite dokumentiert bekannte Validierungsfehler, die bei der FHIR-Validierung auftreten, jedoch keine tatsächlichen Probleme mit den Ressourcen darstellen.

## Bekannte Fehler

### 1. Sprachcode-Systeminferenz (UNABLE_TO_INFER_CODESYSTEM)

**Fehlermeldung:**

```
The System URI could not be determined for the code 'en' in the ValueSet 'http://hl7.org/fhir/ValueSet/all-languages'

```

**Ursache:** Die Translation-Extension verwendet `valueCode` für Sprachcodes (z.B. `#en`, `#de`). Der Validator kann das URI-System (`urn:ietf:bcp:47`) nicht aus dem `all-languages` ValueSet ableiten, da es sich um einen reinen Code ohne Systemangabe handelt.

**Betroffene Ressourcen:**

* PHQ-9 Questionnaire (LOINC-Antwortcodes mit deutschen Übersetzungen)
* Alle Ressourcen mit Translation-Extensions

**Bewertung:** Dies ist ein Validator-/Terminologieserver-Konfigurationsproblem, kein Datenfehler. Das Binding auf `all-languages` ist "preferred", nicht "required", daher sind die Ressourcen konform zur Spezifikation.

**Referenzen:**

* [HL7 Translation Extension](https://build.fhir.org/ig/HL7/fhir-extensions/StructureDefinition-translation.html)
* [all-languages ValueSet](https://hl7.org/fhir/R4/valueset-all-languages.html)

### 2. LOINC Display-Namen (Wrong Display Name)

**Fehlermeldung:**

```
Wrong Display Name 'Überhaupt nicht' for http://loinc.org#LA6568-5 - should be 'Not at all'

```

**Ursache:** Die MII PRO-Implementierung verwendet deutsche Display-Namen für LOINC-Antwortcodes, um die klinische Nutzbarkeit im deutschen Gesundheitswesen zu gewährleisten. Der Validator erwartet die englischen LOINC-Originaldisplays.

**Betroffene Ressourcen:**

* PHQ-9 Questionnaire

**Bewertung:** Die englischen Originalbezeichnungen werden über Translation-Extensions bereitgestellt. Die deutschen Displays als primäre Anzeigewerte sind eine bewusste Designentscheidung für die deutsche Implementierung.

### 3. Terminologie-Validierung (Terminology_TX_NoValid_16)

**Fehlermeldung:**

```
No valid coding for 'en' from http://hl7.org/fhir/ValueSet/all-languages

```

**Ursache:** Zusammenhängend mit Problem #1 – der Validator kann den Sprachcode nicht gegen das ValueSet validieren.

**Bewertung:** Wird durch die Behebung der Sprachcode-Systeminferenz gelöst.

## Unterdrückte Fehler (advisor.json)

Die folgenden Fehlercodes werden in der CI-Validierung unterdrückt:

| | |
| :--- | :--- |
| `UNABLE_TO_INFER_CODESYSTEM` | Sprachcode-Systeminferenz nicht möglich |
| `Terminology_TX_NoValid_16` | Terminologie-Validierungsfehler für Sprachcodes |
| `Terminology_TX_NoValid_16@ImplementationGuide.definition.parameter.code` | Spezifische IG-Parameter-Validierung |
| `MSG_DRAFT` | Warnungen zu Draft-Status von Ressourcen |
| `dom-6` | DomainResource-Invariante |

## Konfiguration

Die Fehlerunterdrückung wird über die Datei `advisor.json` im Projektverzeichnis konfiguriert:

```
{
  "suppress" : [
    "UNABLE_TO_INFER_CODESYSTEM",
    "Terminology_TX_NoValid_16",
    ...
  ]
}

```

## Lokale Validierung einrichten

Um die FHIR-Validierung lokal durchzuführen, benötigen Sie folgende Komponenten:

### Voraussetzungen

1. **Java 17+**: OpenJDK 17 oder höher

```
# macOS mit Homebrew
brew install openjdk@17

```


1. **FHIR Validator CLI**: HAPI FHIR Validator herunterladen

```
mkdir -p ~/.fhir/validators
curl -L -o ~/.fhir/validators/validator_cli.jar \
  https://github.com/hapifhir/org.hl7.fhir.core/releases/latest/download/validator_cli.jar

```


1. **Terminologie-Server**(optional, aber empfohlen): Lokaler TX-Server für schnellere Validierung
* Standard-Endpoint: `http://localhost:3000`
* Ohne lokalen TX-Server wird der öffentliche HL7-Server verwendet (langsamer)

1. **SUSHI**: FSH-Compiler für FHIR Shorthand

```
npm install -g fsh-sushi

```


### Validierung ausführen

**Option 1: Validierungsskript verwenden (empfohlen)**

```
# Kompilierung und Validierung
sushi . --snapshot
./scripts/validate.sh

```

**Option 2: Direkte Validator-Ausführung**

```
java -jar ~/.fhir/validators/validator_cli.jar \
  -version 4.0.1 \
  -tx http://localhost:3000 \
  -allow-example-urls true \
  -display-issues-are-warnings \
  fsh-generated/resources/*.json

```

### Pre-Commit Hook (optional)

Das Projekt enthält einen Pre-Commit Hook, der automatisch SUSHI und Validierung vor jedem Commit ausführt:

```
# Hook aktivieren (bereits in .git/hooks/pre-commit vorhanden)
chmod +x .git/hooks/pre-commit

```

Der Hook überspringt die Validierung automatisch, wenn kein lokaler Terminologie-Server verfügbar ist.

### Validator Exit-Codes

| | | |
| :--- | :--- | :--- |
| 0 | Keine Fehler oder Warnungen | Erfolgreich |
| 1 | Nur Warnungen | Für Entwicklung akzeptabel |
| 2+ | Fehler | Muss behoben werden |

## Empfehlungen für Implementierer

1. **Sprachcodes**: Bei eigenen Implementierungen kann alternativ`valueCoding`mit explizitem System verwendet werden:

```
{
  "url": "lang",
  "valueCoding": {
    "system": "urn:ietf:bcp:47",
    "code": "en"
  }
}

```


1. **LOINC Display-Namen**: Für internationale Interoperabilität können die englischen LOINC-Displays als primäre Werte verwendet werden, mit deutschen Übersetzungen in der Translation-Extension.
1. **Lokale Validierung**: Das Projekt stellt ein Validierungsskript bereit, das die bekannten Fehler automatisch filtert:

```
./scripts/validate.sh

```

**Wichtig**: Die `-advisor` Flag wird nur vom IG Publisher unterstützt, nicht vom validator_cli. Das Validierungsskript verwendet daher grep-basierte Filterung der Ausgabe.**Gefilterte Muster im Validierungsskript**:
* `dom-6` – Narrative-Anforderung
* `UNABLE_TO_INFER_CODESYSTEM` – Sprachcode-Systeminferenz
* `Terminology_TX_NoValid_16` – Terminologie-Validierung
* `MSG_DRAFT` – Draft-Status-Warnungen
* `Wrong Display Name` – Deutsche LOINC-Übersetzungen
* `all-languages` – Validator-Bug mit Translation-Extension valueCode
* `Unable to find resource type` – TX-Proxy-Parsing-Probleme
* `does not support batch validation` – Batch-Validierung nicht unterstützt

