include atcoder/header
let
  N=nextInt()
  A=newSeqWith(N,nextInt())
var
  l=0
  r=N div 2+1
while r-l>1:
  let m=(l+r) div 2
  if (0..<m).allIt(2*A[it]<=A[it+N-m]): l=m
  else: r=m
echo l