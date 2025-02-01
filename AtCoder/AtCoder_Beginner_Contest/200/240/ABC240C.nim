include atcoder/header
let N,X=nextInt()
var dp=newSeqWith(N+1,newSeq[int](X+1))
dp[0][0]=1
for i in 1..N:
  let a,b=nextInt()
  for j in 0..X:
    if dp[i-1][j]==1:
      if j+a<=X: dp[i][j+a]=1
      if j+b<=X: dp[i][j+b]=1
echo if dp[N][X]==1: "Yes" else: "No"