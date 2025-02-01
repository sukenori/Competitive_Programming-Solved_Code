include atcoder/header
let X,Y,A,B=nextInt()
var
  s=X
  e=0
while s.float<Y/A and s*A<s+B: s*=A; e+=1
echo e+(Y-1-s) div B