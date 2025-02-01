include atcoder/extra/header/chaemon_header
let N,Q=nextInt()
A:=Seq[N:nextInt()]
B:=Seq[N+1:0]
for Ai in A:
  if Ai<=N: B[Ai]+=1
import atcoder/extra/structure/set_map
var s=initSortedSet[int]()
for i,Bi in B:
  if Bi==0: s.incl(i)
for _ in 1..Q:
  var i,x=nextInt(); i-=1
  if A[i]<=N:
    B[A[i]]-=1
    if B[A[i]]==0: s.incl(A[i])
  A[i]=x
  if x<=N:
    B[x]+=1
    if B[x]==1: s.excl(x)
  echo *s.begin()