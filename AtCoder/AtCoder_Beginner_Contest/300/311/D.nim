include atcoder/extra/header/chaemon_header
let N,M=nextInt()
S:=Seq[N:nextString()]
var s:HashSet[(int,int)]
proc dfs(i,j:int)=
  s.incl((i,j))
  for (di,dj) in [(0,-1),(1,0),(0,1),(-1,0)]:
    ni:=i; nj:=j
    while true:
      S[ni][nj]=' '
      if S[ni+di][nj+dj]=='#': break
      ni+=di; nj+=dj
    if (ni,nj) notin s: dfs(ni,nj)
dfs(1,1)
echo S.mapIt(it.count(' ')).sum