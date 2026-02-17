include "/workspaces/AtCoder-Nim/.Library/Template.nim"
include "/workspaces/AtCoder-Nim/.Library/Structure/FenwickTree.nim"
var
  N,Q=int.input
  A=Seq[N:int.input].toFenwickTree
loop Q:
  let q=int.input
  if q==1:
    let x=int.input-1
    let
      ax=A[x..x]
      ax1=A[x+1..x+1]
    A.add(x,ax1-ax); A.add(x+1,ax-ax1)
  else:
    let l,r=int.input-1
    echo A[l..r]