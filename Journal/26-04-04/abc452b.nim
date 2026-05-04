include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let H,W=int.input
var a=Seq[H,W:'#']
for h in 1..<H-1:
  for w in 1..<W-1:
    a[h][w]='.'
for i in 0..<H:
  echo a[i].join