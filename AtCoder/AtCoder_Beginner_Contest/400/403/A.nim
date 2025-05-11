include atcoder/header
let
  N=nextInt()
  A=newSeqWith(N,nextInt())
echo (0..<N).toSeq.filterIt(it mod 2==0).mapIt(A[it]).sum