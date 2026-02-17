include atcoder/header
let T=nextInt()
for _ in 1..T:
  let
    N=nextInt()
    S=nextString().toSeq.mapIt(($it).parseInt)
  var dp=newSeqWith(N,newSeq[int](3))
  dp[0][0]=S[0]; dp[0][1]=1-S[0]
  for i in 1..<N:
    dp[i][0]=dp[i-1][0]+S[i]
    dp[i][1]=min(dp[i-1][0]+1-S[i],dp[i-1][1]+1-S[i])
    dp[i][2]=min(dp[i-1][1]+S[i],dp[i-1][2]+S[i])
  echo dp[^1].min