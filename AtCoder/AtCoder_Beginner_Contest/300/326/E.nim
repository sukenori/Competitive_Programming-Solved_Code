include atcoder/extra/header/chaemon_header
N:=nextInt()
import atcoder/modint
type mint=modint998244353
dp:=Seq[N+1:mint]; s:=0.mint
for i in 1..N:
  dp[i]=s/N+(nextInt().mint/N)*((1+1.mint/N)^(i-1))
  s+=dp[i]
for i in 1..N:
  dp[i]=dp[i]*i/N
echo dp[1..N].sum