include atcoder/extra/header/chaemon_header
let N,M=nextInt()
var a:seq[int]
import atcoder/dsu
d:=initDSU(N)
f:=true
for _ in 1..M:
  let A,B=nextInt()-1
  a.add(A); a.add(B)
  if d.same(A,B): f=false
  d.merge(A,B)
if a.toCountTable.values.toSeq.anyIt(it>2):
  f=false
echo if f: "Yes" else: "No"