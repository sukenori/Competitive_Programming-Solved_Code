include atcoder/extra/header/chaemon_header
let N,M=nextInt()
A:=Seq[N:nextInt()]
e:=Seq[M:(nextInt()-1,nextInt()-1)]
import atcoder/dsu
d:=initDSU(N)
for (U,V) in e:
  if A[U]==A[V]: d.merge(U,V)
g:=Seq[N:seq[int]]
for (U,V) in e:
  lU:=d.leader(U); lV:=d.leader(V)
  if A[U]<A[V]: g[lU].add(lV)
  if A[U]>A[V]: g[lV].add(lU)
dp:=Seq[N: -int.inf]; dp[d.leader(0)]=1
for i in (0..<N).toSeq.sortedByIt(A[it]):
  for j in g[i]: dp[j].max=dp[i]+1
echo max(dp[d.leader(N-1)],0)