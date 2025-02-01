include atcoder/header
let
  N,M=nextInt()
  A=newSeqWith(M,nextInt())
for i in 1..N:
  echo A[A.lowerBound(i)]-i