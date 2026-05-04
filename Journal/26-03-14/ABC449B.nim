include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
var H,W,Q=int.input
for _ in 1..Q:
  let q,d=int.input
  if q==1: echo d*W; H-=d
  else: echo H*d; W-=d