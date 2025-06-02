include atcoder/header
let
  N,K=nextInt()
  A=newSeqWith(N,nextInt())
var a=1
for i in 0..<N:
  if a<=(10^K-1) div A[i]: a*=A[i] else: a=1 
echo a