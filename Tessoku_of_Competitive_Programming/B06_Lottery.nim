include atcoder/header
let N=nextInt()
let A=(@[0]&newSeqWith(N,nextInt())).cumsummed
let Q=nextInt()
for _ in 1..Q:
  let L,R=nextInt()
  let a=(A[R]-A[L-1])*2-(R-L+1)
  echo if a>0: "win" elif a<0: "lose" else: "draw"