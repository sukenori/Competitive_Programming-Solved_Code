include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let
  T,X=int.input
  A=Seq[T+1:int.input]
var a=A[0]
echo 0," ",a
for i in 1..T:
  if abs(A[i]-a)>=X:
    echo i," ",A[i]
    a=A[i]