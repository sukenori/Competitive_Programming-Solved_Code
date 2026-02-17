include atcoder/header
let N=nextInt()
var g=newSeqWith(N,newSeq[int]())
for _ in 1..<N:
  let A,B=nextInt()-1
  g[A].add(B); g[B].add(A)
var a= -1
proc dfs(i,p:int):int=
  var c:seq[int]
  for j in g[i]:
    if j!=p: c.add(dfs(j,i))
  if c.len>=2: c.sort(Descending)
  result=1
  if c.len>=3: result=c[0..2].sum+1
  if c.len>=1 and c[0]>1: a.max=c[0]+1
  if c.len>=4: a.max=result+c[3]
discard dfs(0,-1)
echo a