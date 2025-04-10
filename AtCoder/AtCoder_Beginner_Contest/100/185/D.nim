include atcoder/header
let
  N,M=nextInt()
  A = @[0] & newSeqWith(M,nextInt()).sorted & @[N+1]
var
  d:seq[int]
  a=0
for i in 0..<M+1:
  let di=A[i+1]-A[i]-1
  if di>0: d.add(di)
for di in d: a+=ceilDiv(di,d.min)
echo a