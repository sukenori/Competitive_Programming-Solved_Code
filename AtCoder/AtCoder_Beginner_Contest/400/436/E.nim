include atcoder/header
let
  N=nextInt()
  P=newSeqWith(N,nextInt()-1)
import atcoder/dsu
var d=initDSU(N)
for i in 0..<N:
  d.merge(P[i],i)
var a=0
for gi in d.groups: a+=gi.len*(gi.len-1) div 2
echo a