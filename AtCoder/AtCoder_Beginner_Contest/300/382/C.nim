include atcoder/header
let
  N,M=nextInt()
  A=newSeqWith(N,nextInt())
  B=newSeqWith(M,nextInt())
var
  a=newSeqWith(2*10^5+1,-1)
  j=2*10^5+1
for i in 0..<N:
  if A[i]<j:
    for k in A[i]..<j: a[k]=i+1
    j=A[i]
for i in 0..<M: echo a[B[i]]