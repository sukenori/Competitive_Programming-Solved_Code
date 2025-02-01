include atcoder/header
let N,M=nextInt()
var g=newSeqWith(N,newSeq[int](0))
for _ in 1..M:
  let A,B=nextInt()-1
  g[A].add(B); g[B].add(A)
var p=newSeqWith(N,-1); p[0]=0
import deques
var q=[0].toDeque
while q.len>0:
  let i=q.popFirst
  for j in g[i]:
    if p[j] == -1:
      p[j]=i+1
      q.addLast(j)
echo "Yes"
echo p[1..^1].join("\n")