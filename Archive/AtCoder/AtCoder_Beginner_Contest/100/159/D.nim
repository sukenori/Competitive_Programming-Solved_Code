include atcoder/header
let
  N=nextInt()
  A=newSeqWith(N,nextInt())
  t=A.toCountTable
  a=t.values.toSeq.mapIt(it*(it-1) div 2).sum
for i in 0..<N: echo a-t[A[i]]+1