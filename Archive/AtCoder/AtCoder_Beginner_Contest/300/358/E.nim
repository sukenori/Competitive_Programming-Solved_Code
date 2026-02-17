include atcoder/header
let
  K=nextInt()
  C=newSeqWith(26,nextInt())
import atcoder/modint
type mint=modint998244353
var dp=newSeqWith(27,newSeq[mint](K+1))
var t:Table[(int,int),mint]
proc c(i,j:int):mint=
  if not t.hasKey((i,j)):
    t[(i,j)]=(if i==j: 1.mint else: c(i,j+1)/(i-j)*(j+1))
  t[(i,j)]
for i in 1..26:
  for j in 1..K:
    for k in countdown(min(C[i-1],j),0):
      dp[i][j]+=(if j-k==0: 1.mint else: dp[i-1][j-k])*c(j,k)
echo dp[26].sum