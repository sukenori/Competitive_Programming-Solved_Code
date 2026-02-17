include atcoder/header
let N=nextInt()
var g=newSeqWith(N,newSeq[tuple[t,l:int]]())
for _ in 1..N-1:
  let
    A,B=nextInt()-1
    C=nextInt()
  g[A].add((B,C)); g[B].add((A,C))
var
  d=newSeqWith(N,-1)
  a=0
proc dfs(i:int)=
  for j in g[i]:
    if d[j.t] == -1:
      d[j.t]=d[i]+j.l
      a+=j.l
      dfs(j.t)
d[0]=0; dfs(0)
let s=d.maxIndex
d.fill(-1); d[s]=0; dfs(s)
echo a-d.max