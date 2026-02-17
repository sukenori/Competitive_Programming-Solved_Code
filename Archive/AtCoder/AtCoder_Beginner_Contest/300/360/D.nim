include atcoder/header
let
  N,T=nextInt()
  S=nextString()
  X=newSeqWith(N,nextInt())
var X0,X1=newSeq[int]()
for i in 0..<N:
  if S[i]=='0': X0.add(X[i])
  else: X1.add(X[i])
X0.sort
var a=0
for X1i in X1:
  a+=X0.upperBound(X1i+2*T)-X0.lowerBound(X1i)
echo a