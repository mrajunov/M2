<!DOCTYPE html><html lang="es"><head><meta charset="UTF-8">
<style>
@import url('https://fonts.googleapis.com/css2?family=DM+Serif+Display&family=DM+Sans:wght@300;400;500;600&display=swap');
*{box-sizing:border-box;margin:0;padding:0}
:root{--bg:#07090F;--s1:#0E1420;--s2:#141C2E;--s3:#1A2338;--b1:#1C2B42;--b2:#243550;--t1:#EEF2FF;--t2:#8FA4C8;--t3:#4E6485;--t4:#2A3D5C;--acc:#4B8EF1;--grn:#0EA572;--red:#E53E3E;--amb:#D97706;--gld:#C8922A;--tel:#0891B2}
body{background:var(--bg);color:var(--t1);font-family:'DM Sans',sans-serif;font-size:12px;height:100vh;overflow:hidden}
.app{display:flex;height:100vh}
.sb{width:210px;background:var(--s1);border-right:1px solid var(--b1);display:flex;flex-direction:column;flex-shrink:0}
.logo{padding:15px 14px 12px;border-bottom:1px solid var(--b1)}
.logo-t{font-family:'DM Serif Display',serif;font-size:15px;color:var(--gld)}
.logo-s{font-size:8px;color:var(--t3);text-transform:uppercase;letter-spacing:.1em;margin-top:2px}
.nav-s{flex:1;overflow-y:auto;padding:5px 0}
.nav-s::-webkit-scrollbar{width:3px}.nav-s::-webkit-scrollbar-thumb{background:var(--b2)}
.nl{padding:9px 13px 3px;font-size:8px;color:var(--t4);text-transform:uppercase;letter-spacing:.1em}
.ni{display:flex;align-items:center;gap:7px;padding:7px 13px;cursor:pointer;color:var(--t3);font-size:11px;border-left:2px solid transparent;transition:.1s}
.ni:hover{color:var(--t1);background:var(--s2)}.ni.on{color:var(--acc);border-left-color:var(--acc);background:rgba(75,142,241,.07)}
.nb{font-size:8px;padding:1px 5px;border-radius:8px;margin-left:auto;font-weight:600}
.nbg{background:rgba(14,165,114,.2);color:#34D399}.nba{background:rgba(217,119,6,.2);color:#FCD34D}
.nbr{background:rgba(229,62,62,.2);color:#F87171}.nbb{background:rgba(75,142,241,.2);color:#93C5FD}
.sf{padding:10px 13px;border-top:1px solid var(--b1);font-size:9px;color:var(--t3)}
.main{flex:1;display:flex;flex-direction:column;overflow:hidden}
.topbar{padding:10px 18px;border-bottom:1px solid var(--b1);background:var(--s1);display:flex;align-items:center;justify-content:space-between;flex-shrink:0}
.tb-t{font-family:'DM Serif Display',serif;font-size:14px}.tb-s{font-size:9px;color:var(--t3);margin-top:1px}
.tb-r{display:flex;gap:6px}
.btn{padding:5px 10px;border-radius:4px;font-size:10px;cursor:pointer;border:1px solid var(--b2);background:var(--s2);color:var(--t1);font-family:'DM Sans',sans-serif}
.bta{background:var(--acc);border-color:var(--acc);color:#fff}.btg{background:rgba(14,165,114,.12);border-color:rgba(14,165,114,.25);color:var(--grn)}
.body{flex:1;overflow-y:auto;padding:14px 18px}
.body::-webkit-scrollbar{width:4px}.body::-webkit-scrollbar-thumb{background:var(--b2);border-radius:2px}
.pg{display:none}.pg.on{display:block}
.kg{display:grid;gap:9px;margin-bottom:14px}
.kg5{grid-template-columns:repeat(5,1fr)}.kg4{grid-template-columns:repeat(4,1fr)}
.kg3{grid-template-columns:repeat(3,1fr)}.kg2{grid-template-columns:repeat(2,1fr)}
.k{background:var(--s1);border:1px solid var(--b1);border-radius:8px;padding:11px 13px;position:relative;overflow:hidden}
.k::before{content:'';position:absolute;top:0;left:0;right:0;height:2px}
.k-a::before{background:var(--acc)}.k-g::before{background:var(--grn)}.k-r::before{background:var(--red)}
.k-o::before{background:var(--amb)}.k-d::before{background:var(--gld)}.k-t::before{background:var(--tel)}
.kl{font-size:8px;color:var(--t3);text-transform:uppercase;letter-spacing:.05em;margin-bottom:4px}
.kv{font-size:18px;font-weight:600;line-height:1.1;margin-bottom:2px}.ks{font-size:9px;color:var(--t3);line-height:1.4}
.kb{display:inline-block;font-size:8px;padding:1px 6px;border-radius:3px;margin-top:4px}
.kb-g{background:rgba(14,165,114,.12);color:var(--grn)}.kb-b{background:rgba(75,142,241,.12);color:var(--acc)}
.tw{background:var(--s1);border:1px solid var(--b1);border-radius:8px;padding:13px;margin-bottom:10px}
.th{display:flex;justify-content:space-between;align-items:center;margin-bottom:9px;flex-wrap:wrap;gap:6px}
.st{font-size:10px;font-weight:500;border-left:2px solid var(--acc);padding-left:7px}
.st.g{border-left-color:var(--grn)}.st.a{border-left-color:var(--amb)}.st.r{border-left-color:var(--red)}
.srch{background:var(--s2);border:1px solid var(--b2);border-radius:4px;padding:4px 8px;color:var(--t1);font-size:9px;width:155px}
.srch::placeholder{color:var(--t3)}
table{width:100%;border-collapse:collapse;font-size:9px}
th{text-align:left;padding:5px 7px;color:var(--t3);font-weight:400;font-size:8px;text-transform:uppercase;letter-spacing:.04em;border-bottom:1px solid var(--b1)}
td{padding:5px 7px;border-bottom:1px solid rgba(28,43,66,.4)}
tr:last-child td{border-bottom:none}tr:hover td{background:var(--s2)}
.bd{padding:2px 6px;border-radius:3px;font-size:8px;font-weight:500}
.bg{background:rgba(14,165,114,.12);color:var(--grn)}.br{background:rgba(229,62,62,.12);color:var(--red)}
.ba{background:rgba(217,119,6,.12);color:var(--amb)}.bb{background:rgba(75,142,241,.12);color:var(--acc)}
.bn{background:var(--s3);color:var(--t3)}
.ib{background:rgba(75,142,241,.06);border:1px solid rgba(75,142,241,.18);border-radius:6px;padding:9px 12px;margin-bottom:12px;font-size:10px;color:var(--t2);line-height:1.6}
.ib strong{color:var(--acc)}.gb{background:rgba(14,165,114,.06);border:1px solid rgba(14,165,114,.18);border-radius:6px;padding:9px 12px;margin-bottom:12px;font-size:10px;color:var(--grn)}
.wb{background:rgba(217,119,6,.06);border:1px solid rgba(217,119,6,.18);border-radius:6px;padding:9px 12px;margin-bottom:12px;font-size:10px;color:var(--amb)}
.pg-grid{display:grid;grid-template-columns:repeat(3,1fr);gap:10px;margin-bottom:14px}
.pc{background:var(--s1);border:1px solid var(--b1);border-radius:9px;padding:14px;cursor:pointer;transition:.12s;position:relative}
.pc:hover{border-color:var(--acc);background:var(--s2)}
.pc-n{font-size:12px;font-weight:600;color:var(--acc);margin-bottom:3px}.pc-t{font-size:12px;font-weight:500;margin-bottom:2px}
.pc-l{font-size:9px;color:var(--t3);margin-bottom:8px}.pc-ks{display:flex;gap:12px}
.pc-k .v{font-size:14px;font-weight:600;line-height:1.2}.pc-k .l{font-size:8px;color:var(--t3)}
.pc-dot{position:absolute;top:10px;right:10px;width:8px;height:8px;border-radius:50%}
.itabs{display:flex;gap:6px;margin-bottom:12px;flex-wrap:wrap}
.itab{padding:5px 13px;border-radius:5px;font-size:10px;font-weight:500;cursor:pointer;border:1px solid var(--b2);background:var(--s2);color:var(--t3);transition:.1s}
.itab:hover{color:var(--t1)}.itab.on{color:#fff;border-color:transparent}
.it-all.on{background:var(--s3);color:var(--t1);border-color:var(--b2)}
.it-ene.on{background:rgba(75,142,241,.7)}.it-feb.on{background:rgba(14,165,114,.8)}
.it-mar.on{background:rgba(14,165,114,.5)}.it-abr.on{background:rgba(217,119,6,.75)}
.isec{display:none}.isec.on{display:block}
.casec{display:none}.casec.on{display:block}
.ca-anio.on{background:var(--s3);color:var(--t1);border-color:var(--b2)}
.ca-abr.on{background:rgba(75,142,241,.7);color:#fff;border-color:transparent}
.ca-atr.on{background:rgba(229,62,62,.75);color:#fff;border-color:transparent}
.sim4{display:grid;grid-template-columns:repeat(4,1fr);gap:8px;margin-bottom:10px}
.sc{background:var(--s2);border-radius:6px;padding:10px}
.sc.feb-sc{background:rgba(14,165,114,.08);border:1px solid rgba(14,165,114,.25)}
.sin{background:var(--s3);border:1px solid var(--b2);border-radius:3px;padding:3px 6px;color:var(--t1);font-size:11px;width:68px;font-family:'DM Sans',sans-serif}
.grp-hdr td{background:var(--s2);color:var(--acc);font-weight:600;font-size:9px;padding:5px 7px;border-top:1px solid var(--b2)}
.ttl-r td{background:var(--s2);font-weight:600;border-top:2px solid var(--b2);padding:5px 7px}
</style></head><body>
