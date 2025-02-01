include atcoder/header
let N,K=nextInt()
let P=newSeqWith(N,nextInt())
let o=(0..<N).toSeq.sortedByIt(P[it])
import atcoder/extra/structure/set_map
var s=initSortedSet[int](o[0..<K])
var a=(*s.end().pred)-(*s.begin())
for i in 0..<N-K:
  s.excl(o[i])
  s.incl(o[K+i])
  a.min=(*s.end().pred)-(*s.begin())
echo a