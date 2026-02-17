include atcoder/header
let N,K=nextInt()
import atcoder/modint
type mint=modint998244353
var dp=newSeqWith(K+1,newSeq[mint](N+1))
dp[0][1]=1.mint
for i in 1..K:
  for j in 1..N:
    dp[i][j]=dp[i-1][j]*((N-1).mint/N.mint)
    for k in 1..N:
      dp[i][j]+=dp[i-1][k]*(1.mint/N.mint/N.mint)
var a=0.mint
for i in 1..N: a+=dp[K][i]*i.mint
echo a