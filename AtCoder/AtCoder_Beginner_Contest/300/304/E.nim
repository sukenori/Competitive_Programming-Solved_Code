include atcoder/extra/header/chaemon_header
import atcoder/dsu
G:=initDSU(nextInt())
for _ in 1..nextInt():
  let u,v=nextInt()-1
  G.merge(u,v)
var s:HashSet[(int,int)]
for _ in 1..nextInt():
  let x,y=G.leader(nextInt()-1)
  s.incl((x,y)); s.incl((y,x))
for _ in 1..nextInt():
  var p,q=G.leader(nextInt()-1)
  echo if (p,q) notin s: "Yes" else: "No"