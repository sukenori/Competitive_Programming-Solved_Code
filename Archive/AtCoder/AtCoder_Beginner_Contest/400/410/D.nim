include atcoder/header
let N,M=nextInt()
var g=newSeqWith(N,newSeq[tuple[t,w:int]]())
for _ in 1..M:
  let
    A,B=nextInt()-1
    W=nextInt()
  g[A].add((B,W))
import deques
var
  q=[(0,0)].toDeque
  d=newSeqWith(N,newSeq[bool](2^10))
d[0][0]=true
while q.len>0:
  let (i,w)=q.popFirst
  for j in g[i]:
    let nw=w xor j.w
    if not d[j.t][nw]:
      d[j.t][nw]=true
      q.addLast((j.t,nw))
let a=(0..<2^10).toSeq.filterIt(d[^1][it])
echo if a.len>0: a.min else: -1