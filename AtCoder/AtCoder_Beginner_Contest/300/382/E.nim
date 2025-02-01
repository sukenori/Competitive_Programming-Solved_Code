include atcoder/header
let
  N,X=nextInt()
  P=newSeqWith(N,nextfloat())
  cP=(0..<N).
var dp=newSeq[float](X+1)
for i in 0..<X:
  for j in 0..<N:
    dp[i]+=(dp[i-1]+1)*(P[j]/100.0)
echo dp[X]