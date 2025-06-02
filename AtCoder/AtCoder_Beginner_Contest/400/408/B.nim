include atcoder/header
let
  N=nextInt()
  A=newSeqWith(N,nextInt()).toHashSet.toSeq.sorted
echo A.len
echo A.join(" ")