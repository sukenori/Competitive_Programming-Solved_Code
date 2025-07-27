include atcoder/header
let
  H,W=nextInt()
  A=newSeqWith(H,newSeqWith(W,nextInt()))
  P=newSeqWith(H+W-1,nextInt())
var dp=newSeqWith(H,newSeqWith(W,int.inf))
dp[^1][^1]=0
for h in countdown(H-1,0):
  for w in countdown(W-1,0):
    if h<H-1: dp[h][w].min=dp[h+1][w]
    if w<W-1: dp[h][w].min=dp[h][w+1]
    dp[h][w]=max(0,dp[h][w]-A[h][w]+P[h+w])
echo dp[0][0]