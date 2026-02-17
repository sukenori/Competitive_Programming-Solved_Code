include atcoder/header
let
  N=nextInt()
  A=newSeqWith(N,nextInt()).sorted.deduplicate
echo A.len
echo A.join(" ")