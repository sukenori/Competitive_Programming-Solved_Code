include atcoder/header
let
  N=nextInt()
  x=newSeqWith(N,nextInt())
var g=newSeqWith(N,newSeq[tuple[t,w:int]]())
for _ in 1..N-1:
  let
    u,v=nextInt()-1
    w=nextInt()
  g[u].add((v,w)); g[v].add((u,w))
var a=0
proc dfs(i,p:int):int=
  for j in g[i]:
    if j.t!=p:
      let r=dfs(j.t,i)
      result+=r; a+=r.abs*j.w
  result+=x[i]
discard dfs(0,-1)
echo a