include atcoder/header
let
  X,Y,Z=nextInt()
  S=nextString()
var
  dp0=0
  dp1=int.inf
for Si in S:
  dp0.min=dp1+Z
  dp1.min=dp0+Z
  if Si=='a': dp0+=X; dp1+=Y
  else: dp0+=Y; dp1+=X
echo min(dp0,dp1)