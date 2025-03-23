include atcoder/header
let N,K=nextInt()
var g=newSeqWith(N,newSeq[int]())
for _ in 1..<N*K:
  let u,v=nextInt()-1
  g[u].add(v); g[v].add(u)
proc dfs(p,i:int):int=

  for j in g[i]:
    if j!=p:
      dfs(i,j)


dfs(-1,0)