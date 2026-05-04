include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let N,Q=int.input
var A:seq[(int,int)]
for i in 1..N:
  let Ai=int.input
  A.add((Ai,i))
A.sort
for i in 1..Q:
  let
    K=int.input
    B=Seq[K:int.input]
  var j=0
  while A[j][1] in B: j+=1
  echo A[j][0]