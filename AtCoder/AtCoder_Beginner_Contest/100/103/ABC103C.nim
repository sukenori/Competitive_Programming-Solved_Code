include atcoder/header
let
  N=nextInt()
  a=newSeqWith(N,nextInt())
echo (0..<N).toSeq.mapIt(a[it]-1).sum