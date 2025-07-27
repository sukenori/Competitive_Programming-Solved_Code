include atcoder/header
let
  N,L,R=nextInt()
  S=nextString()
echo if (L..R).toSeq.allIt(S[it-1]=='o'): "Yes" else: "No"