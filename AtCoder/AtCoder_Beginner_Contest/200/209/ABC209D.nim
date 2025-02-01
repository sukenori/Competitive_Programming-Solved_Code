include atcoder/header
let N,Q=nextInt()
var g=newSeqWith(N,newSeq[int](0))
for _ in 1..N-1:
  let a,b=nextInt()-1
  g[a].add(b); g[b].add(a)
var f=newSeqWith(N,-1)
proc dfs(i:int)=
  for j in g[i]:
    if f[j] == -1: f[j]=1-f[i]; dfs(j)
f[0]=0; dfs(0)
for _ in 1..Q:
  let c,d=nextInt()-1
  echo if f[c]==f[d]: "Town" else: "Road"