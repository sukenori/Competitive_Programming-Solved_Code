include atcoder/header
let N=nextInt()
let A=newSeqWith(N,nextInt()).sorted
echo (0..N div 2-1).toSeq.mapIt(abs(A[it*2]+A[it*2+1])).sum+(if N mod 2==1: A[^1] else: 0)