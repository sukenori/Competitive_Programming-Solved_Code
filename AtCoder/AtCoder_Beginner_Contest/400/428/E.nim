include atcoder/header
var
  N=nextInt()
  g=newSeq[seq[int]](N)
for _ in 1..<N:
  let A,B=nextInt()-1
  g[A].add(B); g[B].add(A)
type DP=tuple[d,di:int]
proc merge(u,v:DP):DP=
  if u.d>v.d: (u.d,u.di)
  elif u.d==v.d: (u.d,max(u.di,v.di))
  else: (v.d,v.di)
proc move(u:DP):DP=(u.d+1,u.di)
proc e(u:int):DP=(0,u)
var
  dp=newSeq[seq[DP]](N)
  a=newSeq[DP](N)
proc dfs(p,u:int):DP=
  dp[u]=newSeq[DP](g[u].len)
  result=u.e
  for i,v in g[u]:
    if v!=p:
      dp[u][i]=dfs(u,v)
      result=result.merge(dp[u][i].move)
discard dfs(-1,0)
proc reroot(p,u:int,dpp:DP)=
  let n=g[u].len
  var l,r=newSeq[DP](n+1)
  l[0]=u.e; r[n]=u.e
  for i in 0..<n:
    l[i+1]=l[i].merge((if g[u][i]==p: dpp else: dp[u][i]).move)
    r[n-i-1]=r[n-i].merge((if g[u][n-1-i]==p: dpp else: dp[u][n-1-i]).move)
  a[u]=l[n]
  for i,v in g[u]:
    if v!=p: reroot(u,v,merge(l[i],r[i+1]))
reroot(-1,0,-1.e)
for i in 0..<N: echo a[i].di+1