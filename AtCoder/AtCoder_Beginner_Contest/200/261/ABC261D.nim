include atcoder/header
let N,M=nextInt()
let X=newSeqWith(N,nextInt())
var Y=newSeqWith(N+1,0)
for _ in 1..M:
  let Ci,Yi=nextInt()
  Y[Ci]=Yi
var dp=newSeqWith(N+1,newSeqWith(N+1,-int.inf)); dp[0][0]=0
for i in 1..N:
  for j in 1..N:
    dp[i][j]=dp[i-1][j-1]+X[i-1]+Y[j]
    dp[i][0].max=dp[i-1][j]
echo dp[N].max