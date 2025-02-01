include atcoder/extra/header/chaemon_header
let H,W,N=nextInt()
g:=Seq[H,W:'.']
var i,j,d=0
di:=[-1,0,1,0]; dj:=[0,1,0,-1]
for _ in 1..N:
  if g[i][j]=='.': g[i][j]='#'; d+=1
  else: g[i][j]='.'; d+=3
  d%=4
  i=(i+di[d]+H)%H; j=(j+dj[d]+W)%W
echo g.mapIt(it.join).join("\n")