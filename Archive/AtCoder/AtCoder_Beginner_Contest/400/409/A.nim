include atcoder/header
let
  N=nextInt()
  T,A=nextString()
echo if (0..<N).toSeq.anyIt(T[it]=='o' and A[it]=='o'): "Yes" else: "No"