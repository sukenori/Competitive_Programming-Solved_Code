include atcoder/header
let T=nextInt()
for _ in 1..T:
  let
    N,M=nextInt()
    A=newSeqWith(N,nextInt()).sorted
    B=newSeqWith(N,nextInt()).sorted(Descending)
  var a,b,c=0
  while a<N and b<N:
    if A[a]+B[b]>=M: c+=1; a+=1; b+=1
    else: a+=1
  echo A.sum+B.sum-M*c