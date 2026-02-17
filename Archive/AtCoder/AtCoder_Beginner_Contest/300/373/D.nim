include atcoder/header
let N,M=nextInt()
var g=newSeqWith(N,newSeq[tuple[t,w:int]]())
for _ in 1..M:
  let
    u,v=nextInt()-1
    w=nextInt()
  g[u].add((v,w)); g[v].add((u,-w))
var
  x=newSeq[int](N)
  d=newSeqWith(N,false)
proc dfs(i:int)=
  d[i]=true
  for j in g[i]:
    if not d[j.t]:
      x[j.t]=x[i]+j.w
      dfs(j.t)
for i in 0..<N:
  if not d[i]: dfs(i)
echo x.join(" ")