include atcoder/header
let N,M=nextInt()
let a=newSeqWith(M,nextInt()).toHashSet
import atcoder/modint
type mint=modint1000000007
var dp=newSeqWith(N+1,0.mint)
dp[0]=1.mint; if 1 notin a: dp[1]=1.mint
for i in 2..N:
  if i notin a: dp[i]=dp[i-1]+dp[i-2]
echo dp[N]