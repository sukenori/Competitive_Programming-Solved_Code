include atcoder/header
let
  N=nextInt()
  A=newSeqWith(N,nextInt())
echo if (0..<N-2).toSeq.anyIt(A[it..it+2].toCountTable.len==1): "Yes" else: "No"