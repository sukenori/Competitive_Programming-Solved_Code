include atcoder/extra/header/chaemon_header
let N,M=nextInt()
A:=Seq[M:nextInt()-1]
B:=Seq[M:nextInt()-1]
import atcoder/dsu
d:=initDSU(2*N)
for i in 0..<M:
  d.merge(A[i],N+B[i])
  d.merge(N+A[i],B[i])
echo if (block: collect(newSeq):
  for i in 0..<N: d.same(i,N+i)).allIt(not it): "Yes" else: "No"