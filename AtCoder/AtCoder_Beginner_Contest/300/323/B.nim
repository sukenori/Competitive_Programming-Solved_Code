include atcoder/header
let
  N=nextInt()
  S=newSeqWith(N,nextString())
echo (0..<N).toSeq.sortedByIt((S[it].count('o'),-it)).mapIt(it+1).reversed.join(" ")