include atcoder/header
let
  N=nextInt()
  A=newSeqWith(N,nextInt())
echo A.toCountTable.values.toSeq.mapIt(it*(it-1) div 2*(N-it)).sum