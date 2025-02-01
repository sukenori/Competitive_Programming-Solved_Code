include atcoder/header
let
  N=nextInt()
  S=nextString()
var dp=[0,0,0]
for Si in S:
  var
    r=max(dp[1],dp[2])
    p=max(dp[2],dp[0])
    s=max(dp[0],dp[1])
  if Si=='R': p+=1; s=0
  if Si=='P': s+=1; r=0
  if Si=='S': r+=1; p=0
  dp=[r,p,s]
echo dp.max