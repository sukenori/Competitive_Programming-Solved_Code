include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let X,Y,L,R,A,B=int.input
var a=0
for i in A..<B:
  if i in L..<R: a+=X
  else: a+=Y
echo a
