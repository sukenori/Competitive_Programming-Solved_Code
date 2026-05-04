include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let N,M=int.input
var g=Seq[N:seq[int]]
loop M:
  let A,B=int.input-1
  g[A].add(B)
var d=Seq[N:false]
proc dfs(u:int)=
  d[u]=true
  for v in g[u]:
    if not d[v]:
      dfs(v)
dfs(0)
echo d.count(true)