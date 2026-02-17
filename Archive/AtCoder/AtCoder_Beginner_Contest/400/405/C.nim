include atcoder/header
let
  N=nextInt()
  A=newSeqWith(N,nextInt())
echo (A.sum^2-A.mapIt(it^2).sum) div 2