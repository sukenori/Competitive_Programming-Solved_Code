include atcoder/header
let
  N,Q=nextInt()
  X=newSeqWith(N,nextInt())
var g=newSeqWith(N,newSeq[int]())
for _ in 1..<N:
  let A,B=nextInt()-1
  g[A].add(B); g[B].add(A)
var
  s=newSeqWith(N,newSeq[int](20))
  d=newSeqWith(N,false)
proc dfs(i:int)=
  d[i]=true
  var si:seq[int]
  for j in g[i]:
    if not d[j]: dfs(j)
    si&=s[j]
  s[i]=(si & @[X[i]]).sorted(Descending)[0..<20]
dfs(0)
for i in 1..Q:
  let V,K=nextInt()-1
  echo s[V][K]