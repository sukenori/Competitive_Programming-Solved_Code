include atcoder/header
let N,M=nextInt()
var e=newSeq[tuple[u,v,w:int]](M)
for i in 0..<M:
  let u,v,w=nextInt()
  e[i]=(u-1,v-1,w)
var a=2^30-1
import atcoder/dsu
for i in countdown(29,0):
  a-=1 shl i
  var d=initDSU(N)
  for ei in e:
    if (a or ei.w)==a: d.merge(ei.u,ei.v)
  if not d.same(0,N-1): a+=1 shl i
echo a