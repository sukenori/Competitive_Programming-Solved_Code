include atcoder/header
let N,M=nextInt()
var g=newSeqWith(N,newSeq[tuple[t,w:int]]())
for _ in 1..M:
  let
    u,v=nextInt()-1
    w=nextInt()
  g[u].add((v,w)); g[v].add((u,w))
var
  d=false.repeat(N)
  a=int.inf
proc dfs(i,wi:int)=
  if i==N-1: a.min=wi
  else:
    d[i]=true
    for j in g[i]:
      if not d[j.t]:
        dfs(j.t,wi xor j.w)
    d[i]=false
dfs(0,0)
echo a