include atcoder/header
let
  N=nextInt()
  A=newSeqWith(N,nextInt()).toCountTable
echo A.len-(A.values.toSeq.filterIt(it mod 2==0).len mod 2==1).int