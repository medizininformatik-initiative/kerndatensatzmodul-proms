## {{page-title}}

### Grundlegende Architekturentscheidung: Out-of-FHIR vs. In-FHIR

Das MII PRO Modul unterstützt zwei fundamentale Implementierungsansätze, die unterschiedliche Philosophien im Umgang mit FHIR widerspiegeln:

#### Out-of-FHIR Ansatz: "FHIR als Transportschicht"

**Grundprinzip**: Bei diesem Ansatz dient FHIR primär als standardisierte Transportschicht für die Dateninteroperabilität. Komplexe Verarbeitungslogik wie Score-Berechnungen, Validierungen oder analytische Auswertungen erfolgen außerhalb des FHIR-Ökosystems in spezialisierten externen Systemen.

**Implementierung am Beispiel PHQ-9 Simple**: 
Dieser Fragebogen verfügt über die Capabilities "displayable" und "collectable". Er enthält eine minimale FHIR-Struktur mit den Fragebogen-Items und den zugehörigen Antwortoptionen. Bewusst wird auf eingebettete Berechnungslogik verzichtet, da diese extern erfolgt. Externe Systeme übernehmen die Score-Berechnung und -Validation. Der Fokus liegt auf einer sauberen, einheitlichen Datenstruktur, die als zuverlässiges Mapping-Target für verschiedene Quellsysteme dienen kann.

```
Externe Systeme → FHIR QuestionnaireResponse ← Externe Systeme
                         ↓
                 Minimale Struktur
                 (nur Interoperabilität)
```

**Anwendungsszenarien:**

Der Out-of-FHIR Ansatz eignet sich besonders für Organisationen, die bereits funktionierende PRO-Systeme betreiben und FHIR primär für die Dateninteroperabilität nutzen möchten. Typische Einsatzgebiete umfassen die Integration bestehender PRO-Infrastrukturen, bei denen etablierte Scoring-Systeme weiterhin verwendet werden sollen. 

Legacy-Integration stellt einen wichtigen Anwendungsfall dar, bei dem historische Daten ohne aufwändige Neuberechnung in standardisierte FHIR-Strukturen überführt werden. Darüber hinaus nutzen externe Datenlieferanten und eigenständige Datenerfassungssysteme wie REDCap häufig diesen Ansatz, da sie ihre bewährten Workflows beibehalten können, während sie gleichzeitig FHIR-kompatible Datenstrukturen bereitstellen.

Ressourcen-limitierte Umgebungen profitieren von der minimalen FHIR-Implementierung, die nur grundlegende Interoperabilität ohne komplexe Verarbeitungslogik erfordert. Dieser Ansatz ermöglicht es auch Organisationen mit heterogenen Systemlandschaften, einen gemeinsamen Nenner für die Datenharmonisierung zu finden.

---

#### In-FHIR Ansatz: "FHIR als Verarbeitungsplattform"

**Prinzip**: Vollständige Nutzung der **FHIR-Ökosystem-Capabilities**. Verarbeitung, Validation und Ableitung erfolgen nativ in FHIR.

**Implementierung**: PHQ-9 SDC (displayable, collectable, calculatable, extractable)
- Vollständige SDC-Integration mit FHIRPath-Berechnungen
- Eingebettete Scoring-Logik und Validierungsregeln
- Native FHIR-Extraktion zu Observations
- Nutzung erweiterter FHIR-Capabilities

```
FHIR Questionnaire → SDC Form Engine → QuestionnaireResponse → Extraction → Observations
        ↓                   ↓                    ↓               ↓
   Scoring Logic      Real-time Calc      Structured Forms    Structured FHIR 
```

**Anwendungsszenarien:**

Der In-FHIR Ansatz richtet sich an Organisationen mit fortgeschrittener FHIR-Infrastruktur, die das volle Potenzial des FHIR-Ökosystems ausschöpfen möchten. Moderne FHIR-Implementierungen nutzen die erweiterten Capabilities für komplexe Verarbeitungsworkflows und native Datenextraktion.

Ein strategischer Vorteil des In-FHIR Ansatzes ist die potenzielle Bereitstellung gebrauchsfertiger FHIR PRO Fragebögen über die MII Terminologie-Service-Infrastruktur. Dies ermöglicht eine zentrale, qualitätsgesicherte Distribution standardisierter Questionnaire-Ressourcen mit eingebetteter Berechnungslogik, wodurch Implementierungsaufwand und Fehlerrisiken deutlich reduziert werden. Eine einheitliche Bereitstellung einer konsistenten Fragebogendefinitionsdatei soll dabei Aufwand reduzieren und Harmonisierung vereinfachen, dabei gleichzeitig jedoch ausreichend Flexibilität für eine produktspezifische Darstellungsanpassung bieten. 

