include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let
  H,W=int.input
  S=Seq[H:string.input]
var
  c=1
  t:Table[(int,int),int]
for i in 0..<H:
  for j in 0..<W:
    if S[i][j]=='.':
      t[(i,j)]=c
      c+=1
import atcoder/dsu
var d=initDSU(c)
for i in 0..<H:
  for j in 0..<W:
    if S[i][j]=='.':
      if i==0 or i==H-1 or j==0 or j==W-1: d.merge(0,t[(i,j)])
      if i!=0 and S[i-1][j]=='.': d.merge(t[(i,j)],t[(i-1,j)])
      if j!=0 and S[i][j-1]=='.': d.merge(t[(i,j)],t[(i,j-1)])
echo d.groups.len-1