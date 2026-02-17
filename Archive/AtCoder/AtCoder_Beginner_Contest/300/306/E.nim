include atcoder/extra/header/chaemon_header
let N,K,Q=nextInt()
A:=Seq[N:0]
import atcoder/extra/structure/set_map
Bi:=initSortedMultiSet[int](Seq[K:0])
Bo:=initSortedMultiSet[int](Seq[N-K:0])
a:=0
for _ in 1..Q:
  var X,Y=nextInt(); X-=1
  ib:=Bi.begin()
  if A[X]>= *ib: Bi.excl(Bi.lowerBound(A[X])); a-=A[X]
  else: Bo.excl(Bo.lowerBound(A[X]))
  if Y>= *ib: Bi.incl(Y); a+=Y
  else: Bo.incl(Y)
  oe:=Bo.end().pred
  if Bi.len>K:
    Bo.incl(*ib); a-= *ib; Bi.excl(ib)
  elif Bi.len<K:
    Bi.incl(*oe); a+= *oe; Bo.excl(oe)
  A[X]=Y
  echo a