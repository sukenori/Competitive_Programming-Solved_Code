include atcoder/header
let N,M=nextInt()
import atcoder/dsu
var d=initDSU(N)
for _ in 1..M:
  let A,B=nextInt()-1
  d.merge(A,B)
echo d.groups.mapIt(it.len*(it.len-1) div 2).sum-M