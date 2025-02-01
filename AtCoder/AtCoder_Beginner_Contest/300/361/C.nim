include atcoder/header
let
  N,K=nextInt()
  A=newSeqWith(N,nextInt()).sorted
var a=int.inf
for i in 0..N-(N-K): a.min=A[N-K-1+i]-A[i]
echo a