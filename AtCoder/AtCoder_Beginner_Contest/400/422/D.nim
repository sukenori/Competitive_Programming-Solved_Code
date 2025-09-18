include atcoder/header
let
  N,K=nextInt()
  n=2^N
  a=K div n
var
  r=K-a*n
  U=if r==0: 0 else: 1
  B=newSeqWith(n,a)
  d=n
for i in 0..<r:
  var ri=0
  for j in 0..<N:
    if (i shr j and 1)==1: ri+=1 shl (N-1-j)
  B[ri]+=1
echo U
echo B.join(" ")