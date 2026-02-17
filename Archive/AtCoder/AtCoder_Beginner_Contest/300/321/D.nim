include atcoder/header
let
  N,M,P=nextInt()
  A=newSeqWith(N,nextInt())
  B=newSeqWith(M,nextInt()).sorted
var
  sB=B
  a=0
for i in 1..<M: sB[i]+=sB[i-1]
for Ai in A:
  var j=B.upperBound(P-Ai)
  if j>0: a+=Ai*j+sB[j-1]
  a+=P*(M-j)
echo a