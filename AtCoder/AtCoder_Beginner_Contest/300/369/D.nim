include atcoder/header
let
  N=nextInt()
  A=newSeqWith(N,nextInt())
var dp=newSeqWith(N+1,newSeq[int](2))
dp[0][1]= -int.inf
for i in 1..N:
  dp[i][0]=max(dp[i-1][0],dp[i-1][1]+A[i-1]*2)
  dp[i][1]=max(dp[i-1][1],dp[i-1][0]+A[i-1])
echo dp[N].max