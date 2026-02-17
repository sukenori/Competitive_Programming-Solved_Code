include atcoder/header
let N,M,X=nextInt()
var g=newSeqWith(N*2,newSeq[int]())
for _ in 1..M:
  let u,v=nextInt()-1
  g[u*2].add(v*2); g[v*2+1].add(u*2+1)
import heapqueue
var
  q=[(w:0,i:0)].toHeapQueue
  w=newSeqWith(N*2,int.inf)
w[0]=0
proc f(i:tuple[w:int,i:int])=
  for j in g[i.i]:
    let nw=i.w+1
    if nw<w[j]: w[j]=nw; q.push((nw,j))
while q.len>0:
  let i=q.pop
  f(i); f((i.w+X,i.i xor 1))
echo min(w[^1],w[^2])