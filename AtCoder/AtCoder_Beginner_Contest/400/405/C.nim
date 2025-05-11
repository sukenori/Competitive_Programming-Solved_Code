include atcoder/header
let
  N=nextInt()
  A=newSeqWith(N,nextInt())
  c=A.cumsummed
echo (1..N-1).toSeq.mapIt(c[it-1]*A[it]).sum