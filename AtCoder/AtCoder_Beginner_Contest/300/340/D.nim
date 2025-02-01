include atcoder/header
let N=nextInt()
var g=newSeqWith(N,newSeq[tuple[t,w:int]]())
for i in 0..<N-1:
  let A,B,X=nextInt()
  g[i].add((i+1,A)); g[i].add((X-1,B))
import heapqueue
var
  q=[(w:0,i:0)].toHeapQueue
  w=newSeqWith(N,int.inf)
  d=newSeqWith(N,false)
w[0]=0
while q.len>0:
  let i=q.pop
  if not d[i.i]:
    d[i.i]=true
    for j in g[i.i]:
      let nw=i.w+j.w
      if nw<w[j.t]: w[j.t]=nw; q.push((nw,j.t))
echo w[^1]