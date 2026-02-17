include atcoder/header
let N,Q=nextInt()
import atcoder/segtree
type S=tuple[v1,q1,v2,q2:int]
var v=newSeq[S](N)
for i in 0..<N:
  let A=nextInt()
  v[i]=(A,1,0,0)
proc op(a,b:S):S=
  let v = @[0]&[a.v1,a.v2,b.v1,b.v2].toHashSet.toSeq.sorted
  var q=[0,0]
  for (vi,qi) in [(a.v1,a.q1),(a.v2,a.q2),(b.v1,b.q1),(b.v2,b.q2)]:
    if vi==v[^1]: q[0]+=qi
    if vi==v[^2]: q[1]+=qi
  (v[^1],q[0],v[^2],q[1])
proc e():S=(0,0,0,0)
var s=initSegTree[S](v,op,e)
for _ in 1..Q:
  let q,q1,q2=nextInt()
  if q==1: s[q1-1]=(q2,1,0,0)
  else: echo s[q1-1..<q2].q2