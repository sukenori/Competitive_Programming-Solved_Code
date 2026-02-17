include atcoder/header
let
  N=nextInt()
  S=newSeqWith(N,nextString())[0..^2]
echo if "sweetsweet" in S.join: "No" else: "Yes"