include atcoder/header
let
  N,Q=nextInt()
  X=newSeqWith(N,nextInt())
var g=newSeqWith(N,newSeq[int]())
for _ in 1..<N:
  let A,B=nextInt()-1
  g[A].add(B); g[B].add(A)
var
  k=newSeqWith(N,newSeq[int](20))
  d=newSeqWith(N,false)
for i in 0..<N: k[i][0]=X[i]
proc dfs(i:int)=
  d[i]=true
  var nk=k[i]
  for j in g[i]:
    if not d[j]: dfs(j); nk&=k[j]
  k[i]=nk.sorted(Descending)[0..<20]
dfs(0)
for _ in 1..Q:
  let V,K=nextInt()-1
  echo k[V][K]