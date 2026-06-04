include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let
  N,K=int.input
  A=Seq[N:int.input]
var
  l=A.min
  r=2*10^18+1
while r-l>1:
  let
    m=(l+r) div 2
  var k=0
  for i in 0..<N:
    if m>A[i]: k+=ceilDiv(m-A[i],i+1)
    if k>K: break
  if k<=K: l=m
  else: r=m
echo l
