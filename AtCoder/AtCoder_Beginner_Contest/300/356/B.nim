include atcoder/header
let
  N,M=nextInt()
  A=newSeqWith(M,nextInt())
var X=newSeq[int](M)
for i in 1..N:
  for j in 0..<M:
    X[j]+=nextInt()
for i in 0..<M:
  if X[i]<A[i]: echo "No"; quit()
echo "Yes"