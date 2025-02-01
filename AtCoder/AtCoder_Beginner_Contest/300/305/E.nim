include atcoder/extra/header/chaemon_header
let N,M,K=nextInt()
g:=Seq[N,0:int]
for _ in 1..M:
  let a,b=nextInt()-1
  g[a].add(b); g[b].add(a)
import heapqueue
var q:HeapQueue[tuple[h,i:int]]
for _ in 1..K:
  let p,h=nextInt(); q.push((-h,p-1))
d:=Seq[N: -1]
while q.len>0:
  i:=q.pop; d[i.i].max= -i.h
  for j in g[i.i]:
    if d[i.i]>0 and d[j]<d[i.i]-1:
      d[j]=d[i.i]-1; q.push((-d[j],j))
echo d.countIt(it>=0)
echo (block: collect(newSeq):(for i,di in d:(if di>=0: i+1))).join(" ")