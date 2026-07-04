include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let H,W,Q=int.input
var c = @[(H-1,W-1,"A")]
loop Q:
  let
    R,C=int.input-1
    X=string.input
  c.add((R,C,X))
var a=Seq[H,W:""]
for i in (Q..0,1):
  let (R,C,X)=c[i]
  for h in (R..0,1):
    if a[h][C]!="": break
    for w in (C..0,1):
      if a[h][w]!="":break
      a[h][w]=X
echo (0..<H).mapIt(a[it].join).join("\n")