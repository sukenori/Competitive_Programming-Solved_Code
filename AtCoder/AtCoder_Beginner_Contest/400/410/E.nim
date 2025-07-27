include atcoder/header
let N,H,M=nextInt()
var dp=newSeqWith(N+1,newSeq[int](H+1))
dp[0][H]=M
for i in 1..N:
  let A,B=nextInt()
  for j in 0..H-A: dp[i][j].max=dp[i-1][j+A]
  for j in 0..A: dp[i][j].max=dp[i-1][j]-B
