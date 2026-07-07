import json, glob, html, os
def esc(s): return html.escape(str(s)) if s is not None else ""
def load_terminology(resdir):
    cs={}  # system-url -> {code: (display, ordinal)}
    vs={}  # vs-url -> [(system,code)]
    for f in glob.glob(os.path.join(resdir,"*.json")):
        try: d=json.load(open(f,encoding="utf-8"))
        except: continue
        rt=d.get("resourceType")
        if rt=="CodeSystem":
            url=d.get("url"); m={}
            propmap={}
            for c in d.get("concept",[]):
                ordv=None
                for p in c.get("property",[]):
                    if p.get("code") in ("ordinalValue","itemWeight"): ordv=p.get("valueDecimal")
                m[c.get("code")]=(c.get("display"),ordv)
            cs[url]=m
        elif rt=="ValueSet":
            url=d.get("url"); incs=[]
            for inc in d.get("compose",{}).get("include",[]):
                sysu=inc.get("system")
                if inc.get("concept"):
                    for c in inc["concept"]: incs.append((sysu,c.get("code")))
                else: incs.append((sysu,None))  # all from system
            vs[url]=incs
    return cs,vs
def de_translation(el):
    for e in (el.get("_text",{}) or {}).get("extension",[]) if isinstance(el.get("_text"),dict) else []:
        pass
    return None
def render(q, cs, vs):
    out=[]
    def opts_for_vs(vsurl):
        rows=[]
        for (sysu,code) in vs.get(vsurl,[]):
            concepts=cs.get(sysu,{})
            items=[(code,)+concepts[code]] if code and code in concepts else [(c,)+v for c,v in concepts.items()]
            for code2,disp,ordv in items:
                badge=f"<span class=w>{ordv}</span>" if ordv is not None else "<span class=w style=background:#fdd>kein Gewicht!</span>"
                rows.append(f"<label><input type=radio disabled> {esc(disp)} {badge}</label>")
        return "".join(rows)
    def walk(items):
        for it in items or []:
            t=it.get("type"); txt=it.get("text",""); pre=it.get("prefix","")
            # de translation
            de=""
            ext=(it.get("_text") or {}).get("extension",[]) if isinstance(it.get("_text"),dict) else []
            for e in ext:
                if e.get("url","").endswith("translation"):
                    lang=cont=None
                    for sub in e.get("extension",[]):
                        if sub.get("url")=="lang": lang=sub.get("valueCode")
                        if sub.get("url")=="content": cont=sub.get("valueString")
                    if lang=="de" and cont: de=cont
            detag=f"<div class=de>DE: {esc(de)}</div>" if de else ""
            if t=="group":
                out.append(f"<fieldset><legend>{esc(txt)}</legend>{detag}"); walk(it.get("item",[])); out.append("</fieldset>")
            elif t=="display":
                out.append(f"<p class=stem>{esc(txt)}</p>{detag}")
            elif t in ("choice","open-choice"):
                if it.get("answerValueSet"): o=opts_for_vs(it["answerValueSet"])
                else:
                    o=""
                    for opt in it.get("answerOption",[]):
                        vc=opt.get("valueCoding",{}); ordv=None
                        for e in opt.get("extension",[]):
                            if "ordinal" in e.get("url",""): ordv=e.get("valueDecimal")
                        o+=f"<label><input type=radio disabled> {esc(vc.get('display'))} <span class=w>{ordv}</span></label>"
                out.append(f"<div class=q><div class=qt>{esc(pre)+'. ' if pre else ''}{esc(txt)}</div>{detag}<div class=opts>{o}</div></div>")
            else:
                ro=" (readOnly/berechnet)" if it.get("readOnly") else ""
                out.append(f"<div class=q score><div class=qt>{esc(pre)+': ' if pre else ''}{esc(txt)} <span class=code>[{esc(t)}{ro}]</span></div>{detag}</div>")
    walk(q.get("item",[]))
    return "\n".join(out)
def build(qglob, out, title, note):
    f=glob.glob(qglob); 
    if not f: print("NICHT gefunden"); return
    resdir=os.path.dirname(f[0]); cs,vs=load_terminology(resdir)
    q=json.load(open(f[0],encoding="utf-8")); body=render(q,cs,vs)
    doc=f"""<!doctype html><html lang=de><head><meta charset=utf-8><title>{esc(title)}</title>
<style>body{{font-family:system-ui,sans-serif;max-width:840px;margin:1.5rem auto;padding:0 1rem;color:#222}}
.meta{{color:#666;font-size:.85rem}} .note{{background:#fff8e1;border:1px solid #f0d000;padding:.6rem .9rem;border-radius:6px;font-size:.85rem;margin:.6rem 0 1.2rem}}
.stem{{font-style:italic;color:#456}} .de{{color:#888;font-size:.8rem;margin:.1rem 0 .2rem}}
.q{{margin:.5rem 0;padding:.4rem .6rem;border-left:3px solid #e3e6ef}} .q.score{{border-left-color:#79c;background:#f4f8ff}}
.qt{{font-weight:500}} .opts{{margin-top:.25rem;display:flex;flex-wrap:wrap;gap:.35rem 1rem}} .opts label{{font-size:.9rem}}
.w{{background:#eef;border:1px solid #ccd;border-radius:10px;font-size:.7rem;padding:0 .35rem;color:#447}} .code{{font-family:monospace;font-size:.7rem;color:#999}}</style></head><body>
<h2>{esc(title)}</h2><div class=meta>{esc(q.get('title'))} · primary lang={esc(q.get('language'))} · {len(q.get('item',[]))} Items</div>
<div class=note>{note}</div>{body}
<p class=meta>Eigen-Render: answerValueSet aufgelöst über CodeSystem; Badge = ordinalValue-Gewicht (aus CS-Konzept). DE = Übersetzungs-Extension.</p></body></html>"""
    open(out,"w",encoding="utf-8").write(doc); print("OK:",out)

# ---- CLI ----
if __name__ == "__main__":
    import argparse, os, subprocess, json as _json, glob as _glob
    ap = argparse.ArgumentParser(description="Render a FHIR Questionnaire JSON as dependency-free HTML preview")
    ap.add_argument("questionnaire", help="path or glob to generated Questionnaire-*.json")
    ap.add_argument("--out", default=None, help="output HTML path")
    ap.add_argument("--title", default=None)
    ap.add_argument("--note", default="")
    ap.add_argument("--open", action="store_true", help="open in default browser (macOS)")
    a = ap.parse_args()
    fs = _glob.glob(a.questionnaire)
    if not fs:
        raise SystemExit(f"Not found: {a.questionnaire}")
    qf = fs[0]
    qid = _json.load(open(qf, encoding="utf-8")).get("id", "questionnaire")
    out = a.out or f"/tmp/{qid}-preview.html"
    title = a.title or qid
    build(qf, out, title, a.note)
    if a.open:
        subprocess.run(["open", out])
