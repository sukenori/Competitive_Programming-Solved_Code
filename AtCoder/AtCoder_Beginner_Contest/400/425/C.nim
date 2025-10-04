include atcoder/header
let N,Q=nextInt()
var
  A=newSeqWith(N,nextInt())
  s=0
A = @[0]&(A&A).cumsummed
for _ in 1..Q:
  let q=nextInt()
  if q==1:
    let c=nextInt()
    s+=c
  if q==2:
    let l,r=nextInt()
    echo A[s mod N+r]-A[s mod N+l-1]