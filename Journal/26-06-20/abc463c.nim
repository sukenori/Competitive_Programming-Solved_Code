include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let N=int.input
var h=Seq[N:(int,int)]
for i in 0..<N:
  let H,L=int.input
  h[i]=(L,H)
h.sort(Descending)
var m=0
for i in 0..<N:
  if m<h[i][1]: m=h[i][1]
  else: h[i][1]=m
h.add((0,m))
h.sort
dump(h)
let Q=int.input
for i in 1..Q:
  let T=int.input
  echo h[h.lowerBound((T,int.inf))][1]
