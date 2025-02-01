include atcoder/header
let N,M=nextInt()
var g=newSeqWith(N,newSeq[int](0))
for _ in 1..M:
  let u,v=nextInt()-1
  g[u].add(v); g[v].add(u)
let W=newSeqWith(N,nextInt())
let o=(0..<N).toSeq.sortedByIt(W[it])
var dp=newSeq[int](N)
for oi in o:
  var w=newSeqWith(W[oi],0)
  for j in g[oi]:
    for k in countdown(W[oi]-1,W[j]):
      w[k].max=w[k-W[j]]+dp[j]
  dp[oi]=1+w[^1]
var a=0
for i in 0..<N:
  let A=nextInt()
  a+=dp[i]*A
echo a