include atcoder/header
let N,M=nextInt()
var g=newSeqWith(N,newSeq[int]())
import atcoder/dsu
var d=initDSU(N)
for _ in 1..M:
  let u,v=nextInt()-1
  g[u].add(v); g[v].add(u)
  d.merge(u,v)
echo if M==N-1 and (0..<N).toSeq.allIt(g[it].len<=2) and d.size(0)==N: "Yes" else: "No"