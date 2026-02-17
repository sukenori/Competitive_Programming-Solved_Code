include atcoder/header
let S=nextInt()
import atcoder/modint
type mint=modint1000000007
var dp=newSeq[mint](S+1); dp[0]=1.mint
for i in 3..S:
  for j in 3..i: dp[i]+=dp[i-j]
echo dp[S]