include atcoder/header
let
  N,M=nextInt()
  A=newSeqWith(N,nextInt())
  B=newSeqWith(M,nextInt())
var
  l=0
  r=10^9+1
while r-l>1:
  let m=(l+r) div 2
  var a,b=0
  for i in 0..<N:
    if m>=A[i]: a+=1
  for i in 0..<M:
    if m<=B[i]: b+=1
  if a<b: l=m
  else: r=m
echo r