include atcoder/extra/header/chaemon_header
N:=nextInt()
e:=Seq[N:(int,int)]
for i in 0..<N: e[i]=(nextInt(),nextInt())
import atcoder/extra/structure/set_map
var s=initSortedMultiSet[int]()
m:=0
var p:seq[int]
for i in 0..<N<<1:
  if e[i][0]==1:
    if e[i][1] in s: p.add(1); s.excl(s.find(e[i][1]))
    else: p.add(0)
  else: s.incl(e[i][1]); m.max=s.len
if s.len>0: echo -1
else:
  echo m
  echo p.reversed.join(" ")