include atcoder/header
let N,X,Y=nextInt()
var A,B=newSeq[int](N)
for i in 0..<N:
  let Ai,Bi=nextInt()
  A[i]=Ai; B[i]=Bi
A=A.sorted(Descending).cumsummed
B=B.sorted(Descending).cumsummed
echo min(N-min(A.upperBound(A[^1]-X),B.upperBound(B[^1]-Y))+1,N)