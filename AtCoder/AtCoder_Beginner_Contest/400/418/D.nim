include atcoder/header
let
  N=nextInt()
  T=nextString()
var dp=newSeqWith(N+1,newSeqWith(2,newSeq[int](2)))
var a=0
for i in 1..N:
  if T[i-1]=='0':
    dp[i][0][0]=dp[i-1][1][0]
    dp[i][0][1]=dp[i-1][1][1]
    dp[i][1][0]=dp[i-1][0][0]+1
    dp[i][1][1]=dp[i-1][0][1]
  else:
    dp[i][0][0]=dp[i-1][1][1]
    dp[i][0][1]=dp[i-1][1][0]
    dp[i][1][0]=dp[i-1][0][1]
    dp[i][1][1]=dp[i-1][0][0]+1
  a+=dp[i][0][0]+dp[i][1][1]
echo a