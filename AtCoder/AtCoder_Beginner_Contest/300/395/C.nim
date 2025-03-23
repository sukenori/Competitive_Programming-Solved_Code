include atcoder/header
let N=nextInt()
var
  A=newSeq[int](10^6+1)
  a=N+1
for i in 1..N:
  let Ai=nextInt()
  if A[Ai]==0: A[Ai]=i
  else: a.min=i-A[Ai]+1; A[Ai]=i
echo if a<N+1: a else: -1