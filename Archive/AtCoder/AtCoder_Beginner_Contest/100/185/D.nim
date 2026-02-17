include atcoder/header
let
  N,M=nextInt()
  A=(newSeqWith(M,nextInt())& @[0,N+1]).sorted
var
  d:seq[int]
  m=int.inf
for i in 0..M:
  let di=A[i+1]-A[i]-1
  if di>0: d.add(di); m.min=di
var a=0
for di in d: a+=ceilDiv(di,m)
echo a