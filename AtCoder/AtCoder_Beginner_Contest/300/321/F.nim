include atcoder/extra/header/chaemon_header
import atcoder/modint
type mint=modint998244353
let Q,K=nextInt()
var dp=newSeq[mint](K+1); dp[0]=1
for _ in 1..Q:
  let
    q=nextString()
    x=nextInt()
  if q=="+":
    for i in 0..K-x<<1: dp[i+x]+=dp[i]
  else:
    for i in 0..K-x: dp[i+x]-=dp[i]
  echo dp[K]