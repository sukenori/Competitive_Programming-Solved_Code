include atcoder/header
let N,M=nextInt()
var b=newSeqWith(M,newSeq[int]())
for i in 0..<N:
  let A,B=nextInt()
  b[A-1].add(B)
for i in 0..<M:
  echo b[i].sum.float/b[i].len.float