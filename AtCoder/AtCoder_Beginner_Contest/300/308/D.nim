include atcoder/extra/header/chaemon_header
let H,W=nextInt()
S:=Seq[H:nextString()]
d:=Seq[H,W: -1]; d[0][0]=0
import atcoder/extra/other/direction
proc dfs(i,j:int)=
  for (ni,nj) in (i,j).neighbor(dir4,(0..<H,0..<W)):
    if d[ni][nj]== -1 and S[ni][nj]=="snuke"[(d[i][j]+1)%5]:
      d[ni][nj]=d[i][j]+1
      dfs(ni,nj)
dfs(0,0)
echo if d[H-1][W-1]!= -1: "Yes" else: "No"