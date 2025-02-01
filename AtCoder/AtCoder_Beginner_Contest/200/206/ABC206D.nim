include atcoder/header
let
  N=nextInt()
  A=newSeqWith(N,nextInt())
import atcoder/dsu
var
  d=initDSU(2*10^5+1)
  a=0
for i in 0..<N div 2:
  if not d.same(A[i],A[^(i+1)]):
    d.merge(A[i],A[^(i+1)]); a+=1
echo a