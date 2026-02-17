include atcoder/header
import deques
let T=nextInt()
for _ in 1..T:
  let
    N,M=nextInt()
    X,Y=nextInt()-1
  var g=newSeq[seq[int]](N)
  for _ in 1..M:
    let U,V=nextInt()-1
    g[U].add(V); g[V].add(U)
  for i in 0..<N: g[i].sort(Descending)
  var
    q=[(X,@[X])].toDeque
    d=false.repeat(N)
  block b:
    while q.len>0:
      let (i,p)=q.popLast
      if i==Y: echo p.mapIt(it+1).join(" "); break b
      if not d[i]:
        d[i]=true
        for j in g[i]:
          if not d[j]: q.addLast((j,p & @[j]))