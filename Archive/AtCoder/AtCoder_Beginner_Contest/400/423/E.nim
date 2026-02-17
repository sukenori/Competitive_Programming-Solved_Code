include atcoder/header
let
  N,Q=nextInt()
  A=newSeqWith(N,nextInt())
  cA = @[0]&A.cumsummed
  ciA = @[0]&(1..N).toSeq.mapIt(it*A[it-1]).cumsummed
  ci2A = @[0]&(1..N).toSeq.mapIt(it^2*A[it-1]).cumsummed
for _ in 1..Q:
  let L,R=nextInt()
  echo (1-L)*(1+R)*(cA[R]-cA[L-1])+(L+R)*(ciA[R]-ciA[L-1])-(ci2A[R]-ci2A[L-1])