include atcoder/header
let
  N=nextInt()
  A=newSeqWith(N,nextInt())
  b=(A.sum.float/N.float-(1.0+N.float)/2.0).int
echo b
var a=int.inf
for i in b-2..b+3:
  a.min=(0..<N).toSeq.mapIt(abs(A[it]-(b+it+1))).sum
echo a