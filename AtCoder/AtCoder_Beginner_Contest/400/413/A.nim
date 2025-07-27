include atcoder/header
let
  N,M=nextInt()
  A=newSeqWith(N,nextInt())
echo if A.sum<=M: "Yes" else: "No"