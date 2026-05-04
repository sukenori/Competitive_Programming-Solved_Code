include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let
  N=int.input
  L=Seq[N:int.input]
var a=0
for i in 0..<1 shl N:
  var
    ai=0
    x=0.5
  for j in 0..<N:
    let lx=x
    if ((i shr j) and 1)==1:
      x+=L[j].float
    else: x-=L[j].float
    if lx*x<0.0: ai+=1
  a.chMax(ai)
echo a