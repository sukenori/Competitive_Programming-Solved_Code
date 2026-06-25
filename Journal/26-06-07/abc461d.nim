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
    var whl,whh=0
    proc s(wl,wh:int):int=c[hh][wh]-c[hh][wl-1]-c[hl-1][wh]+c[hl-1][wl-1]
    for wl in 1..W:
      whl.chMax(wl-1); whh.chMax(wl-1)
      while whl<W and s(wl,whl+1)<K: whl+=1
      while whh<W and s(wl,whh+1)<=K: whh+=1
      a+=whh-whl
echo a