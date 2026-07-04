include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let T=int.input
loop T:
  let
    N=int.input
    S=string.input
    X=Seq[N:int.input]
    Y=Seq[N-1:int.input]
  var dp=Seq[N,2:0]
  if S[0]=='S': dp[0][1] = -X[0]
  else: dp[0][0] = -X[0]
  for i in 1..<N:
    if S[i]=='S':
      dp[i][0]=max(dp[i-1][1]+Y[i-1],dp[i-1][0])
      dp[i][1] = -X[i]+max(dp[i-1][1],dp[i-1][0])
    else:
      dp[i][0] = -X[i]+max(dp[i-1][1]+Y[i-1],dp[i-1][0])
      dp[i][1]=max(dp[i-1][1],dp[i-1][0])
  echo dp[^1].max