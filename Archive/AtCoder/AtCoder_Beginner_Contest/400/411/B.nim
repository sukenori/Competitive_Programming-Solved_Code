include atcoder/header
let
  N=nextInt()
  D=(@[0]&newSeqWith(N-1,nextInt())).cumsummed
for i in 0..<N-1:
  echo (i+1..<N).toSeq.mapIt(D[it]-D[i]).join(" ")