include atcoder/header
let
  N=nextInt()
  X=newSeqWith(N,nextInt())
  P=(@[0]&newSeqWith(N,nextInt())).cumsummed
  Q=nextInt()
for _ in 1..Q:
  let L,R=nextInt()
  echo P[X.upperBound(R)]-P[X.lowerBound(L)]