include atcoder/header
let
  N,H,X=nextInt()
  P=newSeqWith(N,nextInt())
echo P.lowerBound(X-H)+1