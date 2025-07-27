include atcoder/header
let
  N=nextInt()
  S=newSeqWith(N,nextString())
var s:HashSet[string]
for i in 0..<N:
  for j in 0..<N:
    if i!=j: s.incl(S[i]&S[j])
echo s.len