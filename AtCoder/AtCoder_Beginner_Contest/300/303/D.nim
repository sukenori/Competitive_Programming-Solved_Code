include atcoder/header
let
  X,Y,Z=nextInt()
  S=nextString()
  n=S.len
var
  dp0=0
  dp1=Z
for Si in S:
  var ndp0,ndp1:int
  if Si=='a':
    ndp0=[dp0+X,dp1+Y+Z,dp1+Z+X].min
    ndp1=[dp0+X+Z,dp0+Z+Y,dp1+Y].min
  else:
    ndp0=[dp0+Y,dp1+X+Z,dp1+Z+Y].min
    ndp1=[dp0+Z+X,dp0+Y+Z,dp1+X].min
  dp0=ndp0; dp1=ndp1
echo min(dp0,dp1)