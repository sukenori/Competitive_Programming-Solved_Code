include atcoder/extra/header/chaemon_header
let H,W=nextInt()
S:=Seq[H:nextString()]
var d=Seq[H,W:false]
import atcoder/extra/other/direction
proc dfs(i,j:int)=
  d[i][j]=true
  for (ni,nj) in (i,j).neighbor(dir8,(0..<H,0..<W)):
    if S[ni][nj]=='#' and d[ni][nj]==false :dfs(ni,nj)
a:=0
for i in 0..<H:
  for j in 0..<W:
    if S[i][j]=='#' and d[i][j]==false:
      a+=1; dfs(i,j)
echo a