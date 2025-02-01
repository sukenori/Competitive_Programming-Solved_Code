include atcoder/header
let N,Q=nextInt()
let A=newSeqWith(N,nextInt()).sorted
let s= @[0]&A.cumsummed
for _ in 1..Q:
  let X=nextInt()
  let i=A.lowerBound(X)
  echo X*i-s[i]+(s[^1]-s[i])-X*(N-i)