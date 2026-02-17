include atcoder/extra/header/chaemon_header
N:=nextInt()
g:=Seq[N+1,0:int]
for _ in 1..N-1:
  let A,B=nextInt()
  g[A].add(B); g[B].add(A)
d:=Seq[N+1:false]
a:=Seq[0:int]
proc dfs(i:int)=
  d[i]=true
  a.add(i)
  for j in g[i].sorted:
    if not d[j]:
      dfs(j)
      a.add(i)
dfs(1)
echo a.join(" ")