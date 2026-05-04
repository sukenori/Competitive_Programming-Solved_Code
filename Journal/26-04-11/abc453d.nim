include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let
  H,W=int.input
  S=Seq[H:string.input]
var s,g:(int,int)
for i in 0..<H:
  for j in 0..<W:
    if S[i][j]=='S': s=(i,j)
    if S[i][j]=='G': g=(i,j)
var
  d=Seq[H,W,4:false]
  a=""
proc dfs(h,w:int,p:string)=
  if (h,w)==g: a=p
  for i,(dh,dw) in [(-1,0),(1,0),(0,-1),(0,1)]:
    if S[h][w]=='o' and i!="UDLR".find(p[^1]): continue
    if S[h][w]=='x' and i=="UDLR".find(p[^1]): continue
    let (nh,nw)=(h+dh,w+dw)
    if nh in 0..<H and nw in 0..<W and S[nh][nw]!='#' and not d[nh][nw][i]:
      d[nh][nw][i]=true
      dfs(nh,nw,p&"UDLR"[i])
dfs(s[0],s[1],"")
if a!="":
  echo "Yes"; echo a
else: echo "No"