include atcoder/header
let
  N=nextInt()
  A=newSeqWith(N,nextInt())
var x=N; while true:
  if x<=(0..<N).toSeq.countIt(x<=A[it]): echo x; break
  x-=1