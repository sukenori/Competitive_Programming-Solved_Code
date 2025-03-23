include atcoder/header
let
  N=nextInt()
  A=newSeqWith(N,nextInt())
echo if (1..<N).toSeq.allIt(A[it-1]<A[it]): "Yes" else: "No"