include atcoder/header
let
  N=nextInt()
  A=newSeqWith(N,nextInt())
var a=1000
for i in 1..<N:
  if A[i-1]<A[i]:
    a=(a div A[i-1])*A[i]+a mod A[i-1]
echo a