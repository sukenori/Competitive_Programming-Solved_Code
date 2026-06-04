include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let H,W=int.input
var x=Seq[H,W:0]
for h in 0..<H:
  for w in 0..<W:
    for (dh,dw) in [(-1,0),(0,1),(1,0),(0,-1)]:
      if h+dh in 0..<H and w+dw in 0..<W: x[h][w]+=1
for h in 0..<H:
  echo x[h].join(" ")