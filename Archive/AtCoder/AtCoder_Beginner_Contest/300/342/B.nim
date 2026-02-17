include atcoder/header
let N=nextInt()
let P=newSeqWith(N,nextInt())
let o=(0..<N).toSeq.sortedByIt(P[it])
let Q=nextInt()
for _ in 1..Q:
  let A,B=nextInt()-1
  if o[A]<o[B]: echo A+1
  else: echo B+1