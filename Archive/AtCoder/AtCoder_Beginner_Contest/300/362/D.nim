include atcoder/header
let
  N,M=nextInt()
  A=newSeqWith(N,nextInt())
var g=newSeqWith(N,newSeq[tuple[t,w:int]]())
for _ in 1..M:
  let
    U,V=nextInt()-1
    B=nextInt()
  g[U].add((V,B+A[V])); g[V].add((U,B+A[U]))
import heapqueue
var
  q=[(w:A[0],i:0)].toHeapQueue
  w=newSeqWith(N,int.inf)
  d=newSeqWith(N,false)
w[0]=A[0]
while q.len>0:
  let i=q.pop
  if not d[i.i]:
    d[i.i]=true
    for j in g[i.i]:
      let nw=i.w+j.w
      if nw<w[j.t]: w[j.t]=nw; q.push((nw,j.t))
echo w[1..^1].join(" ")