#!/bin/bash
# Fix broken Simplifier resolve links in MII Pro IG export
# Package: de.medizininformatikinitiative.kerndatensatz.pro
# Canonical: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro
# Generated: 2026-01-10 08:27:31

set -e
echo "Fixing MII Pro IG export links..."
echo ""

# =============================================================================
# Step 1: Fix FHIR R4 Core links (filepath pattern)
# =============================================================================
echo "1. Fixing FHIR R4 Core links..."

# StructureDefinition links
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.fhir.r4.core@4.0.1&filepath=package/StructureDefinition-\([^.#"]*\)\.json[^"]*|https://hl7.org/fhir/R4/\1.html|g' *.html
sed -i '' 's|/resolve?scope=package:hl7.fhir.r4.core@4.0.1&amp;filepath=package/StructureDefinition-\([^.]*\)\.json|https://hl7.org/fhir/R4/\1.html|g' *.html

# ValueSet links
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.fhir.r4.core@4.0.1&filepath=package/ValueSet-\([^.#"]*\)\.json[^"]*|https://hl7.org/fhir/R4/valueset-\1.html|g' *.html

# CodeSystem links
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.fhir.r4.core@4.0.1&filepath=package/CodeSystem-\([^.#"]*\)\.json[^"]*|https://hl7.org/fhir/R4/codesystem-\1.html|g' *.html

# With &amp; encoding
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.fhir.r4.core@4.0.1&amp;filepath=package/StructureDefinition-\([^.#"]*\)\.json[^"]*|https://hl7.org/fhir/R4/\1.html|g' *.html
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.fhir.r4.core@4.0.1&amp;filepath=package/ValueSet-\([^.#"]*\)\.json[^"]*|https://hl7.org/fhir/R4/valueset-\1.html|g' *.html
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.fhir.r4.core@4.0.1&amp;filepath=package/CodeSystem-\([^.#"]*\)\.json[^"]*|https://hl7.org/fhir/R4/codesystem-\1.html|g' *.html

# =============================================================================
# Step 2: Fix HL7 Terminology (THO) links
# =============================================================================
echo "2. Fixing HL7 Terminology (THO) links..."

# CodeSystem links to THO
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.terminology.r4@[^&]*&filepath=package/CodeSystem-\([^.#"]*\)\.json[^"]*|https://terminology.hl7.org/CodeSystem-\1.html|g' *.html
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.terminology.r4@[^&]*&amp;filepath=package/CodeSystem-\([^.#"]*\)\.json[^"]*|https://terminology.hl7.org/CodeSystem-\1.html|g' *.html

# ValueSet links to THO
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.terminology.r4@[^&]*&filepath=package/ValueSet-\([^.#"]*\)\.json[^"]*|https://terminology.hl7.org/ValueSet-\1.html|g' *.html
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.terminology.r4@[^&]*&amp;filepath=package/ValueSet-\([^.#"]*\)\.json[^"]*|https://terminology.hl7.org/ValueSet-\1.html|g' *.html

# NamingSystem links to THO
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.terminology.r4@[^&]*&filepath=package/NamingSystem-\([^.#"]*\)\.json[^"]*|https://terminology.hl7.org/NamingSystem-\1.html|g' *.html


# =============================================================================
# Step 3: Fix MII Meta module links
# =============================================================================
echo "3. Fixing MII Meta module links..."

# StructureDefinition links
sed -i '' 's|https://simplifier.net/resolve?scope=package:de.medizininformatikinitiative.kerndatensatz.meta@[^&]*&filepath=package/StructureDefinition-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.meta/2026.0.0/files/package/StructureDefinition-\1.json|g' *.html
sed -i '' 's|resolve?scope=package:de.medizininformatikinitiative.kerndatensatz.meta@[^&]*&filepath=package/StructureDefinition-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.meta/2026.0.0/files/package/StructureDefinition-\1.json|g' *.html

# ValueSet links
sed -i '' 's|https://simplifier.net/resolve?scope=package:de.medizininformatikinitiative.kerndatensatz.meta@[^&]*&filepath=package/ValueSet-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.meta/2026.0.0/files/package/ValueSet-\1.json|g' *.html
sed -i '' 's|resolve?scope=package:de.medizininformatikinitiative.kerndatensatz.meta@[^&]*&filepath=package/ValueSet-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.meta/2026.0.0/files/package/ValueSet-\1.json|g' *.html

# CodeSystem links
sed -i '' 's|https://simplifier.net/resolve?scope=package:de.medizininformatikinitiative.kerndatensatz.meta@[^&]*&filepath=package/CodeSystem-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.meta/2026.0.0/files/package/CodeSystem-\1.json|g' *.html

# Extension links
sed -i '' 's|https://simplifier.net/resolve?scope=package:de.medizininformatikinitiative.kerndatensatz.meta@[^&]*&filepath=package/Extension-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.meta/2026.0.0/files/package/Extension-\1.json|g' *.html


# =============================================================================
# Step 4: Fix hl7.fhir.uv.sdc links
# =============================================================================
echo "4. Fixing hl7.fhir.uv.sdc links..."

# StructureDefinition links
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.fhir.uv.sdc@[^&]*&filepath=package/StructureDefinition-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/hl7.fhir.uv.sdc/3.0.0/files/package/StructureDefinition-\1.json|g' *.html
sed -i '' 's|resolve?scope=package:hl7.fhir.uv.sdc@[^&]*&filepath=package/StructureDefinition-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/hl7.fhir.uv.sdc/3.0.0/files/package/StructureDefinition-\1.json|g' *.html

# ValueSet links
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.fhir.uv.sdc@[^&]*&filepath=package/ValueSet-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/hl7.fhir.uv.sdc/3.0.0/files/package/ValueSet-\1.json|g' *.html
sed -i '' 's|resolve?scope=package:hl7.fhir.uv.sdc@[^&]*&filepath=package/ValueSet-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/hl7.fhir.uv.sdc/3.0.0/files/package/ValueSet-\1.json|g' *.html

# CodeSystem links
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.fhir.uv.sdc@[^&]*&filepath=package/CodeSystem-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/hl7.fhir.uv.sdc/3.0.0/files/package/CodeSystem-\1.json|g' *.html

# Extension links
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.fhir.uv.sdc@[^&]*&filepath=package/Extension-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/hl7.fhir.uv.sdc/3.0.0/files/package/Extension-\1.json|g' *.html


# =============================================================================
# Step 5: Fix de.gematik.isik links
# =============================================================================
echo "5. Fixing de.gematik.isik links..."

# StructureDefinition links
sed -i '' 's|https://simplifier.net/resolve?scope=package:de.gematik.isik@[^&]*&filepath=package/StructureDefinition-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.gematik.isik/5.0.0/files/package/StructureDefinition-\1.json|g' *.html
sed -i '' 's|resolve?scope=package:de.gematik.isik@[^&]*&filepath=package/StructureDefinition-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.gematik.isik/5.0.0/files/package/StructureDefinition-\1.json|g' *.html

# ValueSet links
sed -i '' 's|https://simplifier.net/resolve?scope=package:de.gematik.isik@[^&]*&filepath=package/ValueSet-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.gematik.isik/5.0.0/files/package/ValueSet-\1.json|g' *.html
sed -i '' 's|resolve?scope=package:de.gematik.isik@[^&]*&filepath=package/ValueSet-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.gematik.isik/5.0.0/files/package/ValueSet-\1.json|g' *.html

# CodeSystem links
sed -i '' 's|https://simplifier.net/resolve?scope=package:de.gematik.isik@[^&]*&filepath=package/CodeSystem-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.gematik.isik/5.0.0/files/package/CodeSystem-\1.json|g' *.html

# Extension links
sed -i '' 's|https://simplifier.net/resolve?scope=package:de.gematik.isik@[^&]*&filepath=package/Extension-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.gematik.isik/5.0.0/files/package/Extension-\1.json|g' *.html


# =============================================================================
# Step 6: Fix hl7.fhir.uv.extensions.r4 links
# =============================================================================
echo "6. Fixing hl7.fhir.uv.extensions.r4 links..."

# StructureDefinition links
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.fhir.uv.extensions.r4@[^&]*&filepath=package/StructureDefinition-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/hl7.fhir.uv.extensions.r4/5.1.0/files/package/StructureDefinition-\1.json|g' *.html
sed -i '' 's|resolve?scope=package:hl7.fhir.uv.extensions.r4@[^&]*&filepath=package/StructureDefinition-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/hl7.fhir.uv.extensions.r4/5.1.0/files/package/StructureDefinition-\1.json|g' *.html

# ValueSet links
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.fhir.uv.extensions.r4@[^&]*&filepath=package/ValueSet-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/hl7.fhir.uv.extensions.r4/5.1.0/files/package/ValueSet-\1.json|g' *.html
sed -i '' 's|resolve?scope=package:hl7.fhir.uv.extensions.r4@[^&]*&filepath=package/ValueSet-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/hl7.fhir.uv.extensions.r4/5.1.0/files/package/ValueSet-\1.json|g' *.html

# CodeSystem links
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.fhir.uv.extensions.r4@[^&]*&filepath=package/CodeSystem-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/hl7.fhir.uv.extensions.r4/5.1.0/files/package/CodeSystem-\1.json|g' *.html

# Extension links
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.fhir.uv.extensions.r4@[^&]*&filepath=package/Extension-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/hl7.fhir.uv.extensions.r4/5.1.0/files/package/Extension-\1.json|g' *.html


# =============================================================================
# Step N: Fix FHIR R4 base StructureDefinition links (canonical box basis column)
# =============================================================================
echo "7. Fixing FHIR R4 base StructureDefinition links (canonical box)..."

# Single-quoted href with regular & (canonical box FQL table)
sed -i '' "s|'/resolve?&scope=package:de.medizininformatikinitiative.kerndatensatz.pro@[^&]*&canonical=http://hl7.org/fhir/StructureDefinition/\([^']*\)'|'https://hl7.org/fhir/R4/\1.html'|g" *.html

# Double-quoted href with &amp; (HTML entity)
sed -i '' "s|/resolve?&amp;scope=package:de.medizininformatikinitiative.kerndatensatz.pro@[^&]*&amp;canonical=http://hl7.org/fhir/StructureDefinition/\([^\"]*\)|https://hl7.org/fhir/R4/\1.html|g" *.html

# Also fix FHIR ValueSet canonical references
sed -i '' "s|'/resolve?&scope=package:de.medizininformatikinitiative.kerndatensatz.pro@[^&]*&canonical=http://hl7.org/fhir/ValueSet/\([^']*\)'|'https://hl7.org/fhir/R4/valueset-\1.html'|g" *.html
sed -i '' "s|/resolve?&amp;scope=package:de.medizininformatikinitiative.kerndatensatz.pro@[^&]*&amp;canonical=http://hl7.org/fhir/ValueSet/\([^\"]*\)|https://hl7.org/fhir/R4/valueset-\1.html|g" *.html

# =============================================================================
# Step N+1: Fix MII Pro profile canonical links (canonical box)
# =============================================================================
echo "8. Fixing MII Pro profile canonical links..."

# Convert relative /resolve? to https://simplifier.net/resolve? with fhirVersion
# Single-quoted href with regular &
sed -i '' "s|'/resolve?&scope=package:de.medizininformatikinitiative.kerndatensatz.pro@\([^&]*\)&canonical=\(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/[^']*\)'|'https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.pro@\1\&canonical=\2\&fhirVersion=R4'|g" *.html

# Double-quoted href with &amp;
sed -i '' "s|/resolve?&amp;scope=package:de.medizininformatikinitiative.kerndatensatz.pro@\([^&]*\)&amp;canonical=\(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/[^\"]*\)|https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.pro@\1\&amp;canonical=\2\&amp;fhirVersion=R4|g" *.html



# =============================================================================
# Step N+2: Fix internal ValueSet references -> Simplifier resolve (with scope)
# =============================================================================
echo "9. Fixing internal ValueSet references..."

# Generic pattern: artifacts/package/ValueSet-mii-vs-pro-*.json -> Simplifier resolve with scope
sed -i '' 's|artifacts/package/ValueSet-\(mii-vs-pro-[^.#"]*\)\.json\([^"]*\)|https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.pro@2026.0.0-rc.4\&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/\1\&fhirVersion=R4|g' *.html

# Also fix artifacts/fsh-generated/resources/ path variant
sed -i '' 's|artifacts/fsh-generated/resources/ValueSet-\(mii-vs-pro-[^.#"]*\)\.json\([^"]*\)|https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.pro@2026.0.0-rc.4\&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/\1\&fhirVersion=R4|g' *.html

# =============================================================================
# Step N+3: Fix internal CodeSystem references -> Simplifier resolve (with scope)
# =============================================================================
echo "10. Fixing internal CodeSystem references..."

# Generic pattern: artifacts/package/CodeSystem-mii-cs-pro-*.json -> Simplifier resolve with scope
sed -i '' 's|artifacts/package/CodeSystem-\(mii-cs-pro-[^.#"]*\)\.json\([^"]*\)|https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.pro@2026.0.0-rc.4\&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/\1\&fhirVersion=R4|g' *.html

# Also fix artifacts/fsh-generated/resources/ path variant
sed -i '' 's|artifacts/fsh-generated/resources/CodeSystem-\(mii-cs-pro-[^.#"]*\)\.json\([^"]*\)|https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.pro@2026.0.0-rc.4\&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/\1\&fhirVersion=R4|g' *.html

# =============================================================================
# Step N+4: Fix internal Extension references -> Simplifier resolve
# =============================================================================
echo "11. Fixing internal Extension references..."

# Fallback: any remaining mii-ex-pro extensions -> Simplifier resolve (online)
sed -i '' 's|artifacts/package/StructureDefinition-\(mii-ex-pro-[^.#"]*\)\.json\([^"]*\)|https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.pro@2026.0.0-rc.4\&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/\1\&fhirVersion=R4|g' *.html
sed -i '' 's|artifacts/fsh-generated/resources/StructureDefinition-\(mii-ex-pro-[^.#"]*\)\.json\([^"]*\)|https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.pro@2026.0.0-rc.4\&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/\1\&fhirVersion=R4|g' *.html

# =============================================================================
# Step N+5: Fallback - Fix any remaining artifacts/package/ paths for profiles
# =============================================================================
echo "12. Fixing remaining artifacts/package/ paths..."

# Generic fallback: any remaining mii-pr-pro profiles -> Simplifier resolve with scope
sed -i '' 's|artifacts/package/StructureDefinition-\(mii-pr-pro-[^.#"]*\)\.json\([^"]*\)|https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.pro@2026.0.0-rc.4\&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/\1\&fhirVersion=R4|g' *.html
sed -i '' 's|artifacts/fsh-generated/resources/StructureDefinition-\(mii-pr-pro-[^.#"]*\)\.json\([^"]*\)|https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.pro@2026.0.0-rc.4\&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/\1\&fhirVersion=R4|g' *.html

# =============================================================================
# Step N+6: Fix remaining direct MII canonical links (without resolve)
# =============================================================================
echo "13. Fixing remaining direct MII canonical links..."

# Fix any remaining direct href links to MII canonicals that were not caught by FQL
sed -i '' 's|href="https:\/\/www\.medizininformatik-initiative\.de\/fhir\/ext\/modul-pro/StructureDefinition/\([^"]*\)"|href="https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.pro@2026.0.0-rc.4\&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/\1\&fhirVersion=R4"|g' *.html

# Fix MII ValueSet direct links
sed -i '' 's|href="https:\/\/www\.medizininformatik-initiative\.de\/fhir\/ext\/modul-pro/ValueSet/\([^"]*\)"|href="https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.pro@2026.0.0-rc.4\&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/\1\&fhirVersion=R4"|g' *.html

# Fix MII CodeSystem direct links
sed -i '' 's|href="https:\/\/www\.medizininformatik-initiative\.de\/fhir\/ext\/modul-pro/CodeSystem/\([^"]*\)"|href="https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.pro@2026.0.0-rc.4\&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/\1\&fhirVersion=R4"|g' *.html

# =============================================================================
# Step FINAL-1: Clean up backup files
# =============================================================================
echo "14. Cleaning up backup files..."
find . -name "*''" -type f -delete 2>/dev/null || true

# =============================================================================
# Done
# =============================================================================
echo ""
echo "Done!"
echo ""
echo "Verify remaining resolve links:"
echo "  grep -c 'resolve?' *.html | grep -v ':0\$' | sort -t: -k2 -rn | head -10"
echo ""
echo "The remaining links should be intentional Simplifier canonical resolves."
