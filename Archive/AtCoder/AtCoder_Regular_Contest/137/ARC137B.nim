include atcoder/header
let
  N=nextInt()
  A=newSeqWith(N,nextInt()).mapIt(it*(-2)+1)
var
  dp1,dp0=newSeq[int](N+1)
  m1,m0=0
for i in 1..N:
  dp1[i]=max(dp1[i-1]+A[i-1],A[i-1])
  m1.max=dp1[i]
  dp0[i]=min(dp0[i-1]+A[i-1],A[i-1])
  m0.min=dp0[i]
echo m1-m0+1