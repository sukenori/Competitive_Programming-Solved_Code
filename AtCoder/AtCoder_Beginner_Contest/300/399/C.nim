include atcoder/header
let N,M=nextInt()
import atcoder/dsu
var
  d=initDSU(N)
  a=0
for _ in 1..M:
  let u,v=nextInt()-1
  if d.same(u,v): a+=1
  else: d.merge(u,v)
echo a