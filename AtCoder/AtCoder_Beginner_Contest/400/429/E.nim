include atcoder/header
let N,M=nextInt()
var g=newSeq[seq[int]](N)
for _ in 1..M:
  let U,V=nextInt()-1
  g[U].add(V); g[V].add(U)
let S=nextString()
import deques
var
  q=(0..<N).toSeq.filterIt(S[it]=='S').mapIt((it,it,0)).toDeque
  d=newSeq[seq[(int,int)]](N)
while q.len>0:
  let (u,f,c)=q.popFirst
  for v in g[u]:
    if d[v].len<2 and d[v].allIt(it[0]!=f):
      d[v].add((f,c+1))
      q.addLast((v,f,c+1))
for i in 0..<N:
  if S[i]=='D': echo d[i].mapIt(it[1]).sum