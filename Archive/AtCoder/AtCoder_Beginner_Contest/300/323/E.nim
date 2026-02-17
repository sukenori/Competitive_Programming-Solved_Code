include atcoder/header
import atcoder/modint
type mint=modint998244353
let
  N,X=nextInt()
  T=newSeqWith(N,nextInt())
var dp=newSeq[mint](X+1)
dp[0]=1
for i in 0..X:
  for Tj in T:
    if i+Tj<=X: dp[i+Tj]+=dp[i]/N
echo dp[max(0,X-T[0]+1)..X].mapIt(it/N).sum