include atcoder/header
let N,M,K=nextInt()
import atcoder/modint
type mint=modint998244353
var dp=newSeqWith(N+1,newSeq[mint](K+1))
dp[0][0]=1
for i in 1..N:
  for j in 0..K:
    for k in 1..M:
      if j+k<=K: dp[i][j+k]+=dp[i-1][j]
echo dp[N].sum