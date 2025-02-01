include atcoder/extra/header/chaemon_header
let N,M=nextInt()
import atcoder/dsu
d:=initDSU(N)
for _ in 1..M:
  let A,B=nextInt()-1
  d.merge(A,B)
echo d.groups.mapIt(it.len).max