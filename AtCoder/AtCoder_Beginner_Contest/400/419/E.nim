include atcoder/header
let
  N,M,L=nextInt()
  A=newSeqWith(N,nextInt())
var dp=newSeqWith(L+1,newSeqWith(M, int.inf))
dp[0][0]=0
for i in 0..<L:
  for j in 0..<M:
    var c=0
    for k in countup(i,N-1,L):
      c+=(j+M-A[k]) mod M
    for k in 0..<M:
      dp[i+1][(k+j) mod M].min=dp[i][k]+c
echo dp[^1][0]