Die Datenqualität kann dabei erheblich von der Möglichkeit zur retrospektiven Score-Neuberechnung profitieren. Dies ermöglicht die Validierung historischer Berechnungen und die Identifikation von standortübergreifenden Datenqualitätsproblemen, z.B. Rundungsfehler, fehlerhafte Implemetierung von Scorewerten oder inkonsistentem Umgang mit fehlenden Werten. 

Zukunftsorientierte Systeme setzen auf die kontinuierliche Evolution der FHIR-Spezifikation und möchten frühzeitig von neuen Capabilities in FHIR R4, R5 und zukünftigen Versionen profitieren. Forschungsumgebungen und klinische Studien nutzen häufig diesen Ansatz für erweiterte Analysemöglichkeiten und standardisierte Datenverarbeitung.

---

### Vergleichende Bewertung

| Kriterium | Out-of-FHIR (Simple) | In-FHIR (SDC) |
|---|---|---|
| **FHIR-Komplexität** | ✅ Minimal | ⚠️ Erweitert |
| **Implementierungsaufwand** | ✅ Niedrig | ⚠️ Hoch |
| **Scoring-Flexibilität** | ✅ Maximal (extern) | ⚠️ FHIRPath-limitiert |
| **Validierung** | ❌ Externe Lösung nötig | ✅ Native FHIR-Capabilities |
| **Real-time Feedback** | ❌ Nicht möglich | ✅ SDC-integriert |
| **Legacy-Integration** | ✅ Einfach | ⚠️ Mapping-aufwändig |
| **Interoperabilität** | ✅ Grundlegend | ✅ Erweitert |
| **MII Terminologie-Service** | ⚠️ Eingeschränkt | ✅ Vollständige Integration |

### Hybride Ansätze

In der Praxis können beide Ansätze **komplementär** eingesetzt werden:

#### Szenario 1: Schrittweise FHIR-Adoption
1. **Phase 1**: Out-of-FHIR für grundlegende Interoperabilität
2. **Phase 2**: Gradueller Übergang zu In-FHIR bei steigender FHIR-Reife

#### Szenario 2: Use-Case spezifische Wahl
- **Datenintegration**: Out-of-FHIR für Mapping-Projekte
- **Klinische Workflows**: In-FHIR für interaktive Anwendungen

#### Szenario 3: Organisatorische Heterogenität
- **Externe Partner**: Out-of-FHIR als gemeinsamer Nenner
- **Interne Systeme**: In-FHIR für erweiterte Funktionalität

### Empfehlungen für die Praxis

#### Für Out-of-FHIR entscheiden bei:

Organisationen mit bestehenden, funktionierenden PRO-Infrastrukturen sollten den Out-of-FHIR Ansatz wählen, wenn der Fokus primär auf Datenintegration und -harmonisierung liegt. Begrenzte FHIR-Implementierungsressourcen sprechen ebenfalls für diesen Ansatz, da er eine schrittweise Einführung mit geringerem Aufwand ermöglicht. Heterogene Systemlandschaften mit verschiedenen Standards profitieren von der Flexibilität des Out-of-FHIR Ansatzes als gemeinsamer Interoperabilitätsschicht.

#### Für In-FHIR entscheiden bei:

Der Neuaufbau von PRO-Systemen bietet die ideale Gelegenheit für eine vollständige In-FHIR Implementierung. Organisationen mit Anforderungen an interaktive Formulare und Real-time Feedback sollten diesen Ansatz bevorzugen. Qualitätssicherungs- und Validierungsworkflows, die retrospektive Score-Berechnungen erfordern, profitieren von den nativen FHIR-Capabilities. Ein strategisches Commitment zu FHIR als umfassende Plattform für Gesundheitsdatenverarbeitung spricht ebenfalls für diese Wahl.

#### Hybride Strategien bei:

Große, heterogene Organisationen können beide Ansätze parallel einsetzen, um verschiedene Anwendungsfälle optimal zu bedienen. Die schrittweise Modernisierung bestehender Systeme ermöglicht einen graduellen Übergang von Out-of-FHIR zu In-FHIR Implementierungen. Unterschiedliche Anforderungen pro Anwendungsfall rechtfertigen eine flexible, use-case-spezifische Strategie.

### Fazit

Die Wahl zwischen Out-of-FHIR und In-FHIR ist keine technische, sondern eine **strategische Entscheidung**. Sie reflektiert die Rolle von FHIR in der Organisationsstrategie: Als Interoperabilitäts-Standard oder als umfassende Plattform für Gesundheitsdatenverarbeitung.

Das MII PRO Modul unterstützt bewusst beide Ansätze, um der Vielfalt der deutschen Gesundheitslandschaft gerecht zu werden und verschiedene Reifegrade der FHIR-Adoption zu ermöglichen.