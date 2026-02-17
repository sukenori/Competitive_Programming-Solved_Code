include atcoder/header
let N,Q=nextInt()
var L,R=newSeq[int](Q)
for i in 0..<Q:
  let Li,Ri=nextInt()
  L[i]=Li-1; R[i]=Ri
let
  c=(@[0,N]&L&R).toHashSet.toSeq.sorted
  n=c.len-1
  d=(1..n).toSeq.mapIt(c[it]-c[it-1])
import atcoder/lazysegtree
type
  S=int
  F=int
proc op(a,b:S):S=a+b
proc e():S=0
proc mapping(f:F,x:S):S=x*f
proc composition(f,g:F):F=f*g
proc id():F=1
var s=LazySegTree.getType(S,F,op,e,mapping,composition,id).init(d)
for q in 0..<Q:
  let
    l=c.lowerBound(L[q])
    r=c.lowerBound(R[q])
  s.apply(l..<r,0)
  echo s[0..<n]