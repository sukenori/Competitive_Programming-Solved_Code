include atcoder/header
let N,H,M=nextInt()
var dp=newSeqWith(N+1,newSeqWith(H+1,-1))
for i in 0..H: dp[0][i]=M
for i in 1..N:
  let A,B=nextInt()
  for j in 0..H-A: dp[i][j].max=dp[i-1][j+A]
  for j in 0..H: dp[i][j].max=dp[i-1][j]-B
  if dp[i][0]<0: echo i-1; quit()
echo N