include atcoder/header
let
  N,S=nextInt()
  T= @[0]&newSeqWith(N,nextInt())
echo if (1..N).toSeq.allIt(T[it]<=T[it-1]+S): "Yes" else: "No"