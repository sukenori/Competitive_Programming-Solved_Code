include atcoder/header
import deques
let N=nextInt()
var
  g=newSeq[seq[int]](N)
  q:Deque[int]
  d=false.repeat(N)
for i in 0..<N:
  let A,B=nextInt()-1
  if (A,B)==(-1,-1): q.addLast(i); d[i]=true
  else: g[A].add(i); g[B].add(i)
while q.len>0:
  let i=q.popFirst
  for j in g[i]:
    if not d[j]: d[j]=true; q.addLast(j)
echo d.count(true)