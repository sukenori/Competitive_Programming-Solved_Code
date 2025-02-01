include atcoder/extra/header/chaemon_header
N:=nextInt()
S:=nextString()
dp:=Seq[2:int]; a:=0
for i in 0..<N:
  if S[i]=='0': (dp[0],dp[1])=(1,dp[0]+dp[1])
  else: (dp[0],dp[1])=(dp[1],dp[0]+1)
  a+=dp[1]
echo a