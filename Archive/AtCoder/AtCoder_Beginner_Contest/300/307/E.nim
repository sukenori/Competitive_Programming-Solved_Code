include atcoder/extra/header/chaemon_header
import atcoder/modint
type mint=modint998244353
N:=nextInt()
M:=nextInt().mint
dp:=Seq[N+1:0.mint]; dp[2]=M*(M-1)
for i in 3..N: dp[i]=M*(M-1)^(i-1)-dp[i-1]
echo dp[N]