include atcoder/header
let N,M=nextInt()
var K,C=newSeq[int](M)
var A=newSeqWith(M,newSeq[int](0))
for i in 0..<M:
  let Ki,Ci=nextInt()
  K[i]=Ki; C[i]=Ci
  let Ai=newSeqWith(Ki,nextInt())
  A[i]=Ai
let c=(0..<M).toSeq.sortedByIt(C[it])
import atcoder/dsu
var d=initDSU(N)
var a=0
for i in 0..<M:
  for j in 1..<K[c[i]]:
    if not d.same(A[c[i]][0]-1,A[c[i]][j]-1):
      d.merge(A[c[i]][0]-1,A[c[i]][j]-1)
      a+=C[c[i]]
echo if d.size(0)==N: a else: -1