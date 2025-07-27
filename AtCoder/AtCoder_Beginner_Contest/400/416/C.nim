include atcoder/header
let
  N,K,X=nextInt()
  S=newSeqWith(N,nextString())
var f:seq[string]
for i in (0..<N).toSeq.repeat(K).product: f.add(i.mapIt(S[it]).join)
echo f.sorted[X-1]