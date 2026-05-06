# Resource MII IG PRO



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "mii-ig-pro",
  "language" : "de",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ImplementationGuide/mii-ig-pro",
  "version" : "2026.3.0",
  "name" : "MII_IG_PRO",
  "title" : "MII IG PRO",
  "status" : "active",
  "date" : "2026-05-06T16:43:09+00:00",
  "publisher" : "Medizininformatik-Initiative",
  "contact" : [{
    "name" : "Medizininformatik-Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    },
    {
      "system" : "email",
      "value" : "office@medizininformatik-initiative.de"
    }]
  }],
  "description" : "Medizininformatik Initiative - Modul PROs, PROMs und abgeleitete Metriken",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "packageId" : "de.medizininformatikinitiative.kerndatensatz.pros",
  "license" : "CC0-1.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [{
    "id" : "hl7tx",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
    }],
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology.r4",
    "version" : "7.1.0"
  },
  {
    "id" : "de_medizininformatikinitiative_kerndatensatz_meta",
    "uri" : "https://www.medizininformatik-initiative.de/fhir/modul-meta/ImplementationGuide/mii-ig-meta",
    "packageId" : "de.medizininformatikinitiative.kerndatensatz.meta",
    "version" : "2026.0.0"
  },
  {
    "id" : "hl7_fhir_uv_sdc",
    "uri" : "http://hl7.org/fhir/uv/sdc/ImplementationGuide/hl7.fhir.uv.sdc",
    "packageId" : "hl7.fhir.uv.sdc",
    "version" : "3.0.0"
  },
  {
    "id" : "de_gematik_isik",
    "uri" : "http://fhir.org/packages/de.gematik.isik/ImplementationGuide/de.gematik.isik",
    "packageId" : "de.gematik.isik",
    "version" : "5.1.1"
  },
  {
    "id" : "ext",
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r4",
    "version" : "5.2.0"
  }],
  "definition" : {
    "extension" : [{
      "extension" : [{
        "url" : "code",
        "valueString" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2025+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "ci-build"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "i18n-default-lang"
      },
      {
        "url" : "value",
        "valueString" : "de"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "i18n-lang"
      },
      {
        "url" : "value",
        "valueString" : "en"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "translation-sources"
      },
      {
        "url" : "value",
        "valueString" : "input/translations/en"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludettl"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludemap"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "wantGen-ttl"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "wantGen-ttl-html"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r4#1.1.2"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2025+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "ci-build"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "i18n-default-lang"
      },
      {
        "url" : "value",
        "valueString" : "de"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "i18n-lang"
      },
      {
        "url" : "value",
        "valueString" : "en"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "translation-sources"
      },
      {
        "url" : "value",
        "valueString" : "input/translations/en"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludettl"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludemap"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "wantGen-ttl"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "wantGen-ttl-html"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    }],
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-bdi-ii-observation"
      },
      "name" : "BDI-II Observation Example",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      }],
      "reference" : {
        "reference" : "Bundle/mii-exa-pro-bdi-ii-bundle"
      },
      "name" : "BDI-II Transaction Bundle Example",
      "description" : "Transaction bundle containing BDI-II CodeSystem, ValueSets, questionnaire, response, and derived observation",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-dass-dass21-score-anxiety-equiv"
      },
      "name" : "DASS-21 Anxiety DASS-42 Equivalent Score Observation",
      "description" : "DASS-21 Anxiety subscale DASS-42 equivalent score observation (raw 5 * 2 = 10)",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-score-dass21-anxiety-raw"
      },
      "name" : "DASS-21 Anxiety Raw Score",
      "description" : "Sum of 7 anxiety items (2, 4, 7, 9, 15, 19, 20), each scored 0-3. Cut-offs: Normal 0-3, Mild 4-5, Moderate 6-7, Severe 8-9, Extremely severe 10+.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-dass-dass21-score-anxiety-raw"
      },
      "name" : "DASS-21 Anxiety Raw Score Observation",
      "description" : "DASS-21 Anxiety subscale raw score observation (mild: 5)",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-score-dass21-anxiety-equiv"
      },
      "name" : "DASS-21 Anxiety Score (DASS-42 Equivalent)",
      "description" : "DASS-21 anxiety raw score multiplied by 2 for comparability with DASS-42 normative data and published severity cut-offs.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-dass-dass21-score-depression-equiv"
      },
      "name" : "DASS-21 Depression DASS-42 Equivalent Score Observation",
      "description" : "DASS-21 Depression subscale DASS-42 equivalent score observation (raw 12 * 2 = 24)",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-score-dass21-depression-raw"
      },
      "name" : "DASS-21 Depression Raw Score",
      "description" : "Sum of 7 depression items (3, 5, 10, 13, 16, 17, 21), each scored 0-3. Cut-offs: Normal 0-4, Mild 5-6, Moderate 7-10, Severe 11-13, Extremely severe 14+.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-dass-dass21-score-depression-raw"
      },
      "name" : "DASS-21 Depression Raw Score Observation",
      "description" : "DASS-21 Depression subscale raw score observation (severe: 12)",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-score-dass21-depression-equiv"
      },
      "name" : "DASS-21 Depression Score (DASS-42 Equivalent)",
      "description" : "DASS-21 depression raw score multiplied by 2 for comparability with DASS-42 normative data and published severity cut-offs.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-dass-dass21-score-stress-equiv"
      },
      "name" : "DASS-21 Stress DASS-42 Equivalent Score Observation",
      "description" : "DASS-21 Stress subscale DASS-42 equivalent score observation (raw 11 * 2 = 22)",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-score-dass21-stress-raw"
      },
      "name" : "DASS-21 Stress Raw Score",
      "description" : "Sum of 7 stress items (1, 6, 8, 11, 12, 14, 18), each scored 0-3. Cut-offs: Normal 0-7, Mild 8-9, Moderate 10-12, Severe 13-16, Extremely severe 17+.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-dass-dass21-score-stress-raw"
      },
      "name" : "DASS-21 Stress Raw Score Observation",
      "description" : "DASS-21 Stress subscale raw score observation (moderate: 11)",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-score-dass21-stress-equiv"
      },
      "name" : "DASS-21 Stress Score (DASS-42 Equivalent)",
      "description" : "DASS-21 stress raw score multiplied by 2 for comparability with DASS-42 normative data and published severity cut-offs.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-eortc-qlq-c30-observation-ap"
      },
      "name" : "EORTC QLQ-C30 Appetite Loss Score",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-eortc-qlq-c30-ap"
      },
      "name" : "EORTC QLQ-C30 Appetite Loss Score Definition",
      "description" : "ObservationDefinition for EORTC QLQ-C30 Appetite Loss Score (AP) - Higher scores indicate more appetite loss",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-eortc-qlq-c30-observation-cf"
      },
      "name" : "EORTC QLQ-C30 Cognitive Functioning Score",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-eortc-qlq-c30-cf"
      },
      "name" : "EORTC QLQ-C30 Cognitive Functioning Score Definition",
      "description" : "ObservationDefinition for EORTC QLQ-C30 Cognitive Functioning Score (CF) - Higher scores indicate better cognitive functioning",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-eortc-qlq-c30-observation-co"
      },
      "name" : "EORTC QLQ-C30 Constipation Score",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-eortc-qlq-c30-co"
      },
      "name" : "EORTC QLQ-C30 Constipation Score Definition",
      "description" : "ObservationDefinition for EORTC QLQ-C30 Constipation Score (CO) - Higher scores indicate more constipation",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-eortc-qlq-c30-observation-di"
      },
      "name" : "EORTC QLQ-C30 Diarrhoea Score",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-eortc-qlq-c30-di"
      },
      "name" : "EORTC QLQ-C30 Diarrhoea Score Definition",
      "description" : "ObservationDefinition for EORTC QLQ-C30 Diarrhoea Score (DI) - Higher scores indicate more diarrhoea",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-eortc-qlq-c30-observation-dy"
      },
      "name" : "EORTC QLQ-C30 Dyspnoea Score",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-eortc-qlq-c30-dy"
      },
      "name" : "EORTC QLQ-C30 Dyspnoea Score Definition",
      "description" : "ObservationDefinition for EORTC QLQ-C30 Dyspnoea Score (DY) - Higher scores indicate more dyspnoea",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-eortc-qlq-c30-observation-ef"
      },
      "name" : "EORTC QLQ-C30 Emotional Functioning Score",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-eortc-qlq-c30-ef"
      },
      "name" : "EORTC QLQ-C30 Emotional Functioning Score Definition",
      "description" : "ObservationDefinition for EORTC QLQ-C30 Emotional Functioning Score (EF) - Higher scores indicate better emotional functioning",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-eortc-qlq-c30-observation-fa"
      },
      "name" : "EORTC QLQ-C30 Fatigue Score",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-eortc-qlq-c30-fa"
      },
      "name" : "EORTC QLQ-C30 Fatigue Score Definition",
      "description" : "ObservationDefinition for EORTC QLQ-C30 Fatigue Score (FA) - Higher scores indicate more fatigue",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-eortc-qlq-c30-observation-fi"
      },
      "name" : "EORTC QLQ-C30 Financial Difficulties Score",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-eortc-qlq-c30-fi"
      },
      "name" : "EORTC QLQ-C30 Financial Difficulties Score Definition",
      "description" : "ObservationDefinition for EORTC QLQ-C30 Financial Difficulties Score (FI) - Higher scores indicate more financial difficulties",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-eortc-qlq-c30-observation-ql"
      },
      "name" : "EORTC QLQ-C30 Global Health Status / Quality of Life Score",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-eortc-qlq-c30-ql"
      },
      "name" : "EORTC QLQ-C30 Global Health Status / Quality of Life Score Definition",
      "description" : "ObservationDefinition for EORTC QLQ-C30 Global Health Status / Quality of Life Score (QL) - Higher scores indicate better quality of life",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-eortc-qlq-c30-observation-sl"
      },
      "name" : "EORTC QLQ-C30 Insomnia Score",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-eortc-qlq-c30-sl"
      },
      "name" : "EORTC QLQ-C30 Insomnia Score Definition",
      "description" : "ObservationDefinition for EORTC QLQ-C30 Insomnia Score (SL) - Higher scores indicate more sleep disturbance",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-eortc-qlq-c30-observation-nv"
      },
      "name" : "EORTC QLQ-C30 Nausea and Vomiting Score",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-eortc-qlq-c30-nv"
      },
      "name" : "EORTC QLQ-C30 Nausea and Vomiting Score Definition",
      "description" : "ObservationDefinition for EORTC QLQ-C30 Nausea and Vomiting Score (NV) - Higher scores indicate more nausea/vomiting",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-eortc-qlq-c30-observation-pa"
      },
      "name" : "EORTC QLQ-C30 Pain Score",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-eortc-qlq-c30-pa"
      },
      "name" : "EORTC QLQ-C30 Pain Score Definition",
      "description" : "ObservationDefinition for EORTC QLQ-C30 Pain Score (PA) - Higher scores indicate more pain",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-eortc-qlq-c30-observation-pf"
      },
      "name" : "EORTC QLQ-C30 Physical Functioning Score",
      "description" : "Physical Functioning Score from EORTC QLQ-C30",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-eortc-qlq-c30-pf"
      },
      "name" : "EORTC QLQ-C30 Physical Functioning Score Definition",
      "description" : "ObservationDefinition for EORTC QLQ-C30 Physical Functioning Score (PF) - Higher scores indicate better physical functioning",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-eortc-qlq-c30-observation-rf"
      },
      "name" : "EORTC QLQ-C30 Role Functioning Score",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-eortc-qlq-c30-rf"
      },
      "name" : "EORTC QLQ-C30 Role Functioning Score Definition",
      "description" : "ObservationDefinition for EORTC QLQ-C30 Role Functioning Score (RF) - Higher scores indicate better role functioning",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-eortc-qlq-c30-observation-sf"
      },
      "name" : "EORTC QLQ-C30 Social Functioning Score",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-eortc-qlq-c30-sf"
      },
      "name" : "EORTC QLQ-C30 Social Functioning Score Definition",
      "description" : "ObservationDefinition for EORTC QLQ-C30 Social Functioning Score (SF) - Higher scores indicate better social functioning",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      }],
      "reference" : {
        "reference" : "Bundle/mii-exa-pro-eortc-qlq-c30-bundle"
      },
      "name" : "EORTC QLQ-C30 Transaction Bundle Example",
      "description" : "Complete transaction bundle containing EORTC QLQ-C30 questionnaire, response with all 30 items, and derived observations with all 15 scale scores",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/mii-exa-pro-euroqol-eq5d5l-coded-response"
      },
      "name" : "EQ-5D-5L Answer-Coding Response Example",
      "description" : "Example of an EQ-5D-5L questionnaire response using the answer-coding variant with MII CodeSystem",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/mii-exa-pro-euroqol-eq5d5l-response"
      },
      "name" : "EQ-5D-5L Questionnaire Response Example",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-gad-7-observation"
      },
      "name" : "GAD-7 Observation Example",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/mii-exa-pro-gad-7-response"
      },
      "name" : "GAD-7 Questionnaire Response Example",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      }],
      "reference" : {
        "reference" : "Bundle/mii-exa-pro-gad-7-bundle"
      },
      "name" : "GAD-7 Transaction Bundle Example",
      "description" : "Transaction bundle containing GAD-7 questionnaire, response, and derived observation",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CapabilityStatement"
      }],
      "reference" : {
        "reference" : "CapabilityStatement/mii-cps-pro-capabilitystatement"
      },
      "name" : "MII CPS PRO CapabilityStatement",
      "description" : "Das vorliegende CapabilityStatement beschreibt alle verpflichtenden Interaktionen die ein konformes System unterstützen muss, um das Modul PRO der Medizininformatik Initiative zu implementieren.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-pro-eq-5d-value-set"
      },
      "name" : "MII CS EQ-5D Value Set",
      "description" : "EuroQol EQ-5D Value Set",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-pro-bdi-bdi2"
      },
      "name" : "MII CS PRO BDI-II",
      "description" : "MII CS PRO BDI-II ValueSet for Beck Depression Inventory II (BDI-II) Questionnaire",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-pro-dass-21"
      },
      "name" : "MII CS PRO DASS-21 Response Scale and Item Codes",
      "description" : "CodeSystem for the Depression Anxiety Stress Scales - Short Form (DASS-21) with answer codes, item codes, and multilingual support (English primary, German translations from Nilges & Essau 2015)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-pro-eortc-qlq-c30"
      },
      "name" : "MII CS PRO EORTC QLQ-C30 Response Scale",
      "description" : "Response scale for EORTC QLQ-C30 questionnaire items with multilingual support",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-pro-pro-ctcae"
      },
      "name" : "MII CS PRO PRO-CTCAE Item Library",
      "description" : "CodeSystem for the Patient-Reported Outcomes version of the Common Terminology Criteria for Adverse Events (PRO-CTCAE). Contains all 124 items across 78 adverse events with English primary text and German designations from the NCI-authorized translation. Item Library Version 1.0.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-pro-questionnaire-catalogue"
      },
      "name" : "MII CS PRO Questionnaire Catalogue",
      "description" : "MII CS PRO Questionnaire Catalogue for PRO Questionnaires used in the MII PROMs Module",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-pro-score-catalogue"
      },
      "name" : "MII CS PRO Score Catalogue",
      "description" : "MII CS PRO Score Catalogue for PRO Scores used in the MII PROMs Module",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-pro-score-score-health-correlation"
      },
      "name" : "MII Ex PRO Score Score Health Correlation",
      "description" : "MII Ex PRO Score Score Health Correlation",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/mii-exa-pro-bdi-bdi2"
      },
      "name" : "MII EXA PRO BDI-II",
      "description" : "MII EXA PRO Beck Depression Inventory II (BDI-II) Questionnaire",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/mii-exa-pro-dass-dass21-response-01"
      },
      "name" : "MII EXA PRO DASS-21 Response",
      "description" : "Complete DASS-21 QuestionnaireResponse example with mixed severity: Depression severe (12), Anxiety mild (5), Stress moderate (11)",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/mii-exa-pro-eortc-qlq-c30-response"
      },
      "name" : "MII EXA PRO EORTC QLQ-C30 Response",
      "description" : "Complete EORTC QLQ-C30 QuestionnaireResponse example with all 30 items and calculated scores",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/mii-exa-pro-patient"
      },
      "name" : "MII EXA PRO Patient",
      "description" : "Example patient for PRO demonstrations",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      }],
      "reference" : {
        "reference" : "Bundle/mii-exa-pro-promis-depression-sf4a-bundle"
      },
      "name" : "MII EXA PRO PROMIS Depression SF 4a Bundle",
      "description" : "Example bundle containing PROMIS Depression SF 4a QuestionnaireResponse and derived observations",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-promis-depression-sf4a-raw-score"
      },
      "name" : "MII EXA PRO PROMIS Depression SF 4a Raw Score",
      "description" : "Example raw score observation for PROMIS Depression Short Form 4a",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-promis-depression-sf4a-raw-score"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/mii-exa-pro-promis-depression-sf4a-response"
      },
      "name" : "MII EXA PRO PROMIS Depression SF 4a Response",
      "description" : "Example QuestionnaireResponse for PROMIS Depression Short Form 4a",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-promis-depression-sf4a-tscore"
      },
      "name" : "MII EXA PRO PROMIS Depression SF 4a T-Score",
      "description" : "Example T-score observation for PROMIS Depression Short Form 4a",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-depression-t-score"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      }],
      "reference" : {
        "reference" : "Bundle/mii-exa-pro-promis-29-bundle"
      },
      "name" : "MII EXA PRO PROMIS-29 Bundle with Extracted Observations",
      "description" : "Example Bundle demonstrating PROMIS-29 QuestionnaireResponse with all extracted T-Score Observations and Pain Intensity observation. This bundle shows the complete SDC observation-based extraction workflow.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/mii-exa-pro-promis-29-response"
      },
      "name" : "MII EXA PRO PROMIS-29 Response",
      "description" : "Example QuestionnaireResponse for PROMIS-29 Profile v2.1 (English variant)",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/mii-exa-pro-promis-29-de-response"
      },
      "name" : "MII EXA PRO PROMIS-29 Response (German)",
      "description" : "Example QuestionnaireResponse for PROMIS-29 Profile v2.1 (German variant) - demonstrates response compatibility between language variants",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-lm-pro"
      },
      "name" : "MII Logical Model Modul PRO - Patient-Reported Outcomes und abgeleitete Metriken",
      "description" : "Logisches Modell für die strukturierte Erfassung und Verarbeitung von Patient-Reported Outcomes (PROs) inklusive Fragebögen, Antworten, Scores und Domain-Mappings.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-depression-t-score"
      },
      "name" : "MII ObsDef PRO Depression Domain T-Score",
      "description" : "ObservationDefinition for depression domain T-score across all depression questionnaires with European population reference ranges",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-promis-cognitive-function-sf4a-raw-score"
      },
      "name" : "MII ObsDef PRO PROMIS Cognitive Function SF 4a Raw Score",
      "description" : "PROMIS Cognitive Function Short Form 4a Raw Score (4-20 range)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-promis-cognitive-function-sf4a-tscore"
      },
      "name" : "MII ObsDef PRO PROMIS Cognitive Function SF 4a T-Score",
      "description" : "PROMIS Cognitive Function Short Form 4a T-Score",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-promis-29-anxiety-tscore"
      },
      "name" : "MII ObsDef PRO PROMIS-29 Anxiety T-Score",
      "description" : "PROMIS Anxiety T-Score from PROMIS-29 Profile v2.1",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-promis-29-depression-tscore"
      },
      "name" : "MII ObsDef PRO PROMIS-29 Depression T-Score",
      "description" : "PROMIS Depression T-Score from PROMIS-29 Profile v2.1",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-promis-29-fatigue-tscore"
      },
      "name" : "MII ObsDef PRO PROMIS-29 Fatigue T-Score",
      "description" : "PROMIS Fatigue T-Score from PROMIS-29 Profile v2.1",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-promis-29-pain-intensity"
      },
      "name" : "MII ObsDef PRO PROMIS-29 Pain Intensity",
      "description" : "PROMIS Pain Intensity single item from PROMIS-29 Profile v2.1",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-promis-29-pain-interference-tscore"
      },
      "name" : "MII ObsDef PRO PROMIS-29 Pain Interference T-Score",
      "description" : "PROMIS Pain Interference T-Score from PROMIS-29 Profile v2.1",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-promis-29-physical-function-tscore"
      },
      "name" : "MII ObsDef PRO PROMIS-29 Physical Function T-Score",
      "description" : "PROMIS Physical Function T-Score from PROMIS-29 Profile v2.1",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-promis-29-sleep-disturbance-tscore"
      },
      "name" : "MII ObsDef PRO PROMIS-29 Sleep Disturbance T-Score",
      "description" : "PROMIS Sleep Disturbance T-Score from PROMIS-29 Profile v2.1",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-promis-29-social-function-tscore"
      },
      "name" : "MII ObsDef PRO PROMIS-29 Social Function T-Score",
      "description" : "PROMIS Ability to Participate in Social Roles and Activities T-Score from PROMIS-29 Profile v2.1",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-score-bdi-ii"
      },
      "name" : "MII ObsDef PRO Score BDI-II",
      "description" : "Beck Depression Inventory II (BDI-II) Total Score",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-score-eq5d5l-index"
      },
      "name" : "MII ObsDef PRO Score EQ-5D-5L Index",
      "description" : "EuroQol 5 Dimensions 5 Levels (EQ-5D-5L) Index Score",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-score-eq5d5l-profile"
      },
      "name" : "MII ObsDef PRO Score EQ-5D-5L Profile",
      "description" : "EuroQol 5 Dimensions 5 Levels (EQ-5D-5L) Profile",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-score-eq5d5l-vas"
      },
      "name" : "MII ObsDef PRO Score EQ-5D-5L VAS",
      "description" : "EuroQol 5 Dimensions 5 Levels (EQ-5D-5L) Visual Analog Scale (VAS) Score",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-score-gad-7"
      },
      "name" : "MII ObsDef PRO Score GAD-7",
      "description" : "Generalized Anxiety Disorder Scale-7 (GAD-7)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-score-phq-9"
      },
      "name" : "MII ObsDef PRO Score PHQ-9",
      "description" : "Patient Health Questionnaire (PHQ-9)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-pro-depression-t-score"
      },
      "name" : "MII PR PRO Depression Domain T-Score",
      "description" : "Generic profile for depression domain T-score observations (all depression questionnaires)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-pro-observation-bdi-ii"
      },
      "name" : "MII PR PRO Observation BDI-II",
      "description" : "Profile for Beck Depression Inventory II (BDI-II) Total Score Observations",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-pro-observation-eq5d5l-index"
      },
      "name" : "MII PR PRO Observation EQ-5D-5L Index",
      "description" : "Profile for EQ-5D-5L Index Score Observations with German value set reference ranges",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-pro-observation-eq5d5l-profile"
      },
      "name" : "MII PR PRO Observation EQ-5D-5L Profile",
      "description" : "Profile for EQ-5D-5L Profile String Observations (e.g., '11111')",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-pro-observation-eq5d5l-vas"
      },
      "name" : "MII PR PRO Observation EQ-5D-5L VAS",
      "description" : "Profile for EQ-5D-5L Visual Analogue Scale Score Observations",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-pro-promis-cognitive-function-sf4a-raw-score"
      },
      "name" : "MII PR PRO PROMIS Cognitive Function SF 4a Raw Score",
      "description" : "Profile for PROMIS Cognitive Function Short Form 4a raw score observations (4-20 range)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-pro-promis-cognitive-function-sf4a-tscore"
      },
      "name" : "MII PR PRO PROMIS Cognitive Function SF 4a T-Score",
      "description" : "Profile for PROMIS Cognitive Function Short Form 4a T-Score observations",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-pro-promis-depression-sf4a-raw-score"
      },
      "name" : "MII PR PRO PROMIS Depression SF 4a Raw Score",
      "description" : "Profile for PROMIS Depression Short Form 4a raw score observations (4-20 range)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-pro-promis-29-anxiety-tscore"
      },
      "name" : "MII PR PRO PROMIS-29 Anxiety T-Score",
      "description" : "Profile for PROMIS-29 Anxiety T-Score Observations",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-pro-promis-29-depression-tscore"
      },
      "name" : "MII PR PRO PROMIS-29 Depression T-Score",
      "description" : "Profile for PROMIS-29 Depression T-Score Observations",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-pro-promis-29-fatigue-tscore"
      },
      "name" : "MII PR PRO PROMIS-29 Fatigue T-Score",
      "description" : "Profile for PROMIS-29 Fatigue T-Score Observations",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-pro-promis-29-pain-intensity"
      },
      "name" : "MII PR PRO PROMIS-29 Pain Intensity",
      "description" : "Profile for PROMIS-29 Pain Intensity single item Observations",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-pro-promis-29-pain-interference-tscore"
      },
      "name" : "MII PR PRO PROMIS-29 Pain Interference T-Score",
      "description" : "Profile for PROMIS-29 Pain Interference T-Score Observations",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-pro-promis-29-physical-function-tscore"
      },
      "name" : "MII PR PRO PROMIS-29 Physical Function T-Score",
      "description" : "Profile for PROMIS-29 Physical Function T-Score Observations",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-pro-promis-29-sleep-disturbance-tscore"
      },
      "name" : "MII PR PRO PROMIS-29 Sleep Disturbance T-Score",
      "description" : "Profile for PROMIS-29 Sleep Disturbance T-Score Observations",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-pro-promis-29-social-function-tscore"
      },
      "name" : "MII PR PRO PROMIS-29 Social Function T-Score",
      "description" : "Profile for PROMIS-29 Ability to Participate in Social Roles and Activities T-Score Observations",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-pro-questionnaire"
      },
      "name" : "MII PR PRO Questionnaire",
      "description" : "MII PR PRO Questionnaire, based on the FHIR Structure Data Capture Specification",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-pro-questionnaire-capabilities"
      },
      "name" : "MII PR PRO Questionnaire Capabilities",
      "description" : "MII PR PRO Questionnaire Capabilities, based on the FHIR Structure Data Capture Specification",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-pro-questionnaire-response"
      },
      "name" : "MII PR PRO QuestionnaireResponse",
      "description" : "MII PR PRO QuestionnaireResponse, based on the FHIR Structure Data Capture Specification",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-pro-score-blueprint"
      },
      "name" : "MII PR PRO Score Blueprint / Template",
      "description" : "MII PR PRO Questionnaire, based on the FHIR Structure Data Capture Specification",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-pro-score-instance"
      },
      "name" : "MII PR PRO Score Instance",
      "description" : "MII PR PRO Score Instance",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/mii-qst-pro-bdi-bdi2"
      },
      "name" : "MII QST PRO BDI-II",
      "description" : "MII QST PRO Beck Depression Inventory II (BDI-II) Questionnaire",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/mii-qst-pro-ces-d"
      },
      "name" : "MII QST PRO CES-D",
      "description" : "Center for Epidemiologic Studies Depression Scale (CES-D) - Metadata-only reference implementation",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/mii-qst-pro-dass-dass21"
      },
      "name" : "MII QST PRO DASS-21",
      "description" : "Depression Anxiety Stress Scales - 21 Items (DASS-21)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/mii-qst-pro-eortc-qlq-c30"
      },
      "name" : "MII QST PRO EORTC QLQ-C30",
      "description" : "EORTC QLQ-C30 Version 3.0 Quality of Life Questionnaire - Complete implementation with all 30 items and 15 scale scores",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/mii-qst-pro-eortc-qlq-c30-variant-a"
      },
      "name" : "MII QST PRO EORTC QLQ-C30 Variant A",
      "description" : "EORTC QLQ-C30 Version 3.0 - Variant A: References standalone external ValueSets directly (no contained resources)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/mii-qst-pro-eortc-qlq-c30-variant-b"
      },
      "name" : "MII QST PRO EORTC QLQ-C30 Variant B",
      "description" : "EORTC QLQ-C30 Version 3.0 - Variant B: With contained CodeSystem and ValueSets referencing it via local reference #eortc-qlq-c30-cs-b",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/mii-qst-pro-epds"
      },
      "name" : "MII QST PRO EPDS",
      "description" : "Edinburgh Postnatal Depression Scale (EPDS) - Metadata-only reference implementation",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/mii-qst-pro-euroqol-eq5d5l-answer-coding"
      },
      "name" : "MII QST PRO EQ-5D-5L",
      "description" : "MII QST PRO EuroQol Five Dimension Five Level (EQ-5D-5L) Questionnaire",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/mii-qst-pro-euroqol-eq5d5l-minimal"
      },
      "name" : "MII QST PRO EQ-5D-5L",
      "description" : "MII QST PRO EuroQol Five Dimension Five Level (EQ-5D-5L) Questionnaire",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/mii-qst-pro-euroqol-eq5d5l-displayable"
      },
      "name" : "MII QST PRO EQ-5D-5L (Displayable)",
      "description" : "MII QST PRO EuroQol Five Dimension Five Level (EQ-5D-5L) Questionnaire - Displayable version",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/mii-qst-pro-euroqol-eq5d5l-collectable"
      },
      "name" : "MII QST PRO EQ-5D-5L Collectable",
      "description" : "MII QST PRO EuroQol Five Dimension Five Level (EQ-5D-5L) Questionnaire - Collectable Version",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/mii-qst-pro-gad-7"
      },
      "name" : "MII QST PRO GAD-7",
      "description" : "Generalized Anxiety Disorder Scale-7 (GAD-7)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/mii-qst-pro-hads"
      },
      "name" : "MII QST PRO HADS",
      "description" : "Hospital Anxiety and Depression Scale (HADS) - Metadata-only reference implementation",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/mii-qst-pro-k6"
      },
      "name" : "MII QST PRO K6",
      "description" : "Kessler Psychological Distress Scale (K6) - Metadata-only reference implementation",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/mii-qst-pro-phq-9"
      },
      "name" : "MII QST PRO PHQ-9",
      "description" : "Patient Health Questionnaire (PHQ-9)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/mii-qst-pro-promis-cognitive-function-sf4a"
      },
      "name" : "MII QST PRO PROMIS Cognitive Function SF 4a",
      "description" : "PROMIS Cognitive Function Short Form 4a - Assessment of cognitive abilities and concerns",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/mii-qst-pro-promis-depression-sf4a"
      },
      "name" : "MII QST PRO PROMIS Depression SF 4a (Adults)",
      "description" : "PROMIS Depression Short Form 4a - Adults - Item Bank v1.0",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/mii-qst-pro-promis-29"
      },
      "name" : "MII QST PRO PROMIS-29 (Adults)",
      "description" : "PROMIS-29 Profile v2.1 - Comprehensive health-related quality of life assessment across 7 domains",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/mii-qst-pro-promis-29-de"
      },
      "name" : "MII QST PRO PROMIS-29 (German)",
      "description" : "PROMIS-29 Profile v2.1 - German language variant derived from English source",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-pro-bdi-bdi2-short"
      },
      "name" : "MII VS PRO BDI-II",
      "description" : "MII VS PRO BDI-II ValueSet for Beck Depression Inventory II (BDI-II) Questionnaire",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-pro-bdi-bdi2-long"
      },
      "name" : "MII VS PRO BDI-II",
      "description" : "MII VS PRO BDI-II ValueSet for Beck Depression Inventory II (BDI-II) Questionnaire",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-pro-dass-21-answer-list"
      },
      "name" : "MII VS PRO DASS-21 Answer List",
      "description" : "4-point Likert response scale for all DASS-21 items (0 = Did not apply to me at all, 3 = Applied to me very much)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"
      },
      "name" : "MII VS PRO EORTC QLQ-C30 4-Point Scale",
      "description" : "Standard 4-point response scale for EORTC QLQ-C30 items",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-pro-eortc-qlq-c30-scale-7pt"
      },
      "name" : "MII VS PRO EORTC QLQ-C30 7-Point Scale",
      "description" : "7-point response scale for EORTC QLQ-C30 global health status and quality of life items",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-pro-eortc-qlq-c30-scale-role"
      },
      "name" : "MII VS PRO EORTC QLQ-C30 Role Functioning Scale",
      "description" : "4-point response scale for EORTC QLQ-C30 role functioning items",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-pro-phq-9-answer-list-ll358-3"
      },
      "name" : "MII VS PRO PHQ-9 Answer List LL358-3",
      "description" : "Patient Health Questionnaire (PHQ-9) Not at all/Several days/More than half the days/Nearly every day",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-pro-phq-9-answer-list-ll359-1"
      },
      "name" : "MII VS PRO PHQ-9 Answer List LL359-1",
      "description" : "Not difficult at all/Somewhat difficult/Very difficult/Extremely difficult-Perceived difficulty (PHQ-9)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-pro-pro-ctcae-frequency"
      },
      "name" : "MII VS PRO PRO-CTCAE Frequency Scale",
      "description" : "5-point frequency response scale for PRO-CTCAE items (0=Never, 4=Almost constantly)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-pro-pro-ctcae-frequency-sexual"
      },
      "name" : "MII VS PRO PRO-CTCAE Frequency Scale (Sexual Function)",
      "description" : "7-point frequency scale for sexual function items: standard 5 options plus 'Not sexually active' and 'Prefer not to answer'",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-pro-pro-ctcae-interference"
      },
      "name" : "MII VS PRO PRO-CTCAE Interference Scale",
      "description" : "5-point interference response scale for PRO-CTCAE items (0=Not at all, 4=Very much)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-pro-pro-ctcae-presence"
      },
      "name" : "MII VS PRO PRO-CTCAE Presence Scale",
      "description" : "Binary presence/absence response scale for PRO-CTCAE items",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-pro-pro-ctcae-presence-sexual"
      },
      "name" : "MII VS PRO PRO-CTCAE Presence Scale (Sexual Function)",
      "description" : "4-option presence scale for sexual function: Yes / No / Not sexually active / Prefer not to answer",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-pro-pro-ctcae-presence-na"
      },
      "name" : "MII VS PRO PRO-CTCAE Presence Scale (with Not Applicable)",
      "description" : "3-option presence scale: Yes / No / Not applicable",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-pro-pro-ctcae-severity"
      },
      "name" : "MII VS PRO PRO-CTCAE Severity Scale",
      "description" : "5-point severity response scale for PRO-CTCAE items (0=None, 4=Very severe)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-pro-pro-ctcae-severity-radiation"
      },
      "name" : "MII VS PRO PRO-CTCAE Severity Scale (Radiation)",
      "description" : "6-point severity scale for radiation items: standard 5 options plus 'Not applicable'",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-pro-pro-ctcae-severity-sexual"
      },
      "name" : "MII VS PRO PRO-CTCAE Severity Scale (Sexual Function)",
      "description" : "7-point severity scale for sexual function items: standard 5 options plus 'Not sexually active' and 'Prefer not to answer'",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-pro-promis-frequency-response-scale"
      },
      "name" : "MII VS PRO PROMIS Frequency Response Scale",
      "description" : "PROMIS Frequency response scale based on LOINC LL1016-6",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-pro-promis-physical-function-response-scale"
      },
      "name" : "MII VS PRO PROMIS Physical Function Response Scale",
      "description" : "PROMIS Physical Function response scale based on LOINC LL1022-4",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/mii-sp-pro-observationdefinition-code"
      },
      "name" : "mii-sp-pro-observationdefinition-code",
      "description" : "SearchParameter for ObservationDefinition.code to find score definitions by code (LOINC, SNOMED, MII)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/mii-sp-pro-observationdefinition-health-correlation"
      },
      "name" : "mii-sp-pro-observationdefinition-health-correlation",
      "description" : "SearchParameter for ObservationDefinition.qualifiedInterval.range.extension[ScoreHealthCorrelation] to filter by health correlation direction (higher scores = better/worse health)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/mii-sp-pro-observationdefinition-interval-category"
      },
      "name" : "mii-sp-pro-observationdefinition-interval-category",
      "description" : "SearchParameter for ObservationDefinition.qualifiedInterval.category to filter by reference range category (reference, critical, absolute)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/mii-sp-pro-observationdefinition-permitted-datatype"
      },
      "name" : "mii-sp-pro-observationdefinition-permitted-datatype",
      "description" : "SearchParameter for ObservationDefinition.permittedDataType to filter score definitions by data type (Quantity, string, etc.)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/mii-sp-pro-observationdefinition-preferred-report-name"
      },
      "name" : "mii-sp-pro-observationdefinition-preferred-report-name",
      "description" : "SearchParameter for ObservationDefinition.preferredReportName to search score definitions by display name",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/mii-sp-pro-observationdefinition-unit"
      },
      "name" : "mii-sp-pro-observationdefinition-unit",
      "description" : "SearchParameter for ObservationDefinition.quantitativeDetails.unit to filter score definitions by measurement unit",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/mii-sp-pro-questionnaire-capabilities"
      },
      "name" : "mii-sp-pro-questionnaire-capabilities",
      "description" : "SearchParameter for Questionnaire.extension[capabilities] to filter questionnaires by capability flags (displayable, collectable, calculatable, extractable, populatable, domainAligned)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-phq-9-observation"
      },
      "name" : "PHQ-9 Observation Example",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/mii-exa-pro-phq-9-response"
      },
      "name" : "PHQ-9 Questionnaire Response Example",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      }],
      "reference" : {
        "reference" : "Bundle/mii-exa-pro-phq-9-bundle"
      },
      "name" : "PHQ-9 Transaction Bundle Example",
      "description" : "Transaction bundle containing PHQ-9 questionnaire, response, and derived observation - flagship example",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-score-proctcae-acs"
      },
      "name" : "PRO-CTCAE Average Composite Score (ACS)",
      "description" : "Average of all PRO-CTCAE composite grades at a given timepoint, reflecting overall symptomatic adverse event burden. Symptoms with opt-out responses are excluded from the average. Range 0.0-3.0 (continuous). ACS = sum(composite grades) / count(scored symptoms).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ObservationDefinition"
      }],
      "reference" : {
        "reference" : "ObservationDefinition/mii-obsdef-pro-score-proctcae-composite-grade"
      },
      "name" : "PRO-CTCAE Composite Grade",
      "description" : "Composite grade for a single PRO-CTCAE adverse event, computed from frequency, severity, and/or interference scores using the NCI composite grading algorithm (Basch et al., 2021). Range 0-3, mapped to CTCAE grade equivalents. Grade 0 = no symptom, Grade 3 = most severe patient-reported burden. May have dataAbsentReason when patient selected opt-out answers.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/mii-qst-pro-pro-ctcae-breast-de"
      },
      "name" : "PRO-CTCAE Deutsches Brustkrebszentrum-Subset (21 Symptome)",
      "description" : "PRO-CTCAE Brustkrebszentrum-Subset: 21 Symptome ausgewählt nach Prävalenz und Wichtigkeit bei ambulanten Brustkrebspatientinnen (Hamacher et al., BMC Cancer 2023). Scoring via CQL Library (CompositeGrade pro Symptom + Average Composite Score).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-pro-promis-depression-tscore-from-bdi-ii-observation"
      },
      "name" : "PROMIS Depression T-Score, derived from BDI-II Observation Example",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"
    }],
    "page" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
        "valueUrl" : "toc.html"
      }],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "index.html"
        }],
        "nameUrl" : "index.html",
        "title" : "Home",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "module-description.html"
        }],
        "nameUrl" : "module-description.html",
        "title" : "Module Description",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "project-context.html"
        }],
        "nameUrl" : "project-context.html",
        "title" : "Project Context",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "use-cases.html"
        }],
        "nameUrl" : "use-cases.html",
        "title" : "Use Cases",
        "generation" : "markdown",
        "page" : [{
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "datasets-and-descriptions.html"
          }],
          "nameUrl" : "datasets-and-descriptions.html",
          "title" : "Datasets and Descriptions",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "uml-diagrams.html"
          }],
          "nameUrl" : "uml-diagrams.html",
          "title" : "UML Diagrams",
          "generation" : "markdown"
        }]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "technical-implementation.html"
        }],
        "nameUrl" : "technical-implementation.html",
        "title" : "Technical Implementation",
        "generation" : "markdown",
        "page" : [{
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "workflows.html"
          }],
          "nameUrl" : "workflows.html",
          "title" : "Workflows",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "scoring.html"
          }],
          "nameUrl" : "scoring.html",
          "title" : "Scoring",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "id-systematics.html"
          }],
          "nameUrl" : "id-systematics.html",
          "title" : "ID Systematics",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "terminology-strategies.html"
          }],
          "nameUrl" : "terminology-strategies.html",
          "title" : "Terminology Strategies",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "questionnaire-capabilities.html"
          }],
          "nameUrl" : "questionnaire-capabilities.html",
          "title" : "Questionnaire Capabilities",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "validation.html"
          }],
          "nameUrl" : "validation.html",
          "title" : "Validation",
          "generation" : "markdown"
        }]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "pro-library.html"
        }],
        "nameUrl" : "pro-library.html",
        "title" : "PRO Library",
        "generation" : "markdown",
        "page" : [{
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "phq-9.html"
          }],
          "nameUrl" : "phq-9.html",
          "title" : "PHQ-9",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "gad-7.html"
          }],
          "nameUrl" : "gad-7.html",
          "title" : "GAD-7",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "eq-5d-5l.html"
          }],
          "nameUrl" : "eq-5d-5l.html",
          "title" : "EQ-5D-5L",
          "generation" : "markdown",
          "page" : [{
            "extension" : [{
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "eq-5d-5l-scores.html"
            }],
            "nameUrl" : "eq-5d-5l-scores.html",
            "title" : "EQ-5D-5L Scores",
            "generation" : "markdown"
          }]
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "eortc-qlq-c30.html"
          }],
          "nameUrl" : "eortc-qlq-c30.html",
          "title" : "EORTC QLQ-C30",
          "generation" : "markdown",
          "page" : [{
            "extension" : [{
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "eortc-qlq-c30-scoring.html"
            }],
            "nameUrl" : "eortc-qlq-c30-scoring.html",
            "title" : "EORTC QLQ-C30 Scoring",
            "generation" : "markdown"
          }]
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "promis.html"
          }],
          "nameUrl" : "promis.html",
          "title" : "PROMIS",
          "generation" : "markdown",
          "page" : [{
            "extension" : [{
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "promis-29.html"
            }],
            "nameUrl" : "promis-29.html",
            "title" : "PROMIS-29",
            "generation" : "markdown"
          },
          {
            "extension" : [{
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "promis-depression.html"
            }],
            "nameUrl" : "promis-depression.html",
            "title" : "PROMIS Depression SF4a",
            "generation" : "markdown"
          }]
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "bdi-ii.html"
          }],
          "nameUrl" : "bdi-ii.html",
          "title" : "BDI-II",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "dass-21.html"
          }],
          "nameUrl" : "dass-21.html",
          "title" : "DASS-21",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "minimal-reference-questionnaires.html"
          }],
          "nameUrl" : "minimal-reference-questionnaires.html",
          "title" : "Minimal Reference Questionnaires",
          "generation" : "markdown"
        }]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "domain-based-scoring.html"
        }],
        "nameUrl" : "domain-based-scoring.html",
        "title" : "Domain-Based Scoring",
        "generation" : "markdown",
        "page" : [{
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "domains.html"
          }],
          "nameUrl" : "domains.html",
          "title" : "Domains",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "cross-instrument-mappings.html"
          }],
          "nameUrl" : "cross-instrument-mappings.html",
          "title" : "Cross-Instrument Mappings",
          "generation" : "markdown"
        }]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "derived-metrics.html"
        }],
        "nameUrl" : "derived-metrics.html",
        "title" : "Derived Metrics",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "references.html"
        }],
        "nameUrl" : "references.html",
        "title" : "References",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "changes.html"
        }],
        "nameUrl" : "changes.html",
        "title" : "Changelog",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "downloads.html"
        }],
        "nameUrl" : "downloads.html",
        "title" : "Downloads",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "translationinfo.html"
        }],
        "nameUrl" : "translationinfo.html",
        "title" : "Translation Information",
        "generation" : "markdown"
      }]
    },
    "parameter" : [{
      "code" : "path-pages",
      "value" : "input/intro-notes"
    },
    {
      "code" : "path-resource",
      "value" : "input/capabilities"
    },
    {
      "code" : "path-resource",
      "value" : "input/examples"
    },
    {
      "code" : "path-resource",
      "value" : "input/extensions"
    },
    {
      "code" : "path-resource",
      "value" : "input/models"
    },
    {
      "code" : "path-resource",
      "value" : "input/operations"
    },
    {
      "code" : "path-resource",
      "value" : "input/profiles"
    },
    {
      "code" : "path-resource",
      "value" : "input/resources"
    },
    {
      "code" : "path-resource",
      "value" : "input/vocabulary"
    },
    {
      "code" : "path-resource",
      "value" : "input/maps"
    },
    {
      "code" : "path-resource",
      "value" : "input/testing"
    },
    {
      "code" : "path-resource",
      "value" : "input/history"
    },
    {
      "code" : "path-resource",
      "value" : "fsh-generated/resources"
    },
    {
      "code" : "path-pages",
      "value" : "template/config"
    },
    {
      "code" : "path-pages",
      "value" : "input/assets"
    },
    {
      "code" : "path-pages",
      "value" : "input/images"
    },
    {
      "code" : "path-tx-cache",
      "value" : "input-cache/txcache"
    }]
  }
}

```
