#!/usr/bin/env python3
"""Erzeugt den metadata-only Questionnaire-Stub für MTSOSD-R59 (Tier B).

Aufruf:  python3 scripts/generate-mtsosd-r59-stub.py
Schreibt input/fsh/definitions/mtsosd-r59/mii-qst-pro-mtsosd-r59.fsh.

Struktur (PCOR-MII Item Level Dictionary, Blatt NTx, MTSOSDR59_*): Symptome 01-59 mit je zwei
Variablen (Auftreten 0-4, Belastung), Symptom 27 geschlechtsspezifisch (male/female), Symptome
60-62 sind Freitext mit eigener Belastung. KEIN Itemtext und keine Antwortbezeichnung aus dem
Original: Labels sind neutral. Die Datei enthält nur Struktur und ist deterministisch.
"""
from pathlib import Path

BASE = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro"
OUT = Path(__file__).resolve().parent.parent / "input/fsh/definitions/mtsosd-r59/mii-qst-pro-mtsosd-r59.fsh"
CS = f"{BASE}/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence"

HEADER = f"""// MTSOSD-R59 — Memorial-/Kuleuven-Symptomfragebogen zur Symptomlast (59 Symptome + 3 Freitext).
// GENERIERT durch scripts/generate-mtsosd-r59-stub.py — nicht von Hand ändern.
//
// METADATA-ONLY (Tier B): © KU Leuven (Kontakt: joke.willems@kuleuven.be). Eine Veröffentlichung
// der konkreten Items einschließlich Antwortmöglichkeiten ist nicht erlaubt. Dieser Questionnaire
// bildet daher NUR Struktur, Typen, Wertebereiche und Bedingungen ab; die Item-Texte sind
// neutrale Labels (Symptom NN — Auftreten (0-4) / Belastung). Die wortgleiche Vollversion wird
// ausschließlich über den zugriffsbeschränkten Form Server verteilt, nie im Package. Jedes
// Zentrum benötigt eine eigene Lizenzvereinbarung; wissenschaftliche Nutzung ohne Pharma ist
// kostenfrei.
//
// Struktur: Auftreten je Symptom 0-4 (Single Answer, neutrales CodeSystem
// mii-cs-pro-mtsosd-r59-occurrence, itemWeight 0-4). Belastung ("-distress"): nur anzeigen,
// wenn Auftreten != Stufe 0. Zeitraum laut Dictionary: letzte 4 Wochen.
// Symptom 27 ist geschlechtsspezifisch (q27-male / q27-female). Die Steuerung über das
// Geschlecht (Q_SEX im Dictionary) ist eine Cross-Questionnaire-Bedingung und hier NICHT als
// enableWhen modelliert, sondern vom aufrufenden Prozess zu leisten.
// Symptome 60-62 sind Freitext (type text); ihre Belastung erscheint, sobald ein Text vorliegt
// (das Dictionary formuliert die Bedingung dort unscharf als "= 0").
//
// OFFEN: Die Stufenzahl der visuellen Belastungsskala ist im Dictionary NICHT dokumentiert
// (leeres Bild-Blatt); zu klären. Die Belastung ist daher als integer ohne min/max modelliert.
//
// SCORING: Es wird kein Score ausgeliefert. Summen über Auftreten bzw. Belastung existieren in
// der Literatur, ihre Definition ist hier nicht verifiziert (nur dokumentiert, calculatable = false).
//
// TERMINOLOGIE: kein LOINC/SNOMED-Code für das Instrument verifiziert; nur MII-Katalogcode.

Instance: mii-qst-pro-mtsosd-r59
InstanceOf: mii-pr-pro-questionnaire
Title: "MII QST PRO MTSOSD-R59"
Description: "MTSOSD-R59 — Symptomfragebogen mit 59 Symptomen plus 3 Freitext-Symptomen (KU Leuven). Metadata-only (Tier B): Struktur ohne Item-Wortlaut."
Usage: #definition
* insert Version
* insert MetaProfile({BASE}/StructureDefinition/mii-pr-pro-questionnaire)

* url = "{BASE}/Questionnaire/mii-qst-pro-mtsosd-r59"
* status = #active
* experimental = true
* language = #de
* title = "MTSOSD-R59 (metadata-only)"
* code[+] = $mii-cs-pro-questionnaire-catalogue#mtsosd-r59 "MTSOSD-R59 (Symptomfragebogen, 59 Symptome)"

* copyright = "MTSOSD-R59 © KU Leuven. Lizenz-Status: Tier B (metadata-only). Eine Veröffentlichung der konkreten Items einschließlich Antwortmöglichkeiten ist nicht erlaubt. Wissenschaftliche Nutzung ohne Pharma-Beteiligung ist kostenfrei; jedes Zentrum benötigt eine eigene Lizenzvereinbarung. Kontakt: joke.willems@kuleuven.be"

* extension[capabilities].extension[displayable].valueBoolean = false
* extension[capabilities].extension[collectable].valueBoolean = false
* extension[capabilities].extension[calculatable].valueBoolean = false
* extension[capabilities].extension[extractable].valueBoolean = true
* extension[capabilities].extension[domainAligned].valueBoolean = false

"""

# (suffix, nummer-label) je Symptom; 27 doppelt
symptoms = []
for n in range(1, 60):
    if n == 27:
        symptoms.append(("27-male", "27 (männlich)", "choice"))
        symptoms.append(("27-female", "27 (weiblich)", "choice"))
    else:
        symptoms.append((f"{n:02d}", f"{n:02d}", "choice"))
for n in (60, 61, 62):
    symptoms.append((f"{n}", f"{n} (Freitext)", "text"))

lines = []
idx = 0
for suffix, label, kind in symptoms:
    lid = f"mtsosd-r59-q{suffix}"
    lines.append(f"// Symptom {label}")
    lines.append(f'* item[{idx}].linkId = "{lid}"')
    lines.append(f"* item[{idx}].type = #{kind}")
    if kind == "choice":
        lines.append(f'* item[{idx}].text = "Symptom {label} — Auftreten (0-4)"')
        lines.append(f"* item[{idx}].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)")
    else:
        lines.append(f'* item[{idx}].text = "Symptom {label} — Freitext"')
    idx += 1
    lines.append(f'* item[{idx}].linkId = "{lid}-distress"')
    lines.append(f"* item[{idx}].type = #integer")
    lines.append(f'* item[{idx}].text = "Symptom {label} — Belastung"')
    lines.append(f'* item[{idx}].enableWhen[0].question = "{lid}"')
    if kind == "choice":
        lines.append(f"* item[{idx}].enableWhen[0].operator = #!=")
        lines.append(f'* item[{idx}].enableWhen[0].answerCoding = {CS}#stufe-0 "Stufe 0"')
    else:
        lines.append(f"* item[{idx}].enableWhen[0].operator = #exists")
        lines.append(f"* item[{idx}].enableWhen[0].answerBoolean = true")
    # Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert
    lines.append("// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären")
    lines.append("")
    idx += 1

OUT.parent.mkdir(parents=True, exist_ok=True)
OUT.write_text(HEADER + "\n".join(lines) + "\n", encoding="utf-8")
print(f"wrote {OUT} with {idx} items")
