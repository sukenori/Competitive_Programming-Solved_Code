include atcoder/extra/header/chaemon_header
let
  S=nextString()
  N=S.len
import atcoder/modint
type mint=modint998244353
var dp=Seq[N+1,N//2+1:0.mint]; dp[0][0]=1
for i in 1..N:
  for j in 0..N//2:
    if S[i-1]!=')' and j+1<=N//2: dp[i][j+1]+=dp[i-1][j]
    if S[i-1]!='(' and j-1>=0: dp[i][j-1]+=dp[i-1][j]
echo dp[N][0]