include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let N=int.input
var p=Seq[0:(int,int)]
for i in 0..<N:
  let X,Y=int.input
  p.add((X,Y))
p.sort
var
  a=0
  m=int.inf
for (X,Y) in p:
  if m<Y: a+=1
  m.chMin(Y)
echo N-a