include atcoder/header
let
  N=nextInt()
  A=newSeqWith(N,nextInt())
import atcoder/lazysegtree
type
  S=int
  F=int
proc op(a,b:S):S=a+b
proc e():S=0
proc mapping(f:F,x:S):S=x+f
proc composition(f,g:F):F=f+g
proc id():F=0
var s=LazySegTree.getType(S,F,op,e,mapping,composition,id).init(A)
for i in 0..<N-1: s.apply(i+1..<min(i+1+s[i],N),1)
echo (0..<N).mapIt(max(0,s[it]-(N-(it+1)))).join(" ")