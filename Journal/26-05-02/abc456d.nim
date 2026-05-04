include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
import atcoder/modint
type mint=modint998244353
let
  S=string.input
  n=S.len
var dp=Seq[n,3:mint]
dp[0][@(S[0])]=1.mint
for i in 1..<n:
  for j in 0..2:
    if j == @(S[i]):
      dp[i][j]=dp[i-1][j]+dp[i-1][(j+1) mod 3]+dp[i-1][(j+2) mod 3]+1
    else:
      dp[i][j]=dp[i-1][j]
echo dp[n-1][0]+dp[n-1][1]+dp[n-1][2]