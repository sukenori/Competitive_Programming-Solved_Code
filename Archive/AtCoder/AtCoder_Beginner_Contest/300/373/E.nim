include atcoder/header
let
  N,M,K=nextInt()
  A=newSeqWith(N,nextInt())
  sA=A.sorted(Descending)
  l=K-A.sum
var C=newSeq[int](N)
if M<N:
  for i in 0..<N:
    if A[i]+l<sA[M-1]: C[i]= -1
    else: C[i]=max(0,(sA[0..M].sum+A[i]+l-(1+M)*M div 2) div (M+1)+1-A[i])
echo C.join(" ")