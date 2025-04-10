include atcoder/header
let
  N=nextInt()
  P=newSeqWith(N,nextInt())
echo (0..<N).toSeq.mapIt(N-P.sorted.upperBound(P[it])+1).join("\n")