include atcoder/header
let N=nextInt()
var A=newSeqWith(N,nextInt())
for i in 0..<N-1:
  let S,T=nextInt()
  A[i+1]+=T*(A[i] div S)
echo A[^1]