include atcoder/header
let N,M=nextInt()
var g=newSeq[seq[int]](N)
for _ in 1..M:
  let u,v=nextInt()-1
  g[u].add(v); g[v].add(u)
import atcoder/dsu
var d0,d1=initDSU(N)
for i in 0..<N:
  for j in g[i]:
    if i<j: d0.merge(i,j)
    else: d1.merge(j,i)
  echo if d1.size(i)==i+1: d0.size(i)-(i+1) else: -1