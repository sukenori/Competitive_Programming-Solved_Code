include atcoder/header
let
  N=nextInt()
  S,T=nextString()
echo (0..<N).toSeq.countIt(S[it]!=T[it])