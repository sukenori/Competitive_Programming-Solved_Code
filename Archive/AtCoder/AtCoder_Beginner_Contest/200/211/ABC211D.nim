include atcoder/header
let N,M=nextInt()
var g=newSeqWith(N,newSeq[int](0))
for _ in 1..M:
  let A,B=nextInt()-1
  g[A].add(B); g[B].add(A)
var l=newSeqWith(N,int.inf); l[0]=0
import atcoder/modint
type mint=modint1000000007
var w=newSeqWith(N,0.mint); w[0]=1.mint
import deques
var q=[0].toDeque
while q.len>0:
  let i=q.popFirst
  for j in g[i]:
    if l[i]+1<l[j]:
      q.addLast(j)
      l[j]=l[i]+1
      w[j]=w[i]
    elif l[i]+1==l[j]:
      w[j]+=w[i]
echo w[^1]