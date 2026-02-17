include atcoder/header
let N,M=nextInt()
var g=newSeqWith(N,newSeq[int]())
for _ in 1..M:
  let a,b=nextInt()-1
  g[a].add(b)
import deques
var
  q=[0].toDeque
  d=newSeq[int](N)
  a=int.inf
while q.len>0:
  let i=q.popFirst
  for j in g[i]:
    if j==0: a.min=d[i]+1
    elif d[j]==0:
      d[j]=d[i]+1; q.addLast(j)
echo if a<int.inf: a else: -1