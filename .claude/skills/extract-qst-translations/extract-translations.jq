def get_trans:
  if .extension then
    [.extension[] | select(.url == "http://hl7.org/fhir/StructureDefinition/translation") |
     {lang: (.extension[] | select(.url=="lang") | .valueCode),
      text: (.extension[] | select(.url=="content") | .valueString)}]
  else [] end;

def walk:
  .[] |
  if .type == "group" then (.item // [] | walk)
  elif .type == "display" then empty
  else
    . as $i |
    ([{linkId: $i.linkId, kind: "item", loinc: ($i.code[0].code // ""),
       primary: ($i.text // ""),
       de_trans: (($i._text // {}) | get_trans | map(select(.lang=="de")) | first | (.text // "")),
       en_trans: (($i._text // {}) | get_trans | map(select(.lang=="en")) | first | (.text // ""))}] +
     [($i.answerOption // [])[] |
      {linkId: $i.linkId, kind: "answer", loinc: .valueCoding.code,
       primary: (.valueCoding.display // ""),
       de_trans: ((.valueCoding._display // {}) | get_trans | map(select(.lang=="de")) | first | (.text // "")),
       en_trans: ((.valueCoding._display // {}) | get_trans | map(select(.lang=="en")) | first | (.text // "")),
       ord: ((.extension[]? | select(.url=="http://hl7.org/fhir/StructureDefinition/ordinalValue") | .valueDecimal) // "")}]
    )[]
  end;

# Header + rows
(["linkId","kind","loinc","primary","de_trans","en_trans","ord"]),
(.item | walk | [.linkId, .kind, .loinc, .primary, .de_trans, .en_trans, (.ord // "")])
| @tsv
