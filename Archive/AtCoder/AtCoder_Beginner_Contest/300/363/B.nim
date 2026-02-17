include atcoder/header
let
  N,T,P=nextInt()
  L=newSeqWith(N,nextInt()).sorted(Descending)
echo max(0,T-L[P-1])