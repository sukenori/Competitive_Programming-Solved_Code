include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let
  H,W,K=int.input
  S=Seq[H:string.input.toSeq.mapIt(it.parseInt)]
var c=Seq[H+1,W+1:0]
for h in 1..H:
  for w in 1..W:
    c[h][w]=S[h-1][w-1]+c[h-1][w]+c[h][w-1]-c[h-1][w-1]
var a=0
for hl in 1..H:
  for hh in hl..H:
    var wh=1
    for wl in 1..W:
      while true:
        let s=c[hh][wh]-c[hh][wl-1]-c[hl-1][wh]+c[hl-1][wl-1]
        if s==K: a+=1
        if wh<W and s<=K: wh+=1
        else: break
echo a