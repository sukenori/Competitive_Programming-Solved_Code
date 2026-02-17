include atcoder/header
let N,K=nextInt()
var A=newSeqWith(N+1,1)
if K<=N:
  A[K]=K
  for i in K..<N:
    A[i+1]=(A[i]-A[i-K]+A[i]+10^9) mod 10^9
echo A[N]