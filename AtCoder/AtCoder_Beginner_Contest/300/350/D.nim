include atcoder/header
let N,M=nextInt()
var g=newSeqWith(N,newSeq[int](0))
import atcoder/dsu
var d=initDSU(N)
for _ in 1..M:
  let A,B=nextInt()-1
  g[A].add(B); g[B].add(A)
  d.merge(A,B)
var a=0
for i in 0..<N:
  a+=(d.size(i)-1)-g[i].len
echo a div 2