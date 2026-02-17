include atcoder/extra/header/chaemon_header
let N,D,W=nextInt()
import atcoder/lazysegtree
type
  S=int
  F=int
proc op(a,b:S):S=max(a,b)
proc e():S=0
proc mapping(f:F,x:S):S=x+f
proc composition(f,g:F):F=f+g
proc id():F=0
n:=2*2*10^5
s:=LazySegTree.getType(S,F,op,e,mapping,composition,id).init(n)
A:=Seq[N:tuple[T,X:int]]
for i in 0..<N: A[i]=(nextInt(),nextInt())
A.sort
j:=0; a:=0
for i in 0..<N:
  s.apply(A[i].X..<A[i].X+W,1)
  while j<N and A[j].T<=A[i].T-D:
    s.apply(A[j].X..<A[j].X+W,-1)
    j+=1
  a.max=s.all_prod()
echo a