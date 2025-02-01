include atcoder/header
let
  N=nextInt()
  a=newSeqWith(N*3,nextInt()).sorted(Descending)
echo (1..N).toSeq.mapIt(a[it*2-1]).sum