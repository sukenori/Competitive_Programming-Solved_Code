include atcoder/header
let N,K=nextInt()
var g=newSeqWith(N,newSeq[int]())
for _ in 1..<N:
  let A,B=nextInt()-1
  g[A].add(B); g[B].add(A)
var
  d=newSeqWith(N,false)
  c=newSeqWith(N,false)
for _ in 1..K: c[nextInt()-1]=true
proc dfs(i:int)=
  d[i]=true
  for j in g[i]:
    if not d[j]:
      dfs(j)
      if c[j]==true: c[i]=true
dfs(c.find(true))
echo c.count(true)