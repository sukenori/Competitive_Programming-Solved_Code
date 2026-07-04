include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let
  H,W=int.input
  C=Seq[H:string.input]
var h,w=Seq[0:int]
for i in 0..<H:
  for j in 0..<W:
    if C[i][j]=='#':
      h.add(i); w.add(j)
for i in h.min..h.max:
  echo C[i][w.min..w.max].join