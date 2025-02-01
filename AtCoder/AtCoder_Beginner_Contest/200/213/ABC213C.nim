include atcoder/header
let H,W,N=nextInt()
var A,B=newSeq[int](N)
for i in 0..<N:
  let Ai,Bi=nextInt()
  A[i]=Ai; B[i]=Bi
let
  cA=A.toHashSet.toSeq.sorted
  cB=B.toHashSet.toSeq.sorted
for i in 0..<N:
  echo cA.lowerBound(A[i])+1," ",cB.lowerBound(B[i])+1