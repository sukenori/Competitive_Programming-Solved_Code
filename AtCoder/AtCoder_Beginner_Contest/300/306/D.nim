include atcoder/extra/header/chaemon_header
N:=nextInt()
dp:=Seq[N+1,2:0]
for i in 1..N:
  let X,Y=nextInt()
  if X==0:
    dp[i][0]=max(max(dp[i-1][0],dp[i-1][1])+Y,dp[i-1][0])
    dp[i][1]=dp[i-1][1]
  else:
    dp[i][0]=dp[i-1][0]
    dp[i][1]=max(dp[i-1][0]+Y,dp[i-1][1])
echo max(dp[N][0],dp[N][1])