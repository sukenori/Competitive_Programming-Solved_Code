include atcoder/header
let N,M=nextInt()
let A=newSeqWith(N,nextInt()).sorted
let B=newSeqWith(M,nextInt()).sorted
var a=0
var i=0; for j in 0..<M:
  while i<N and A[i]<B[j]: i+=1
  if i==N: echo -1; quit()
  else: a+=A[i]; i+=1
echo a