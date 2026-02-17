include atcoder/header
let
  N=nextInt()
  A=newSeqWith(N,nextInt())
var a=0
for i in 0..<N: a+=N-A.lowerBound(A[i]*2)
echo a