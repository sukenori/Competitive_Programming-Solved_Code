include atcoder/header
let
  N=nextInt()
  S=newSeqWith(N,nextString())
echo S.sortedByIt(it.len).join("")