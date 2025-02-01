include atcoder/header
let N,M=nextInt()
var dp=newSeqWith(M+1,-int.inf); dp[0]=0
for i in 0..<N:
  let A=nextInt()
  for j in countdown(M,1):
    dp[j].max=dp[j-1]+A*j
echo dp[M]