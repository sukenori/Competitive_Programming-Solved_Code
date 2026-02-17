include atcoder/header
let
  N,M=nextInt()
  H=newSeqWith(N,nextInt()).cumsummed
echo H.upperBound(M)