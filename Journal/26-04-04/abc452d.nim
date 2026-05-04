include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let S,T=string.input
var dp=Seq[S.len+1,T.len+1:0]
for i in 1..S.len:
  for j in 1..T.len:
    if S[i-1]==T[j-1]: dp[i][j]=dp[i-1][j-1]+1
    else: dp[i][j]=max(dp[i-1][j],dp[i][j-1])
