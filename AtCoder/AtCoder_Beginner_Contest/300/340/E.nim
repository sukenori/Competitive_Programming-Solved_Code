include atcoder/header
let N,M=nextInt()
var A=newSeqWith(N,nextInt())
let B=newSeqWith(M,nextInt())
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
for Bi in B:
  let si=s[Bi]; s[Bi]=0
  let
    l=(Bi+1) mod N
    r=(Bi+si) mod N
  if l<=r: s.apply(l..r,1)
  else: s.apply(0..r,1); s.apply(l..<N,1)
  s.apply(0..<N,si div N-(si mod N==0).int)
var a=newSeq[int](N)
for i in 0..<N: a[i]=s[i]
echo a.join(" ")