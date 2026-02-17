include atcoder/extra/header/chaemon_header
let N,M=nextInt()
P:=Seq[N:nextInt()].sorted
L:=Seq[M:nextInt()]
D:=Seq[M:nextInt()]
import heapqueue
var c:HeapQueue[tuple[L,D:int]]
for i in 0..<M: c.push((L[i],D[i]))
var u:HeapQueue[tuple[D,L:int]]
a:=0
for Pi in P:
  while c.len>0 and c[0].L<=Pi:
    cj:=c.pop
    u.push((-cj.D,cj.L))
  a+=Pi
  if u.len>0: a+=u.pop.D
echo a