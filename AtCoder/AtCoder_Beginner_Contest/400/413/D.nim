include atcoder/header
let T=nextInt()
import rationals
for _ in 1..T:
  let
    N=nextInt()
    A=newSeqWith(N,nextInt()).sortedByIt(it.abs)
  echo if (A.mapIt(it.abs).toHashSet.len==1 and (A.countIt(it>0)*2-N).abs<=1) or (0..<N-1).toSeq.mapIt(A[it+1]//A[it]).toHashSet.len==1: "Yes" else: "No"